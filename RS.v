`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:45 12/03/2021 
// Design Name: 
// Module Name:    RS 
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
module RS(R,S,Q,Q_);
// SR=00,保持
// SR=01,复位，q=0
// SR=10,置位，q=1
// SR=11,禁止，q=1/0,q_=1/0
	 input R,S;
	 output reg Q,Q_;
	 always@(*)
	 begin
		if((~S)&R) begin
			Q=0;
			Q_=1;
		end
		else if(S&(~R)) begin
			Q=1;
			Q_=0;
		end
		else if(S&R)	begin
			Q=1;
			Q_=1;
		end
	 end
	 
endmodule
