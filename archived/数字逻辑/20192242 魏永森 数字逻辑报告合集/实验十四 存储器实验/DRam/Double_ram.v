`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/02 22:23:10
// Design Name: 
// Module Name: Double_ram
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


module Double_ram(
	input clk,
	input rst_n,
	//a port
	input en_a,
	input [2:0] addr_a,
	input [2:0] wdata_a,
	input wr_a,
	//b port
	input en_b,
	input [2:0] addr_b,
	input [2:0] wdata_b,
	input wr_b,
    output reg [2:0] rdata_a,
    output reg [2:0] rdata_b,
    output conflict
	);

reg [7:0] mem [15:0];

integer i;
wire wr_en_a, wr_en_b, rd_en_a, rd_en_b;
assign wr_en_a= en_a & wr_a ;
assign wr_en_b= en_b & wr_b ;
assign rd_en_a= en_a & !wr_a;
assign rd_en_b= en_b & !wr_b;
assign conflict=wr_en_a & wr_en_b & (addr_a==addr_b);//同时写冲突

//mem wdata_a wdata_b
always@(posedge clk or negedge rst_n)
	if(rst_n)
		for(i=0; i<16; i=i+1)
		mem[i] <=0;
	else begin
	if(wr_en_a & !conflict)
		mem[addr_a]<=wdata_a;
	if(wr_en_b & !conflict)
		mem[addr_b]<=wdata_b;
	end
// rdata_a rdara_b	
always@(posedge clk or negedge rst_n)
	if(rst_n)
		begin rdata_a<=0; rdata_b<=0; end
	else begin
	if(rd_en_a) rdata_a<=mem[addr_a]; //两个if必须并列，否则就是只能执行一个
	if(rd_en_b) rdata_b<=mem[addr_b];
	end
endmodule
