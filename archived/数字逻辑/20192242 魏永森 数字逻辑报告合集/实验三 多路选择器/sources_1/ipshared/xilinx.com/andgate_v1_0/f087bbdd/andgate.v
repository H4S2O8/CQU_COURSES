`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 01:25:12
// Design Name: 
// Module Name: andgate
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


module andgate
# (parameter WIDTH=8)
(
input [(WIDTH-1):0]a,
input [(WIDTH-1):0]b,
input [(WIDTH-1):0]c,
output [(WIDTH-1):0]d
    );
    assign d = a & b & c;
endmodule
