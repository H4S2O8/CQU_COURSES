// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Nov 13 01:31:39 2020
// Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/notgate_0/notgate_0_funcsim.v
// Design      : notgate_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "notgate_0,notgate,{}" *) (* CORE_GENERATION_INFO = "notgate_0,notgate,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=notgate,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=8}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "notgate,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module notgate_0
   (a,
    b);
  input [7:0]a;
  output [7:0]b;

  wire [7:0]a;
  wire [7:0]b;

  notgate_0_notgate inst
       (.a(a),
        .b(b));
endmodule

(* ORIG_REF_NAME = "notgate" *) 
module notgate_0_notgate
   (b,
    a);
  output [7:0]b;
  input [7:0]a;

  wire [7:0]a;
  wire [7:0]b;

  LUT1 #(
    .INIT(2'h1)) 
    \b[0]_INST_0 
       (.I0(a[0]),
        .O(b[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[1]_INST_0 
       (.I0(a[1]),
        .O(b[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[2]_INST_0 
       (.I0(a[2]),
        .O(b[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[3]_INST_0 
       (.I0(a[3]),
        .O(b[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[4]_INST_0 
       (.I0(a[4]),
        .O(b[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[5]_INST_0 
       (.I0(a[5]),
        .O(b[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[6]_INST_0 
       (.I0(a[6]),
        .O(b[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[7]_INST_0 
       (.I0(a[7]),
        .O(b[7]));
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
