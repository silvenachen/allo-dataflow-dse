set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME two_mm_stream_jki_jki_entry_proc}
  {SRCNAME load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 MODELNAME load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 RTLNAME two_mm_stream_jki_jki_load_buf0_1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1
    SUBMODULES {
      {MODELNAME two_mm_stream_jki_jki_flow_control_loop_pipe_sequential_init RTLNAME two_mm_stream_jki_jki_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME two_mm_stream_jki_jki_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_buf0.1 MODELNAME load_buf0_1 RTLNAME two_mm_stream_jki_jki_load_buf0_1}
  {SRCNAME load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 MODELNAME load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 RTLNAME two_mm_stream_jki_jki_load_buf1_1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1}
  {SRCNAME load_buf1.1 MODELNAME load_buf1_1 RTLNAME two_mm_stream_jki_jki_load_buf1_1}
  {SRCNAME load_buf2.1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1 MODELNAME load_buf2_1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1 RTLNAME two_mm_stream_jki_jki_load_buf2_1_Pipeline_l_S_load_buf2_load_buf2_l_0_l_load_buf2_l_1}
  {SRCNAME load_buf2.1 MODELNAME load_buf2_1 RTLNAME two_mm_stream_jki_jki_load_buf2_1}
  {SRCNAME mm1_stage_0.1_Pipeline_VITIS_LOOP_26_1 MODELNAME mm1_stage_0_1_Pipeline_VITIS_LOOP_26_1 RTLNAME two_mm_stream_jki_jki_mm1_stage_0_1_Pipeline_VITIS_LOOP_26_1}
  {SRCNAME mm1_stage_0.1_Pipeline_l_S_k_0_k_l_S_i_0_i MODELNAME mm1_stage_0_1_Pipeline_l_S_k_0_k_l_S_i_0_i RTLNAME two_mm_stream_jki_jki_mm1_stage_0_1_Pipeline_l_S_k_0_k_l_S_i_0_i
    SUBMODULES {
      {MODELNAME two_mm_stream_jki_jki_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME two_mm_stream_jki_jki_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_jki_jki_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME two_mm_stream_jki_jki_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm1_stage_0.1_Pipeline_VITIS_LOOP_40_2 MODELNAME mm1_stage_0_1_Pipeline_VITIS_LOOP_40_2 RTLNAME two_mm_stream_jki_jki_mm1_stage_0_1_Pipeline_VITIS_LOOP_40_2}
  {SRCNAME mm1_stage_0.1 MODELNAME mm1_stage_0_1 RTLNAME two_mm_stream_jki_jki_mm1_stage_0_1
    SUBMODULES {
      {MODELNAME two_mm_stream_jki_jki_mm1_stage_0_1_c_col RTLNAME two_mm_stream_jki_jki_mm1_stage_0_1_c_col BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm2_stage_0.1_Pipeline_VITIS_LOOP_55_1 MODELNAME mm2_stage_0_1_Pipeline_VITIS_LOOP_55_1 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_Pipeline_VITIS_LOOP_55_1}
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_i_0_i1 MODELNAME mm2_stage_0_1_Pipeline_l_S_i_0_i1 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_Pipeline_l_S_i_0_i1}
  {SRCNAME mm2_stage_0.1_Pipeline_VITIS_LOOP_67_2 MODELNAME mm2_stage_0_1_Pipeline_VITIS_LOOP_67_2 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_Pipeline_VITIS_LOOP_67_2}
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_k_2_k1_l_S_i_2_i2 MODELNAME mm2_stage_0_1_Pipeline_l_S_k_2_k1_l_S_i_2_i2 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_Pipeline_l_S_k_2_k1_l_S_i_2_i2}
  {SRCNAME mm2_stage_0.1_Pipeline_l_S_i_4_i3 MODELNAME mm2_stage_0_1_Pipeline_l_S_i_4_i3 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_Pipeline_l_S_i_4_i3}
  {SRCNAME mm2_stage_0.1 MODELNAME mm2_stage_0_1 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1
    SUBMODULES {
      {MODELNAME two_mm_stream_jki_jki_mm2_stage_0_1_C_buffer RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_C_buffer BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_jki_jki_mm2_stage_0_1_v18 RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_v18 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_jki_jki_mm2_stage_0_1_d_col RTLNAME two_mm_stream_jki_jki_mm2_stage_0_1_d_col BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME store_res3.1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1 MODELNAME store_res3_1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1 RTLNAME two_mm_stream_jki_jki_store_res3_1_Pipeline_l_S_store_res3_store_res3_l_0_l_store_res3_l_1}
  {SRCNAME store_res3.1 MODELNAME store_res3_1 RTLNAME two_mm_stream_jki_jki_store_res3_1}
  {SRCNAME two_mm_stream_jki_jki MODELNAME two_mm_stream_jki_jki RTLNAME two_mm_stream_jki_jki IS_TOP 1
    SUBMODULES {
      {MODELNAME two_mm_stream_jki_jki_buf0_memcore RTLNAME two_mm_stream_jki_jki_buf0_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME two_mm_stream_jki_jki_buf0 RTLNAME two_mm_stream_jki_jki_buf0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME two_mm_stream_jki_jki_fifo_w64_d4_S RTLNAME two_mm_stream_jki_jki_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME two_mm_stream_jki_jki_fifo_w32_d4_S RTLNAME two_mm_stream_jki_jki_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME two_mm_stream_jki_jki_control_s_axi RTLNAME two_mm_stream_jki_jki_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME two_mm_stream_jki_jki_gmem0_m_axi RTLNAME two_mm_stream_jki_jki_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_jki_jki_gmem1_m_axi RTLNAME two_mm_stream_jki_jki_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_jki_jki_gmem2_m_axi RTLNAME two_mm_stream_jki_jki_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME two_mm_stream_jki_jki_gmem3_m_axi RTLNAME two_mm_stream_jki_jki_gmem3_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
