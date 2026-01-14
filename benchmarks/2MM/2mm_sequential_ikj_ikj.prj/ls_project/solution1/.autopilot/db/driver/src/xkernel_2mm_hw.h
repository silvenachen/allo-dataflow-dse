// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of v42
//        bit 31~0 - v42[31:0] (Read/Write)
// 0x14 : Data signal of v42
//        bit 31~0 - v42[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of v43
//        bit 31~0 - v43[31:0] (Read/Write)
// 0x20 : Data signal of v43
//        bit 31~0 - v43[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of v44
//        bit 31~0 - v44[31:0] (Read/Write)
// 0x2c : Data signal of v44
//        bit 31~0 - v44[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of v45
//        bit 31~0 - v45[31:0] (Read/Write)
// 0x38 : Data signal of v45
//        bit 31~0 - v45[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKERNEL_2MM_CONTROL_ADDR_AP_CTRL  0x00
#define XKERNEL_2MM_CONTROL_ADDR_GIE      0x04
#define XKERNEL_2MM_CONTROL_ADDR_IER      0x08
#define XKERNEL_2MM_CONTROL_ADDR_ISR      0x0c
#define XKERNEL_2MM_CONTROL_ADDR_V42_DATA 0x10
#define XKERNEL_2MM_CONTROL_BITS_V42_DATA 64
#define XKERNEL_2MM_CONTROL_ADDR_V43_DATA 0x1c
#define XKERNEL_2MM_CONTROL_BITS_V43_DATA 64
#define XKERNEL_2MM_CONTROL_ADDR_V44_DATA 0x28
#define XKERNEL_2MM_CONTROL_BITS_V44_DATA 64
#define XKERNEL_2MM_CONTROL_ADDR_V45_DATA 0x34
#define XKERNEL_2MM_CONTROL_BITS_V45_DATA 64

