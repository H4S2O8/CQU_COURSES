// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Nov 13 01:31:44 2020
// Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/orgate_0/orgate_0_funcsim.v
// Design      : orgate_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "orgate_0,orgate,{}" *) (* CORE_GENERATION_INFO = "orgate_0,orgate,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=orgate,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=8}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "orgate,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module orgate_0
   (a,
    b,
    c,
    d,
    e);
  input [7:0]a;
  input [7:0]b;
  input [7:0]c;
  input [7:0]d;
  output [7:0]e;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]c;
  wire [7:0]d;
  wire [7:0]e;

  orgate_0_orgate inst
       (.a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e));
endmodule

(* ORIG_REF_NAME = "orgate" *) 
module orgate_0_orgate
   (e,
    b,
    c,
    a,
    d);
  output [7:0]e;
  input [7:0]b;
  input [7:0]c;
  input [7:0]a;
  input [7:0]d;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]c;
  wire [7:0]d;
  wire [7:0]e;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[0]_INST_0 
       (.I0(b[0]),
        .I1(c[0]),
        .I2(a[0]),
        .I3(d[0]),
        .O(e[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[1]_INST_0 
       (.I0(b[1]),
        .I1(c[1]),
        .I2(a[1]),
        .I3(d[1]),
        .O(e[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[2]_INST_0 
       (.I0(b[2]),
        .I1(c[2]),
        .I2(a[2]),
        .I3(d[2]),
        .O(e[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[3]_INST_0 
       (.I0(b[3]),
        .I1(c[3]),
        .I2(a[3]),
        .I3(d[3]),
        .O(e[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[4]_INST_0 
       (.I0(b[4]),
        .I1(c[4]),
        .I2(a[4]),
        .I3(d[4]),
        .O(e[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[5]_INST_0 
       (.I0(b[5]),
        .I1(c[5]),
        .I2(a[5]),
        .I3(d[5]),
        .O(e[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[6]_INST_0 
       (.I0(b[6]),
        .I1(c[6]),
        .I2(a[6]),
        .I3(d[6]),
        .O(e[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \e[7]_INST_0 
       (.I0(b[7]),
        .I1(c[7]),
        .I2(a[7]),
        .I3(d[7]),
        .O(e[7]));
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
