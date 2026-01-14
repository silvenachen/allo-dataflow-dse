set moduleName mm2_stage_0_1
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
set C_modelName {mm2_stage_0.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ v13 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ v14 float 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ v591 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v591", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v13_address0 sc_out sc_lv 12 signal 0 } 
	{ v13_ce0 sc_out sc_logic 1 signal 0 } 
	{ v13_q0 sc_in sc_lv 32 signal 0 } 
	{ v14_address0 sc_out sc_lv 12 signal 1 } 
	{ v14_ce0 sc_out sc_logic 1 signal 1 } 
	{ v14_we0 sc_out sc_logic 1 signal 1 } 
	{ v14_d0 sc_out sc_lv 32 signal 1 } 
	{ v591_dout sc_in sc_lv 32 signal 2 } 
	{ v591_empty_n sc_in sc_logic 1 signal 2 } 
	{ v591_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v13", "role": "address0" }} , 
 	{ "name": "v13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v13", "role": "ce0" }} , 
 	{ "name": "v13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v13", "role": "q0" }} , 
 	{ "name": "v14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v14", "role": "address0" }} , 
 	{ "name": "v14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v14", "role": "ce0" }} , 
 	{ "name": "v14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v14", "role": "we0" }} , 
 	{ "name": "v14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v14", "role": "d0" }} , 
 	{ "name": "v591_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v591", "role": "dout" }} , 
 	{ "name": "v591_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v591", "role": "empty_n" }} , 
 	{ "name": "v591_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v591", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9"],
		"CDFG" : "mm2_stage_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "275271", "EstimateLatencyMax" : "275271",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v13", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1_fu_78", "Port" : "v13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "v14", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mm2_stage_0_1_Pipeline_l_S_i_3_i2_l_S_j_3_j2_fu_71", "Port" : "v14", "Inst_start_state" : "3", "Inst_end_state" : "7"}]},
			{"Name" : "v591", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_mm2_stage_0_1_Pipeline_VITIS_LOOP_60_3_fu_64", "Port" : "v591", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "l_S_k_0_k1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v20_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_58", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "mm2_stage_0_1_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2",
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
			{"Name" : "out_buffer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1_VITIS_LOOP_54_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_VITIS_LOOP_60_3_fu_64", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "mm2_stage_0_1_Pipeline_VITIS_LOOP_60_3",
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
			{"Name" : "v591", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v591_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v20", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_VITIS_LOOP_60_3_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_3_i2_l_S_j_3_j2_fu_71", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "mm2_stage_0_1_Pipeline_l_S_i_3_i2_l_S_j_3_j2",
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
			{"Name" : "v14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_buffer", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "l_S_i_3_i2_l_S_j_3_j2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_3_i2_l_S_j_3_j2_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1_fu_78", "Parent" : "0", "Child" : ["10", "11", "12"],
		"CDFG" : "mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1",
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
			{"Name" : "v20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln68", "Type" : "None", "Direction" : "I"},
			{"Name" : "v13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_buffer", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "l_S_i_0_i1_l_S_j_0_j1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1_fu_78.fadd_32ns_32ns_32_3_full_dsp_1_U38", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1_fu_78.fmul_32ns_32ns_32_2_max_dsp_1_U39", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	mm2_stage_0_1 {
		v13 {Type I LastRead 0 FirstWrite -1}
		v14 {Type O LastRead -1 FirstWrite 1}
		v591 {Type I LastRead 1 FirstWrite -1}}
	mm2_stage_0_1_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 {
		out_buffer {Type O LastRead -1 FirstWrite 0}}
	mm2_stage_0_1_Pipeline_VITIS_LOOP_60_3 {
		v591 {Type I LastRead 1 FirstWrite -1}
		v20 {Type O LastRead -1 FirstWrite 1}}
	mm2_stage_0_1_Pipeline_l_S_i_3_i2_l_S_j_3_j2 {
		v14 {Type O LastRead -1 FirstWrite 1}
		out_buffer {Type I LastRead 0 FirstWrite -1}}
	mm2_stage_0_1_Pipeline_l_S_i_0_i1_l_S_j_0_j1 {
		v20 {Type I LastRead 0 FirstWrite -1}
		zext_ln68 {Type I LastRead 0 FirstWrite -1}
		v13 {Type I LastRead 0 FirstWrite -1}
		out_buffer {Type IO LastRead 1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "275271", "Max" : "275271"}
	, {"Name" : "Interval", "Min" : "275271", "Max" : "275271"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v13 { ap_memory {  { v13_address0 mem_address 1 12 }  { v13_ce0 mem_ce 1 1 }  { v13_q0 mem_dout 0 32 } } }
	v14 { ap_memory {  { v14_address0 mem_address 1 12 }  { v14_ce0 mem_ce 1 1 }  { v14_we0 mem_we 1 1 }  { v14_d0 mem_din 1 32 } } }
	v591 { ap_fifo {  { v591_dout fifo_data 0 32 }  { v591_empty_n fifo_status 0 1 }  { v591_read fifo_update 1 1 } } }
}
