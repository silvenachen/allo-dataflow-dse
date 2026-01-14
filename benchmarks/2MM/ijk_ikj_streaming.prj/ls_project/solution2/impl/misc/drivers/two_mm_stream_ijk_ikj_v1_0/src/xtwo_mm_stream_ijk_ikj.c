// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtwo_mm_stream_ijk_ikj.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTwo_mm_stream_ijk_ikj_CfgInitialize(XTwo_mm_stream_ijk_ikj *InstancePtr, XTwo_mm_stream_ijk_ikj_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTwo_mm_stream_ijk_ikj_Start(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTwo_mm_stream_ijk_ikj_IsDone(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTwo_mm_stream_ijk_ikj_IsIdle(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTwo_mm_stream_ijk_ikj_IsReady(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTwo_mm_stream_ijk_ikj_Continue(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XTwo_mm_stream_ijk_ikj_EnableAutoRestart(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTwo_mm_stream_ijk_ikj_DisableAutoRestart(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_AP_CTRL, 0);
}

void XTwo_mm_stream_ijk_ikj_Set_v53(XTwo_mm_stream_ijk_ikj *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V53_DATA, (u32)(Data));
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V53_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_ijk_ikj_Get_v53(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V53_DATA);
    Data += (u64)XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V53_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_ijk_ikj_Set_v54(XTwo_mm_stream_ijk_ikj *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V54_DATA, (u32)(Data));
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V54_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_ijk_ikj_Get_v54(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V54_DATA);
    Data += (u64)XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V54_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_ijk_ikj_Set_v55(XTwo_mm_stream_ijk_ikj *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V55_DATA, (u32)(Data));
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V55_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_ijk_ikj_Get_v55(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V55_DATA);
    Data += (u64)XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V55_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_ijk_ikj_Set_v56(XTwo_mm_stream_ijk_ikj *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V56_DATA, (u32)(Data));
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V56_DATA + 4, (u32)(Data >> 32));
}

u64 XTwo_mm_stream_ijk_ikj_Get_v56(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V56_DATA);
    Data += (u64)XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_V56_DATA + 4) << 32;
    return Data;
}

void XTwo_mm_stream_ijk_ikj_InterruptGlobalEnable(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_GIE, 1);
}

void XTwo_mm_stream_ijk_ikj_InterruptGlobalDisable(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_GIE, 0);
}

void XTwo_mm_stream_ijk_ikj_InterruptEnable(XTwo_mm_stream_ijk_ikj *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_IER);
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_IER, Register | Mask);
}

void XTwo_mm_stream_ijk_ikj_InterruptDisable(XTwo_mm_stream_ijk_ikj *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_IER);
    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTwo_mm_stream_ijk_ikj_InterruptClear(XTwo_mm_stream_ijk_ikj *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTwo_mm_stream_ijk_ikj_WriteReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_ISR, Mask);
}

u32 XTwo_mm_stream_ijk_ikj_InterruptGetEnabled(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_IER);
}

u32 XTwo_mm_stream_ijk_ikj_InterruptGetStatus(XTwo_mm_stream_ijk_ikj *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTwo_mm_stream_ijk_ikj_ReadReg(InstancePtr->Control_BaseAddress, XTWO_MM_STREAM_IJK_IKJ_CONTROL_ADDR_ISR);
}

