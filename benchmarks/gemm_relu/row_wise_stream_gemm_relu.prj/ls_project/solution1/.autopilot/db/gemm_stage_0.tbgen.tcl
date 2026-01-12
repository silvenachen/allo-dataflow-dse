set moduleName gemm_stage_0
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {gemm_stage_0}
set C_modelType { void 0 }
set C_modelArgList {
	{ v0 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ v1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ v2_0_0_0 float 32 regular {array 64 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_0_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ v0_address0 sc_out sc_lv 12 signal 0 } 
	{ v0_ce0 sc_out sc_logic 1 signal 0 } 
	{ v0_q0 sc_in sc_lv 32 signal 0 } 
	{ v1_address0 sc_out sc_lv 12 signal 1 } 
	{ v1_ce0 sc_out sc_logic 1 signal 1 } 
	{ v1_q0 sc_in sc_lv 32 signal 1 } 
	{ v1_address1 sc_out sc_lv 12 signal 1 } 
	{ v1_ce1 sc_out sc_logic 1 signal 1 } 
	{ v1_q1 sc_in sc_lv 32 signal 1 } 
	{ v2_0_0_0_address0 sc_out sc_lv 6 signal 2 } 
	{ v2_0_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ v2_0_0_0_we0 sc_out sc_logic 1 signal 2 } 
	{ v2_0_0_0_d0 sc_out sc_lv 32 signal 2 } 
	{ v2_0_0_0_full_n sc_in sc_logic 1 signal -1 } 
	{ v2_0_0_0_write sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "v0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v0", "role": "address0" }} , 
 	{ "name": "v0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v0", "role": "ce0" }} , 
 	{ "name": "v0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v0", "role": "q0" }} , 
 	{ "name": "v1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v1", "role": "address0" }} , 
 	{ "name": "v1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "ce0" }} , 
 	{ "name": "v1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "q0" }} , 
 	{ "name": "v1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v1", "role": "address1" }} , 
 	{ "name": "v1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "ce1" }} , 
 	{ "name": "v1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "q1" }} , 
 	{ "name": "v2_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "v2_0_0_0", "role": "address0" }} , 
 	{ "name": "v2_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_0_0", "role": "ce0" }} , 
 	{ "name": "v2_0_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_0_0", "role": "we0" }} , 
 	{ "name": "v2_0_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_0_0", "role": "d0" }} , 
 	{ "name": "v2_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_0_0_full_n", "role": "default" }} , 
 	{ "name": "v2_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_0_0_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "10"],
		"CDFG" : "gemm_stage_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271169", "EstimateLatencyMax" : "271169",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79", "Port" : "v0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79", "Port" : "v1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v2_0_0_0", "Type" : "MemFifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_gemm_stage_0_Pipeline_VITIS_LOOP_46_2_fu_89", "Port" : "v2_0_0_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "l_S_i_0_i", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_row_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_VITIS_LOOP_27_1_fu_74", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "gemm_stage_0_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_VITIS_LOOP_27_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9"],
		"CDFG" : "gemm_stage_0_Pipeline_l_S_k_0_k",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "v0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "l_S_k_0_k", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79.fadd_32ns_32ns_32_3_full_dsp_1_U15", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79.fadd_32ns_32ns_32_3_full_dsp_1_U16", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79.fmul_32ns_32ns_32_2_max_dsp_1_U17", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79.fmul_32ns_32ns_32_2_max_dsp_1_U18", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_l_S_k_0_k_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_VITIS_LOOP_46_2_fu_89", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "gemm_stage_0_Pipeline_VITIS_LOOP_46_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v2_0_0_0", "Type" : "MemFifo", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_stage_0_Pipeline_VITIS_LOOP_46_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	gemm_stage_0 {
		v0 {Type I LastRead 0 FirstWrite -1}
		v1 {Type I LastRead 32 FirstWrite -1}
		v2_0_0_0 {Type O LastRead 5 FirstWrite 1}}
	gemm_stage_0_Pipeline_VITIS_LOOP_27_1 {
		c_row {Type O LastRead -1 FirstWrite 0}}
	gemm_stage_0_Pipeline_l_S_k_0_k {
		c_row {Type IO LastRead 32 FirstWrite 32}
		zext_ln31 {Type I LastRead 0 FirstWrite -1}
		v0 {Type I LastRead 0 FirstWrite -1}
		v1 {Type I LastRead 32 FirstWrite -1}}
	gemm_stage_0_Pipeline_VITIS_LOOP_46_2 {
		c_row {Type I LastRead 0 FirstWrite -1}
		v2_0_0_0 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "271169", "Max" : "271169"}
	, {"Name" : "Interval", "Min" : "271169", "Max" : "271169"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v0 { ap_memory {  { v0_address0 mem_address 1 12 }  { v0_ce0 mem_ce 1 1 }  { v0_q0 mem_dout 0 32 } } }
	v1 { ap_memory {  { v1_address0 mem_address 1 12 }  { v1_ce0 mem_ce 1 1 }  { v1_q0 mem_dout 0 32 }  { v1_address1 MemPortADDR2 1 12 }  { v1_ce1 MemPortCE2 1 1 }  { v1_q1 MemPortDOUT2 0 32 } } }
	v2_0_0_0 { mem_fifo {  { v2_0_0_0_address0 mem_address 1 6 }  { v2_0_0_0_ce0 mem_ce 1 1 }  { v2_0_0_0_we0 mem_we 1 1 }  { v2_0_0_0_d0 mem_din 1 32 } } }
}
