open_project -reset ls_project
set_top gemm_relu_stream_jki
add_files kernel.cpp -cflags "-Wall"
add_files -tb testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution -reset solution2 -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
csim_design
csynth_design
# cosim_design 