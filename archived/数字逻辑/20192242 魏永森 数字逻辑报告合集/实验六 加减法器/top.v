`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 14:16:34
// Design Name: 
// Module Name: addsub
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


module top(
    input clk,
    input rst_n,		//��λ
    input in_ctrl,		//
    input [1:0] operator_ctrl,	//��һλ
    input [7:0] operator_tmp,	//������
    input operation_select,	//�Ӽ�
    input result_ctrl,		//�Ƿ���ʾ���
    input duan_ctrl,		//
    output [3:0] an,	//�����
    output [7:0] seg,	//�߶�
    output isover,		//���
    output isfu,		//����
    output reg[7:0] led
    );
    wire[31:0] add_result;
    wire[31:0] sub_result;
//    wire add_carryout;
//    wire sub_carryout;
//    reg carryout0;
    reg [7:0] sm_duan_can;
    reg [7:0] operator_tmp1;
    reg [31:0] operator1;	//������1
    reg [31:0] operator2;	//������2

    wire [3:0] sm_wei1_1;	//λ�ķֿ�
    wire [3:0] sm_wei1_2;
    wire [3:0] sm_wei2_1;
    wire [3:0] sm_wei2_2;

    wire [3:0] sm_weiadd_1;
    wire [3:0] sm_weiadd_2;
    wire [3:0] sm_weisub_1;
    wire [3:0] sm_weisub_2;
    reg [3:0] sm_wei0;
    wire [7:0] sm_duan1_1;	//�˵Ĳ���
    wire [7:0] sm_duan1_2;
    wire [7:0] sm_duan2_1;
    wire [7:0] sm_duan2_2;

    wire [7:0] sm_duanadd_1;
    wire [7:0] sm_duanadd_2;
    wire [7:0] sm_duansub_1;
    wire [7:0] sm_duansub_2;
    reg [7:0] sm_duan0;
    wire isfu1;
    wire isfu2;
    wire isover1;
    wire isover2;
    reg isfu0;
    reg isover0;
    always @(posedge clk)
    begin
        if(!rst_n)
        begin
        sm_wei0 <= 4'b1111;
        sm_duan0 <= 8'b11111111;
        operator1 <= 0;
        operator2 <= 0;
        end
        else
        begin
            if(result_ctrl==0)//�������ʾ����
            begin
                if(in_ctrl==0)//��һλ����
                begin
                case(operator_ctrl[1:0])
                    2'b00:begin operator1[7:0] <= operator_tmp; sm_wei0 <= sm_wei1_1; sm_duan0 <= sm_duan1_1;end
                    2'b01:begin operator1[15:8] <= operator_tmp; sm_wei0 <= sm_wei1_1; sm_duan0 <= sm_duan1_1;end
                    2'b11:begin operator1[23:16] <= operator_tmp; sm_wei0 <= sm_wei1_2; sm_duan0 <= sm_duan1_2;end
                    2'b10:begin operator1[31:24] <= operator_tmp; sm_wei0 <= sm_wei1_2; sm_duan0 <= sm_duan1_2;end
                endcase
                end
                else//�ڶ�λ����
                begin
                    case(operator_ctrl[1:0])
                    2'b00:begin operator2[7:0] <= operator_tmp; sm_wei0 <= sm_wei2_1; sm_duan0 <= sm_duan2_1; end
                    2'b01:begin operator2[15:8] <= operator_tmp; sm_wei0 <= sm_wei2_1; sm_duan0 <= sm_duan2_1; end
                    2'b11:begin operator2[23:16] <= operator_tmp; sm_wei0 <= sm_wei2_2; sm_duan0 <= sm_duan2_2; end
                    2'b10:begin operator2[31:24] <= operator_tmp; sm_wei0 <= sm_wei2_2; sm_duan0 <= sm_duan2_2; end
                    endcase
                end
            end
            else	//��ʾ����
            begin
                if(operation_select==1)	//���ѡ��ӷ�
                begin
                    isfu0<=isfu1;
                    isover0<=isover1;
//                    carryout0 <= add_carryout;
                    case(duan_ctrl)
                        1'b0:begin sm_wei0 <= sm_weiadd_1; sm_duan0 <= sm_duanadd_1; end
                        1'b1:begin sm_wei0 <= sm_weiadd_2; sm_duan0 <= sm_duanadd_2; end
                    endcase
                end
                else			//���ѡ�����
                begin
                    isfu0<=isfu2;
                    isover0<=isover2;
//                    carryout0 <= sub_carryout;
                    case(duan_ctrl)
                        1'b0:begin sm_wei0 <= sm_weisub_1; sm_duan0 <= sm_duansub_1; end
                        1'b1:begin sm_wei0 <= sm_weisub_2; sm_duan0 <= sm_duansub_2; end
                    endcase
                end
            end
       end
    end  
    
    always @(posedge clk)
    begin
        if(rst_n)
        begin
        case({in_ctrl,operator_ctrl,result_ctrl})
        4'b0000:led<=8'b00000001;
        4'b0010:led<=8'b00000010;
        4'b0110:led<=8'b00000100;
        4'b0100:led<=8'b00001000;
        4'b1000:led<=8'b00010000;
        4'b1010:led<=8'b00100000;
        4'b1110:led<=8'b01000000;
        4'b1100:led<=8'b10000000;
        default led<=8'b00000000;
        endcase
        end
        else
        begin
            led<=8'b00000000;
        end
    end
    
display mydisplay1_1(clk,operator1[15:0],sm_wei1_1,sm_duan1_1);
display mydisplay1_2(clk,operator1[30:16],sm_wei1_2,sm_duan1_2);
display mydisplay2_1(clk,operator2[15:0],sm_wei2_1,sm_duan2_1);
display mydisplay2_2(clk,operator2[30:16],sm_wei2_2,sm_duan2_2);

display mydisplayadd_1(clk,add_result[15:0],sm_weiadd_1,sm_duanadd_1);
display mydisplayadd_2(clk,add_result[30:16],sm_weiadd_2,sm_duanadd_2);
display mydisplaysub_1(clk,sub_result[15:0],sm_weisub_1,sm_duansub_1);
display mydisplaysub_2(clk,sub_result[30:16],sm_weisub_2,sm_duansub_2);

//add32  myadd32(0,operator1,operator2,add_result,add_carryout);
//sub32 mysub32(operator1,operator2,sub_result,isfu);

add32 myadd32(0,operator1,operator2,add_result,isfu1,isover1);
sub32 mysub32(0,operator1,operator2,sub_result,isfu2,isover2);
assign sm_wei = sm_wei0;
assign sm_duan = sm_duan0;
//assign carryout = carryout0;
assign isfu = isfu0;
assign isover = isover0;
endmodule
