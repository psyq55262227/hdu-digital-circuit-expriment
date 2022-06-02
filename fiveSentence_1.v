`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:41 12/10/2021 
// Design Name: 
// Module Name:    fiveSentence_1 
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
module fiveSentense_1(A,B,C,D,E,Y);
	input A,B,C,D,E;
	output Y;
	wire A,B,C,D,E,Y;
	assign Y=((A&B&C)||(A&B&D)||(A&B&E)||(A&C&D)||(A&C&E)||(A&D&E)||(B&C&D)||(B&C&E)||(B&D&E)||(C&D&E));
	
endmodule