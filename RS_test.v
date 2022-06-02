`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:28 12/08/2021
// Design Name:   RS
// Module Name:   C:/Users/psyq/Desktop/veri/base/RS_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RS_test;

	// Inputs
	reg R;
	reg S;

	// Outputs
	wire Q;
	wire Q_;

	// Instantiate the Unit Under Test (UUT)
	RS uut (
		.R(R), 
		.S(S), 
		.Q(Q), 
		.Q_(Q_)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#2 R=~R;
			#3 S=~S;
		end
        
		// Add stimulus here

	end
      
endmodule

