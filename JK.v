`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:00 12/03/2021 
// Design Name: 
// Module Name:    JK 
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
// 
module JK(clk,j,k,q,q_);
// clk=0,保持
// clk↑，jk=00,保持
// clk↑，jk=01,置零，q=0
// clk↑，jk=10,置1，q=1
// clk↑，jk=11,翻转，q=!q
	input clk,j,k;
	output reg q=0,q_=1;
	
	always@(posedge clk)
	begin
		case({j,k})
			2'b01:	q=0;
			2'b10:	q=1;
			2'b11:	q=~q;
		endcase
		q_=~q;
	end

endmodule
