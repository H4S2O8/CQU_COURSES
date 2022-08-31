`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/18 09:10:02
// Design Name: 
// Module Name: sub32
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


module sub32_wg(carryin,X,Y,S,isfu,isover);
parameter wide=32;
    input [wide-1:0] X;
    input [wide-1:0] Y;
    output [wide-1:0] S;
    input carryin;
    output isfu;
    output isover;
    reg [wide-1:0] X0;
    reg [wide-1:0] Y0;
    always @(*)
    begin
        X0=X;
        Y0=Y;
        if(Y0[wide-1]==1)
            Y0[wide-1]=0;
        else
            Y0[wide-1]=1;
    end
    add32_wg #wide mysub(0,X0,Y0,S,isfu,isover);
endmodule
