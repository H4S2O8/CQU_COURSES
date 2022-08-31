`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/24 16:35:16
// Design Name: 
// Module Name: fifo
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


module fifo_counter(wei,duan,datain, rd, wr, rst, clk, dataout, full, empty,hz);
input [7:0] datain;
input rd, wr, rst, clk;
output [7:0] dataout;
output full, empty;
output reg hz=1'b0;
reg full_in=1'b0;
reg empty_in=1'b1;
reg [7:0] mem [15:0];
reg [3:0] rp=4'b0000;
reg [3:0] wp=4'b0000;
reg num1;
reg num2;

integer cnt=0;  //时钟分频
always @(posedge clk)begin
    if(cnt==100000000)
    begin
        cnt<=0;
        hz=~hz;
    end
    else begin
        cnt<=cnt+1;
    end
end
assign full = full_in;
assign empty = empty_in;
// 根据rp，出队
assign dataout = mem[rp];
// 入队
always@(posedge hz) begin
    if(wr && !full_in)
          mem[wp]<=datain;         
end
// 写入指针移动
always@(posedge hz or posedge rst) begin
    if(rst) 
        wp<=0;
    else begin
          if(wr && !full_in) 
              wp<= wp+1'b1;    
    end
end
// 读入指针移动
always@(posedge hz or posedge rst)begin
    if(rst) 
        rp <= 0;     
    else begin
      if(rd && !empty_in) rp <= rp + 1'b1;
    end
end
// 产生队已列满信号
always@(posedge clk or posedge rst) begin
    if(rst) full_in <= 1'b0;
    else begin
      if( (~rd && wr)&&((wp==rp-1)||(rp==4'h0&&wp==4'hf)))
            full_in <= 1'b1;
      else if(full_in && rd) 
            full_in <= 1'b0;
    end
end
// 产生队列为空信号
always@(posedge clk or posedge rst) begin
    if(rst) empty_in <= 1'b1;
    else begin
      if((rd&&~wr)&&(rp==wp-1 || (rp==4'hf&&wp==4'h0)))
        empty_in<=1'b1;
      else if(empty_in && wr) empty_in<=1'b0;
    end
end

output[3:0] wei;
output[7:0] duan;
display u(clk,dataout,wei,duan);
endmodule
