// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKERNEL_2MM_H
#define XKERNEL_2MM_H

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
#include "xkernel_2mm_hw.h"

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
} XKernel_2mm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKernel_2mm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKernel_2mm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKernel_2mm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKernel_2mm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKernel_2mm_ReadReg(BaseAddress, RegOffset) \
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
int XKernel_2mm_Initialize(XKernel_2mm *InstancePtr, u16 DeviceId);
XKernel_2mm_Config* XKernel_2mm_LookupConfig(u16 DeviceId);
int XKernel_2mm_CfgInitialize(XKernel_2mm *InstancePtr, XKernel_2mm_Config *ConfigPtr);
#else
int XKernel_2mm_Initialize(XKernel_2mm *InstancePtr, const char* InstanceName);
int XKernel_2mm_Release(XKernel_2mm *InstancePtr);
#endif

void XKernel_2mm_Start(XKernel_2mm *InstancePtr);
u32 XKernel_2mm_IsDone(XKernel_2mm *InstancePtr);
u32 XKernel_2mm_IsIdle(XKernel_2mm *InstancePtr);
u32 XKernel_2mm_IsReady(XKernel_2mm *InstancePtr);
void XKernel_2mm_Continue(XKernel_2mm *InstancePtr);
void XKernel_2mm_EnableAutoRestart(XKernel_2mm *InstancePtr);
void XKernel_2mm_DisableAutoRestart(XKernel_2mm *InstancePtr);

void XKernel_2mm_Set_v42(XKernel_2mm *InstancePtr, u64 Data);
u64 XKernel_2mm_Get_v42(XKernel_2mm *InstancePtr);
void XKernel_2mm_Set_v43(XKernel_2mm *InstancePtr, u64 Data);
u64 XKernel_2mm_Get_v43(XKernel_2mm *InstancePtr);
void XKernel_2mm_Set_v44(XKernel_2mm *InstancePtr, u64 Data);
u64 XKernel_2mm_Get_v44(XKernel_2mm *InstancePtr);
void XKernel_2mm_Set_v45(XKernel_2mm *InstancePtr, u64 Data);
u64 XKernel_2mm_Get_v45(XKernel_2mm *InstancePtr);

void XKernel_2mm_InterruptGlobalEnable(XKernel_2mm *InstancePtr);
void XKernel_2mm_InterruptGlobalDisable(XKernel_2mm *InstancePtr);
void XKernel_2mm_InterruptEnable(XKernel_2mm *InstancePtr, u32 Mask);
void XKernel_2mm_InterruptDisable(XKernel_2mm *InstancePtr, u32 Mask);
void XKernel_2mm_InterruptClear(XKernel_2mm *InstancePtr, u32 Mask);
u32 XKernel_2mm_InterruptGetEnabled(XKernel_2mm *InstancePtr);
u32 XKernel_2mm_InterruptGetStatus(XKernel_2mm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
