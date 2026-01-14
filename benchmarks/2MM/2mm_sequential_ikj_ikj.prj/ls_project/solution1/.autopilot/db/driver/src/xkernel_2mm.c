// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkernel_2mm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKernel_2mm_CfgInitialize(XKernel_2mm *InstancePtr, XKernel_2mm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKernel_2mm_Start(XKernel_2mm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKernel_2mm_IsDone(XKernel_2mm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKernel_2mm_IsIdle(XKernel_2mm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKernel_2mm_IsReady(XKernel_2mm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKernel_2mm_Continue(XKernel_2mm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKernel_2mm_EnableAutoRestart(XKernel_2mm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKernel_2mm_DisableAutoRestart(XKernel_2mm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_AP_CTRL, 0);
}

void XKernel_2mm_Set_v42(XKernel_2mm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V42_DATA, (u32)(Data));
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V42_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_2mm_Get_v42(XKernel_2mm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V42_DATA);
    Data += (u64)XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V42_DATA + 4) << 32;
    return Data;
}

void XKernel_2mm_Set_v43(XKernel_2mm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V43_DATA, (u32)(Data));
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V43_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_2mm_Get_v43(XKernel_2mm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V43_DATA);
    Data += (u64)XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V43_DATA + 4) << 32;
    return Data;
}

void XKernel_2mm_Set_v44(XKernel_2mm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V44_DATA, (u32)(Data));
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V44_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_2mm_Get_v44(XKernel_2mm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V44_DATA);
    Data += (u64)XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V44_DATA + 4) << 32;
    return Data;
}

void XKernel_2mm_Set_v45(XKernel_2mm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V45_DATA, (u32)(Data));
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V45_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_2mm_Get_v45(XKernel_2mm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V45_DATA);
    Data += (u64)XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_V45_DATA + 4) << 32;
    return Data;
}

void XKernel_2mm_InterruptGlobalEnable(XKernel_2mm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_GIE, 1);
}

void XKernel_2mm_InterruptGlobalDisable(XKernel_2mm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_GIE, 0);
}

void XKernel_2mm_InterruptEnable(XKernel_2mm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_IER);
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_IER, Register | Mask);
}

void XKernel_2mm_InterruptDisable(XKernel_2mm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_IER);
    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKernel_2mm_InterruptClear(XKernel_2mm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_2mm_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_ISR, Mask);
}

u32 XKernel_2mm_InterruptGetEnabled(XKernel_2mm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_IER);
}

u32 XKernel_2mm_InterruptGetStatus(XKernel_2mm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_2mm_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_2MM_CONTROL_ADDR_ISR);
}

