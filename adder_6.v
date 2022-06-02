`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:39 12/04/2021 
// Design Name: 
// Module Name:    adder_6 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder_6(A,B,F,C4,C0);
// 四位二进制加法器
	input[3:0] A,B;
	input C0;
	output reg[3:0] F;
	output reg C4;
	reg[4:0] C;
	integer i;
	integer cnt;
	
	always @(A,B,C,C0)
	begin
		C[0]=C0;
		for(i=0;i<4;i=i+1)
		begin
			cnt=A[i]+B[i]+C[i];
			case(cnt)
				0:	{F[i],C[i+1]}=2'b00;
				1:	{F[i],C[i+1]}=2'b10;
				2:	{F[i],C[i+1]}=2'b01;
				3:	{F[i],C[i+1]}=2'b11;
			endcase
		end
		C4=C[4];
	end


endmodule
