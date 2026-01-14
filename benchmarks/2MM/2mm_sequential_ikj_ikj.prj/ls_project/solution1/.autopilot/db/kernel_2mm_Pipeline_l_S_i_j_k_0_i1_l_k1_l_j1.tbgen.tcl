set moduleName kernel_2mm_Pipeline_l_S_i_j_k_0_i1_l_k1_l_j1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {kernel_2mm_Pipeline_l_S_i_j_k_0_i1_l_k1_l_j1}
set C_modelType { void 0 }
set C_modelArgList {
	{ C float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ buf2 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ E float 32 regular {array 4096 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "E", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_address0 sc_out sc_lv 12 signal 0 } 
	{ C_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_q0 sc_in sc_lv 32 signal 0 } 
	{ buf2_address0 sc_out sc_lv 12 signal 1 } 
	{ buf2_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf2_q0 sc_in sc_lv 32 signal 1 } 
	{ E_address0 sc_out sc_lv 12 signal 2 } 
	{ E_ce0 sc_out sc_logic 1 signal 2 } 
	{ E_we0 sc_out sc_logic 1 signal 2 } 
	{ E_d0 sc_out sc_lv 32 signal 2 } 
	{ E_address1 sc_out sc_lv 12 signal 2 } 
	{ E_ce1 sc_out sc_logic 1 signal 2 } 
	{ E_q1 sc_in sc_lv 32 signal 2 } 
	{ grp_fu_351_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_351_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_351_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_351_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_351_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_355_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_355_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_355_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_355_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "buf2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf2", "role": "address0" }} , 
 	{ "name": "buf2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2", "role": "ce0" }} , 
 	{ "name": "buf2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf2", "role": "q0" }} , 
 	{ "name": "E_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "E", "role": "address0" }} , 
 	{ "name": "E_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E", "role": "ce0" }} , 
 	{ "name": "E_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E", "role": "we0" }} , 
 	{ "name": "E_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E", "role": "d0" }} , 
 	{ "name": "E_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "E", "role": "address1" }} , 
 	{ "name": "E_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E", "role": "ce1" }} , 
 	{ "name": "E_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E", "role": "q1" }} , 
 	{ "name": "grp_fu_351_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_351_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_351_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_351_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_351_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_351_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_351_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_351_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_351_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_351_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_355_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_355_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_355_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_355_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_355_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_355_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_355_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_355_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "kernel_2mm_Pipeline_l_S_i_j_k_0_i1_l_k1_l_j1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262151", "EstimateLatencyMax" : "262151",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "E", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "l_S_i_j_k_0_i1_l_k1_l_j1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel_2mm_Pipeline_l_S_i_j_k_0_i1_l_k1_l_j1 {
		C {Type I LastRead 1 FirstWrite -1}
		buf2 {Type I LastRead 1 FirstWrite -1}
		E {Type IO LastRead 2 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262151", "Max" : "262151"}
	, {"Name" : "Interval", "Min" : "262151", "Max" : "262151"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_q0 mem_dout 0 32 } } }
	buf2 { ap_memory {  { buf2_address0 mem_address 1 12 }  { buf2_ce0 mem_ce 1 1 }  { buf2_q0 mem_dout 0 32 } } }
	E { ap_memory {  { E_address0 mem_address 1 12 }  { E_ce0 mem_ce 1 1 }  { E_we0 mem_we 1 1 }  { E_d0 mem_din 1 32 }  { E_address1 MemPortADDR2 1 12 }  { E_ce1 MemPortCE2 1 1 }  { E_q1 MemPortDOUT2 0 32 } } }
}
