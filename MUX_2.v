`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:42 11/26/2021 
// Design Name: 
// Module Name:    MUX_2 
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
module MUX_2(EN,S,Y);
	input EN;
	input[1:0] S;
	parameter[1:0] A=2'b00;
	parameter[1:0] B=2'b01;
	parameter[1:0] C=2'b10;
	parameter[1:0] D=2'b11;
	output[1:0] Y;
	assign Y = (EN==0)?2'b00:(S==2'b00)?A:(S==2'b01)?B:(S==2'b10)?C:(S==2'b01)?D:2'b11;
endmodule
