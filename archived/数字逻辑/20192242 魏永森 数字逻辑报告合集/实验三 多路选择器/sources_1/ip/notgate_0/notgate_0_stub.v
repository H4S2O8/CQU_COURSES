// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Nov 13 01:31:39 2020
// Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/notgate_0/notgate_0_stub.v
// Design      : notgate_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "notgate,Vivado 2015.2" *)
module notgate_0(a, b)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],b[7:0]" */;
  input [7:0]a;
  output [7:0]b;
endmodule
