create_project prj -part xcvu11p-flga2577-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/export/hdd/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/stream_ele_gemm_relu.prj/ls_project/solution1/syn/verilog/top_fadd_32ns_32ns_32_3_full_dsp_1_ip.tcl"
source "/export/hdd/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/stream_ele_gemm_relu.prj/ls_project/solution1/syn/verilog/top_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
source "/export/hdd/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/stream_ele_gemm_relu.prj/ls_project/solution1/syn/verilog/top_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
