`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:26 12/04/2021 
// Design Name: 
// Module Name:    digital_comparator_5 
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
module digital_comparator_5(A,B,Y);
// 4位数值比较器
// a>b,y=100;
// a=b,y=010;
// a<b,y=110;
	input[3:0] A,B;
	output reg[2:0] Y;
	
	always @(*)
	begin
		if(A>B)	Y = 3'b100;
		else if(A<B)	Y=3'b001;
		else Y=3'b010;
	end

endmodule

