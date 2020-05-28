set moduleName sha256_transform
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_transform int 8 regular {array 64 { 1 1 } 1 1 }  }
	{ ctx_state_0 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_1 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_2 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_3 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_4 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_5 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_6 int 32 regular {pointer 2} {global 2}  }
	{ ctx_state_7 int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_transform", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ctx_state_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_transform_address0 sc_out sc_lv 6 signal 0 } 
	{ data_transform_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_transform_q0 sc_in sc_lv 8 signal 0 } 
	{ data_transform_address1 sc_out sc_lv 6 signal 0 } 
	{ data_transform_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_transform_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_state_0_i sc_in sc_lv 32 signal 1 } 
	{ ctx_state_0_o sc_out sc_lv 32 signal 1 } 
	{ ctx_state_0_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ ctx_state_1_i sc_in sc_lv 32 signal 2 } 
	{ ctx_state_1_o sc_out sc_lv 32 signal 2 } 
	{ ctx_state_1_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ ctx_state_2_i sc_in sc_lv 32 signal 3 } 
	{ ctx_state_2_o sc_out sc_lv 32 signal 3 } 
	{ ctx_state_2_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ctx_state_3_i sc_in sc_lv 32 signal 4 } 
	{ ctx_state_3_o sc_out sc_lv 32 signal 4 } 
	{ ctx_state_3_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ctx_state_4_i sc_in sc_lv 32 signal 5 } 
	{ ctx_state_4_o sc_out sc_lv 32 signal 5 } 
	{ ctx_state_4_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ ctx_state_5_i sc_in sc_lv 32 signal 6 } 
	{ ctx_state_5_o sc_out sc_lv 32 signal 6 } 
	{ ctx_state_5_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ ctx_state_6_i sc_in sc_lv 32 signal 7 } 
	{ ctx_state_6_o sc_out sc_lv 32 signal 7 } 
	{ ctx_state_6_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ctx_state_7_i sc_in sc_lv 32 signal 8 } 
	{ ctx_state_7_o sc_out sc_lv 32 signal 8 } 
	{ ctx_state_7_o_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_transform_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_transform", "role": "address0" }} , 
 	{ "name": "data_transform_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_transform", "role": "ce0" }} , 
 	{ "name": "data_transform_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_transform", "role": "q0" }} , 
 	{ "name": "data_transform_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_transform", "role": "address1" }} , 
 	{ "name": "data_transform_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_transform", "role": "ce1" }} , 
 	{ "name": "data_transform_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_transform", "role": "q1" }} , 
 	{ "name": "ctx_state_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_0", "role": "i" }} , 
 	{ "name": "ctx_state_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_0", "role": "o" }} , 
 	{ "name": "ctx_state_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_0", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_1", "role": "i" }} , 
 	{ "name": "ctx_state_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_1", "role": "o" }} , 
 	{ "name": "ctx_state_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_1", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_2", "role": "i" }} , 
 	{ "name": "ctx_state_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_2", "role": "o" }} , 
 	{ "name": "ctx_state_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_2", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_3", "role": "i" }} , 
 	{ "name": "ctx_state_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_3", "role": "o" }} , 
 	{ "name": "ctx_state_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_3", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_4", "role": "i" }} , 
 	{ "name": "ctx_state_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_4", "role": "o" }} , 
 	{ "name": "ctx_state_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_4", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_5", "role": "i" }} , 
 	{ "name": "ctx_state_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_5", "role": "o" }} , 
 	{ "name": "ctx_state_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_5", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_6", "role": "i" }} , 
 	{ "name": "ctx_state_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_6", "role": "o" }} , 
 	{ "name": "ctx_state_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_6", "role": "o_ap_vld" }} , 
 	{ "name": "ctx_state_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_7", "role": "i" }} , 
 	{ "name": "ctx_state_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_7", "role": "o" }} , 
 	{ "name": "ctx_state_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx_state_7", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "data_transform", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_state_0", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_1", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_2", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_3", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_4", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_5", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_6", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_state_7", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "435", "Max" : "435"}
	, {"Name" : "Interval", "Min" : "435", "Max" : "435"}
]}

set Spec2ImplPortList { 
	data_transform { ap_memory {  { data_transform_address0 mem_address 1 6 }  { data_transform_ce0 mem_ce 1 1 }  { data_transform_q0 mem_dout 0 8 }  { data_transform_address1 mem_address 1 6 }  { data_transform_ce1 mem_ce 1 1 }  { data_transform_q1 mem_dout 0 8 } } }
	ctx_state_0 { ap_ovld {  { ctx_state_0_i in_data 0 32 }  { ctx_state_0_o out_data 1 32 }  { ctx_state_0_o_ap_vld out_vld 1 1 } } }
	ctx_state_1 { ap_ovld {  { ctx_state_1_i in_data 0 32 }  { ctx_state_1_o out_data 1 32 }  { ctx_state_1_o_ap_vld out_vld 1 1 } } }
	ctx_state_2 { ap_ovld {  { ctx_state_2_i in_data 0 32 }  { ctx_state_2_o out_data 1 32 }  { ctx_state_2_o_ap_vld out_vld 1 1 } } }
	ctx_state_3 { ap_ovld {  { ctx_state_3_i in_data 0 32 }  { ctx_state_3_o out_data 1 32 }  { ctx_state_3_o_ap_vld out_vld 1 1 } } }
	ctx_state_4 { ap_ovld {  { ctx_state_4_i in_data 0 32 }  { ctx_state_4_o out_data 1 32 }  { ctx_state_4_o_ap_vld out_vld 1 1 } } }
	ctx_state_5 { ap_ovld {  { ctx_state_5_i in_data 0 32 }  { ctx_state_5_o out_data 1 32 }  { ctx_state_5_o_ap_vld out_vld 1 1 } } }
	ctx_state_6 { ap_ovld {  { ctx_state_6_i in_data 0 32 }  { ctx_state_6_o out_data 1 32 }  { ctx_state_6_o_ap_vld out_vld 1 1 } } }
	ctx_state_7 { ap_ovld {  { ctx_state_7_i in_data 0 32 }  { ctx_state_7_o out_data 1 32 }  { ctx_state_7_o_ap_vld out_vld 1 1 } } }
}
