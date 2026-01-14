// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtwo_mm_stream_jki_kij.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTwo_mm_stream_jki_kij_CfgInitialize(XTwo_mm_stream_jki_kij *InstancePtr, XTwo_mm_stream_jki_kij_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTwo_mm_stream_jki_kij_Start(XTwo_mm_stream_jki_kij *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTwo_mm_stream_jki_kij_IsDone(XTwo_mm_stream_jki_kij *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTwo_mm_stream_jki_kij_IsIdle(XTwo_mm_stream_jki_kij *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTwo_mm_stream_jki_kij_IsReady(XTwo_mm_stream_jki_kij *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTwo_mm_stream_jki_kij_Continue(XTwo_mm_stream_jki_kij *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XTwo_mm_stream_jki_kij_EnableAutoRestart(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTwo_mm_stream_jki_kij_DisableAutoRestart(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_AP_CTRL, 0);
}

void XTwo_mm_stream_jki_kij_Set_v51(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V51_DATA, (u32)(Data));
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V51_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_jki_kij_Get_v51(XTwo_mm_stream_jki_kij *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V51_DATA);
    Data += (u64)XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V51_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_jki_kij_Set_v52(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V52_DATA, (u32)(Data));
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V52_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_jki_kij_Get_v52(XTwo_mm_stream_jki_kij *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V52_DATA);
    Data += (u64)XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V52_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_jki_kij_Set_v53(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V53_DATA, (u32)(Data));
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V53_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_jki_kij_Get_v53(XTwo_mm_stream_jki_kij *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V53_DATA);
    Data += (u64)XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V53_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_jki_kij_Set_v54(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V54_DATA, (u32)(Data));
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V54_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_jki_kij_Get_v54(XTwo_mm_stream_jki_kij *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V54_DATA);
    Data += (u64)XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_V54_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_jki_kij_InterruptGlobalEnable(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_GIE, 1);
}

void XTwo_mm_stream_jki_kij_InterruptGlobalDisable(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_GIE, 0);
}

void XTwo_mm_stream_jki_kij_InterruptEnable(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_IER);
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_IER, Register | Mask);
}

void XTwo_mm_stream_jki_kij_InterruptDisable(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_IER);
    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTwo_mm_stream_jki_kij_InterruptClear(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_jki_kij_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_ISR, Mask);
}

u32 XTwo_mm_stream_jki_kij_InterruptGetEnabled(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_IER);
}

u32 XTwo_mm_stream_jki_kij_InterruptGetStatus(XTwo_mm_stream_jki_kij *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTwo_mm_stream_jki_kij_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_JKI_KIJ_CONTROL_ADDR_ISR);
}

