`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:37:18 12/04/2021
// Design Name:   D
// Module Name:   C:/Users/psyq/Desktop/veri/base/D_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_test;

	// Inputs
	reg pre;
	reg clr;
	reg clk;
	reg d;

	// Outputs
	wire q;
	wire q_;

	// Instantiate the Unit Under Test (UUT)
	D uut (
		.pre(pre), 
		.clr(clr), 
		.clk(clk), 
		.d(d), 
		.q(q), 
		.q_(q_)
	);

	initial begin
		// Initialize Inputs
		pre = 0;
		clr = 0;
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#2	d=~d;
			#5	pre = ~pre;
			#7	clr = ~clr;
			#11	clk = ~clk;
		end
        
		// Add stimulus here

	end
      
endmodule

