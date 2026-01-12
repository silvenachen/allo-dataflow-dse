set SynModuleInfo {
  {SRCNAME kernel_gemm_relu_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 MODELNAME kernel_gemm_relu_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1 RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1
    SUBMODULES {
      {MODELNAME kernel_gemm_relu_flow_control_loop_pipe_sequential_init RTLNAME kernel_gemm_relu_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_gemm_relu_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kernel_gemm_relu_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 MODELNAME kernel_gemm_relu_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1 RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1}
  {SRCNAME kernel_gemm_relu_Pipeline_VITIS_LOOP_107_1_VITIS_LOOP_108_2 MODELNAME kernel_gemm_relu_Pipeline_VITIS_LOOP_107_1_VITIS_LOOP_108_2 RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_VITIS_LOOP_107_1_VITIS_LOOP_108_2}
  {SRCNAME kernel_gemm_relu_Pipeline_l_S_i_j_k_0_k_l_i_l_j MODELNAME kernel_gemm_relu_Pipeline_l_S_i_j_k_0_k_l_i_l_j RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_l_S_i_j_k_0_k_l_i_l_j
    SUBMODULES {
      {MODELNAME kernel_gemm_relu_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME kernel_gemm_relu_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_gemm_relu_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME kernel_gemm_relu_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kernel_gemm_relu_Pipeline_l_S_i_j_0_i1_l_j1 MODELNAME kernel_gemm_relu_Pipeline_l_S_i_j_0_i1_l_j1 RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_l_S_i_j_0_i1_l_j1
    SUBMODULES {
      {MODELNAME kernel_gemm_relu_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME kernel_gemm_relu_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kernel_gemm_relu_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1 MODELNAME kernel_gemm_relu_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1 RTLNAME kernel_gemm_relu_kernel_gemm_relu_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1}
  {SRCNAME kernel_gemm_relu MODELNAME kernel_gemm_relu RTLNAME kernel_gemm_relu IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel_gemm_relu_buf0 RTLNAME kernel_gemm_relu_buf0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_gemm_relu_C RTLNAME kernel_gemm_relu_C BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_gemm_relu_control_s_axi RTLNAME kernel_gemm_relu_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME kernel_gemm_relu_gmem0_m_axi RTLNAME kernel_gemm_relu_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME kernel_gemm_relu_gmem1_m_axi RTLNAME kernel_gemm_relu_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME kernel_gemm_relu_gmem2_m_axi RTLNAME kernel_gemm_relu_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
