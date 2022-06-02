`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:56 12/10/2021
// Design Name:   shiftRegister
// Module Name:   C:/Users/psyq/Desktop/veri/base/shiftRegister_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftRegister_test;

	// Inputs
	reg oe;
	reg clk;
	reg [1:0] s;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	shiftRegister uut (
		.oe(oe), 
		.clk(clk), 
		.s(s), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		oe = 1;
		clk = 0;
		s = 2'b0;
		d = 4'b0011;

		// Wait 100 ns for global reset to finish
		#10	s=2'b11;clk=1;
		#20	clk=0;
		#30	s=2'b01;clk=1;
		#40	s=2'b10;clk=0;
		#50	clk=1;
		#60	clk=0;
		#70	s=2'b00;
		#80	oe=0;
        
		// Add stimulus here

	end
      
endmodule

