`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:31 12/03/2021 
// Design Name: 
// Module Name:    D 
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
module D(pre,clr,clk,d,q,q_);
// pre=1&clr=0 -> 复位，q=1
// pre=0&clr=1 -> 清零，q=0
// pre=0&clr=0&clk=0 -> 保持
// pre=0&clr=0&clr↑, q=d=0 -> q=0,置零
// pre=0&clr=0&clr↑, q=d=1 -> q=1,置1
	input pre,clr,clk,d;
	output reg q=0;
	output q_;
	assign q_=!q;
	
	always@(posedge clk)
	begin 
		case({pre,clr})
			2'b10:q=1;
			2'b01:q=0;
			2'b00:q=d;
		endcase
	end
	
endmodule
