`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 17:53:51
// Design Name: 
// Module Name: lock
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


module lock(input clk,
    input rst,
    input [15:0]code,
    input [15:0]data,
    output reg pass,
    output reg fail
    );
    always@(posedge clk, posedge rst)begin
        if(rst) begin
            pass<=0;
            fail<=0;
        end
        else if(code==data) begin
            pass<=1;
            fail<=0;
        end
        else begin
            fail<=1;
            pass<=0;
        end
    end
endmodule
