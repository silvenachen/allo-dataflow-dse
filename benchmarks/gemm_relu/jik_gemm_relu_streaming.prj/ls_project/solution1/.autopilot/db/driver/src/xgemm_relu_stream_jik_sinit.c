// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgemm_relu_stream_jik.h"

extern XGemm_relu_stream_jik_Config XGemm_relu_stream_jik_ConfigTable[];

XGemm_relu_stream_jik_Config *XGemm_relu_stream_jik_LookupConfig(u16 DeviceId) {
	XGemm_relu_stream_jik_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_RELU_STREAM_JIK_NUM_INSTANCES; Index++) {
		if (XGemm_relu_stream_jik_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_relu_stream_jik_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_relu_stream_jik_Initialize(XGemm_relu_stream_jik *InstancePtr, u16 DeviceId) {
	XGemm_relu_stream_jik_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_relu_stream_jik_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_relu_stream_jik_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

