`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:04 12/04/2021 
// Design Name: 
// Module Name:    SyncBinaryCounter_11 
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
module SyncBinaryCounter_11(mr,load,en,clk,d,q,co);
	input mr,load,en,clk;
	input[3:0] d;
	output reg co=0;
	output reg[3:0] q=2'b0000;
	
	always@(posedge clk)
	begin
		// mr=1时，q=0000,co=0，清零
		if(mr==1)	{q,co}=5'b00000;
		// mr=0&&load=1时，q=d，co不变
		else if(load==1)	q=d;
		// mr=0&&load=0&&en=1时，clk上跳，加1计数
		else if(en==1)
		begin
			case(q)
				// q[3:0]=1111时,co=1，再+1=0000,co=0
				5'b1110:	{q,co}=5'b11111;
				5'b1111:	{q,co}=5'b00000;
				default:	q=q+2'b0001;
			endcase
		end
	end

endmodule
