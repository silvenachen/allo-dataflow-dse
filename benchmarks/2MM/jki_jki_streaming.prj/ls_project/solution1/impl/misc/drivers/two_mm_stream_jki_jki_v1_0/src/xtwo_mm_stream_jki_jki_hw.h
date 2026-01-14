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
// 0x10 : Data signal of v53
//        bit 31~0 - v53[31:0] (Read/Write)
// 0x14 : Data signal of v53
//        bit 31~0 - v53[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of v54
//        bit 31~0 - v54[31:0] (Read/Write)
// 0x20 : Data signal of v54
//        bit 31~0 - v54[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of v55
//        bit 31~0 - v55[31:0] (Read/Write)
// 0x2c : Data signal of v55
//        bit 31~0 - v55[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of v56
//        bit 31~0 - v56[31:0] (Read/Write)
// 0x38 : Data signal of v56
//        bit 31~0 - v56[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_AP_CTRL  0x00
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_GIE      0x04
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_IER      0x08
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_ISR      0x0c
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_V53_DATA 0x10
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_BITS_V53_DATA 64
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_V54_DATA 0x1c
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_BITS_V54_DATA 64
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_V55_DATA 0x28
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_BITS_V55_DATA 64
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_ADDR_V56_DATA 0x34
#define XTWO_MM_STREAM_JKI_JKI_CONTROL_BITS_V56_DATA 64

