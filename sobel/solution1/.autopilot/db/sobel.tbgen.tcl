set C_TypeInfoList {{ 
"sobel" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"input_image": [[], {"array": [ {"array": ["0", [640]]}, [480]]}] }, {"output_image": [[], {"array": [ {"array": ["0", [640]]}, [480]]}] }],["1","2","3","4"],""],
 "1": [ "window_buffer", [[], {"array": [ {"scalar": "unsigned char"}, [3,3]]}],""],
 "2": [ "line_buffer", [[], {"array": [ {"scalar": "unsigned char"}, [3,640]]}],""],
 "3": [ "Gy", [[], {"scalar": "int"}],""],
 "4": [ "Gx", [[], {"scalar": "int"}],""], 
"0": [ "BYTE", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName sobel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {sobel}
set C_modelType { int 32 }
set C_modelArgList { 
	{ input_image int 8 regular {fifo 0 volatile }  }
	{ output_image int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_image", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input_image","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 479,"step" : 1},{"low" : 0,"up" : 639,"step" : 1}]}]}]} , 
 	{ "Name" : "output_image", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output_image","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 479,"step" : 1},{"low" : 0,"up" : 639,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_image_dout sc_in sc_lv 8 signal 0 } 
	{ input_image_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_image_read sc_out sc_logic 1 signal 0 } 
	{ output_image_din sc_out sc_lv 8 signal 1 } 
	{ output_image_full_n sc_in sc_logic 1 signal 1 } 
	{ output_image_write sc_out sc_logic 1 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_image_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_image", "role": "dout" }} , 
 	{ "name": "input_image_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_image", "role": "empty_n" }} , 
 	{ "name": "input_image_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_image", "role": "read" }} , 
 	{ "name": "output_image_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_image", "role": "din" }} , 
 	{ "name": "output_image_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_image", "role": "full_n" }} , 
 	{ "name": "output_image_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_image", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	input_image { ap_fifo {  { input_image_dout fifo_data 0 8 }  { input_image_empty_n fifo_status 0 1 }  { input_image_read fifo_update 1 1 } } }
	output_image { ap_fifo {  { output_image_din fifo_data 1 8 }  { output_image_full_n fifo_status 0 1 }  { output_image_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_image { fifo_read 640 no_conditional }
	output_image { fifo_write 640 no_conditional }
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
