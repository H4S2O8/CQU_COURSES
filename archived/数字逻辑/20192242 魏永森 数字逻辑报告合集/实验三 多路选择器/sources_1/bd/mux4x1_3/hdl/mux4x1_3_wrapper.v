//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Fri Nov 13 01:57:51 2020
//Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1_3_wrapper.bd
//Design      : mux4x1_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux4x1_3_wrapper
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

  wire [2:0]f;
  wire s0;
  wire s1;
  wire [2:0]w0;
  wire [2:0]w1;
  wire [2:0]w2;
  wire [2:0]w3;

  mux4x1_3 mux4x1_3_i
       (.f(f),
        .s0(s0),
        .s1(s1),
        .w0(w0),
        .w1(w1),
        .w2(w2),
        .w3(w3));
endmodule
