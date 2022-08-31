`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 15:24:39
// Design Name: 
// Module Name: par2ser
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


module par2ser(clk,din,dout);
    input clk;
    input[7:0] din;
    output reg dout;
    reg[7:0] datatemp;
    reg[3:0] cnt=0;
    always @(din)
    begin
        datatemp = din;
    end
    
    always @(posedge clk)
    begin
        if(cnt<8)
        begin
            dout<=datatemp[cnt];
            cnt<=cnt+1;
        end
        else
        begin
            dout<=0;
            cnt<=cnt+1;
            end
    end
endmodule
