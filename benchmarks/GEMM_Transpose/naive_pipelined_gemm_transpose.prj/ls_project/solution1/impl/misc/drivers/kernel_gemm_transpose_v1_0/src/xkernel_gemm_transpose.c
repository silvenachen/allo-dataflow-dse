// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkernel_gemm_transpose.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKernel_gemm_transpose_CfgInitialize(XKernel_gemm_transpose *InstancePtr, XKernel_gemm_transpose_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKernel_gemm_transpose_Start(XKernel_gemm_transpose *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKernel_gemm_transpose_IsDone(XKernel_gemm_transpose *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKernel_gemm_transpose_IsIdle(XKernel_gemm_transpose *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKernel_gemm_transpose_IsReady(XKernel_gemm_transpose *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKernel_gemm_transpose_Continue(XKernel_gemm_transpose *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKernel_gemm_transpose_EnableAutoRestart(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKernel_gemm_transpose_DisableAutoRestart(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_AP_CTRL, 0);
}

void XKernel_gemm_transpose_Set_v31(XKernel_gemm_transpose *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V31_DATA, (u32)(Data));
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V31_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_gemm_transpose_Get_v31(XKernel_gemm_transpose *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V31_DATA);
    Data += (u64)XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V31_DATA + 4) << 32;
    return Data;
}

void XKernel_gemm_transpose_Set_v32(XKernel_gemm_transpose *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V32_DATA, (u32)(Data));
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V32_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_gemm_transpose_Get_v32(XKernel_gemm_transpose *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V32_DATA);
    Data += (u64)XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V32_DATA + 4) << 32;
    return Data;
}

void XKernel_gemm_transpose_Set_v33(XKernel_gemm_transpose *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V33_DATA, (u32)(Data));
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V33_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_gemm_transpose_Get_v33(XKernel_gemm_transpose *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V33_DATA);
    Data += (u64)XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_V33_DATA + 4) << 32;
    return Data;
}

void XKernel_gemm_transpose_InterruptGlobalEnable(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_GIE, 1);
}

void XKernel_gemm_transpose_InterruptGlobalDisable(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_GIE, 0);
}

void XKernel_gemm_transpose_InterruptEnable(XKernel_gemm_transpose *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_IER);
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_IER, Register | Mask);
}

void XKernel_gemm_transpose_InterruptDisable(XKernel_gemm_transpose *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_IER);
    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKernel_gemm_transpose_InterruptClear(XKernel_gemm_transpose *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gemm_transpose_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_ISR, Mask);
}

u32 XKernel_gemm_transpose_InterruptGetEnabled(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_IER);
}

u32 XKernel_gemm_transpose_InterruptGetStatus(XKernel_gemm_transpose *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_gemm_transpose_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GEMM_TRANSPOSE_CONTROL_ADDR_ISR);
}

