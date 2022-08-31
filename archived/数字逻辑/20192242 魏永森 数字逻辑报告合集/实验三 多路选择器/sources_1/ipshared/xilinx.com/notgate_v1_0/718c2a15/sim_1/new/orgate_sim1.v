`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 15:01:11
// Design Name: 
// Module Name: orgate_sim1
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



module notgate_sim1();
reg a=0;
wire b;
notgate #(1) u(a,b);
initial begin
#100 a = 1;
#100 begin a = 0; end
#100 a = 1;
end
endmodule

