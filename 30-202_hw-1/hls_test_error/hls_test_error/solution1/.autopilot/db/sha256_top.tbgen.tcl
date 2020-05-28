set C_TypeInfoList {{ 
"sha256_top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }, {"hash": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }],[],""]
}}
set moduleName sha256_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hash","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_address0 sc_out sc_lv 5 signal 0 } 
	{ data_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_q0 sc_in sc_lv 8 signal 0 } 
	{ hash_address0 sc_out sc_lv 5 signal 1 } 
	{ hash_ce0 sc_out sc_logic 1 signal 1 } 
	{ hash_we0 sc_out sc_logic 1 signal 1 } 
	{ hash_d0 sc_out sc_lv 8 signal 1 } 
	{ hash_address1 sc_out sc_lv 5 signal 1 } 
	{ hash_ce1 sc_out sc_logic 1 signal 1 } 
	{ hash_we1 sc_out sc_logic 1 signal 1 } 
	{ hash_d1 sc_out sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6"],
		"CDFG" : "sha256_top",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "hash", "Type" : "Memory", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "final_hash"}]},
		{"Name" : "ctx_datalen", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_datalen"}]},
		{"Name" : "ctx_bitlen_0", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_bitlen_0"}]},
		{"Name" : "ctx_bitlen_1", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_bitlen_1"}]},
		{"Name" : "ctx_state_0", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_0"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_0"}]},
		{"Name" : "ctx_state_1", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_1"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_1"}]},
		{"Name" : "ctx_state_2", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_2"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_2"}]},
		{"Name" : "ctx_state_3", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_3"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_3"}]},
		{"Name" : "ctx_state_4", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_4"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_4"}]},
		{"Name" : "ctx_state_5", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_5"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_5"}]},
		{"Name" : "ctx_state_6", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_6"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_6"}]},
		{"Name" : "ctx_state_7", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_state_7"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "ctx_state_7"}]},
		{"Name" : "ctx_in_data", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "ctx_in_data"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "data_transform"}]},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_sha256_final_fu_112", "Port" : "k"},
			{"ID" : "6", "SubInstance" : "grp_sha256_transform_fu_144", "Port" : "k"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_final_fu_112"},
		{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_144"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_in_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_112", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "sha256_final",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "final_hash", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "ctx_datalen", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_in_data", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "data_transform"}]},
		{"Name" : "ctx_state_0", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_0"}]},
		{"Name" : "ctx_state_1", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_1"}]},
		{"Name" : "ctx_state_2", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_2"}]},
		{"Name" : "ctx_state_3", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_3"}]},
		{"Name" : "ctx_state_4", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_4"}]},
		{"Name" : "ctx_state_5", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_5"}]},
		{"Name" : "ctx_state_6", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_6"}]},
		{"Name" : "ctx_state_7", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "ctx_state_7"}]},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sha256_transform_fu_295", "Port" : "k"}]},
		{"Name" : "ctx_bitlen_0", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "ctx_bitlen_1", "Type" : "OVld", "Direction" : "IO"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_295"},
		{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_295"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_112.grp_sha256_transform_fu_295", "Parent" : "2", "Child" : ["4", "5"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_112.grp_sha256_transform_fu_295.k_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_112.grp_sha256_transform_fu_295.m_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_144", "Parent" : "0", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_144.k_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_144.m_U", "Parent" : "6"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	data { ap_memory {  { data_address0 mem_address 1 5 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
