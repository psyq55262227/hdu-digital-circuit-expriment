`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:40:15 11/26/2021
// Design Name:   MUX_2
// Module Name:   C:/Users/psyq/Desktop/veri/base/MUX_2_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_2_test;

	// Inputs
	reg EN;
	reg [1:0] S;

	// Outputs
	wire [1:0] Y;

	// Instantiate the Unit Under Test (UUT)
	MUX_2 uut (
		.EN(EN), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		EN = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#3	S=2'b00;
			#5	S=2'b01;
			#7	S=2'b10;
			#11	S=2'b11;
			#13	EN=~EN;
		end
        
		// Add stimulus here

	end
      
endmodule

