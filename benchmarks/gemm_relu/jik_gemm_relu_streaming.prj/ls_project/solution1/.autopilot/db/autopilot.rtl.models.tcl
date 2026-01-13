set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME gemm_relu_stream_jik_entry_proc}
  {SRCNAME load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 MODELNAME load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 RTLNAME gemm_relu_stream_jik_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1
    SUBMODULES {
      {MODELNAME gemm_relu_stream_jik_flow_control_loop_pipe_sequential_init RTLNAME gemm_relu_stream_jik_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_relu_stream_jik_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_buf0.1 MODELNAME load_buf0_1 RTLNAME gemm_relu_stream_jik_load_buf0_1}
  {SRCNAME load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 MODELNAME load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 RTLNAME gemm_relu_stream_jik_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1}
  {SRCNAME load_buf1.1 MODELNAME load_buf1_1 RTLNAME gemm_relu_stream_jik_load_buf1_1}
  {SRCNAME gemm_stage_0.1 MODELNAME gemm_stage_0_1 RTLNAME gemm_relu_stream_jik_gemm_stage_0_1
    SUBMODULES {
      {MODELNAME gemm_relu_stream_jik_fadd_32ns_32ns_32_3_no_dsp_1 RTLNAME gemm_relu_stream_jik_fadd_32ns_32ns_32_3_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_relu_stream_jik_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME gemm_relu_stream_jik_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gemm_relu_stream_jik_flow_control_loop_pipe RTLNAME gemm_relu_stream_jik_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_relu_stream_jik_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME relu_stage_0.1 MODELNAME relu_stage_0_1 RTLNAME gemm_relu_stream_jik_relu_stage_0_1
    SUBMODULES {
      {MODELNAME gemm_relu_stream_jik_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME gemm_relu_stream_jik_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME store_res2.1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1 MODELNAME store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1 RTLNAME gemm_relu_stream_jik_store_res2_1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1}
  {SRCNAME store_res2.1 MODELNAME store_res2_1 RTLNAME gemm_relu_stream_jik_store_res2_1}
  {SRCNAME gemm_relu_stream_jik MODELNAME gemm_relu_stream_jik RTLNAME gemm_relu_stream_jik IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_relu_stream_jik_buf0_memcore RTLNAME gemm_relu_stream_jik_buf0_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_relu_stream_jik_buf0 RTLNAME gemm_relu_stream_jik_buf0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME gemm_relu_stream_jik_fifo_w64_d4_S RTLNAME gemm_relu_stream_jik_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME gemm_relu_stream_jik_fifo_w32_d4_S RTLNAME gemm_relu_stream_jik_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME gemm_relu_stream_jik_start_for_relu_stage_0_1_U0 RTLNAME gemm_relu_stream_jik_start_for_relu_stage_0_1_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME gemm_relu_stream_jik_control_s_axi RTLNAME gemm_relu_stream_jik_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME gemm_relu_stream_jik_gmem0_m_axi RTLNAME gemm_relu_stream_jik_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME gemm_relu_stream_jik_gmem1_m_axi RTLNAME gemm_relu_stream_jik_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME gemm_relu_stream_jik_gmem2_m_axi RTLNAME gemm_relu_stream_jik_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
