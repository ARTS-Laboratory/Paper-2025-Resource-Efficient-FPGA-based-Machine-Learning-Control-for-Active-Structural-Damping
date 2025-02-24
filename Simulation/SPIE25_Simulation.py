# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 16:58:27 2025

@author: trott
"""
# %% Imports
import os
os.environ["KMP_DUPLICATE_LIB_OK"] = "TRUE"

import numpy as np
import matplotlib.pyplot as plt
from scipy.linalg import solve_continuous_are
from scipy.fft import fft
import torch
import torch.nn as nn
from sklearn.metrics import r2_score

# %% Beam properties
E = 210e9  # Young's modulus (Pa)
rho = 7850  # Density (kg/m^3)
width = 0.05  # Beam width (m)
thickness = 0.005  # Beam thickness (m)
L = 1.0  # Beam length (m)
A = width * thickness  # Cross-sectional area
I = (width * thickness**3) / 12  # Moment of inertia

# %% Simulation parameters
n_nodes = 50  # Number of nodes (discretization)
n_elements = n_nodes - 1
node_positions = np.linspace(0, L, n_nodes)
dt = 0.01  # Time step (s)
t_total = 15  # Total simulation time (s)
n_steps = int(t_total / dt)
impact_time = 1.0  # Impact time (s)
impact_magnitude = 1000  # Impact force (N)
impact_node = n_nodes // 2
control_index = 2 * (n_nodes // 4)  # Control input location (1/4 length)

# %% Initialize matrices
K = np.zeros((2 * n_nodes, 2 * n_nodes))
M = np.zeros((2 * n_nodes, 2 * n_nodes))
for i in range(1, n_elements + 1):
    h = node_positions[i] - node_positions[i - 1]
    K_el = E * I / h**3 * np.array([
        [12, 6 * h, -12, 6 * h],
        [6 * h, 4 * h**2, -6 * h, 2 * h**2],
        [-12, -6 * h, 12, -6 * h],
        [6 * h, 2 * h**2, -6 * h, 4 * h**2]
    ])
    M_el = rho * A * h / 420 * np.array([
        [156, 22 * h, 54, -13 * h],
        [22 * h, 4 * h**2, 13 * h, -3 * h**2],
        [54, 13 * h, 156, -22 * h],
        [-13 * h, -3 * h**2, -22 * h, 4 * h**2]
    ])
    idx = slice(2 * (i - 1), 2 * (i + 1))
    K[idx, idx] += K_el
    M[idx, idx] += M_el

# Boundary conditions (cantilever beam)
K[:2, :] = 0
K[:, :2] = 0
K[0, 0] = K[1, 1] = 1
M[:2, :] = 0
M[:, :2] = 0
M[0, 0] = M[1, 1] = 1

# Damping matrix
alpha = 0.01
beta = 0.001
C = alpha * M + beta * K

# Augmented state-space matrices for LQG
A_augmented = np.zeros((2 * 2 * n_nodes, 2 * 2 * n_nodes))
A_augmented[:2 * n_nodes, 2 * n_nodes:] = np.eye(2 * n_nodes)
A_augmented[2 * n_nodes:, :2 * n_nodes] = -np.linalg.inv(M) @ K
A_augmented[2 * n_nodes:, 2 * n_nodes:] = -np.linalg.inv(M) @ C

B_augmented = np.zeros((2 * 2 * n_nodes, 1))
B_augmented[2 * n_nodes + control_index] = 1 / M[control_index, control_index]

# Redefine Q and R for LQR
Q_lqr = np.eye(2 * 2 * n_nodes) * 1e-1  # Penalize both displacement and velocity states
R_lqr = np.array([[0.01]])  # Penalize control effort

# Solve Riccati equation
P_augmented = solve_continuous_are(A_augmented, B_augmented, Q_lqr, R_lqr)
K_lqr_augmented = np.linalg.inv(R_lqr) @ B_augmented.T @ P_augmented

# Effective stiffness matrix
gamma = 0.5
beta_n = 0.25
K_eff = K + gamma / (beta_n * dt) * C + 1 / (beta_n * dt**2) * M
K_inv = np.linalg.inv(K_eff)

# %% PD controller gains
kp = 500
kd = 50

# %% MLP Setup
# Define the MLP controller
class MLPController(nn.Module):
    def __init__(self, input_dim=3, hidden_dim=64, output_dim=1):
        super(MLPController, self).__init__()
        self.network = nn.Sequential(
            nn.Linear(input_dim, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, output_dim)
        )

    def forward(self, x):
        return self.network(x)

# Instantiate the MLP controller
mlp_controller = MLPController()

# Simulation variables
state_variables = ['displacements', 'velocities', 'accelerations']
displacement_history_uncontrolled = np.zeros((n_steps, 2 * n_nodes))
displacement_history_lqg = np.zeros((n_steps, 2 * n_nodes))
displacement_history_pd = np.zeros((n_steps, 2 * n_nodes))
displacement_history_mlp = np.zeros((n_steps, 2 * n_nodes))

# Initialize states for all controllers
def initialize_states():
    return {var: np.zeros(2 * n_nodes) for var in state_variables}

states = {
    'uncontrolled': initialize_states(),
    'lqg': initialize_states(),
    'pd': initialize_states(),
    'mlp': initialize_states()
}

# Collect real LQG training data
real_training_data = []

for step in range(1, n_steps):
    t = step * dt

    F = np.zeros(2 * n_nodes)
    if abs(t - impact_time) < dt:
        F[2 * impact_node] = impact_magnitude

    # Compute LQG control force
    state_vector = np.concatenate((states['lqg']['displacements'], states['lqg']['velocities']))
    control_input = -K_lqr_augmented @ state_vector

    # Store LQG state and control force
    real_training_data.append((
        states['lqg']['displacements'][2 * control_index],  
        states['lqg']['velocities'][2 * control_index],  
        states['lqg']['accelerations'][2 * control_index],  
        control_input[0]  
    ))

    # Apply control force
    F[control_index] += control_input[0]

    # Compute new state using Newmark method
    F_eff = (F +
             M @ ((1 / (beta_n * dt**2)) * states['lqg']['displacements'] +
                  (1 / (beta_n * dt)) * states['lqg']['velocities'] +
                  ((0.5 / beta_n) - 1) * states['lqg']['accelerations']) +
             C @ ((gamma / (beta_n * dt)) * states['lqg']['displacements'] +
                  (gamma / beta_n - 1) * states['lqg']['velocities'] +
                  dt * ((gamma / (2 * beta_n)) - 1) * states['lqg']['accelerations']))
    
    displacements_new = K_inv @ F_eff
    accelerations_new = (1 / (beta_n * dt**2)) * (displacements_new - states['lqg']['displacements']) - \
                        (1 / (beta_n * dt)) * states['lqg']['velocities'] - \
                        ((0.5 / beta_n) - 1) * states['lqg']['accelerations']
    velocities_new = states['lqg']['velocities'] + dt * ((1 - gamma) * states['lqg']['accelerations'] + gamma * accelerations_new)

    # Update state
    states['lqg']['displacements'] = displacements_new
    states['lqg']['velocities'] = velocities_new
    states['lqg']['accelerations'] = accelerations_new

# Convert collected LQG data to PyTorch tensors
inputs = torch.tensor([[d, v, a] for d, v, a, _ in real_training_data], dtype=torch.float32)
targets = torch.tensor([f for _, _, _, f in real_training_data], dtype=torch.float32).unsqueeze(1)

# Define loss function and optimizer
criterion = nn.MSELoss()
optimizer = torch.optim.Adam(mlp_controller.parameters(), lr=0.001)
epochs = 500

# Lists to store training metrics
train_losses = []
train_mses = []

# Training loop
for epoch in range(epochs):
    optimizer.zero_grad()
    
    # Forward pass
    predictions = mlp_controller(inputs)
    
    # Compute loss
    loss = criterion(predictions, targets)
    loss_value = loss.item()  # Store actual loss value
    train_losses.append(loss_value)

    # Compute MSE separately (matches PyTorch loss function)
    mse_value = torch.mean((predictions - targets) ** 2).item()
    train_mses.append(mse_value)

    # Backpropagation
    loss.backward()
    optimizer.step()

    # Print loss to verify correctness
    if epoch % 10 == 0:
        print(f"Epoch {epoch}/{epochs}, Loss: {loss_value:.6f}, MSE: {mse_value:.6f}")

# %% Simulation loop
for step in range(1, n_steps):
    t = step * dt

    for ctrl, state in states.items():
        F = np.zeros(2 * n_nodes)
        if abs(t - impact_time) < dt:
            F[2 * impact_node] = impact_magnitude

        if ctrl == 'uncontrolled':
            F_eff = (F +
                     M @ ((1 / (beta_n * dt**2)) * state['displacements'] +
                          (1 / (beta_n * dt)) * state['velocities'] +
                          ((0.5 / beta_n) - 1) * state['accelerations']) +
                     C @ ((gamma / (beta_n * dt)) * state['displacements'] +
                          (gamma / beta_n - 1) * state['velocities'] +
                          dt * ((gamma / (2 * beta_n)) - 1) * state['accelerations']))
            displacements_new = K_inv @ F_eff
            accelerations_new = (1 / (beta_n * dt**2)) * (displacements_new - state['displacements']) - \
                                (1 / (beta_n * dt)) * state['velocities'] - \
                                ((0.5 / beta_n) - 1) * state['accelerations']
            velocities_new = state['velocities'] + dt * ((1 - gamma) * state['accelerations'] + gamma * accelerations_new)

        elif ctrl == 'pd':
            error = -state['displacements'][2 * control_index]
            derivative = -state['velocities'][2 * control_index]
            control_force = kp * error + kd * derivative
            F[control_index] += control_force
        
            F_eff = (F +
                     M @ ((1 / (beta_n * dt**2)) * state['displacements'] +
                          (1 / (beta_n * dt)) * state['velocities'] +
                          ((0.5 / beta_n) - 1) * state['accelerations']) +
                     C @ ((gamma / (beta_n * dt)) * state['displacements'] +
                          (gamma / beta_n - 1) * state['velocities'] +
                          dt * ((gamma / (2 * beta_n)) - 1) * state['accelerations']))
            displacements_new = K_inv @ F_eff
            accelerations_new = (1 / (beta_n * dt**2)) * (displacements_new - state['displacements']) - \
                                (1 / (beta_n * dt)) * state['velocities'] - \
                                ((0.5 / beta_n) - 1) * state['accelerations']
            velocities_new = state['velocities'] + dt * ((1 - gamma) * state['accelerations'] + gamma * accelerations_new)

        elif ctrl == 'lqg':
            state_vector = np.concatenate((state['displacements'], state['velocities']))
            control_input = -K_lqr_augmented @ state_vector
            F[control_index] += control_input

            F_eff = (F +
                     M @ ((1 / (beta_n * dt**2)) * state['displacements'] +
                          (1 / (beta_n * dt)) * state['velocities'] +
                          ((0.5 / beta_n) - 1) * state['accelerations']) +
                     C @ ((gamma / (beta_n * dt)) * state['displacements'] +
                          (gamma / beta_n - 1) * state['velocities'] +
                          dt * ((gamma / (2 * beta_n)) - 1) * state['accelerations']))
            displacements_new = K_inv @ F_eff
            accelerations_new = (1 / (beta_n * dt**2)) * (displacements_new - state['displacements']) - \
                                (1 / (beta_n * dt)) * state['velocities'] - \
                                ((0.5 / beta_n) - 1) * state['accelerations']
            velocities_new = state['velocities'] + dt * ((1 - gamma) * state['accelerations'] + gamma * accelerations_new)


        elif ctrl == 'mlp':
            state_input = torch.tensor([
                state['displacements'][2 * control_index],
                state['velocities'][2 * control_index],
                state['accelerations'][2 * control_index]
            ], dtype=torch.float32)
            control_force = mlp_controller(state_input).item()
            F[control_index] += control_force

            F_eff = (F +
                     M @ ((1 / (beta_n * dt**2)) * state['displacements'] +
                          (1 / (beta_n * dt)) * state['velocities'] +
                          ((0.5 / beta_n) - 1) * state['accelerations']) +
                     C @ ((gamma / (beta_n * dt)) * state['displacements'] +
                          (gamma / beta_n - 1) * state['velocities'] +
                          dt * ((gamma / (2 * beta_n)) - 1) * state['accelerations']))
            displacements_new = K_inv @ F_eff
            accelerations_new = (1 / (beta_n * dt**2)) * (displacements_new - state['displacements']) - \
                                (1 / (beta_n * dt)) * state['velocities'] - \
                                ((0.5 / beta_n) - 1) * state['accelerations']
            velocities_new = state['velocities'] + dt * ((1 - gamma) * state['accelerations'] + gamma * accelerations_new)

        state['displacements'] = displacements_new
        state['velocities'] = velocities_new
        state['accelerations'] = accelerations_new

        if ctrl == 'uncontrolled':
            displacement_history_uncontrolled[step, :] = displacements_new
        elif ctrl == 'lqg':
            displacement_history_lqg[step, :] = displacements_new
        elif ctrl == 'pd':
            displacement_history_pd[step, :] = displacements_new
        elif ctrl == 'mlp':
            displacement_history_mlp[step, :] = displacements_new

            
# %% Settling Time Calculation
def compute_settling_time(displacement, dt, threshold=0.05, check_duration=0.1, impact_time=0.0):
    """
    Calculate the settling time for the displacement, starting after the impact time.

    Parameters:
    - displacement: Array of displacement values over time.
    - dt: Time step (seconds).
    - threshold: Fraction of max displacement to define settling (e.g., 0.05 for 5%).
    - check_duration: Time duration (seconds) to check for sustained settling.
    - impact_time: Time (seconds) at which the impact occurs.

    Returns:
    - Settling time in seconds.
    """
    max_disp = np.max(np.abs(displacement))
    if max_disp == 0:
        print("Max displacement is zero; returning total time.")
        return len(displacement) * dt

    threshold_value = threshold * max_disp
    check_steps = int(check_duration / dt)
    impact_step = int(impact_time / dt)  # Convert impact time to step index

    print(f"Max Displacement: {max_disp:.4f}, Threshold: {threshold_value:.4f}, Check Steps: {check_steps}, Impact Step: {impact_step}")

    for i in range(impact_step, len(displacement) - check_steps):
        window = displacement[i:i + check_steps]
        if np.all(np.abs(window) < threshold_value):
            print(f"Settled at index {i}, time {i * dt:.2f} s")
            return i * dt

    print("Never settled within the threshold.")
    return len(displacement) * dt


# %% Calculate and Output Settling Times
impact_time = 1.0  # Ensure this matches the impact time used in the simulation
settling_uncontrolled = compute_settling_time(
    displacement_history_uncontrolled[:, -2], dt, threshold=0.05, check_duration=0.1, impact_time=impact_time
)
settling_pd = compute_settling_time(
    displacement_history_pd[:, -2], dt, threshold=0.05, check_duration=0.1, impact_time=impact_time
)
settling_lqg = compute_settling_time(
    displacement_history_lqg[:, -2], dt, threshold=0.05, check_duration=0.1, impact_time=impact_time
)

settling_mlp = compute_settling_time(
    displacement_history_mlp[:, -2], dt, threshold=0.05, check_duration=0.1, impact_time=impact_time
)

print("Settling Times:")
print(f"Uncontrolled: {settling_uncontrolled:.2f} s")
print(f"PD Controlled: {settling_pd:.2f} s")
print(f"LQG Controlled: {settling_lqg:.2f} s")
print(f"MLP Controlled: {settling_mlp:.2f} s")

# %% Plot colors
cmap = plt.get_cmap("tab10")
# Select colors from the palette (indices 0-9) for tab10
# color_0 = cmap(0)  # Blue
# color_1 = cmap(1)  # Orange
# color_2 = cmap(2)  # Green
# color_3 = cmap(3)  # Red
# color_4 = cmap(4)  # Purple
# color_5 = cmap(5)  # Brown
# color_6 = cmap(6)  # Pink
# color_7 = cmap(7)  # Gray
# color_8 = cmap(8)  # Yellow
# color_9 = cmap(9)  # Cyan

tab20cmap = plt.get_cmap("tab20")
uncontcolor = cmap(7)
pdcolor = cmap(0)
mlpcolor = cmap(1)
lqgcolor = cmap(2)

# %% Beam Tip Displacement
plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_uncontrolled[:, -2], label="uncontrolled", color=uncontcolor, linewidth=1.0)
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_pd[:, -2], label="PD controlled", color=pdcolor, linewidth=1.0) #green
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP controlled", color=mlpcolor, linewidth=1.0) #purple
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_lqg[:, -2], label="LQG controlled", color=lqgcolor, linewidth=1.0)
#plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP Controlled Beam Tip", color="purple")
plt.xlabel("time (s)")
plt.ylabel("displacement (m)")
plt.ylim(-0.3, 0.3)
#plt.title("Beam Tip Displacement: Uncontrolled vs LQG vs PD vs MLP Controlled")\
plt.grid()
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE\Prev_sim"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "displacement_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

# %% Controller Comparison Closeup
plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_pd[:, -2], label="PD controlled", color=pdcolor, linewidth=1.0) #green
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP controlled", color=mlpcolor, linewidth=1.0) #purple
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_lqg[:, -2], label="LQG controlled", color=lqgcolor, linewidth=1.0)
#plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP Controlled Beam Tip", color="purple")
plt.xlabel("time (s)")
plt.ylabel("displacement (m)")
plt.xlim(0, 5)
plt.grid()
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
#save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE\Prev_sim"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "contrcomp_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

# %% Plot Learning Curve (Single Axis)
plt.figure(figsize=(6.5, 2))
plt.plot(range(epochs), train_losses, label="training loss (MSE)", color=cmap(0), linewidth=2)
plt.xlabel("epochs")
plt.ylabel("mean squared error (N$^2$)")
#plt.title("MLP Training Loss Over Epochs")
plt.grid()
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
save_path = os.path.join(save_dir, "mlp_learning_curve.png")
plt.savefig(save_path, dpi=300, bbox_inches="tight")
plt.show()

# %% Displacement Reduction
plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
reduction_pd = displacement_history_uncontrolled[:, -2] - displacement_history_pd[:, -2]
reduction_lqg = displacement_history_uncontrolled[:, -2] - displacement_history_lqg[:, -2]
reduction_mlp = displacement_history_uncontrolled[:, -2] - displacement_history_mlp[:, -2]
plt.plot(np.linspace(0, t_total, n_steps), reduction_lqg, label="LQG reduction", color=lqgcolor)
plt.plot(np.linspace(0, t_total, n_steps), reduction_pd, label="PD reduction", color=pdcolor) #green
plt.plot(np.linspace(0, t_total, n_steps), reduction_mlp, label="MLP reduction", color=mlpcolor) #purple
plt.axhline(0, linestyle="--", color="black", alpha=0.5, label="no reduction")
plt.xlabel("Time (s)")
plt.ylabel("displacement reduction (m)")
#plt.title("Displacement Reduction by Control Strategies")
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
plt.grid()
#save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "reduction_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
#plt.show()

# %% Control Force
control_force_history_pd = displacement_history_pd[:, control_index]
control_force_history_lqg = displacement_history_lqg[:, control_index]
control_force_history_mlp = displacement_history_mlp[:, control_index]

plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_mlp,
    label="MLP control force",
    color=mlpcolor #purple
)
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_pd,
    label="PD control force",
    color=pdcolor
)
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_lqg,
    label="LQG control force",
    color=lqgcolor
)
plt.xlabel("time (s)")
plt.ylabel("control force (N)")
plt.xlim(0, 5)
#plt.title("Control Force Over Time")
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
plt.grid()
#save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "contrforce_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

# %% FFT
def compute_fft(data):
    n = len(data)
    freqs = np.fft.fftfreq(n, dt)[:n // 2]
    spectrum = np.abs(fft(data))[:n // 2]
    return freqs, spectrum

tip_displacement_uncontrolled = displacement_history_uncontrolled[:, -2]
tip_displacement_pd = displacement_history_pd[:, -2]
tip_displacement_lqg = displacement_history_lqg[:, -2]
tip_displacement_mlp = displacement_history_mlp[:, -2]

freqs, spectrum_uncontrolled = compute_fft(tip_displacement_uncontrolled)
_, spectrum_pd = compute_fft(tip_displacement_pd)
_, spectrum_lqg = compute_fft(tip_displacement_lqg)
_, spectrum_mlp = compute_fft(tip_displacement_mlp)

plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(freqs, spectrum_uncontrolled, label="uncontrolled", color=uncontcolor)
plt.plot(freqs, spectrum_mlp, label="MLP controlled", color=mlpcolor) #purple
plt.plot(freqs, spectrum_lqg, label="LQG controlled", color=lqgcolor)
plt.plot(freqs, spectrum_pd, label="PD controlled", color=pdcolor)
plt.xlabel("frequency (Hz)")
plt.ylabel("amplitude")
#plt.title("Frequency Response of Beam Tip Displacement")
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
plt.grid()
#save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "freqresp_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

# %% Compute Signal-to-Noise Ratio (SNR) for MLP
control_force_mlp = displacement_history_mlp[:, control_index]
signal_power_mlp = np.mean(control_force_mlp**2)
noise_power_mlp = np.var(control_force_mlp)
snr_mlp = 10 * np.log10(signal_power_mlp / noise_power_mlp) if noise_power_mlp > 0 else float('inf')

# %% Plot SNR over time
plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(np.linspace(0, t_total, n_steps), 10 * np.log10(control_force_mlp**2 / noise_power_mlp), label="MLP SNR", color=mlpcolor)
plt.xlabel("Time (s)")
plt.ylabel("SNR (dB)")
plt.title("MLP Signal-to-Noise Ratio Over Time")
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
plt.grid()

save_path = os.path.join(save_dir, "mlp_snr_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

# %% Plot MSE over time
plt.rc('font', family='Times New Roman', size=10)
plt.figure(figsize=(6.5, 3))
plt.plot(np.linspace(0, t_total, n_steps), (control_force_mlp - displacement_history_lqg[:, control_index])**2, label="MLP MSE", color=mlpcolor)
plt.xlabel("Time (s)")
plt.ylabel("MSE")
plt.title("MLP Mean Squared Error Over Time")
plt.legend(facecolor="white", edgecolor="lightgray", framealpha=1, frameon=True)
plt.grid()
save_path = os.path.join(save_dir, "mlp_mse_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()


# %% Metric Printing
control_effort_pd = np.sum(np.abs(displacement_history_pd[:, control_index]))
control_effort_lqg = np.sum(np.abs(displacement_history_lqg[:, control_index]))
control_effort_mlp = np.sum(np.abs(displacement_history_mlp[:, control_index]))

print("Control Efforts:")
print(f"PD Control Effort: {control_effort_pd:.2f}")
print(f"LQG Control Effort: {control_effort_lqg:.2f}")
print(f"MLP Control Effort: {control_effort_mlp:.2f}")

rms_uncontrolled = np.sqrt(np.mean(tip_displacement_uncontrolled**2))
rms_pd = np.sqrt(np.mean(tip_displacement_pd**2))
rms_lqg = np.sqrt(np.mean(tip_displacement_lqg**2))
rms_mlp = np.sqrt(np.mean(tip_displacement_mlp**2))

print("RMS Displacements:")
print(f"Uncontrolled: {rms_uncontrolled:.4f} m")
print(f"PD Controlled: {rms_pd:.4f} m")
print(f"LQG Controlled: {rms_lqg:.4f} m")
print(f"MLP Controlled: {rms_mlp:.4f} m")

# Vibration Reduction
vibration_reduction_pd = rms_uncontrolled - rms_pd
vibration_reduction_lqg = rms_uncontrolled - rms_lqg
vibration_reduction_mlp = rms_uncontrolled - rms_mlp

# Damping Efficiency Calculation
damping_efficiency_pd = vibration_reduction_pd / control_effort_pd
damping_efficiency_lqg = vibration_reduction_lqg / control_effort_lqg
damping_efficiency_mlp = vibration_reduction_mlp / control_effort_mlp

# Output Results
print("Damping Efficiency:")
print(f"PD Controller: {damping_efficiency_pd:.6f}")
print(f"LQG Controller: {damping_efficiency_lqg:.6f}")
print(f"MLP Controller: {damping_efficiency_mlp:.6f}")

# Time-Weighted Damping Efficiency
damping_efficiency_time_weighted_pd = vibration_reduction_pd / (control_effort_pd * settling_pd)
damping_efficiency_time_weighted_lqg = vibration_reduction_lqg / (control_effort_lqg * settling_lqg)
damping_efficiency_time_weighted_mlp = vibration_reduction_mlp / (control_effort_mlp * settling_mlp)

# Output Results
print("Time-Weighted Damping Efficiency:")
print(f"PD Controller: {damping_efficiency_time_weighted_pd:.6f}")
print(f"LQG Controller: {damping_efficiency_time_weighted_lqg:.6f}")
print(f"MLP Controller: {damping_efficiency_time_weighted_mlp:.6f}")

print(f"MLP Control SNR: {snr_mlp:.2f} dB")

# Compute MSE of MLP compared to LQG
mse_mlp = np.mean(np.square(control_force_mlp.astype(np.float64) - control_force_history_lqg.astype(np.float64)))
print(f"MLP Control MSE (Higher Precision): {mse_mlp:.20f}")

# Compute MSE over Max-Min Range
max_min_mlp = np.max(control_force_mlp) - np.min(control_force_mlp)
print(f"Max-Min Range: {max_min_mlp:.6f}")
mse_max_min_ratio = mse_mlp / max_min_mlp if max_min_mlp != 0 else float('inf')
print(f"MSE over Max-Min Range: {mse_max_min_ratio:.6f}")

# Compute R² Score for MLP Control (Comparing to LQG)
r2_mlp = r2_score(displacement_history_lqg[:, control_index], control_force_mlp)
print(f"MLP R² Score (vs LQG): {r2_mlp:.6f}")


# %% Save As Definition
def save_as_csv(model, save_dir):
    state_dict = model.state_dict()
    for key, value in state_dict.items():
        filename = os.path.join(save_dir, f"{key.replace('.', '_')}.csv")
        np.savetxt(filename, value.numpy(), delimiter=",", fmt="%.8f")
        #print(f"Saved {key} to {filename}")

save_as_csv(mlp_controller, save_dir)

