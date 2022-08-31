// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Nov 13 01:31:29 2020
// Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/andgate_0/andgate_0_funcsim.v
// Design      : andgate_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "andgate_0,andgate,{}" *) (* CORE_GENERATION_INFO = "andgate_0,andgate,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=andgate,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=8}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "andgate,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module andgate_0
   (a,
    b,
    c,
    d);
  input [7:0]a;
  input [7:0]b;
  input [7:0]c;
  output [7:0]d;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]c;
  wire [7:0]d;

  andgate_0_andgate inst
       (.a(a),
        .b(b),
        .c(c),
        .d(d));
endmodule

(* ORIG_REF_NAME = "andgate" *) 
module andgate_0_andgate
   (d,
    c,
    a,
    b);
  output [7:0]d;
  input [7:0]c;
  input [7:0]a;
  input [7:0]b;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]c;
  wire [7:0]d;

  LUT3 #(
    .INIT(8'h80)) 
    \d[0]_INST_0 
       (.I0(c[0]),
        .I1(a[0]),
        .I2(b[0]),
        .O(d[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[1]_INST_0 
       (.I0(c[1]),
        .I1(a[1]),
        .I2(b[1]),
        .O(d[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[2]_INST_0 
       (.I0(c[2]),
        .I1(a[2]),
        .I2(b[2]),
        .O(d[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[3]_INST_0 
       (.I0(c[3]),
        .I1(a[3]),
        .I2(b[3]),
        .O(d[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[4]_INST_0 
       (.I0(c[4]),
        .I1(a[4]),
        .I2(b[4]),
        .O(d[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[5]_INST_0 
       (.I0(c[5]),
        .I1(a[5]),
        .I2(b[5]),
        .O(d[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[6]_INST_0 
       (.I0(c[6]),
        .I1(a[6]),
        .I2(b[6]),
        .O(d[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[7]_INST_0 
       (.I0(c[7]),
        .I1(a[7]),
        .I2(b[7]),
        .O(d[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
