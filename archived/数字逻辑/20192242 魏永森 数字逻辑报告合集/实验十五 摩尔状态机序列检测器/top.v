`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 15:34:46
// Design Name: 
// Module Name: top
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


module top(clk,rnt,clr,din,q,in);

    input clk;
    input clr;
    input rnt;
    input[7:0] din;
    wire result;
    output reg q;
    
    output reg [7:0] in;

    
    always@(posedge clk)
    begin
        if(clr==1 || rnt==0)
            q<=0;
        else if(result==1)
            q<=1;
    end

    always@(rnt)
    begin
        if(rnt==1)
            begin
                in=din;
            end
        else
            in=8'b00000000;
    end
    wire wei;
    par2ser u1(.clk(clk),.din(in),.dout(wei));
    seqdeta u2(.clk(clk),.clr(clr),.din(wei),.dout(result));
    
endmodule
