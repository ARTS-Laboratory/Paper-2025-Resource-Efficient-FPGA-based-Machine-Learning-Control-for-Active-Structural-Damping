# -*- coding: utf-8 -*-
"""
Created on Tue Jan 14 13:15:03 2025

@author: trott
"""
import os
os.environ["KMP_DUPLICATE_LIB_OK"] = "TRUE"

import numpy as np
import matplotlib.pyplot as plt
from scipy.linalg import solve_continuous_are
import torch
import torch.nn as nn

# Beam properties
E = 210e9  # Young's modulus (Pa)
rho = 7850  # Density (kg/m^3)
width = 0.05  # Beam width (m)
thickness = 0.005  # Beam thickness (m)
L = 1.0  # Beam length (m)
A = width * thickness  # Cross-sectional area
I = (width * thickness**3) / 12  # Moment of inertia

# Simulation parameters
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

# Initialize matrices
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

# PD controller gains
kp = 500
kd = 50

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

# Generate synthetic training data
training_data = []
for i in range(1000):  # Generate 1000 random samples
    displacement = np.random.uniform(-0.1, 0.1)
    velocity = np.random.uniform(-0.1, 0.1)
    acceleration = np.random.uniform(-0.1, 0.1)
    control_force = -kp * displacement - kd * velocity  # Use PD control as reference
    training_data.append((displacement, velocity, acceleration, control_force))

# Convert to PyTorch tensors
inputs = torch.tensor([[d, v, a] for d, v, a, _ in training_data], dtype=torch.float32)
targets = torch.tensor([f for _, _, _, f in training_data], dtype=torch.float32).unsqueeze(1)

# Training loop
criterion = nn.MSELoss()
optimizer = torch.optim.Adam(mlp_controller.parameters(), lr=0.001)
epochs = 100

for epoch in range(epochs):
    optimizer.zero_grad()
    predictions = mlp_controller(inputs)
    loss = criterion(predictions, targets)
    loss.backward()
    optimizer.step()
    if epoch % 10 == 0:
        print(f"Epoch {epoch}/{epochs}, Loss: {loss.item():.6f}")

# Simulation loop
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
            
# Settling Time Calculation
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


# Calculate and Output Settling Times
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


# Plot comparison
plt.rc('font', family='Times New Roman', size=11)
plt.figure(figsize=(6.5, 3))
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_uncontrolled[:, -2], label="uncontrolled", color="red", linewidth=1.0)
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP controlled", color="purple", linewidth=1.0)
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_pd[:, -2], label="PD controlled", color="green", linewidth=1.0)
plt.plot(np.linspace(0, t_total, n_steps), displacement_history_lqg[:, -2], label="LQG controlled", color="blue", linewidth=1.0)
#plt.plot(np.linspace(0, t_total, n_steps), displacement_history_mlp[:, -2], label="MLP Controlled Beam Tip", color="purple")
plt.xlabel("time (s)")
plt.ylabel("displacement (m)")
#plt.title("Beam Tip Displacement: Uncontrolled vs LQG vs PD vs MLP Controlled")
plt.grid()
plt.legend()
save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "contrcomp_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

plt.rc('font', family='Times New Roman', size=11)
plt.figure(figsize=(6.5, 3))
reduction_pd = displacement_history_uncontrolled[:, -2] - displacement_history_pd[:, -2]
reduction_lqg = displacement_history_uncontrolled[:, -2] - displacement_history_lqg[:, -2]
reduction_mlp = displacement_history_uncontrolled[:, -2] - displacement_history_mlp[:, -2]
plt.plot(np.linspace(0, t_total, n_steps), reduction_lqg, label="LQG reduction", color="blue")
plt.plot(np.linspace(0, t_total, n_steps), reduction_pd, label="PD reduction", color="green")
plt.plot(np.linspace(0, t_total, n_steps), reduction_mlp, label="MLP reduction", color="purple")
plt.axhline(0, linestyle="--", color="black", alpha=0.5, label="no reduction")
plt.xlabel("Time (s)")
plt.ylabel("displacement reduction (m)")
#plt.title("Displacement Reduction by Control Strategies")
plt.legend()
plt.grid()
save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "reduction_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

control_force_history_pd = displacement_history_pd[:, control_index]
control_force_history_lqg = displacement_history_lqg[:, control_index]
control_force_history_lqg = displacement_history_mlp[:, control_index]

plt.rc('font', family='Times New Roman', size=11)
plt.figure(figsize=(6.5, 3))
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_lqg,
    label="MLP control force",
    color="purple"
)
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_pd,
    label="PD control force",
    color="green"
)
plt.plot(
    np.linspace(0, t_total, n_steps),
    control_force_history_lqg,
    label="LQG control force",
    color="blue"
)
plt.xlabel("time (s)")
plt.ylabel("control force (N)")
#plt.title("Control Force Over Time")
plt.legend()
plt.grid()
save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "contrforce_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

from scipy.fft import fft

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

plt.rc('font', family='Times New Roman', size=11)
plt.figure(figsize=(6.5, 3))
plt.plot(freqs, spectrum_uncontrolled, label="uncontrolled", color="red")
plt.plot(freqs, spectrum_mlp, label="MLP controlled", color="purple")
plt.plot(freqs, spectrum_lqg, label="LQG controlled", color="blue")
plt.plot(freqs, spectrum_pd, label="PD controlled", color="green")
plt.xlabel("frequency (Hz)")
plt.ylabel("amplitude")
#plt.title("Frequency Response of Beam Tip Displacement")
plt.legend()
plt.grid()
save_dir = r"C:\Users\trott\OneDrive\Documents\University of South Carolina\Research\SPIE 2025 SSNDE"
if not os.path.exists(save_dir):
    os.makedirs(save_dir)  # Create the directory if it doesn't exist
save_path = os.path.join(save_dir, "freqresp_plot.png")
plt.savefig(save_path, dpi=300, bbox_inches='tight')
plt.show()

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

def save_as_csv(model, save_dir):
    state_dict = model.state_dict()
    for key, value in state_dict.items():
        filename = os.path.join(save_dir, f"{key.replace('.', '_')}.csv")
        np.savetxt(filename, value.numpy(), delimiter=",", fmt="%.8f")
        print(f"Saved {key} to {filename}")

save_as_csv(mlp_controller, save_dir)
