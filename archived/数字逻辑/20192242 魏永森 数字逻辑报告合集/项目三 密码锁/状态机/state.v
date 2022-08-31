`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 19:02:51
// Design Name: 
// Module Name: state
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

module state(input wire clk,
    input wire clr,
    input wire [15:0] code,
    input wire [3:0] pw,
    output reg pass,
    output reg fail
    );
    reg [3:0] present_state, next_state;
    parameter S0 = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011,
    S4 = 4'b0100, E = 4'b1000;
    //State registers
    always @(posedge clk or posedge clr) begin
        if(clr==1)
            present_state <= S0;
        else
            present_state <= next_state;
        end
        
        //C1 module
        always @(*)
        begin
        case(present_state)
        S0: if(pw == code[15:12])
                next_state <= S1;
            else
                next_state <= E;
        S1: if(pw == code[11:8])
                next_state <= S2;
            else
                next_state <= E;
        S2: if(pw == code[7:4])
                next_state <= S3;
            else
                next_state <= E;
        S3: if(pw == code[3:0])
                next_state <= S4;
            else
                next_state <= E;
        S4: if(pw == code[15:12])
                next_state <= S1;
            else
                next_state <= E;      
        E: if(pw == code[15:12])
                next_state <= S1;
            else
                next_state <= E;
        default: next_state <= S0;
        endcase
    end 
    //C2 module
    always @(*) begin
    if(present_state == S4)
        pass = 1;
    else
        pass = 0;
    if(present_state == E)
        fail = 1;
    else
        fail = 0;
    end
endmodule
