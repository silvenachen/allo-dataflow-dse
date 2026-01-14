// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTWO_MM_STREAM_JKI_KIJ_H
#define XTWO_MM_STREAM_JKI_KIJ_H

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
#include "xtwo_mm_stream_jki_kij_hw.h"

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
} XTwo_mm_stream_jki_kij_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTwo_mm_stream_jki_kij;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTwo_mm_stream_jki_kij_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTwo_mm_stream_jki_kij_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTwo_mm_stream_jki_kij_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTwo_mm_stream_jki_kij_ReadReg(BaseAddress, RegOffset) \
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
int XTwo_mm_stream_jki_kij_Initialize(XTwo_mm_stream_jki_kij *InstancePtr, u16 DeviceId);
XTwo_mm_stream_jki_kij_Config* XTwo_mm_stream_jki_kij_LookupConfig(u16 DeviceId);
int XTwo_mm_stream_jki_kij_CfgInitialize(XTwo_mm_stream_jki_kij *InstancePtr, XTwo_mm_stream_jki_kij_Config *ConfigPtr);
#else
int XTwo_mm_stream_jki_kij_Initialize(XTwo_mm_stream_jki_kij *InstancePtr, const char* InstanceName);
int XTwo_mm_stream_jki_kij_Release(XTwo_mm_stream_jki_kij *InstancePtr);
#endif

void XTwo_mm_stream_jki_kij_Start(XTwo_mm_stream_jki_kij *InstancePtr);
u32 XTwo_mm_stream_jki_kij_IsDone(XTwo_mm_stream_jki_kij *InstancePtr);
u32 XTwo_mm_stream_jki_kij_IsIdle(XTwo_mm_stream_jki_kij *InstancePtr);
u32 XTwo_mm_stream_jki_kij_IsReady(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_Continue(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_EnableAutoRestart(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_DisableAutoRestart(XTwo_mm_stream_jki_kij *InstancePtr);

void XTwo_mm_stream_jki_kij_Set_v51(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data);
u64 XTwo_mm_stream_jki_kij_Get_v51(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_Set_v52(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data);
u64 XTwo_mm_stream_jki_kij_Get_v52(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_Set_v53(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data);
u64 XTwo_mm_stream_jki_kij_Get_v53(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_Set_v54(XTwo_mm_stream_jki_kij *InstancePtr, u64 Data);
u64 XTwo_mm_stream_jki_kij_Get_v54(XTwo_mm_stream_jki_kij *InstancePtr);

void XTwo_mm_stream_jki_kij_InterruptGlobalEnable(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_InterruptGlobalDisable(XTwo_mm_stream_jki_kij *InstancePtr);
void XTwo_mm_stream_jki_kij_InterruptEnable(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask);
void XTwo_mm_stream_jki_kij_InterruptDisable(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask);
void XTwo_mm_stream_jki_kij_InterruptClear(XTwo_mm_stream_jki_kij *InstancePtr, u32 Mask);
u32 XTwo_mm_stream_jki_kij_InterruptGetEnabled(XTwo_mm_stream_jki_kij *InstancePtr);
u32 XTwo_mm_stream_jki_kij_InterruptGetStatus(XTwo_mm_stream_jki_kij *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
