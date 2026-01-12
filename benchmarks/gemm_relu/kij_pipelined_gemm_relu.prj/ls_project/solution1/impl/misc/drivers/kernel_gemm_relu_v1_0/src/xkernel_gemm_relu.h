// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKERNEL_GEMM_RELU_H
#define XKERNEL_GEMM_RELU_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkernel_gemm_relu_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XKernel_gemm_relu_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKernel_gemm_relu;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKernel_gemm_relu_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKernel_gemm_relu_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKernel_gemm_relu_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKernel_gemm_relu_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKernel_gemm_relu_Initialize(XKernel_gemm_relu *InstancePtr, u16 DeviceId);
XKernel_gemm_relu_Config* XKernel_gemm_relu_LookupConfig(u16 DeviceId);
int XKernel_gemm_relu_CfgInitialize(XKernel_gemm_relu *InstancePtr, XKernel_gemm_relu_Config *ConfigPtr);
#else
int XKernel_gemm_relu_Initialize(XKernel_gemm_relu *InstancePtr, const char* InstanceName);
int XKernel_gemm_relu_Release(XKernel_gemm_relu *InstancePtr);
#endif

void XKernel_gemm_relu_Start(XKernel_gemm_relu *InstancePtr);
u32 XKernel_gemm_relu_IsDone(XKernel_gemm_relu *InstancePtr);
u32 XKernel_gemm_relu_IsIdle(XKernel_gemm_relu *InstancePtr);
u32 XKernel_gemm_relu_IsReady(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_Continue(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_EnableAutoRestart(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_DisableAutoRestart(XKernel_gemm_relu *InstancePtr);

void XKernel_gemm_relu_Set_v33(XKernel_gemm_relu *InstancePtr, u64 Data);
u64 XKernel_gemm_relu_Get_v33(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_Set_v34(XKernel_gemm_relu *InstancePtr, u64 Data);
u64 XKernel_gemm_relu_Get_v34(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_Set_v35(XKernel_gemm_relu *InstancePtr, u64 Data);
u64 XKernel_gemm_relu_Get_v35(XKernel_gemm_relu *InstancePtr);

void XKernel_gemm_relu_InterruptGlobalEnable(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_InterruptGlobalDisable(XKernel_gemm_relu *InstancePtr);
void XKernel_gemm_relu_InterruptEnable(XKernel_gemm_relu *InstancePtr, u32 Mask);
void XKernel_gemm_relu_InterruptDisable(XKernel_gemm_relu *InstancePtr, u32 Mask);
void XKernel_gemm_relu_InterruptClear(XKernel_gemm_relu *InstancePtr, u32 Mask);
u32 XKernel_gemm_relu_InterruptGetEnabled(XKernel_gemm_relu *InstancePtr);
u32 XKernel_gemm_relu_InterruptGetStatus(XKernel_gemm_relu *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
