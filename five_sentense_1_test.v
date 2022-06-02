`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:19 11/26/2021
// Design Name:   five_sentense_1
// Module Name:   C:/Users/psyq/Desktop/veri/base/five_sentense_1_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_sentense_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_sentense_1_test;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	five_sentense_1 uut (
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
		#2	A=~A;
		#3	B=~B;
		#5	C=~C;
		#7	D=~D;
		#11	E=~E;
		end
        
		// Add stimulus here

	end
      
endmodule

