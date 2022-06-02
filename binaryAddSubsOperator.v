`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:18 12/10/2021 
// Design Name: 
// Module Name:    binaryAddSubsOperator 
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
module binaryAddSubsOperator(a,b,c0,sub,f,c4,zf,cf);
	input[3:0] a,b;
	input c0,sub;
	output[3:0] f;
	output zf,cf,c4;
	reg[4:0] c;
	// zf: 记零标志
	assign zf=(f==4'b0000)?1:0;
	// cf: 借位标志。如果是加法，则cf和c4一样；减法，cf和c4相反
	assign cf=(sub==0)?c4:~c4;
	assign {c4,f} = c;
	
	always@(*)
		c=(sub==0)?a+b+c0:a-b+c0;
	
endmodule
