`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 12:39:25
// Design Name: 
// Module Name: mux4_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4_1(f, rst, w0, w1, w2, w3, s0,s1);
    output [2:0]f;
    input s0,s1;
    input rst;
    input [2:0]w0;
    input [2:0]w1;
    input [2:0]w2;
    input [2:0]w3;
    reg [2:0]f;
    always @ (w0, w1, w2, w3, s0,s1, rst)  begin
        if(rst ==1 ) 
            f = 3'b000;
        else begin
            case({s0,s1})
            2'b00: f = w0;
            2'b01: f = w2;
            2'b10: f = w1;
            2'b11: f = w3;
            endcase
        end
    end
endmodule

