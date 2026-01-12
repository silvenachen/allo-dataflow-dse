// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgemm_relu_element_wise.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGemm_relu_element_wise_CfgInitialize(XGemm_relu_element_wise *InstancePtr, XGemm_relu_element_wise_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGemm_relu_element_wise_Start(XGemm_relu_element_wise *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGemm_relu_element_wise_IsDone(XGemm_relu_element_wise *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGemm_relu_element_wise_IsIdle(XGemm_relu_element_wise *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGemm_relu_element_wise_IsReady(XGemm_relu_element_wise *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGemm_relu_element_wise_Continue(XGemm_relu_element_wise *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XGemm_relu_element_wise_EnableAutoRestart(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGemm_relu_element_wise_DisableAutoRestart(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_AP_CTRL, 0);
}

void XGemm_relu_element_wise_Set_v35(XGemm_relu_element_wise *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V35_DATA, (u32)(Data));
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V35_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_relu_element_wise_Get_v35(XGemm_relu_element_wise *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V35_DATA);
    Data += (u64)XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V35_DATA + 4) << 32;
    return Data;
}

void XGemm_relu_element_wise_Set_v36(XGemm_relu_element_wise *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V36_DATA, (u32)(Data));
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V36_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_relu_element_wise_Get_v36(XGemm_relu_element_wise *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V36_DATA);
    Data += (u64)XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V36_DATA + 4) << 32;
    return Data;
}

void XGemm_relu_element_wise_Set_v37(XGemm_relu_element_wise *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V37_DATA, (u32)(Data));
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V37_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_relu_element_wise_Get_v37(XGemm_relu_element_wise *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V37_DATA);
    Data += (u64)XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_V37_DATA + 4) << 32;
    return Data;
}

void XGemm_relu_element_wise_InterruptGlobalEnable(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_GIE, 1);
}

void XGemm_relu_element_wise_InterruptGlobalDisable(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_GIE, 0);
}

void XGemm_relu_element_wise_InterruptEnable(XGemm_relu_element_wise *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_IER);
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_IER, Register | Mask);
}

void XGemm_relu_element_wise_InterruptDisable(XGemm_relu_element_wise *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_IER);
    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGemm_relu_element_wise_InterruptClear(XGemm_relu_element_wise *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_relu_element_wise_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_ISR, Mask);
}

u32 XGemm_relu_element_wise_InterruptGetEnabled(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_IER);
}

u32 XGemm_relu_element_wise_InterruptGetStatus(XGemm_relu_element_wise *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_relu_element_wise_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_RELU_ELEMENT_WISE_CONTROL_ADDR_ISR);
}

