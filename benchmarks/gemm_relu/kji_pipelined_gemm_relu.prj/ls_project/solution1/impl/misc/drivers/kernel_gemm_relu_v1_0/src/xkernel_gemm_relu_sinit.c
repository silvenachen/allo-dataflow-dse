// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkernel_gemm_relu.h"

extern XKernel_gemm_relu_Config XKernel_gemm_relu_ConfigTable[];

XKernel_gemm_relu_Config *XKernel_gemm_relu_LookupConfig(u16 DeviceId) {
	XKernel_gemm_relu_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNEL_GEMM_RELU_NUM_INSTANCES; Index++) {
		if (XKernel_gemm_relu_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKernel_gemm_relu_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_gemm_relu_Initialize(XKernel_gemm_relu *InstancePtr, u16 DeviceId) {
	XKernel_gemm_relu_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_gemm_relu_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_gemm_relu_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

