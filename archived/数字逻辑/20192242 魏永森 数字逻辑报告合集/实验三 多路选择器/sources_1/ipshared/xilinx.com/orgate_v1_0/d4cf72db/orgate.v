`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 01:27:32
// Design Name: 
// Module Name: orgate
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


module orgate
# (parameter WIDTH=8)
(
input [(WIDTH-1):0]a,
input [(WIDTH-1):0]b,
input [(WIDTH-1):0]c,
input [(WIDTH-1):0]d,
output [(WIDTH-1):0]e
   );
    assign e = a | b | c | d;
endmodule
