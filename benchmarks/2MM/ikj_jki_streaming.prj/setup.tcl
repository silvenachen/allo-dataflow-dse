open_project -reset ls_project
set_top two_mm_stream_ikj_jki
add_files kernel.cpp -cflags "-Wall"
add_files -tb testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution -reset solution1 -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
csim_design
csynth_design
# cosim_design 