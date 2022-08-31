`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 12:32:33
// Design Name: 
// Module Name: debounce
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


//module debounce(clk,bst,bstout);
//input clk;
//input  bst;
//output  bstout;


//reg bst_rrr;
//reg bst_rr;
//reg bst_r; 

//always @(posedge clk)

//    begin
//        bst_rrr <= bst_rr;
//        bst_rr <= bst_r;
//        bst_r <= bst;
//    end


//assign bstout = ~bst_rrr & bst_rr & bst_r;
//endmodule
module debounce(
input wire clk,
input wire inp,
output wire outp
);
    reg  delay1;
    reg  delay2;
    reg  delay3;
    always @ (posedge clk)
    begin
    delay1 <= inp;
    delay2 <= delay1;
    delay3 <= delay2;
    end
    assign outp = delay1 & delay2 & ~delay3;
endmodule

