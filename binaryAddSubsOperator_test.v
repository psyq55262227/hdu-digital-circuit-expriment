`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:40:18 12/10/2021
// Design Name:   binaryAddSubsOperator
// Module Name:   C:/Users/psyq/Desktop/veri/base/binaryAddSubsOperator_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binaryAddSubsOperator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binaryAddSubsOperator_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c0;
	reg sub;

	// Outputs
	wire [3:0] f;
	wire c4;
	wire zf;
	wire cf;

	// Instantiate the Unit Under Test (UUT)
	binaryAddSubsOperator uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.sub(sub), 
		.f(f), 
		.c4(c4), 
		.zf(zf), 
		.cf(cf)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0010;
		b = 4'b0011;
		c0 = 1'b0;
		sub = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#3	a=a+4'b0001;
			#7	b=b+4'b0010;
			#11 c0=~c0;
			#13	sub=~sub;
		end
        
		// Add stimulus here

	end
      
endmodule

