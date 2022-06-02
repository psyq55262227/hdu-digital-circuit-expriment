`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:25 12/10/2021 
// Design Name: 
// Module Name:    syncDemicalSubsCounter_12 
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
module syncDemicalSubsCounter_12(mr,en,clk,q,co);
	input mr,en,clk;
	output reg[3:0] q=4'b0011;
	output reg co=1;
	// mr=1,en=0时，qn+1不变
	always@(posedge clk)
	begin
	// q[3:0]=0000,co=1; 再-1=1001,co=0;
		if(mr==1)	{q,co}=5'b00000;
		// mr=1时，qn+1=0000;
		else if({mr,en}==2'b01)
		begin
		// mr=0,en=1时，clk上跳，减一计数
			case(q)
				4'b0001:	{q,co}=5'b00001;
				5'b0000:	{q,co}=5'b10010;
				default:	q=q-4'b0001;
			endcase
		end
	end

endmodule
