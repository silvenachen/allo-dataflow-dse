// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtwo_mm_stream_jki_jki.h"

extern XTwo_mm_stream_jki_jki_Config XTwo_mm_stream_jki_jki_ConfigTable[];

XTwo_mm_stream_jki_jki_Config *XTwo_mm_stream_jki_jki_LookupConfig(u16 DeviceId) {
	XTwo_mm_stream_jki_jki_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTWO_MM_STREAM_JKI_JKI_NUM_INSTANCES; Index++) {
		if (XTwo_mm_stream_jki_jki_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTwo_mm_stream_jki_jki_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTwo_mm_stream_jki_jki_Initialize(XTwo_mm_stream_jki_jki *InstancePtr, u16 DeviceId) {
	XTwo_mm_stream_jki_jki_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTwo_mm_stream_jki_jki_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTwo_mm_stream_jki_jki_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

