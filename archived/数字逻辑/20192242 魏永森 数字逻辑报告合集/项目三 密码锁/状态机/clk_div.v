`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 12:33:27
// Design Name: 
// Module Name: clk_div
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
//·ÖÆµ100hz
module clk_div (
    input clk,
    output reg hz
    );
    integer cnt=0;
    always @ (posedge clk)
    begin
    if (cnt==500000) begin
        cnt <= 0;
        hz<=~hz;
    end
    else
        cnt <= cnt + 1;
    end
endmodule
