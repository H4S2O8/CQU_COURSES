//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Fri Nov 13 01:57:51 2020
//Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1_3.bd
//Design      : mux4x1_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux4x1_3,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux4x1_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "mux4x1_3.hwdef" *) 
module mux4x1_3
   (f,
    s0,
    s1,
    w0,
    w1,
    w2,
    w3);
  output [2:0]f;
  input s0;
  input s1;
  input [2:0]w0;
  input [2:0]w1;
  input [2:0]w2;
  input [2:0]w3;

  wire [2:0]andgate_0_d;
  wire [2:0]andgate_1_d;
  wire [2:0]andgate_2_d;
  wire [2:0]andgate_3_d;
  wire [2:0]decoder_0_b;
  wire [2:0]decoder_1_b;
  wire [2:0]notgate_0_b;
  wire [2:0]notgate_1_b;
  wire [2:0]orgate_0_e;
  wire s0_1;
  wire s1_1;
  wire [2:0]w0_1;
  wire [2:0]w1_1;
  wire [2:0]w2_1;
  wire [2:0]w3_1;

  assign f[2:0] = orgate_0_e;
  assign s0_1 = s0;
  assign s1_1 = s1;
  assign w0_1 = w0[2:0];
  assign w1_1 = w1[2:0];
  assign w2_1 = w2[2:0];
  assign w3_1 = w3[2:0];
  mux4x1_3_andgate_0_0 andgate_0
       (.a(notgate_0_b),
        .b(w0_1),
        .c(notgate_1_b),
        .d(andgate_0_d));
  mux4x1_3_andgate_1_0 andgate_1
       (.a(decoder_0_b),
        .b(w1_1),
        .c(notgate_1_b),
        .d(andgate_1_d));
  mux4x1_3_andgate_2_0 andgate_2
       (.a(notgate_0_b),
        .b(w2_1),
        .c(decoder_1_b),
        .d(andgate_2_d));
  mux4x1_3_andgate_3_0 andgate_3
       (.a(decoder_0_b),
        .b(w3_1),
        .c(decoder_1_b),
        .d(andgate_3_d));
  mux4x1_3_decoder_0_0 decoder_0
       (.a(s0_1),
        .b(decoder_0_b));
  mux4x1_3_decoder_1_0 decoder_1
       (.a(s1_1),
        .b(decoder_1_b));
  mux4x1_3_notgate_0_0 notgate_0
       (.a(decoder_0_b),
        .b(notgate_0_b));
  mux4x1_3_notgate_1_0 notgate_1
       (.a(decoder_1_b),
        .b(notgate_1_b));
  mux4x1_3_orgate_0_0 orgate_0
       (.a(andgate_0_d),
        .b(andgate_1_d),
        .c(andgate_2_d),
        .d(andgate_3_d),
        .e(orgate_0_e));
endmodule
