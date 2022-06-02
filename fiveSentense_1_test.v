`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:16:42 12/10/2021
// Design Name:   fiveSentense_1
// Module Name:   C:/Users/psyq/Desktop/veri/base/fiveSentense_1_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fiveSentense_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fiveSentense_1_test;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	fiveSentense_1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#3	A=~A;
			#5	B=~B;
			#7	C=~C;
			#11	D=~D;
			#13	E=~E;
		end
        
		// Add stimulus here

	end
      
endmodule

