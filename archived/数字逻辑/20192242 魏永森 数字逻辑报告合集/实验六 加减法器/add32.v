`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 10:36:16
// Design Name: 
// Module Name: jiafa32
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


module add32_wg(carryin,X,Y,S,isfu,isover);
    parameter wide=32;
    input carryin;
    output reg isfu;
    output reg isover;
    input[wide-1:0] X;
    input[wide-1:0] Y;
    output reg[wide-1:0] S;
    reg[wide-1:0] temp1;
    reg[wide-1:0] temp2;
    reg[wide-1:0] temp3;
    reg[wide-1:0] X0;
    reg[wide-1:0] Y0;
    reg[wide:0] C;
    reg fuhao;
    integer i=0;
   
    always@(carryin,X,Y)
    begin 
        temp1=X[wide-1:0];
        temp2=Y[wide-1:0];

        if(X[wide-1]==0)
            X0=X;
        else begin
            X0=~temp1+1;
            X0[wide-1]=1;
        end

        if(Y[wide-1]==0)
            Y0=Y;
        else begin
            Y0=~temp2+1;
            Y0[wide-1]=1;
        end

        if(X[wide-1]^Y[wide-1]==1) begin
            isover=0;
            C[0] = carryin;
            for(i=0;i<wide;i=i+1) begin
                S[i] = X0[i]^Y0[i]^C[i];
                C[i+1] = (X0[i]&Y0[i])|(Y0[i]&C[i])|(C[i]&X0[i]);
            end
        end else begin
            fuhao=X[wide-1];
            if(fuhao==1) begin
                C[0] = carryin;
                for(i=0;i<wide;i=i+1) begin
                    S[i] = X[i]^Y[i]^C[i];
                    C[i+1] = (X[i]&Y[i])|(Y[i]&C[i])|(C[i]&X[i]);
                end
                isover=C[wide-1];
            end
            
            C[0] = carryin;
            for(i=0;i<wide;i=i+1) begin
                S[i] = X0[i]^Y0[i]^C[i];
                C[i+1] = (X0[i]&Y0[i])|(Y0[i]&C[i])|(C[i]&X0[i]);
            end
            if(fuhao==0)
                isover=C[wide];
            S[wide-1]=fuhao;
        end

        isfu=S[wide-1];
        if(isfu==1) begin
            temp3=S;
            S=~(temp3-1);
            S[wide-1]=isfu;
        end
    end

endmodule
