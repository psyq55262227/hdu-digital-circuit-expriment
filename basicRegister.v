`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:40 12/10/2021 
// Design Name: 
// Module Name:    basicRegister 
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
// oe=0,高阻，禁止输出
// oe=1,clr=1,清零
// oe=1,clr=0,clk=0，保持
// oe=1,clr=0,clk上跳，置入数据
module basicRegister(oe,clr,clk,d,q);
	input oe,clr,clk;
	input[3:0] d;
	output reg[3:0] q=4'b0;
	
	always@(posedge clk) 
	begin
		if(oe==0)	q=4'bz;
		else if(clr==1)	q=4'b0;
		else q=d;
	end
endmodule
