`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:11 12/10/2021
// Design Name:   basicRegister
// Module Name:   C:/Users/psyq/Desktop/veri/base/basicRegister_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: basicRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module basicRegister_test;

	// Inputs
	reg oe;
	reg clr;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	basicRegister uut (
		.oe(oe), 
		.clr(clr), 
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		oe = 1;
		clr = 1;
		clk = 0;
		d = 4'b0011;

		// Wait 100 ns for global reset to finish
		#100	clr=0;clk=1;
		#200	clk=0;
		#300	clr=1;
		#400	oe=0;
        
		// Add stimulus here

	end
      
endmodule

