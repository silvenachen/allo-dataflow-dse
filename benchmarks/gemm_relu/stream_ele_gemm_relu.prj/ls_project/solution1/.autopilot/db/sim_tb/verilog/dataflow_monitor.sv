
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "df_fifo_interface.svh"
`include "df_fifo_monitor.svh"
`include "df_process_interface.svh"
`include "df_process_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);

    df_fifo_intf fifo_intf_1(clock,reset);
    assign fifo_intf_1.rd_en = AESL_inst_top.v43_U.if_read;
    assign fifo_intf_1.wr_en = AESL_inst_top.v43_U.if_write;
    assign fifo_intf_1.fifo_rd_block = ~(AESL_inst_top.relu_stage_0_1_U0.v431_blk_n);
    assign fifo_intf_1.fifo_wr_block = ~(AESL_inst_top.gemm_stage_0_1_U0.v431_blk_n);
    assign fifo_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_1;
    csv_file_dump cstatus_csv_dumper_1;
    df_fifo_monitor fifo_monitor_1;
    df_fifo_intf fifo_intf_2(clock,reset);
    assign fifo_intf_2.rd_en = AESL_inst_top.v39_c_channel_U.if_read;
    assign fifo_intf_2.wr_en = AESL_inst_top.v39_c_channel_U.if_write;
    assign fifo_intf_2.fifo_rd_block = 0;
    assign fifo_intf_2.fifo_wr_block = 0;
    assign fifo_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_2;
    csv_file_dump cstatus_csv_dumper_2;
    df_fifo_monitor fifo_monitor_2;

    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_top.entry_proc_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_top.entry_proc_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_top.entry_proc_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_top.entry_proc_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_top.entry_proc_U0.ap_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_top.load_buf0_1_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_top.load_buf0_1_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_top.load_buf0_1_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_top.load_buf0_1_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_top.load_buf0_1_U0.ap_start;
    assign process_intf_2.pin_stall = 1'b0;
    assign process_intf_2.pout_stall = 1'b0;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;
    df_process_intf process_intf_3(clock,reset);
    assign process_intf_3.ap_start = AESL_inst_top.load_buf1_1_U0.ap_start;
    assign process_intf_3.ap_ready = AESL_inst_top.load_buf1_1_U0.ap_ready;
    assign process_intf_3.ap_done = AESL_inst_top.load_buf1_1_U0.ap_done;
    assign process_intf_3.ap_continue = AESL_inst_top.load_buf1_1_U0.ap_continue;
    assign process_intf_3.real_start = AESL_inst_top.load_buf1_1_U0.ap_start;
    assign process_intf_3.pin_stall = 1'b0;
    assign process_intf_3.pout_stall = 1'b0;
    assign process_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_3;
    csv_file_dump pstatus_csv_dumper_3;
    df_process_monitor process_monitor_3;
    df_process_intf process_intf_4(clock,reset);
    assign process_intf_4.ap_start = AESL_inst_top.gemm_stage_0_1_U0.ap_start;
    assign process_intf_4.ap_ready = AESL_inst_top.gemm_stage_0_1_U0.ap_ready;
    assign process_intf_4.ap_done = AESL_inst_top.gemm_stage_0_1_U0.ap_done;
    assign process_intf_4.ap_continue = AESL_inst_top.gemm_stage_0_1_U0.ap_continue;
    assign process_intf_4.real_start = AESL_inst_top.gemm_stage_0_1_U0.real_start;
    assign process_intf_4.pin_stall = 1'b0;
    assign process_intf_4.pout_stall = 1'b0 | ~AESL_inst_top.gemm_stage_0_1_U0.v431_blk_n;
    assign process_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_4;
    csv_file_dump pstatus_csv_dumper_4;
    df_process_monitor process_monitor_4;
    df_process_intf process_intf_5(clock,reset);
    assign process_intf_5.ap_start = AESL_inst_top.relu_stage_0_1_U0.ap_start;
    assign process_intf_5.ap_ready = AESL_inst_top.relu_stage_0_1_U0.ap_ready;
    assign process_intf_5.ap_done = AESL_inst_top.relu_stage_0_1_U0.ap_done;
    assign process_intf_5.ap_continue = AESL_inst_top.relu_stage_0_1_U0.ap_continue;
    assign process_intf_5.real_start = AESL_inst_top.relu_stage_0_1_U0.ap_start;
    assign process_intf_5.pin_stall = 1'b0 | ~AESL_inst_top.relu_stage_0_1_U0.v431_blk_n;
    assign process_intf_5.pout_stall = 1'b0;
    assign process_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_5;
    csv_file_dump pstatus_csv_dumper_5;
    df_process_monitor process_monitor_5;
    df_process_intf process_intf_6(clock,reset);
    assign process_intf_6.ap_start = AESL_inst_top.store_res2_1_U0.ap_start;
    assign process_intf_6.ap_ready = AESL_inst_top.store_res2_1_U0.ap_ready;
    assign process_intf_6.ap_done = AESL_inst_top.store_res2_1_U0.ap_done;
    assign process_intf_6.ap_continue = AESL_inst_top.store_res2_1_U0.ap_continue;
    assign process_intf_6.real_start = AESL_inst_top.store_res2_1_U0.ap_start;
    assign process_intf_6.pin_stall = 1'b0;
    assign process_intf_6.pout_stall = 1'b0;
    assign process_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_6;
    csv_file_dump pstatus_csv_dumper_6;
    df_process_monitor process_monitor_6;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_top.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_top.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_top.ap_done;
    assign module_intf_1.ap_continue = AESL_inst_top.ap_continue;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;

    upc_loop_intf#(1) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.quit_state = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.quit_block = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_start_enable = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_1.iter_end_enable = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_1.quit_enable = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_1.loop_start = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_top.load_buf0_1_U0.grp_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_fu_51.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b0;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(1) upc_loop_monitor_1;
    upc_loop_intf#(1) upc_loop_intf_2(clock,reset);
    assign upc_loop_intf_2.cur_state = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_CS_fsm;
    assign upc_loop_intf_2.iter_start_state = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_end_state = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.quit_state = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_start_block = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_end_block = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.quit_block = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_start_enable = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_2.iter_end_enable = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_2.quit_enable = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_2.loop_start = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_start;
    assign upc_loop_intf_2.loop_ready = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_ready;
    assign upc_loop_intf_2.loop_done = AESL_inst_top.load_buf1_1_U0.grp_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_fu_51.ap_done_int;
    assign upc_loop_intf_2.loop_continue = 1'b1;
    assign upc_loop_intf_2.quit_at_end = 1'b0;
    assign upc_loop_intf_2.finish = finish;
    csv_file_dump upc_loop_csv_dumper_2;
    upc_loop_monitor #(1) upc_loop_monitor_2;
    upc_loop_intf#(32) upc_loop_intf_3(clock,reset);
    assign upc_loop_intf_3.cur_state = AESL_inst_top.gemm_stage_0_1_U0.ap_CS_fsm;
    assign upc_loop_intf_3.iter_start_state = AESL_inst_top.gemm_stage_0_1_U0.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_3.iter_end_state = AESL_inst_top.gemm_stage_0_1_U0.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_3.quit_state = AESL_inst_top.gemm_stage_0_1_U0.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_3.iter_start_block = AESL_inst_top.gemm_stage_0_1_U0.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_3.iter_end_block = AESL_inst_top.gemm_stage_0_1_U0.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_3.quit_block = AESL_inst_top.gemm_stage_0_1_U0.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_3.iter_start_enable = AESL_inst_top.gemm_stage_0_1_U0.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_3.iter_end_enable = AESL_inst_top.gemm_stage_0_1_U0.ap_enable_reg_pp0_iter6;
    assign upc_loop_intf_3.quit_enable = AESL_inst_top.gemm_stage_0_1_U0.ap_enable_reg_pp0_iter6;
    assign upc_loop_intf_3.loop_start = AESL_inst_top.gemm_stage_0_1_U0.ap_start;
    assign upc_loop_intf_3.loop_ready = AESL_inst_top.gemm_stage_0_1_U0.ap_ready;
    assign upc_loop_intf_3.loop_done = AESL_inst_top.gemm_stage_0_1_U0.ap_done;
    assign upc_loop_intf_3.loop_continue = AESL_inst_top.gemm_stage_0_1_U0.ap_continue;
    assign upc_loop_intf_3.quit_at_end = 1'b1;
    assign upc_loop_intf_3.finish = finish;
    csv_file_dump upc_loop_csv_dumper_3;
    upc_loop_monitor #(32) upc_loop_monitor_3;
    upc_loop_intf#(1) upc_loop_intf_4(clock,reset);
    assign upc_loop_intf_4.cur_state = AESL_inst_top.relu_stage_0_1_U0.ap_CS_fsm;
    assign upc_loop_intf_4.iter_start_state = AESL_inst_top.relu_stage_0_1_U0.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_end_state = AESL_inst_top.relu_stage_0_1_U0.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.quit_state = AESL_inst_top.relu_stage_0_1_U0.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_start_block = AESL_inst_top.relu_stage_0_1_U0.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_end_block = AESL_inst_top.relu_stage_0_1_U0.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.quit_block = AESL_inst_top.relu_stage_0_1_U0.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_start_enable = AESL_inst_top.relu_stage_0_1_U0.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_4.iter_end_enable = AESL_inst_top.relu_stage_0_1_U0.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_4.quit_enable = AESL_inst_top.relu_stage_0_1_U0.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_4.loop_start = AESL_inst_top.relu_stage_0_1_U0.ap_start;
    assign upc_loop_intf_4.loop_ready = AESL_inst_top.relu_stage_0_1_U0.ap_ready;
    assign upc_loop_intf_4.loop_done = AESL_inst_top.relu_stage_0_1_U0.ap_done;
    assign upc_loop_intf_4.loop_continue = AESL_inst_top.relu_stage_0_1_U0.ap_continue;
    assign upc_loop_intf_4.quit_at_end = 1'b1;
    assign upc_loop_intf_4.finish = finish;
    csv_file_dump upc_loop_csv_dumper_4;
    upc_loop_monitor #(1) upc_loop_monitor_4;
    upc_loop_intf#(1) upc_loop_intf_5(clock,reset);
    assign upc_loop_intf_5.cur_state = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_CS_fsm;
    assign upc_loop_intf_5.iter_start_state = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_end_state = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.quit_state = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_start_block = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_end_block = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.quit_block = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_start_enable = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_5.iter_end_enable = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_5.quit_enable = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_5.loop_start = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_start;
    assign upc_loop_intf_5.loop_ready = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_ready;
    assign upc_loop_intf_5.loop_done = AESL_inst_top.store_res2_1_U0.grp_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1_fu_54.ap_done_int;
    assign upc_loop_intf_5.loop_continue = 1'b1;
    assign upc_loop_intf_5.quit_at_end = 1'b0;
    assign upc_loop_intf_5.finish = finish;
    csv_file_dump upc_loop_csv_dumper_5;
    upc_loop_monitor #(1) upc_loop_monitor_5;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;

    fifo_csv_dumper_1 = new("./depth1.csv");
    cstatus_csv_dumper_1 = new("./chan_status1.csv");
    fifo_monitor_1 = new(fifo_csv_dumper_1,fifo_intf_1,cstatus_csv_dumper_1);
    fifo_csv_dumper_2 = new("./depth2.csv");
    cstatus_csv_dumper_2 = new("./chan_status2.csv");
    fifo_monitor_2 = new(fifo_csv_dumper_2,fifo_intf_2,cstatus_csv_dumper_2);

    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);
    pstall_csv_dumper_3 = new("./stalling3.csv");
    pstatus_csv_dumper_3 = new("./status3.csv");
    process_monitor_3 = new(pstall_csv_dumper_3,process_intf_3,pstatus_csv_dumper_3);
    pstall_csv_dumper_4 = new("./stalling4.csv");
    pstatus_csv_dumper_4 = new("./status4.csv");
    process_monitor_4 = new(pstall_csv_dumper_4,process_intf_4,pstatus_csv_dumper_4);
    pstall_csv_dumper_5 = new("./stalling5.csv");
    pstatus_csv_dumper_5 = new("./status5.csv");
    process_monitor_5 = new(pstall_csv_dumper_5,process_intf_5,pstatus_csv_dumper_5);
    pstall_csv_dumper_6 = new("./stalling6.csv");
    pstatus_csv_dumper_6 = new("./status6.csv");
    process_monitor_6 = new(pstall_csv_dumper_6,process_intf_6,pstatus_csv_dumper_6);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);




    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);
    upc_loop_csv_dumper_2 = new("./upc_loop_status2.csv");
    upc_loop_monitor_2 = new(upc_loop_intf_2,upc_loop_csv_dumper_2);
    upc_loop_csv_dumper_3 = new("./upc_loop_status3.csv");
    upc_loop_monitor_3 = new(upc_loop_intf_3,upc_loop_csv_dumper_3);
    upc_loop_csv_dumper_4 = new("./upc_loop_status4.csv");
    upc_loop_monitor_4 = new(upc_loop_intf_4,upc_loop_csv_dumper_4);
    upc_loop_csv_dumper_5 = new("./upc_loop_status5.csv");
    upc_loop_monitor_5 = new(upc_loop_intf_5,upc_loop_csv_dumper_5);

    sample_manager_inst.add_one_monitor(fifo_monitor_1);
    sample_manager_inst.add_one_monitor(fifo_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_3);
    sample_manager_inst.add_one_monitor(process_monitor_4);
    sample_manager_inst.add_one_monitor(process_monitor_5);
    sample_manager_inst.add_one_monitor(process_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_2);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_3);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_5);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
