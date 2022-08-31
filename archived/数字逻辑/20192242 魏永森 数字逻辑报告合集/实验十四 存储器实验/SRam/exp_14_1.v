`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/24 14:44:15
// Design Name: 
// Module Name: exp_14_1
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


module exp_14_1(clk,addr,data_in,data_out,we,isyi);
    input clk;
    input[2:0] addr;
    input[7:0] data_in;
    output[7:0] data_out;
    input we;
    input isyi;
    reg [7:0] memery[0:7];
    reg [2:0] memaddr;
//    reg [7:0] medata1;
    reg [7:0] medata2;
    integer cnt=0;
    integer Hz=0;
    
    //变频
    always@(posedge clk)
    begin
        if(cnt==100_000_000)
        begin
            cnt<=0;
            Hz=~Hz;
        end
        else
            cnt<=cnt+1;
    end
    //写入操作
    always@(posedge clk)
    begin
        if(we)
        begin
            memery[addr]<=data_in;
        end
    end
    
    //读操作,同步
    always@(posedge clk)
    begin
        if(!isyi&&!we)
        begin
            memaddr<=addr;
//            medata1<=;
        end
    end
    
    //异步
    always@(addr,isyi)
    begin
        if(isyi && !we)
        begin
            medata2<=memery[addr];
        end
    end
    
    assign data_out=(we)? 8'b00000000:(isyi)? medata2:memery[memaddr];
    
endmodule
