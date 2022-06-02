`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:45 12/10/2021 
// Design Name: 
// Module Name:    decoder_3 
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
module decoder_3(g1,g2a,g2b,c,b,a,Y);
	input g1,g2a,g2b,c,b,a;
	output reg[7:0] Y;
	// g1=0||g2a=0||g2b=0, y=0000000;
	// g1=1,g2a=1,g2b=0,->
	//					cba=000,y=0000001;
	//					cba=001,y=0000010;
	always@(*)
	begin
		if(g1==0||g2a==0||g2b==0)	Y=8'b11111111;
		else begin
			case({c,b,a})
				3'b000:	Y=8'b11111110;
				3'b001:	Y=8'b11111101;
				3'b010:	Y=8'b11111011;
				3'b011:	Y=8'b11110111;
				3'b100:	Y=8'b11101111;
				3'b101:	Y=8'b11011111;
				3'b110:	Y=8'b10111111;
				3'b111:	Y=8'b01111111;
			endcase
		end
	end

endmodule

