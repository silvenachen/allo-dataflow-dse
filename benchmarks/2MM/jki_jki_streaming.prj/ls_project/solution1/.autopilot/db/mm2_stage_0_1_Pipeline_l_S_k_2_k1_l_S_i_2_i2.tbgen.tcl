set moduleName mm2_stage_0_1_Pipeline_l_S_k_2_k1_l_S_i_2_i2
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
set C_modelName {mm2_stage_0.1_Pipeline_l_S_k_2_k1_l_S_i_2_i2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln65 int 6 regular  }
	{ v13 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ C_buffer float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ d_col float 32 regular {array 64 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln65", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "v13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_col", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln65 sc_in sc_lv 6 signal 0 } 
	{ v13_address0 sc_out sc_lv 12 signal 1 } 
	{ v13_ce0 sc_out sc_logic 1 signal 1 } 
	{ v13_q0 sc_in sc_lv 32 signal 1 } 
	{ C_buffer_address0 sc_out sc_lv 12 signal 2 } 
	{ C_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_buffer_q0 sc_in sc_lv 32 signal 2 } 
	{ d_col_address0 sc_out sc_lv 6 signal 3 } 
	{ d_col_ce0 sc_out sc_logic 1 signal 3 } 
	{ d_col_we0 sc_out sc_logic 1 signal 3 } 
	{ d_col_d0 sc_out sc_lv 32 signal 3 } 
	{ d_col_address1 sc_out sc_lv 6 signal 3 } 
	{ d_col_ce1 sc_out sc_logic 1 signal 3 } 
	{ d_col_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln65", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln65", "role": "default" }} , 
 	{ "name": "v13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v13", "role": "address0" }} , 
 	{ "name": "v13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v13", "role": "ce0" }} , 
 	{ "name": "v13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v13", "role": "q0" }} , 
 	{ "name": "C_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer", "role": "address0" }} , 
 	{ "name": "C_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer", "role": "ce0" }} , 
 	{ "name": "C_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_buffer", "role": "q0" }} , 
 	{ "name": "d_col_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "d_col", "role": "address0" }} , 
 	{ "name": "d_col_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_col", "role": "ce0" }} , 
 	{ "name": "d_col_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_col", "role": "we0" }} , 
 	{ "name": "d_col_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_col", "role": "d0" }} , 
 	{ "name": "d_col_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "d_col", "role": "address1" }} , 
 	{ "name": "d_col_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_col", "role": "ce1" }} , 
 	{ "name": "d_col_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_col", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "mm2_stage_0_1_Pipeline_l_S_k_2_k1_l_S_i_2_i2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4103", "EstimateLatencyMax" : "4103",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "zext_ln65", "Type" : "None", "Direction" : "I"},
			{"Name" : "v13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_col", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "l_S_k_2_k1_l_S_i_2_i2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U41", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm2_stage_0_1_Pipeline_l_S_k_2_k1_l_S_i_2_i2 {
		zext_ln65 {Type I LastRead 0 FirstWrite -1}
		v13 {Type I LastRead 0 FirstWrite -1}
		C_buffer {Type I LastRead 0 FirstWrite -1}
		d_col {Type IO LastRead 1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4103", "Max" : "4103"}
	, {"Name" : "Interval", "Min" : "4103", "Max" : "4103"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln65 { ap_none {  { zext_ln65 in_data 0 6 } } }
	v13 { ap_memory {  { v13_address0 mem_address 1 12 }  { v13_ce0 mem_ce 1 1 }  { v13_q0 mem_dout 0 32 } } }
	C_buffer { ap_memory {  { C_buffer_address0 mem_address 1 12 }  { C_buffer_ce0 mem_ce 1 1 }  { C_buffer_q0 mem_dout 0 32 } } }
	d_col { ap_memory {  { d_col_address0 mem_address 1 6 }  { d_col_ce0 mem_ce 1 1 }  { d_col_we0 mem_we 1 1 }  { d_col_d0 mem_din 1 32 }  { d_col_address1 MemPortADDR2 1 6 }  { d_col_ce1 MemPortCE2 1 1 }  { d_col_q1 MemPortDOUT2 0 32 } } }
}
