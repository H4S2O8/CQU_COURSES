`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 15:08:55
// Design Name: 
// Module Name: seqdeta
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


module seqdeta(clk,clr,din,dout);
    input clk;
    input clr;
    input din;
    output reg dout;
    reg [2:0] present_state=S0;
     reg [2:0] next_state;
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100; // states

    always @(posedge clk or posedge clr)
        begin
            if( clr == 1)
                present_state <= S0;
            else
                present_state <= next_state;
        end
        
        always @(*)
        begin
            case(present_state)
            S0: next_state<=(din==1)? S1:S0;
            S1: next_state<=(din==1)? S2:S0;
            S2: next_state<=(din==1)? S2:S3;
            S3: next_state<=(din==1)? S4:S0;
            S4: next_state<=(din==1)? S2:S0;
            default: next_state <= S0;
            endcase
        end
        
        always @(*)
        begin
            if(present_state == S4)
                dout = 1;
            else
                dout = 0;
        end
endmodule
