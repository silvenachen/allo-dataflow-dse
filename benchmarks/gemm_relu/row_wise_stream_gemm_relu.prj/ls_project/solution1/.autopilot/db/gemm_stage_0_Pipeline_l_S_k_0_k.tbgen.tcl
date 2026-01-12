set moduleName gemm_stage_0_Pipeline_l_S_k_0_k
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
set C_modelName {gemm_stage_0_Pipeline_l_S_k_0_k}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_row float 32 regular {array 64 { 2 2 } 1 1 }  }
	{ zext_ln31 int 12 regular  }
	{ v0 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ v1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_row", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln31", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "v0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_row_address0 sc_out sc_lv 6 signal 0 } 
	{ c_row_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_row_we0 sc_out sc_logic 1 signal 0 } 
	{ c_row_d0 sc_out sc_lv 32 signal 0 } 
	{ c_row_q0 sc_in sc_lv 32 signal 0 } 
	{ c_row_address1 sc_out sc_lv 6 signal 0 } 
	{ c_row_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_row_we1 sc_out sc_logic 1 signal 0 } 
	{ c_row_d1 sc_out sc_lv 32 signal 0 } 
	{ c_row_q1 sc_in sc_lv 32 signal 0 } 
	{ zext_ln31 sc_in sc_lv 12 signal 1 } 
	{ v0_address0 sc_out sc_lv 12 signal 2 } 
	{ v0_ce0 sc_out sc_logic 1 signal 2 } 
	{ v0_q0 sc_in sc_lv 32 signal 2 } 
	{ v1_address0 sc_out sc_lv 12 signal 3 } 
	{ v1_ce0 sc_out sc_logic 1 signal 3 } 
	{ v1_q0 sc_in sc_lv 32 signal 3 } 
	{ v1_address1 sc_out sc_lv 12 signal 3 } 
	{ v1_ce1 sc_out sc_logic 1 signal 3 } 
	{ v1_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_row_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_row", "role": "address0" }} , 
 	{ "name": "c_row_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row", "role": "ce0" }} , 
 	{ "name": "c_row_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row", "role": "we0" }} , 
 	{ "name": "c_row_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row", "role": "d0" }} , 
 	{ "name": "c_row_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row", "role": "q0" }} , 
 	{ "name": "c_row_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_row", "role": "address1" }} , 
 	{ "name": "c_row_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row", "role": "ce1" }} , 
 	{ "name": "c_row_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row", "role": "we1" }} , 
 	{ "name": "c_row_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row", "role": "d1" }} , 
 	{ "name": "c_row_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row", "role": "q1" }} , 
 	{ "name": "zext_ln31", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln31", "role": "default" }} , 
 	{ "name": "v0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v0", "role": "address0" }} , 
 	{ "name": "v0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v0", "role": "ce0" }} , 
 	{ "name": "v0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v0", "role": "q0" }} , 
 	{ "name": "v1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v1", "role": "address0" }} , 
 	{ "name": "v1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "ce0" }} , 
 	{ "name": "v1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "q0" }} , 
 	{ "name": "v1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v1", "role": "address1" }} , 
 	{ "name": "v1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "ce1" }} , 
 	{ "name": "v1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U17", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U18", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_stage_0_Pipeline_l_S_k_0_k {
		c_row {Type IO LastRead 32 FirstWrite 32}
		zext_ln31 {Type I LastRead 0 FirstWrite -1}
		v0 {Type I LastRead 0 FirstWrite -1}
		v1 {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_row { ap_memory {  { c_row_address0 mem_address 1 6 }  { c_row_ce0 mem_ce 1 1 }  { c_row_we0 mem_we 1 1 }  { c_row_d0 mem_din 1 32 }  { c_row_q0 mem_dout 0 32 }  { c_row_address1 MemPortADDR2 1 6 }  { c_row_ce1 MemPortCE2 1 1 }  { c_row_we1 MemPortWE2 1 1 }  { c_row_d1 MemPortDIN2 1 32 }  { c_row_q1 MemPortDOUT2 0 32 } } }
	zext_ln31 { ap_none {  { zext_ln31 in_data 0 12 } } }
	v0 { ap_memory {  { v0_address0 mem_address 1 12 }  { v0_ce0 mem_ce 1 1 }  { v0_q0 mem_dout 0 32 } } }
	v1 { ap_memory {  { v1_address0 mem_address 1 12 }  { v1_ce0 mem_ce 1 1 }  { v1_q0 mem_dout 0 32 }  { v1_address1 MemPortADDR2 1 12 }  { v1_ce1 MemPortCE2 1 1 }  { v1_q1 MemPortDOUT2 0 32 } } }
}
