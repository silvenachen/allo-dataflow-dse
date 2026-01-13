// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGEMM_RELU_STREAM_JIK_H
#define XGEMM_RELU_STREAM_JIK_H

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
#include "xgemm_relu_stream_jik_hw.h"

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
} XGemm_relu_stream_jik_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGemm_relu_stream_jik;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGemm_relu_stream_jik_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGemm_relu_stream_jik_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGemm_relu_stream_jik_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGemm_relu_stream_jik_ReadReg(BaseAddress, RegOffset) \
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
int XGemm_relu_stream_jik_Initialize(XGemm_relu_stream_jik *InstancePtr, u16 DeviceId);
XGemm_relu_stream_jik_Config* XGemm_relu_stream_jik_LookupConfig(u16 DeviceId);
int XGemm_relu_stream_jik_CfgInitialize(XGemm_relu_stream_jik *InstancePtr, XGemm_relu_stream_jik_Config *ConfigPtr);
#else
int XGemm_relu_stream_jik_Initialize(XGemm_relu_stream_jik *InstancePtr, const char* InstanceName);
int XGemm_relu_stream_jik_Release(XGemm_relu_stream_jik *InstancePtr);
#endif

void XGemm_relu_stream_jik_Start(XGemm_relu_stream_jik *InstancePtr);
u32 XGemm_relu_stream_jik_IsDone(XGemm_relu_stream_jik *InstancePtr);
u32 XGemm_relu_stream_jik_IsIdle(XGemm_relu_stream_jik *InstancePtr);
u32 XGemm_relu_stream_jik_IsReady(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_Continue(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_EnableAutoRestart(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_DisableAutoRestart(XGemm_relu_stream_jik *InstancePtr);

void XGemm_relu_stream_jik_Set_v35(XGemm_relu_stream_jik *InstancePtr, u64 Data);
u64 XGemm_relu_stream_jik_Get_v35(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_Set_v36(XGemm_relu_stream_jik *InstancePtr, u64 Data);
u64 XGemm_relu_stream_jik_Get_v36(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_Set_v37(XGemm_relu_stream_jik *InstancePtr, u64 Data);
u64 XGemm_relu_stream_jik_Get_v37(XGemm_relu_stream_jik *InstancePtr);

void XGemm_relu_stream_jik_InterruptGlobalEnable(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_InterruptGlobalDisable(XGemm_relu_stream_jik *InstancePtr);
void XGemm_relu_stream_jik_InterruptEnable(XGemm_relu_stream_jik *InstancePtr, u32 Mask);
void XGemm_relu_stream_jik_InterruptDisable(XGemm_relu_stream_jik *InstancePtr, u32 Mask);
void XGemm_relu_stream_jik_InterruptClear(XGemm_relu_stream_jik *InstancePtr, u32 Mask);
u32 XGemm_relu_stream_jik_InterruptGetEnabled(XGemm_relu_stream_jik *InstancePtr);
u32 XGemm_relu_stream_jik_InterruptGetStatus(XGemm_relu_stream_jik *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
