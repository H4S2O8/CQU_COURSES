`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 13:01:26
// Design Name: 
// Module Name: datain
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


module datain(input clk,
    input up,input down,input cnf,input back,input rst,
    output reg [15:0]data,
    output reg left,
    output reg signal
    );
    reg [3:0]x=0;
    reg [1:0]cnt;
    reg [2:0]cntok=3'b001;
    always@(posedge clk or posedge rst)begin
        if(rst) begin
            x<=0;
            cnt<=0;
            cntok<=3'b001;
            left<=0;
            data<=16'b1111111111110000;
        end
        
        else begin      
            if(up) begin
                left<=0;
                if(x==4'b1001)begin
                    x=4'b0000;
                    data={data[15:4],x};
                end
                else begin
                    x=x+1'b1;
                    data={data[15:4],x};
                end
            end
            else if(down) begin
                 left<=0;
                 if(x==4'b0000)begin
                    x=4'b1001;
                    data={data[15:4],x};
                end
                else begin
                    x=x-1'b1;
                    data={data[15:4],x};
                end
            end 
            else if(cnf) begin
                if(cntok==3'b100) begin
                    cntok<=0;
                    signal<=1;
                end
                else begin
                left<=0;   
                cntok<=cntok+1'b1;
                signal<=0;  
                data<={data[11:0],4'b0000};
                x<=0;   
                end               
            end
            else if(back) begin 
                    data<={4'b1111,data[15:4]};                
                    left<=1;
                    cntok<=cntok-1'b1;
                    x<=0;                        
            end
            else ;
        end
    end
endmodule