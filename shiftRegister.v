`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:45 12/10/2021 
// Design Name: 
// Module Name:    shiftRegister 
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
module shiftRegister(oe,clk,s,d,q);
	input oe,clk;
	input[1:0] s;
	input[3:0] d;
	output reg[3:0] q=4'b0101;
	
	always@(posedge clk)
	begin
		// oe=0,q高阻，禁止输出
		if(oe==0)	q<=4'bz;
		// s=00，保持
		// s!=00,clk上跳
		else if(s!=2'b00)
		begin
			case(s)
				// 左移一位
				2'b01:	q<={q[2:0],q[3]};
				// 右移一位
				2'b10:	q<={q[0],q[3:1]};
				// 置入
				2'b11:	q<=d;
			endcase
		end
	end

endmodule
