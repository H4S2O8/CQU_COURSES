`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 12:35:02
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


module top(input clk,
    input [15:0]code,
    input [4:0]button,
    output [3:0]sm_wei,
    output [7:0]sm_duan,
    output pass,
    output fail
    );
    wire [15:0]data;
    wire hz;
    wire up,down,cnf,back,rst;
    wire signal;
    
    clk_div div(clk,hz);
    debounce d0(hz,button[0],up);
    debounce d1(hz,button[1],down);
    debounce d2(hz,button[2],cnf);
    debounce d3(hz,button[3],back);
    debounce d4(hz,button[4],rst);
    datain din(hz,up,down,cnf,back,rst,data,left,signal);
    display dis(clk,data,sm_wei,sm_duan);
    lock lk(signal,rst,code,data,pass,fail);
endmodule
