// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgemm_relu_stream_kij.h"

extern XGemm_relu_stream_kij_Config XGemm_relu_stream_kij_ConfigTable[];

XGemm_relu_stream_kij_Config *XGemm_relu_stream_kij_LookupConfig(u16 DeviceId) {
	XGemm_relu_stream_kij_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_RELU_STREAM_KIJ_NUM_INSTANCES; Index++) {
		if (XGemm_relu_stream_kij_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_relu_stream_kij_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_relu_stream_kij_Initialize(XGemm_relu_stream_kij *InstancePtr, u16 DeviceId) {
	XGemm_relu_stream_kij_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_relu_stream_kij_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_relu_stream_kij_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

