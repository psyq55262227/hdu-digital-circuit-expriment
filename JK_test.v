`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:58 12/03/2021
// Design Name:   JK
// Module Name:   C:/Users/psyq/Desktop/veri/base/JK_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_test;

	// Inputs
	reg clk;
	reg j;
	reg k;

	// Outputs
	wire q;
	wire q_;

	// Instantiate the Unit Under Test (UUT)
	JK uut (
		.clk(clk), 
		.j(j), 
		.k(k), 
		.q(q), 
		.q_(q_)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		j = 0;
		k = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#5 j=~j;
			#7 k=~k;
			#3 clk=~clk;
		end

        
		// Add stimulus here

	end
      
endmodule

