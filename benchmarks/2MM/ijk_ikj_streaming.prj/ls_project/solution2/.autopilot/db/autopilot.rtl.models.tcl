set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME two_mm_stream_ijk_ikj_entry_proc}
  {SRCNAME load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 MODELNAME load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 RTLNAME two_mm_stream_ijk_ikj_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1
    SUBMODULES {
      {MODELNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe_sequential_init RTLNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_buf0.1 MODELNAME load_buf0_1 RTLNAME two_mm_stream_ijk_ikj_load_buf0_1}
  {SRCNAME load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 MODELNAME load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 RTLNAME two_mm_stream_ijk_ikj_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1}
  {SRCNAME load_buf1.1 MODELNAME load_buf1_1 RTLNAME two_mm_stream_ijk_ikj_load_buf1_1}
  {SRCNAME load_buf2.1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1 MODELNAME load_buf2_1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1 RTLNAME two_mm_stream_ijk_ikj_load_buf2_1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1}
  {SRCNAME load_buf2.1 MODELNAME load_buf2_1 RTLNAME two_mm_stream_ijk_ikj_load_buf2_1}
  {SRCNAME mm1_stage_0.1 MODELNAME mm1_stage_0_1 RTLNAME two_mm_stream_ijk_ikj_mm1_stage_0_1
    SUBMODULES {
      {MODELNAME two_mm_stream_ijk_ikj_fadd_32ns_32ns_32_3_no_dsp_1 RTLNAME two_mm_stream_ijk_ikj_fadd_32ns_32ns_32_3_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_ijk_ikj_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME two_mm_stream_ijk_ikj_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe RTLNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME two_mm_stream_ijk_ikj_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_k_0_k1 MODELNAME mm2_stage_0_1_Pipeline_l_S_k_0_k1 RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_Pipeline_l_S_k_0_k1}
  {SRCNAME mm2_stage_0.1_Pipeline_VITIS_LOOP_57_1 MODELNAME mm2_stage_0_1_Pipeline_VITIS_LOOP_57_1 RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_Pipeline_VITIS_LOOP_57_1}
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_k_1_k2_l_S_j_1_j1 MODELNAME mm2_stage_0_1_Pipeline_l_S_k_1_k2_l_S_j_1_j1 RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_Pipeline_l_S_k_1_k2_l_S_j_1_j1
    SUBMODULES {
      {MODELNAME two_mm_stream_ijk_ikj_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME two_mm_stream_ijk_ikj_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_j_3_j2 MODELNAME mm2_stage_0_1_Pipeline_l_S_j_3_j2 RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_Pipeline_l_S_j_3_j2}
  {SRCNAME mm2_stage_0.1 MODELNAME mm2_stage_0_1 RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1
    SUBMODULES {
      {MODELNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_t_row RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_t_row BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_d_row RTLNAME two_mm_stream_ijk_ikj_mm2_stage_0_1_d_row BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME store_res3.1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1 MODELNAME store_res3_1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1 RTLNAME two_mm_stream_ijk_ikj_store_res3_1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1}
  {SRCNAME store_res3.1 MODELNAME store_res3_1 RTLNAME two_mm_stream_ijk_ikj_store_res3_1}
  {SRCNAME two_mm_stream_ijk_ikj MODELNAME two_mm_stream_ijk_ikj RTLNAME two_mm_stream_ijk_ikj IS_TOP 1
    SUBMODULES {
      {MODELNAME two_mm_stream_ijk_ikj_buf0_memcore RTLNAME two_mm_stream_ijk_ikj_buf0_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_ijk_ikj_buf0 RTLNAME two_mm_stream_ijk_ikj_buf0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME two_mm_stream_ijk_ikj_fifo_w64_d4_S RTLNAME two_mm_stream_ijk_ikj_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME two_mm_stream_ijk_ikj_fifo_w32_d4_S RTLNAME two_mm_stream_ijk_ikj_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME two_mm_stream_ijk_ikj_control_s_axi RTLNAME two_mm_stream_ijk_ikj_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME two_mm_stream_ijk_ikj_gmem0_m_axi RTLNAME two_mm_stream_ijk_ikj_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_ijk_ikj_gmem1_m_axi RTLNAME two_mm_stream_ijk_ikj_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_ijk_ikj_gmem2_m_axi RTLNAME two_mm_stream_ijk_ikj_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_ijk_ikj_gmem3_m_axi RTLNAME two_mm_stream_ijk_ikj_gmem3_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
