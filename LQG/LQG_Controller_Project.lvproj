<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="22308000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="LQG_Host.vi" Type="VI" URL="../LQG_Host.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="__closeStorageFromObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__closeStorageFromObject.vi"/>
				<Item Name="__closeStorageFromStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__closeStorageFromStorage.vi"/>
				<Item Name="__convertUtcTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__convertUtcTime.vi"/>
				<Item Name="__createXmlString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__createXmlString.vi"/>
				<Item Name="__getPropertyTypeObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/__getPropertyTypeObject.vi"/>
				<Item Name="__getPropertyTypeStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/__getPropertyTypeStorage.vi"/>
				<Item Name="__linkRefnumDefinitionObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__linkRefnumDefinitionObject.vi"/>
				<Item Name="__linkRefnumDefinitionStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__linkRefnumDefinitionStorage.vi"/>
				<Item Name="__loadDateTimeChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadDateTimeChannel.vi"/>
				<Item Name="__loadFloat64Channel.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadFloat64Channel.vi"/>
				<Item Name="__loadPropEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropEnum.vi"/>
				<Item Name="__loadPropErrFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropErrFilter.vi"/>
				<Item Name="__loadPropFloat32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropFloat32.vi"/>
				<Item Name="__loadPropFloat64.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropFloat64.vi"/>
				<Item Name="__loadPropInt16.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropInt16.vi"/>
				<Item Name="__loadPropInt32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropInt32.vi"/>
				<Item Name="__loadPropRef.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropRef.vi"/>
				<Item Name="__loadPropRefList.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropRefList.vi"/>
				<Item Name="__loadPropString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropString.vi"/>
				<Item Name="__loadPropTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropTime.vi"/>
				<Item Name="__loadPropUInt8.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropUInt8.vi"/>
				<Item Name="__queryObjects.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__queryObjects.vi"/>
				<Item Name="__savePropEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropEnum.vi"/>
				<Item Name="__savePropErrFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropErrFilter.vi"/>
				<Item Name="__savePropFloat32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropFloat32.vi"/>
				<Item Name="__savePropFloat64.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropFloat64.vi"/>
				<Item Name="__savePropInt16.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropInt16.vi"/>
				<Item Name="__savePropInt32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropInt32.vi"/>
				<Item Name="__savePropRef.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropRef.vi"/>
				<Item Name="__savePropRefList.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropRefList.vi"/>
				<Item Name="__savePropString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropString.vi"/>
				<Item Name="__savePropTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropTime.vi"/>
				<Item Name="__savePropUInt8.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropUInt8.vi"/>
				<Item Name="__setErrSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__setErrSource.vi"/>
				<Item Name="_checkInstAttrError.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_checkInstAttrError.vi"/>
				<Item Name="_closeDataStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_closeDataStorage.vi"/>
				<Item Name="_commitObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitObject.vi"/>
				<Item Name="_commitStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitStorage.vi"/>
				<Item Name="_commitTransaction.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitTransaction.vi"/>
				<Item Name="_createObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_createObject.vi"/>
				<Item Name="_findOpenStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_findOpenStorage.vi"/>
				<Item Name="_getChannelLength.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_getChannelLength.vi"/>
				<Item Name="_getObjDefByName.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getObjDefByName.vi"/>
				<Item Name="_getPropDefByName.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getPropDefByName.vi"/>
				<Item Name="_getPropertyType.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getPropertyType.vi"/>
				<Item Name="_internalProps.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_internalProps.ctl"/>
				<Item Name="_isTdmDataStructure.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_isTdmDataStructure.vi"/>
				<Item Name="_L_localizedStrings.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_L_localizedStrings.vi"/>
				<Item Name="_L_NodeNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_L_NodeNames.vi"/>
				<Item Name="_L_stringTable.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_L_stringTable.vi"/>
				<Item Name="_loadObjectDefinitions.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadObjectDefinitions.vi"/>
				<Item Name="_loadProperty.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadProperty.vi"/>
				<Item Name="_loadPropertyDefinitions.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadPropertyDefinitions.vi"/>
				<Item Name="_mapPropertyNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapPropertyNames.vi"/>
				<Item Name="_mapTdmObjectTypes.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapTdmObjectTypes.vi"/>
				<Item Name="_mapTdmPropertyNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapTdmPropertyNames.vi"/>
				<Item Name="_openFunction.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_openFunction.ctl"/>
				<Item Name="_saveProperty.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_saveProperty.vi"/>
				<Item Name="_stringsToBeTranslated.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_stringsToBeTranslated.ctl"/>
				<Item Name="_TDM_DATA_MODEL.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_TDM_DATA_MODEL.vi"/>
				<Item Name="_WaveformProperties.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_WaveformProperties.vi"/>
				<Item Name="_wf_attributes.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_wf_attributes.ctl"/>
				<Item Name="Build Exp Wvfrm (Cluster).vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Build Exp Wvfrm (Cluster).vi"/>
				<Item Name="Build Exp Wvfrm (Wvfrm).vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Build Exp Wvfrm (Wvfrm).vi"/>
				<Item Name="Build Express Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Build Express Waveform.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="CloseDataObjectRefnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/CloseDataObjectRefnum.vi"/>
				<Item Name="CloseDataStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/CloseDataStorage.vi"/>
				<Item Name="CloseDataStorageRefnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/CloseDataStorageRefnum.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="dataModel.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/dataModel.ctl"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="DU64_U32AddWithOverflow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32AddWithOverflow.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_AllChanInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_AllChanInfo.ctl"/>
				<Item Name="ex_CalcNewX0.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_CalcNewX0.vi"/>
				<Item Name="ex_CheckEOF.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_CheckEOF.vi"/>
				<Item Name="ex_ClearFileOpenCancelErr.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ClearFileOpenCancelErr.vi"/>
				<Item Name="ex_convert2DArrayToExWave.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_convert2DArrayToExWave.vi"/>
				<Item Name="ex_ConvertError.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ConvertError.vi"/>
				<Item Name="ex_convertXDim.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_convertXDim.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_CreateError.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_CreateError.vi"/>
				<Item Name="ex_ExpandPathIfRelative.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ExpandPathIfRelative.vi"/>
				<Item Name="ex_FileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_FileDialog.vi"/>
				<Item Name="ex_FileFormats.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_FileFormats.ctl"/>
				<Item Name="ex_FileFormatSelector.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_FileFormatSelector.ctl"/>
				<Item Name="ex_FileGlobals.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_FileGlobals.vi"/>
				<Item Name="ex_FileReadAll.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_FileReadAll.vi"/>
				<Item Name="ex_FileReadTDM.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_FileReadTDM.vi"/>
				<Item Name="ex_FileReadTDMS.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_TDMS/ex_FileReadTDMS.vi"/>
				<Item Name="ex_FileReference.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_FileReference.ctl"/>
				<Item Name="ex_GetData.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetData.vi"/>
				<Item Name="ex_GetDefaultUnits.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_GetDefaultUnits.vi"/>
				<Item Name="ex_getFileTokens.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_getFileTokens.vi"/>
				<Item Name="ex_GetHeader.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetHeader.vi"/>
				<Item Name="ex_GetHeaderFromChunk.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetHeaderFromChunk.vi"/>
				<Item Name="ex_GetLVMSoftwareInfo.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_GetLVMSoftwareInfo.vi"/>
				<Item Name="ex_GetNextChunk.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetNextChunk.vi"/>
				<Item Name="ex_getNextGroupTDMS.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_TDMS/ex_getNextGroupTDMS.vi"/>
				<Item Name="ex_GetOneLineFromChunk.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetOneLineFromChunk.vi"/>
				<Item Name="ex_GetPacketData.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetPacketData.vi"/>
				<Item Name="ex_GetPacketHeader.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_GetPacketHeader.vi"/>
				<Item Name="ex_IsReaderVersionOK.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_IsReaderVersionOK.vi"/>
				<Item Name="ex_openStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_openStorage.vi"/>
				<Item Name="ex_openStorageWithRoot.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_openStorageWithRoot.vi"/>
				<Item Name="ex_openTDMForReading.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_openTDMForReading.vi"/>
				<Item Name="ex_openWithRoot.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_openWithRoot.vi"/>
				<Item Name="ex_ParseFileHeader.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_ParseFileHeader.vi"/>
				<Item Name="ex_ParseMColPHeadLine.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_ParseMColPHeadLine.vi"/>
				<Item Name="ex_ParsePacketHeader.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_ParsePacketHeader.vi"/>
				<Item Name="ex_PluginInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_PluginInfo.ctl"/>
				<Item Name="ex_Read-CheckFileType.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_Read-CheckFileType.vi"/>
				<Item Name="ex_readChannelInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_readChannelInfo.ctl"/>
				<Item Name="ex_ReadFileGenericParams.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_ReadFileGenericParams.ctl"/>
				<Item Name="ex_ReadFileParams.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_ReadFileParams.ctl"/>
				<Item Name="ex_readInfoTDM.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_readInfoTDM.ctl"/>
				<Item Name="ex_readLines.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_readLines.vi"/>
				<Item Name="ex_readRawDataTDM.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_readRawDataTDM.vi"/>
				<Item Name="ex_readSimpleFile.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_readSimpleFile.vi"/>
				<Item Name="ex_readTdmChannelInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_readTdmChannelInfo.vi"/>
				<Item Name="ex_RemoveSpecialFromChunk.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_RemoveSpecialFromChunk.vi"/>
				<Item Name="ex_resolveStaticPath.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_resolveStaticPath.vi"/>
				<Item Name="ex_ScanDateTimeString.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ScanDateTimeString.vi"/>
				<Item Name="ex_ScanTimestamp.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ScanTimestamp.vi"/>
				<Item Name="ex_SetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetAllExpressAttribs.vi"/>
				<Item Name="ex_SetExpAttribsAndT0.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetExpAttribsAndT0.vi"/>
				<Item Name="ex_SoftwareRevision.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_SoftwareRevision.ctl"/>
				<Item Name="ex_SplitPacketDataRow.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_SplitPacketDataRow.vi"/>
				<Item Name="ex_subFileRead.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_subFileRead.vi"/>
				<Item Name="ex_TdmData.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_TdmData.ctl"/>
				<Item Name="ex_TdmProperty.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_TdmProperty.ctl"/>
				<Item Name="ex_tdsReadAllProperties.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/express/TDMExpress.llb/ex_tdsReadAllProperties.vi"/>
				<Item Name="ex_UnescapeStoredString.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_UnescapeStoredString.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_WaveformAttribsPlus.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribsPlus.ctl"/>
				<Item Name="ex_YesOrNoToBool.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/ExFileReadBlock.llb/ex_YesOrNoToBool.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Get Object Info.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Object Info.vi"/>
				<Item Name="Get Property (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (DBL).vi"/>
				<Item Name="Get Property (Enum).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Enum).vi"/>
				<Item Name="Get Property (I16).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (I16).vi"/>
				<Item Name="Get Property (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (I32).vi"/>
				<Item Name="Get Property (SGL).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (SGL).vi"/>
				<Item Name="Get Property (Storage Refnum).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Storage Refnum).vi"/>
				<Item Name="Get Property (Storage Refnums).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Storage Refnums).vi"/>
				<Item Name="Get Property (String).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (String).vi"/>
				<Item Name="Get Property (Time Stamp).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Time Stamp).vi"/>
				<Item Name="Get Property (U8).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (U8).vi"/>
				<Item Name="Get Property Type.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/Get Property Type.vi"/>
				<Item Name="Get Property.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="ParseXMLParams.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/ParseXMLParams.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="specialProperties.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/specialProperties.ctl"/>
				<Item Name="Timestamp Add.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Add.vi"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="usiDataType.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_EditUserDefinedProperties/usiDataType.ctl"/>
				<Item Name="usiPropDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/usiPropDef.ctl"/>
				<Item Name="usiTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/usiTypeDef.ctl"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvStorage.dll" Type="Document" URL="lvStorage.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-cRIO-9035-01B68DEF" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">NI-cRIO-9035-01B68DEF</Property>
		<Property Name="alias.value" Type="Str">172.22.11.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;DeviceCode,77DB;</Property>
		<Property Name="crio.ControllerPID" Type="Str">77DB</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="host.TargetUIEnabled" Type="Bool">false</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9035</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{3DB3B9BF-8D9D-4ADA-9C79-E2F5999572F7}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{6D357443-EB55-4ED1-B6E3-167E95CAFEFE}"ControlLogic=0;NumberOfElements=2047;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;u(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{761D65C4-41EB-424D-853B-E9DB75C50008}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{78ABB19A-1FED-452A-8CD4-51335E901199}resource=/Scan Clock;0;ReadMethodType=bool{7FC62D70-8FCC-4C39-9FF2-BE4A490EEC0B}resource=/Chassis Temperature;0;ReadMethodType=i16{AF00C23A-F5D2-4FEB-BB42-0CFCAD745AAF}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B37B6081-704B-4BC8-849F-5F57F9F3CE8D}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{B8DCF097-E3FA-426C-947E-C4DAD1863330}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{C0946998-F522-4FCA-8FEF-31F6CC81883F}"ControlLogic=0;NumberOfElements=2053;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;y(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{CF96FA4D-6FE0-4D13-A913-9D360756BB85}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{E8EE3040-2D38-4DC1-89FE-DEA4C5A2A4B0}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{EFBD2A68-0F02-4C27-92C7-DB9E6CA5659B}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{F603C1D5-61AF-445B-8F92-D1D142830E84}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2cRIO-9035/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9035FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Ax_hatActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2B_dActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9035/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9035FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]KActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2L_dActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolu(t) FIFO"ControlLogic=0;NumberOfElements=2047;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;u(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"USER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=booly(t) FIFO"ControlLogic=0;NumberOfElements=2053;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;y(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9035/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9035FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="niFpga_TopLevelVIID" Type="Path">/C/Users/User/Documents/TJR FPGA/SPIE25/LQG/LQG_Target.vi</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9035</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{7FC62D70-8FCC-4C39-9FF2-BE4A490EEC0B}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B37B6081-704B-4BC8-849F-5F57F9F3CE8D}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AF00C23A-F5D2-4FEB-BB42-0CFCAD745AAF}</Property>
					</Item>
					<Item Name="USER FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/USER FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CF96FA4D-6FE0-4D13-A913-9D360756BB85}</Property>
					</Item>
					<Item Name="USER Push Button" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>0</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/USER Push Button</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EFBD2A68-0F02-4C27-92C7-DB9E6CA5659B}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{78ABB19A-1FED-452A-8CD4-51335E901199}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{B8DCF097-E3FA-426C-947E-C4DAD1863330}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="LQG_Target.vi" Type="VI" URL="../LQG_Target.vi">
					<Property Name="configString.guid" Type="Str">{3DB3B9BF-8D9D-4ADA-9C79-E2F5999572F7}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{6D357443-EB55-4ED1-B6E3-167E95CAFEFE}"ControlLogic=0;NumberOfElements=2047;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;u(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{761D65C4-41EB-424D-853B-E9DB75C50008}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{78ABB19A-1FED-452A-8CD4-51335E901199}resource=/Scan Clock;0;ReadMethodType=bool{7FC62D70-8FCC-4C39-9FF2-BE4A490EEC0B}resource=/Chassis Temperature;0;ReadMethodType=i16{AF00C23A-F5D2-4FEB-BB42-0CFCAD745AAF}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B37B6081-704B-4BC8-849F-5F57F9F3CE8D}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{B8DCF097-E3FA-426C-947E-C4DAD1863330}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{C0946998-F522-4FCA-8FEF-31F6CC81883F}"ControlLogic=0;NumberOfElements=2053;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;y(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{CF96FA4D-6FE0-4D13-A913-9D360756BB85}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{E8EE3040-2D38-4DC1-89FE-DEA4C5A2A4B0}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2{EFBD2A68-0F02-4C27-92C7-DB9E6CA5659B}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{F603C1D5-61AF-445B-8F92-D1D142830E84}Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2cRIO-9035/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9035FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Ax_hatActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2B_dActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9035/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9035FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]KActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2L_dActual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolu(t) FIFO"ControlLogic=0;NumberOfElements=2047;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;u(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"USER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=booly(t) FIFO"ControlLogic=0;NumberOfElements=2053;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;y(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\User\Documents\TJR FPGA\SPIE25\LQG\FPGA Bitfiles\lqgcontrollerpro_FPGATarget_LQGTarget2_75vgoiCkvAk.lvbitx</Property>
				</Item>
				<Item Name="y(t) FIFO" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">2053</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">11</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=2053;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;y(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">13</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{C0946998-F522-4FCA-8FEF-31F6CC81883F}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">1500</Property>
					<Property Name="Type" Type="UInt">1</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="u(t) FIFO" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">2047</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">11</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=2047;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;u(t) FIFO;DataType=100080000000000100094009000353474c000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">13</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{6D357443-EB55-4ED1-B6E3-167E95CAFEFE}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">1500</Property>
					<Property Name="Type" Type="UInt">2</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="Ax_hat" Type="FPGA Memory Block">
					<Property Name="FPGA.PersistentID" Type="Str">{F603C1D5-61AF-445B-8F92-D1D142830E84}</Property>
					<Property Name="fullEmulation" Type="Bool">false</Property>
					<Property Name="Memory Latency" Type="UInt">2</Property>
					<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2</Property>
					<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">11</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
					<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">Variables\Ax_hat_load.vi</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
					<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
					<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=2F4F1C009AB967D33E0D7183CAE1CCFA;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Persist Memory ValuesFALSE;</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="B_d" Type="FPGA Memory Block">
					<Property Name="FPGA.PersistentID" Type="Str">{E8EE3040-2D38-4DC1-89FE-DEA4C5A2A4B0}</Property>
					<Property Name="fullEmulation" Type="Bool">false</Property>
					<Property Name="Memory Latency" Type="UInt">2</Property>
					<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2</Property>
					<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">11</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
					<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000010000001100111000110100101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">Variables\B_d_load.vi</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
					<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
					<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=3930B8798A97D353CDE550F7EB09D04F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Persist Memory ValuesFALSE;</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="K" Type="FPGA Memory Block">
					<Property Name="FPGA.PersistentID" Type="Str">{761D65C4-41EB-424D-853B-E9DB75C50008}</Property>
					<Property Name="fullEmulation" Type="Bool">false</Property>
					<Property Name="Memory Latency" Type="UInt">2</Property>
					<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2</Property>
					<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">11</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
					<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">1011111111100101010101110111100110110110010101010111010101100111110000101011101010100011100010001100000111101111000101010110110011000010100011001011000010100011110000100110001010010000010110101100000100100111101001001100100011000010100111110011011011000011010000101010111111001110110110001100001011000100100101100111111101000011011100101000000101001110110000101101111110111010101000000100001111101001100010011100111011000010111011101001101100100011010001000011101011001110111001011100001011101111010101011000000101000100100001010010101001101111110000101110000001111011000010010100010010110000110100100100111011000010110000010111011000001101010001001101110000010100010010101100001010010010101011011100000101000101000001010110000000001100110000100010100100101001100000110100010100001011110100010101000011000000101010101111110001101100010001001101100100011100011010100100000111100010011001100110011001000100100001000000010111101100010000100100101001111101110110010100010000001101101101001100010101000010011110101100010110110111010000110111000101110011010101000100001010000111100011010100001101000010100100001011110111010110010000101000101000110001101111000100000101111110011001011111111001000010100010101101101101001110010000011000101101101100100110110100001010001100110010110101101001000001001100101101101101101100010000101001000010100000001101101100001001001001011001111001100101000010100101001011001000011111110000110011010011101101100100010100001010010110000000001010001111000011101110111001110101100100010000101001000110010000010010111100010000010100110000010101001001000010100001010111101000010101110001000100010110101100010001100100001001100011011101000000000011000100011000111000001011000010010000100011000000010111100110001100010001100101101100011111111101000001111011111011010001111110110001000100101011100010000010110100000110000111000010101010000111000100000110010000000101000110010000001101011001010110100111111100001110111001111001010011110000111111001000110111010100101000110000110001001111000010010001111011111110000010101111011101110001000001011011001001111111111101001111110110001110110110101010100100001010111010010011100011001101000000100101101100111100010000010000101001111100000110000111000100000100001010000010111000110000111111110000010000100111001000010000010010111111001010011000101100001010111111000100111101000001000001001010110110001100010101110000110010110011011011000010010100000011111011011001111111101111000011010011001100111011110011010000000100110111111101110111111100001100111010101011010010100111000000000011011101010011100001110000101111111110001110110110011100000011101010011110100111011011000010001100110001000100101100110000010011001011001110110001000100001000110100111100111001011111000001010101100101111110011010010000101111100001110110111111011100000101100000001010001011011101000011001100110010010011000011110000010101001111000101000011110100001101010111000000111000100011000001001110000101001010010011010000110110011111001001110001111100000100010011001100110010001101000011011011010011111101111101110000001101000101000001000001110100001101111000101100001001011111000000011011011111101101111111110000101001010110000110010111111100000000111010010111101011011101000001001000001100001010011010101110011000010001101011111100110011110101100111010100110001101100111001000010111010100110111001001111100100101110100001101110000011100110000100011010111010101100111110110110011011001000101101001110011011110111011011110010000011111100111010110011110011110100111001111101000011010000010101001111111000110111111100010011000011101000010100011110101100001100111111110001111110111110111111001110100010111001011111000010100100000000000101100101010100011000111010010010000001000000100101010000000010101110101011001000100011101001100000011111101101101101000000010101100101001011011011001110100111100111010000010001110100000010000010001110110100010100111010100001010110110101000101010000001001101111100111101010110011101010010001010110010000001101000000101011011001001101001001001110011010100011111010011000000100000010101010111110110011000110111001111110001000011001110011010000001001111111101110111010111011100111010111110001001110000001000000100101101001111000001010101110011100110101111100010011100100000010001101110011100001011010111001101110100001001110011110010000001000010110111110001101001011100110101110001100101011000001000000011111000101000101111010101110011010001111111100011001010100000001101101111101000110011010111001100111000110011110101100010000000110000000110010001010111011100110010110010111001110101101000000010100101110110011111010101110011001000101110110110111110100000001000110000100001000110010111001100011010010110001100100010000000011100110010011111001101011100110001001000100110000110101000000001011010111011011111011101110011000010011001100101001110100000000100001110000010100100010111001100000000001000100110100010000000001011001111111101010101011100101110101011000010000101001000000000010111100001000111011101110010110100100100011110101010100000000000001100110100101001010111001010110110110001100001000001111111111000000110001011110111011100101001100001110101110000100111111110111101001100011000100101110010011101111100001111100010011111111001110100000100111101110111001001010101010001000000101001111111011111111111111000111101011100100011000110110000011001100111111101100110001011000100011101110010000011011110010000000010011111110100111110001001101101110111000111010101100100010101111001111111001110111111101111100001011100011001001010011010101010100111111100101011010100110101000101110001010101001011000000000010011111110001110101001101011000110111000100011101010011101111000001111111000100011001100001111101011100001101101100011110011000100111111100000111110110010000001101110000100011000011011110011010011111101111111101011100101001110111000001001110010000011100011001111110111100010111000001110101011100000010000010110111110100000111111011100101001101101011010101110000000000100111110010111100011111101101101000001000100110010110111111100011110000101100111001111110110011110101010111111011011011111101100101001111010011000111111011000100101010101101101101101111111000000101110100001000011111101011100110110011011101110110111111110010111110011011111001111110101011100011111111000001011100000000010101011010010111000111111010100010010001011000111101110000000100000110011011100100011111011001100110100100011011110111010101100101110001111001011</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">Variables\K_load.vi</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
					<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
					<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=6EEBA9D341BEE1B18BA8BF37566541AE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Persist Memory ValuesFALSE;</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="L_d" Type="FPGA Memory Block">
					<Property Name="FPGA.PersistentID" Type="Str">{3DB3B9BF-8D9D-4ADA-9C79-E2F5999572F7}</Property>
					<Property Name="fullEmulation" Type="Bool">false</Property>
					<Property Name="Memory Latency" Type="UInt">2</Property>
					<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2</Property>
					<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">11</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
					<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
					<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">1011010110101111101110000110001110110011000000111100011111111100001111110000001001100111011101011011101100101001000111011011110110111001011010001011011111110011001111000000000101111001100011011011111100101001001100110001111110111010111111011000000110000111001111101101011000001010010010001011101110011011001000011101101010111101010100111010001010111101101110110001110111111010000001000011110110000100010101111010100100111011010100100111000100010101101111011111100100011101001100001011101100000001101101011100110110111110010010011101000111100010101110111010110100010010101010000011111101001100111110000000111100111010100010001011100011000011001111010101011100001111100001100011110001011001011001000101010110111110011100100010101100110010001110111111110101110000001000111011111011100011001000001011010100111011011001010001001000100100101111101110101000111000111100101011110000000101011010011011110000111110100110110010010101001000101111000011100111110011110000100011111100101110001110110110101000111011010111000101111011110011101111011111101110101101000001010011110000000000100000010110101010111111010000110101100101101010101110111001001001011011110011010011111100101110111011110001011110111010100011001111011001001000101111100100110111000001101111110011100110110000101001100100101000111101101111100101000101100111001110110100111100100010011011001011111100000000111010000010100010111011101000011101100111101101001111110001101010011101110100111011101110001100100101111010010010111110101111101110000011000001001110111001011111100000010100010011111000011011010000111001011010111011110100100011011111100010001111110000000110010010000011110011101111011101011011110000100110111111000111101111010010100111001110110101011100000010111010011011110110111110000011100110000110111011010111010110010010110101001111010010101110110101110010011011101111110010000011101000110000111101101011000010001100110001001110000011101101110100011111000011110111100011111001101000001010111011101001111010100000110100001111110101101001110111000101000011110000100110001001111101110110111111001110001001010000100011001111000111001010010000010101101011111111001111100001001001100110111100100111000100110011001101001111111100010111101111100011011011110010011010100111001100111100111111101010000000000010011111001111001010100001011100100010111100000000000000101100001101111000111100000010010101000011010100001111001000001100000010001110011011110010100011101010110000101100111111001110011000111011101101101110110010001101111001000010100011110111010010110011010100011100111010110010110001000101000111001111000010010110110000101010010011101100111100111000111000111100111110011010110101110011000000001111000000001001100010111011111011111101000011100110101100000110111010111010011101001111101111001111100111011010101101000001101011101111001000110100010000111000111110100011011111011011000111001110101000011111111110011011110011111010100100101011101101011000111011011001100100111010011100101111110101110111011101110100110011101101010010001011101011001000111111010010000010111011001011101110111100011111111101100101001011111010101011110100001000110100111100010111010001011110110011001111010000100010100011101101011011110000000101001010000111001000110110110001110001010110111001101101001100000000010101010100100011011010010000011011100110011100110010001011110111111011001011001101111000001010000000111001100011001010101111011001000100101100111000000011110100010110101011001100110000000110110000110110100011100001111011000110101111010100110011001010100100000100100011001110001100000111000001010110000011001101010001111110001000011100111001000010100010100100000111001100110111100111100011010100110011100100111010010101001101001000110011100011110110011110001110001110010111000100010011100111110011001110100001101010111111101000111001100101110010110011101110001100111011001110011000101010110011100110111000111110010000001000110011110001010010100011011010001110011101110111011001100001010011001111010101110110000110001000111010000000101101100000000101001100111110011000100101001110000011101000011000001100000111010000110011111101011001011001001011001110100010111011101001011010110011010000000010011000110000011100111010010001101111110101001011001101000000100111100101100101000011101001100000010111001001011100110100000100001110011100001100001110100111101011111001000010000011010000010111101111100000010100111010100010110110100100110011001101000001111001111011111001100011101010011001111001111100100000110100001001001010011111101100001110101010100011110101010001100011010000101010110100100000011000111010101110001000100110100111001101000011000001111001111110010011101011001000101000000000111100110100001101100000100011010010001110101101100100110100010010100011010000111011100011001000001100111010111010100011111101101000001101000100000001000111010110010011101011111011101101111001001100110100010001010001100001010000001110110000011011001100011001110011010001001001100001000010011100111011000011111110111100111011001101000100110110110010110101000011101100011001001111110110010000110100010100010111100110110110001110110010001010111011100000010011010001010101010100110011101100111011001011000110000000001010001101000101100010001000101001100011101100110110001010100010111100110100010110111101100101011101001110110100000000010111011001010011010001011110110000001000010100111011010010100010001011001110001101000110000100011010000000100011101101010100010010111011111100110100011000111001101110000101001110110101111010001111100001110011010001100101111110011100101000111011011010001110100110011011001101000110011110111101010001110011101101110011010110001011000000110100011010010100010100111010001110110111110111011010010101000011010001101011000011000110010100111011100001000011011000111001001101000110110000110110001001010011101110001001100001011101000000110100011011010101011010101111001110111000111011011011100001110011010001101110010010001000110000111011100101000011010101000001001101000110111011011100001101100011101110011001100100110000000000110100011011111000011010101010001110111001111011110011110100000011010001101111111110100111111100111011101001000101011000111101001101000111000000011111011100010011101110101001101110100001010000110100011100001000111100101110001110111010111100011111011111110011010001110000011100001011001000111011101101001000010001110111001101000111000010010011010110110011101100111000010010100101101010110111001000000000000010010110</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">Variables\L_d_load.vi</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
					<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
					<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">200</Property>
					<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
					<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=200;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=100080000000000100094009000353474c000100000000000000000000;InitDataHash=AF158B207FC3C1BE6D48FD0BE4B26F94;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=2Persist Memory ValuesFALSE;</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474c000100000000000000000000</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="vi.lib" Type="Folder">
						<Item Name="32_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_16_dot_product.vi"/>
						<Item Name="32_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_15_dot_product.vi"/>
						<Item Name="32_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_14_dot_product.vi"/>
						<Item Name="32_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_13_dot_product.vi"/>
						<Item Name="32_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_12_dot_product.vi"/>
						<Item Name="32_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_11_dot_product.vi"/>
						<Item Name="32_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_10_dot_product.vi"/>
						<Item Name="32_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_9_dot_product.vi"/>
						<Item Name="32_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_8_dot_product.vi"/>
						<Item Name="32_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_7_dot_product.vi"/>
						<Item Name="32_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_6_dot_product.vi"/>
						<Item Name="32_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_5_dot_product.vi"/>
						<Item Name="32_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_4_dot_product.vi"/>
						<Item Name="32_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_3_dot_product.vi"/>
						<Item Name="32_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_2_dot_product.vi"/>
						<Item Name="32_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/32_1_dot_product.vi"/>
						<Item Name="31_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_16_dot_product.vi"/>
						<Item Name="31_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_15_dot_product.vi"/>
						<Item Name="31_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_14_dot_product.vi"/>
						<Item Name="31_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_13_dot_product.vi"/>
						<Item Name="31_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_12_dot_product.vi"/>
						<Item Name="31_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_11_dot_product.vi"/>
						<Item Name="31_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_10_dot_product.vi"/>
						<Item Name="31_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_9_dot_product.vi"/>
						<Item Name="31_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_8_dot_product.vi"/>
						<Item Name="31_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_7_dot_product.vi"/>
						<Item Name="31_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_6_dot_product.vi"/>
						<Item Name="31_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_5_dot_product.vi"/>
						<Item Name="31_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_4_dot_product.vi"/>
						<Item Name="31_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_3_dot_product.vi"/>
						<Item Name="31_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_2_dot_product.vi"/>
						<Item Name="31_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/31_1_dot_product.vi"/>
						<Item Name="30_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_16_dot_product.vi"/>
						<Item Name="30_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_15_dot_product.vi"/>
						<Item Name="30_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_14_dot_product.vi"/>
						<Item Name="30_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_13_dot_product.vi"/>
						<Item Name="30_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_12_dot_product.vi"/>
						<Item Name="30_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_11_dot_product.vi"/>
						<Item Name="30_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_10_dot_product.vi"/>
						<Item Name="30_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_9_dot_product.vi"/>
						<Item Name="30_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_8_dot_product.vi"/>
						<Item Name="30_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_7_dot_product.vi"/>
						<Item Name="30_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_6_dot_product.vi"/>
						<Item Name="30_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_5_dot_product.vi"/>
						<Item Name="30_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_4_dot_product.vi"/>
						<Item Name="30_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_3_dot_product.vi"/>
						<Item Name="30_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_2_dot_product.vi"/>
						<Item Name="30_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/30_1_dot_product.vi"/>
						<Item Name="29_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_16_dot_product.vi"/>
						<Item Name="29_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_15_dot_product.vi"/>
						<Item Name="29_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_14_dot_product.vi"/>
						<Item Name="29_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_13_dot_product.vi"/>
						<Item Name="29_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_12_dot_product.vi"/>
						<Item Name="29_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_11_dot_product.vi"/>
						<Item Name="29_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_10_dot_product.vi"/>
						<Item Name="29_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_9_dot_product.vi"/>
						<Item Name="29_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_8_dot_product.vi"/>
						<Item Name="29_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_7_dot_product.vi"/>
						<Item Name="29_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_6_dot_product.vi"/>
						<Item Name="29_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_5_dot_product.vi"/>
						<Item Name="29_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_4_dot_product.vi"/>
						<Item Name="29_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_3_dot_product.vi"/>
						<Item Name="29_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_2_dot_product.vi"/>
						<Item Name="29_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/29_1_dot_product.vi"/>
						<Item Name="28_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_16_dot_product.vi"/>
						<Item Name="28_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_15_dot_product.vi"/>
						<Item Name="28_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_14_dot_product.vi"/>
						<Item Name="28_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_13_dot_product.vi"/>
						<Item Name="28_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_12_dot_product.vi"/>
						<Item Name="28_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_11_dot_product.vi"/>
						<Item Name="28_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_10_dot_product.vi"/>
						<Item Name="28_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_9_dot_product.vi"/>
						<Item Name="28_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_8_dot_product.vi"/>
						<Item Name="28_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_7_dot_product.vi"/>
						<Item Name="28_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_6_dot_product.vi"/>
						<Item Name="28_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_5_dot_product.vi"/>
						<Item Name="28_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_4_dot_product.vi"/>
						<Item Name="28_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_3_dot_product.vi"/>
						<Item Name="28_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_2_dot_product.vi"/>
						<Item Name="28_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/28_1_dot_product.vi"/>
						<Item Name="27_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_16_dot_product.vi"/>
						<Item Name="27_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_15_dot_product.vi"/>
						<Item Name="27_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_14_dot_product.vi"/>
						<Item Name="27_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_13_dot_product.vi"/>
						<Item Name="27_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_12_dot_product.vi"/>
						<Item Name="27_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_11_dot_product.vi"/>
						<Item Name="27_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_10_dot_product.vi"/>
						<Item Name="27_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_9_dot_product.vi"/>
						<Item Name="27_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_8_dot_product.vi"/>
						<Item Name="27_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_7_dot_product.vi"/>
						<Item Name="27_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_6_dot_product.vi"/>
						<Item Name="27_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_5_dot_product.vi"/>
						<Item Name="27_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_4_dot_product.vi"/>
						<Item Name="27_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_3_dot_product.vi"/>
						<Item Name="27_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_2_dot_product.vi"/>
						<Item Name="27_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/27_1_dot_product.vi"/>
						<Item Name="26_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_16_dot_product.vi"/>
						<Item Name="26_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_15_dot_product.vi"/>
						<Item Name="26_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_14_dot_product.vi"/>
						<Item Name="26_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_13_dot_product.vi"/>
						<Item Name="26_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_12_dot_product.vi"/>
						<Item Name="26_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_11_dot_product.vi"/>
						<Item Name="26_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_10_dot_product.vi"/>
						<Item Name="26_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_9_dot_product.vi"/>
						<Item Name="26_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_8_dot_product.vi"/>
						<Item Name="26_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_7_dot_product.vi"/>
						<Item Name="26_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_6_dot_product.vi"/>
						<Item Name="26_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_5_dot_product.vi"/>
						<Item Name="26_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_4_dot_product.vi"/>
						<Item Name="26_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_3_dot_product.vi"/>
						<Item Name="26_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_2_dot_product.vi"/>
						<Item Name="26_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/26_1_dot_product.vi"/>
						<Item Name="25_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_16_dot_product.vi"/>
						<Item Name="25_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_15_dot_product.vi"/>
						<Item Name="25_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_14_dot_product.vi"/>
						<Item Name="25_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_13_dot_product.vi"/>
						<Item Name="25_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_12_dot_product.vi"/>
						<Item Name="25_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_11_dot_product.vi"/>
						<Item Name="25_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_10_dot_product.vi"/>
						<Item Name="25_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_9_dot_product.vi"/>
						<Item Name="25_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_8_dot_product.vi"/>
						<Item Name="25_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_7_dot_product.vi"/>
						<Item Name="25_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_6_dot_product.vi"/>
						<Item Name="25_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_5_dot_product.vi"/>
						<Item Name="25_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_4_dot_product.vi"/>
						<Item Name="25_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_3_dot_product.vi"/>
						<Item Name="25_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_2_dot_product.vi"/>
						<Item Name="25_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/25_1_dot_product.vi"/>
						<Item Name="24_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_16_dot_product.vi"/>
						<Item Name="24_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_15_dot_product.vi"/>
						<Item Name="24_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_14_dot_product.vi"/>
						<Item Name="24_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_13_dot_product.vi"/>
						<Item Name="24_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_12_dot_product.vi"/>
						<Item Name="24_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_11_dot_product.vi"/>
						<Item Name="24_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_10_dot_product.vi"/>
						<Item Name="24_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_9_dot_product.vi"/>
						<Item Name="24_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_8_dot_product.vi"/>
						<Item Name="24_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_7_dot_product.vi"/>
						<Item Name="24_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_6_dot_product.vi"/>
						<Item Name="24_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_5_dot_product.vi"/>
						<Item Name="24_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_4_dot_product.vi"/>
						<Item Name="24_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_3_dot_product.vi"/>
						<Item Name="24_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_2_dot_product.vi"/>
						<Item Name="24_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/24_1_dot_product.vi"/>
						<Item Name="23_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_16_dot_product.vi"/>
						<Item Name="23_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_15_dot_product.vi"/>
						<Item Name="23_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_14_dot_product.vi"/>
						<Item Name="23_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_13_dot_product.vi"/>
						<Item Name="23_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_12_dot_product.vi"/>
						<Item Name="23_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_11_dot_product.vi"/>
						<Item Name="23_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_10_dot_product.vi"/>
						<Item Name="23_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_9_dot_product.vi"/>
						<Item Name="23_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_8_dot_product.vi"/>
						<Item Name="23_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_7_dot_product.vi"/>
						<Item Name="23_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_6_dot_product.vi"/>
						<Item Name="23_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_5_dot_product.vi"/>
						<Item Name="23_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_4_dot_product.vi"/>
						<Item Name="23_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_3_dot_product.vi"/>
						<Item Name="23_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_2_dot_product.vi"/>
						<Item Name="23_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/23_1_dot_product.vi"/>
						<Item Name="22_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_16_dot_product.vi"/>
						<Item Name="22_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_15_dot_product.vi"/>
						<Item Name="22_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_14_dot_product.vi"/>
						<Item Name="22_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_13_dot_product.vi"/>
						<Item Name="22_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_12_dot_product.vi"/>
						<Item Name="22_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_11_dot_product.vi"/>
						<Item Name="22_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_10_dot_product.vi"/>
						<Item Name="22_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_9_dot_product.vi"/>
						<Item Name="22_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_8_dot_product.vi"/>
						<Item Name="22_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_7_dot_product.vi"/>
						<Item Name="22_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_6_dot_product.vi"/>
						<Item Name="22_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_5_dot_product.vi"/>
						<Item Name="22_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_4_dot_product.vi"/>
						<Item Name="22_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_3_dot_product.vi"/>
						<Item Name="22_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_2_dot_product.vi"/>
						<Item Name="22_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/22_1_dot_product.vi"/>
						<Item Name="21_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_16_dot_product.vi"/>
						<Item Name="21_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_15_dot_product.vi"/>
						<Item Name="21_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_14_dot_product.vi"/>
						<Item Name="21_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_13_dot_product.vi"/>
						<Item Name="21_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_12_dot_product.vi"/>
						<Item Name="21_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_11_dot_product.vi"/>
						<Item Name="21_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_10_dot_product.vi"/>
						<Item Name="21_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_9_dot_product.vi"/>
						<Item Name="21_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_8_dot_product.vi"/>
						<Item Name="21_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_7_dot_product.vi"/>
						<Item Name="21_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_6_dot_product.vi"/>
						<Item Name="21_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_5_dot_product.vi"/>
						<Item Name="21_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_4_dot_product.vi"/>
						<Item Name="21_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_3_dot_product.vi"/>
						<Item Name="21_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_2_dot_product.vi"/>
						<Item Name="21_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/21_1_dot_product.vi"/>
						<Item Name="20_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_16_dot_product.vi"/>
						<Item Name="20_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_15_dot_product.vi"/>
						<Item Name="20_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_14_dot_product.vi"/>
						<Item Name="20_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_13_dot_product.vi"/>
						<Item Name="20_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_12_dot_product.vi"/>
						<Item Name="20_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_11_dot_product.vi"/>
						<Item Name="20_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_10_dot_product.vi"/>
						<Item Name="20_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_9_dot_product.vi"/>
						<Item Name="20_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_8_dot_product.vi"/>
						<Item Name="20_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_7_dot_product.vi"/>
						<Item Name="20_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_6_dot_product.vi"/>
						<Item Name="20_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_5_dot_product.vi"/>
						<Item Name="20_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_4_dot_product.vi"/>
						<Item Name="20_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_3_dot_product.vi"/>
						<Item Name="20_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_2_dot_product.vi"/>
						<Item Name="20_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/20_1_dot_product.vi"/>
						<Item Name="19_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_16_dot_product.vi"/>
						<Item Name="19_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_15_dot_product.vi"/>
						<Item Name="19_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_14_dot_product.vi"/>
						<Item Name="19_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_13_dot_product.vi"/>
						<Item Name="19_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_12_dot_product.vi"/>
						<Item Name="19_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_11_dot_product.vi"/>
						<Item Name="19_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_10_dot_product.vi"/>
						<Item Name="19_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_9_dot_product.vi"/>
						<Item Name="19_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_8_dot_product.vi"/>
						<Item Name="19_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_7_dot_product.vi"/>
						<Item Name="19_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_6_dot_product.vi"/>
						<Item Name="19_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_5_dot_product.vi"/>
						<Item Name="19_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_4_dot_product.vi"/>
						<Item Name="19_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_3_dot_product.vi"/>
						<Item Name="19_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_2_dot_product.vi"/>
						<Item Name="19_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/19_1_dot_product.vi"/>
						<Item Name="18_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_16_dot_product.vi"/>
						<Item Name="18_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_15_dot_product.vi"/>
						<Item Name="18_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_14_dot_product.vi"/>
						<Item Name="18_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_13_dot_product.vi"/>
						<Item Name="18_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_12_dot_product.vi"/>
						<Item Name="18_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_11_dot_product.vi"/>
						<Item Name="18_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_10_dot_product.vi"/>
						<Item Name="18_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_9_dot_product.vi"/>
						<Item Name="18_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_8_dot_product.vi"/>
						<Item Name="18_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_7_dot_product.vi"/>
						<Item Name="18_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_6_dot_product.vi"/>
						<Item Name="18_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_5_dot_product.vi"/>
						<Item Name="18_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_4_dot_product.vi"/>
						<Item Name="18_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_3_dot_product.vi"/>
						<Item Name="18_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_2_dot_product.vi"/>
						<Item Name="18_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/18_1_dot_product.vi"/>
						<Item Name="17_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_16_dot_product.vi"/>
						<Item Name="17_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_15_dot_product.vi"/>
						<Item Name="17_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_14_dot_product.vi"/>
						<Item Name="17_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_13_dot_product.vi"/>
						<Item Name="17_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_12_dot_product.vi"/>
						<Item Name="17_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_11_dot_product.vi"/>
						<Item Name="17_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_10_dot_product.vi"/>
						<Item Name="17_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_9_dot_product.vi"/>
						<Item Name="17_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_8_dot_product.vi"/>
						<Item Name="17_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_7_dot_product.vi"/>
						<Item Name="17_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_6_dot_product.vi"/>
						<Item Name="17_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_5_dot_product.vi"/>
						<Item Name="17_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_4_dot_product.vi"/>
						<Item Name="17_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_3_dot_product.vi"/>
						<Item Name="17_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_2_dot_product.vi"/>
						<Item Name="17_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/17_1_dot_product.vi"/>
						<Item Name="16_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_16_dot_product.vi"/>
						<Item Name="16_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_15_dot_product.vi"/>
						<Item Name="16_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_14_dot_product.vi"/>
						<Item Name="16_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_13_dot_product.vi"/>
						<Item Name="16_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_12_dot_product.vi"/>
						<Item Name="16_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_11_dot_product.vi"/>
						<Item Name="16_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_10_dot_product.vi"/>
						<Item Name="16_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_9_dot_product.vi"/>
						<Item Name="16_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_8_dot_product.vi"/>
						<Item Name="16_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_7_dot_product.vi"/>
						<Item Name="16_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_6_dot_product.vi"/>
						<Item Name="16_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_5_dot_product.vi"/>
						<Item Name="16_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_4_dot_product.vi"/>
						<Item Name="16_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_3_dot_product.vi"/>
						<Item Name="16_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_2_dot_product.vi"/>
						<Item Name="16_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/16_1_dot_product.vi"/>
						<Item Name="15_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_16_dot_product.vi"/>
						<Item Name="15_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_15_dot_product.vi"/>
						<Item Name="15_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_14_dot_product.vi"/>
						<Item Name="15_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_13_dot_product.vi"/>
						<Item Name="15_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_12_dot_product.vi"/>
						<Item Name="15_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_11_dot_product.vi"/>
						<Item Name="15_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_10_dot_product.vi"/>
						<Item Name="15_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_9_dot_product.vi"/>
						<Item Name="15_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_8_dot_product.vi"/>
						<Item Name="15_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_7_dot_product.vi"/>
						<Item Name="15_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_6_dot_product.vi"/>
						<Item Name="15_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_5_dot_product.vi"/>
						<Item Name="15_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_4_dot_product.vi"/>
						<Item Name="15_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_3_dot_product.vi"/>
						<Item Name="15_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_2_dot_product.vi"/>
						<Item Name="15_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/15_1_dot_product.vi"/>
						<Item Name="14_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_16_dot_product.vi"/>
						<Item Name="14_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_15_dot_product.vi"/>
						<Item Name="14_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_14_dot_product.vi"/>
						<Item Name="14_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_13_dot_product.vi"/>
						<Item Name="14_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_12_dot_product.vi"/>
						<Item Name="14_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_11_dot_product.vi"/>
						<Item Name="14_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_10_dot_product.vi"/>
						<Item Name="14_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_9_dot_product.vi"/>
						<Item Name="14_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_8_dot_product.vi"/>
						<Item Name="14_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_7_dot_product.vi"/>
						<Item Name="14_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_6_dot_product.vi"/>
						<Item Name="14_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_5_dot_product.vi"/>
						<Item Name="14_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_4_dot_product.vi"/>
						<Item Name="14_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_3_dot_product.vi"/>
						<Item Name="14_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_2_dot_product.vi"/>
						<Item Name="14_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/14_1_dot_product.vi"/>
						<Item Name="13_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_16_dot_product.vi"/>
						<Item Name="13_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_15_dot_product.vi"/>
						<Item Name="13_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_14_dot_product.vi"/>
						<Item Name="13_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_13_dot_product.vi"/>
						<Item Name="13_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_12_dot_product.vi"/>
						<Item Name="13_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_11_dot_product.vi"/>
						<Item Name="13_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_10_dot_product.vi"/>
						<Item Name="13_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_9_dot_product.vi"/>
						<Item Name="13_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_8_dot_product.vi"/>
						<Item Name="13_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_7_dot_product.vi"/>
						<Item Name="13_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_6_dot_product.vi"/>
						<Item Name="13_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_5_dot_product.vi"/>
						<Item Name="13_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_4_dot_product.vi"/>
						<Item Name="13_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_3_dot_product.vi"/>
						<Item Name="13_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_2_dot_product.vi"/>
						<Item Name="13_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/13_1_dot_product.vi"/>
						<Item Name="12_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_16_dot_product.vi"/>
						<Item Name="12_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_15_dot_product.vi"/>
						<Item Name="12_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_14_dot_product.vi"/>
						<Item Name="12_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_13_dot_product.vi"/>
						<Item Name="12_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_12_dot_product.vi"/>
						<Item Name="12_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_11_dot_product.vi"/>
						<Item Name="12_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_10_dot_product.vi"/>
						<Item Name="12_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_9_dot_product.vi"/>
						<Item Name="12_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_8_dot_product.vi"/>
						<Item Name="12_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_7_dot_product.vi"/>
						<Item Name="12_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_6_dot_product.vi"/>
						<Item Name="12_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_5_dot_product.vi"/>
						<Item Name="12_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_4_dot_product.vi"/>
						<Item Name="12_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_3_dot_product.vi"/>
						<Item Name="12_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_2_dot_product.vi"/>
						<Item Name="12_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/12_1_dot_product.vi"/>
						<Item Name="11_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_16_dot_product.vi"/>
						<Item Name="11_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_15_dot_product.vi"/>
						<Item Name="11_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_14_dot_product.vi"/>
						<Item Name="11_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_13_dot_product.vi"/>
						<Item Name="11_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_12_dot_product.vi"/>
						<Item Name="11_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_11_dot_product.vi"/>
						<Item Name="11_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_10_dot_product.vi"/>
						<Item Name="11_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_9_dot_product.vi"/>
						<Item Name="11_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_8_dot_product.vi"/>
						<Item Name="11_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_7_dot_product.vi"/>
						<Item Name="11_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_6_dot_product.vi"/>
						<Item Name="11_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_5_dot_product.vi"/>
						<Item Name="11_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_4_dot_product.vi"/>
						<Item Name="11_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_3_dot_product.vi"/>
						<Item Name="11_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_2_dot_product.vi"/>
						<Item Name="11_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/11_1_dot_product.vi"/>
						<Item Name="10_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_16_dot_product.vi"/>
						<Item Name="10_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_15_dot_product.vi"/>
						<Item Name="10_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_14_dot_product.vi"/>
						<Item Name="10_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_13_dot_product.vi"/>
						<Item Name="10_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_12_dot_product.vi"/>
						<Item Name="10_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_11_dot_product.vi"/>
						<Item Name="10_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_10_dot_product.vi"/>
						<Item Name="10_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_9_dot_product.vi"/>
						<Item Name="10_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_8_dot_product.vi"/>
						<Item Name="10_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_7_dot_product.vi"/>
						<Item Name="10_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_6_dot_product.vi"/>
						<Item Name="10_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_5_dot_product.vi"/>
						<Item Name="10_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_4_dot_product.vi"/>
						<Item Name="10_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_3_dot_product.vi"/>
						<Item Name="10_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_2_dot_product.vi"/>
						<Item Name="10_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/10_1_dot_product.vi"/>
						<Item Name="9_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_16_dot_product.vi"/>
						<Item Name="9_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_15_dot_product.vi"/>
						<Item Name="9_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_14_dot_product.vi"/>
						<Item Name="9_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_13_dot_product.vi"/>
						<Item Name="9_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_12_dot_product.vi"/>
						<Item Name="9_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_11_dot_product.vi"/>
						<Item Name="9_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_10_dot_product.vi"/>
						<Item Name="9_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_9_dot_product.vi"/>
						<Item Name="9_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_8_dot_product.vi"/>
						<Item Name="9_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_7_dot_product.vi"/>
						<Item Name="9_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_6_dot_product.vi"/>
						<Item Name="9_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_5_dot_product.vi"/>
						<Item Name="9_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_4_dot_product.vi"/>
						<Item Name="9_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_3_dot_product.vi"/>
						<Item Name="9_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_2_dot_product.vi"/>
						<Item Name="9_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/9_1_dot_product.vi"/>
						<Item Name="8_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_16_dot_product.vi"/>
						<Item Name="8_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_15_dot_product.vi"/>
						<Item Name="8_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_14_dot_product.vi"/>
						<Item Name="8_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_13_dot_product.vi"/>
						<Item Name="8_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_12_dot_product.vi"/>
						<Item Name="8_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_11_dot_product.vi"/>
						<Item Name="8_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_10_dot_product.vi"/>
						<Item Name="8_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_9_dot_product.vi"/>
						<Item Name="8_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_8_dot_product.vi"/>
						<Item Name="8_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_7_dot_product.vi"/>
						<Item Name="8_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_6_dot_product.vi"/>
						<Item Name="8_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_5_dot_product.vi"/>
						<Item Name="8_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_4_dot_product.vi"/>
						<Item Name="8_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_3_dot_product.vi"/>
						<Item Name="8_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_2_dot_product.vi"/>
						<Item Name="8_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/8_1_dot_product.vi"/>
						<Item Name="7_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_16_dot_product.vi"/>
						<Item Name="7_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_15_dot_product.vi"/>
						<Item Name="7_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_14_dot_product.vi"/>
						<Item Name="7_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_13_dot_product.vi"/>
						<Item Name="7_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_12_dot_product.vi"/>
						<Item Name="7_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_11_dot_product.vi"/>
						<Item Name="7_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_10_dot_product.vi"/>
						<Item Name="7_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_9_dot_product.vi"/>
						<Item Name="7_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_8_dot_product.vi"/>
						<Item Name="7_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_7_dot_product.vi"/>
						<Item Name="7_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_6_dot_product.vi"/>
						<Item Name="7_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_5_dot_product.vi"/>
						<Item Name="7_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_4_dot_product.vi"/>
						<Item Name="7_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_3_dot_product.vi"/>
						<Item Name="7_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_2_dot_product.vi"/>
						<Item Name="7_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/7_1_dot_product.vi"/>
						<Item Name="6_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_16_dot_product.vi"/>
						<Item Name="6_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_15_dot_product.vi"/>
						<Item Name="6_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_14_dot_product.vi"/>
						<Item Name="6_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_13_dot_product.vi"/>
						<Item Name="6_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_12_dot_product.vi"/>
						<Item Name="6_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_11_dot_product.vi"/>
						<Item Name="6_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_10_dot_product.vi"/>
						<Item Name="6_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_9_dot_product.vi"/>
						<Item Name="6_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_8_dot_product.vi"/>
						<Item Name="6_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_7_dot_product.vi"/>
						<Item Name="6_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_6_dot_product.vi"/>
						<Item Name="6_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_5_dot_product.vi"/>
						<Item Name="6_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_4_dot_product.vi"/>
						<Item Name="6_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_3_dot_product.vi"/>
						<Item Name="6_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_2_dot_product.vi"/>
						<Item Name="6_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/6_1_dot_product.vi"/>
						<Item Name="5_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_16_dot_product.vi"/>
						<Item Name="5_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_15_dot_product.vi"/>
						<Item Name="5_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_14_dot_product.vi"/>
						<Item Name="5_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_13_dot_product.vi"/>
						<Item Name="5_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_12_dot_product.vi"/>
						<Item Name="5_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_11_dot_product.vi"/>
						<Item Name="5_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_10_dot_product.vi"/>
						<Item Name="5_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_9_dot_product.vi"/>
						<Item Name="5_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_8_dot_product.vi"/>
						<Item Name="5_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_7_dot_product.vi"/>
						<Item Name="5_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_6_dot_product.vi"/>
						<Item Name="5_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_5_dot_product.vi"/>
						<Item Name="5_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_4_dot_product.vi"/>
						<Item Name="5_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_3_dot_product.vi"/>
						<Item Name="5_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_2_dot_product.vi"/>
						<Item Name="5_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/5_1_dot_product.vi"/>
						<Item Name="4_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_16_dot_product.vi"/>
						<Item Name="4_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_15_dot_product.vi"/>
						<Item Name="4_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_14_dot_product.vi"/>
						<Item Name="4_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_13_dot_product.vi"/>
						<Item Name="4_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_12_dot_product.vi"/>
						<Item Name="4_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_11_dot_product.vi"/>
						<Item Name="4_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_10_dot_product.vi"/>
						<Item Name="4_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_9_dot_product.vi"/>
						<Item Name="4_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_8_dot_product.vi"/>
						<Item Name="4_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_7_dot_product.vi"/>
						<Item Name="4_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_6_dot_product.vi"/>
						<Item Name="4_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_5_dot_product.vi"/>
						<Item Name="4_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_4_dot_product.vi"/>
						<Item Name="4_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_3_dot_product.vi"/>
						<Item Name="4_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_2_dot_product.vi"/>
						<Item Name="4_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/4_1_dot_product.vi"/>
						<Item Name="3_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_16_dot_product.vi"/>
						<Item Name="3_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_15_dot_product.vi"/>
						<Item Name="3_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_14_dot_product.vi"/>
						<Item Name="3_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_13_dot_product.vi"/>
						<Item Name="3_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_12_dot_product.vi"/>
						<Item Name="3_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_11_dot_product.vi"/>
						<Item Name="3_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_10_dot_product.vi"/>
						<Item Name="3_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_9_dot_product.vi"/>
						<Item Name="3_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_8_dot_product.vi"/>
						<Item Name="3_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_7_dot_product.vi"/>
						<Item Name="3_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_6_dot_product.vi"/>
						<Item Name="3_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_5_dot_product.vi"/>
						<Item Name="3_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_4_dot_product.vi"/>
						<Item Name="3_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_3_dot_product.vi"/>
						<Item Name="3_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_2_dot_product.vi"/>
						<Item Name="3_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/3_1_dot_product.vi"/>
						<Item Name="2_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_16_dot_product.vi"/>
						<Item Name="2_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_15_dot_product.vi"/>
						<Item Name="2_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_14_dot_product.vi"/>
						<Item Name="2_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_13_dot_product.vi"/>
						<Item Name="2_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_12_dot_product.vi"/>
						<Item Name="2_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_11_dot_product.vi"/>
						<Item Name="2_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_10_dot_product.vi"/>
						<Item Name="2_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_9_dot_product.vi"/>
						<Item Name="2_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_8_dot_product.vi"/>
						<Item Name="2_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_7_dot_product.vi"/>
						<Item Name="2_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_6_dot_product.vi"/>
						<Item Name="2_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_5_dot_product.vi"/>
						<Item Name="2_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_4_dot_product.vi"/>
						<Item Name="2_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_3_dot_product.vi"/>
						<Item Name="2_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_2_dot_product.vi"/>
						<Item Name="2_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/2_1_dot_product.vi"/>
						<Item Name="1_16_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_16_dot_product.vi"/>
						<Item Name="1_15_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_15_dot_product.vi"/>
						<Item Name="1_14_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_14_dot_product.vi"/>
						<Item Name="1_13_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_13_dot_product.vi"/>
						<Item Name="1_12_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_12_dot_product.vi"/>
						<Item Name="1_11_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_11_dot_product.vi"/>
						<Item Name="1_10_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_10_dot_product.vi"/>
						<Item Name="1_9_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_9_dot_product.vi"/>
						<Item Name="1_8_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_8_dot_product.vi"/>
						<Item Name="1_7_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_7_dot_product.vi"/>
						<Item Name="1_6_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_6_dot_product.vi"/>
						<Item Name="1_5_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_5_dot_product.vi"/>
						<Item Name="1_4_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_4_dot_product.vi"/>
						<Item Name="1_3_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_3_dot_product.vi"/>
						<Item Name="1_2_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_2_dot_product.vi"/>
						<Item Name="1_1_dot_product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/1_1_dot_product.vi"/>
						<Item Name="dot_product_SGL.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/dot_product_VIs/dot_product_SGL.vi"/>
						<Item Name="Dot Product.vi" Type="VI" URL="/&lt;vilib&gt;/ARTS-Lab/Array-based Linear Algebra/Dot Product.vi"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="LQG_Target2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">LQG_Target2</Property>
						<Property Name="Comp.BitfileName" Type="Str">lqgcontrollerpro_FPGATarget_LQGTarget2_75vgoiCkvAk.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/User/Documents/TJR FPGA/SPIE25/LQG/FPGA Bitfiles/lqgcontrollerpro_FPGATarget_LQGTarget2_75vgoiCkvAk.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/lqgcontrollerpro_FPGATarget_LQGTarget2_75vgoiCkvAk.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/User/Documents/TJR FPGA/SPIE25/LQG/LQG_Controller_Project.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/NI-cRIO-9035-01B68DEF/Chassis/FPGA Target/LQG_Target.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
