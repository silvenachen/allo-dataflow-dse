// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkernel_2mm.h"

extern XKernel_2mm_Config XKernel_2mm_ConfigTable[];

XKernel_2mm_Config *XKernel_2mm_LookupConfig(u16 DeviceId) {
	XKernel_2mm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNEL_2MM_NUM_INSTANCES; Index++) {
		if (XKernel_2mm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKernel_2mm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_2mm_Initialize(XKernel_2mm *InstancePtr, u16 DeviceId) {
	XKernel_2mm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_2mm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_2mm_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

