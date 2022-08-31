`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 01:08:01
// Design Name: 
// Module Name: decoder_sim
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


module decoder_sim( );
reg a=0;
wire [2:0]b;
decoder u(.a(a),.b(b));
initial begin
#100 a=1;
end
endmodule
