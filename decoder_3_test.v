`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:08:48 12/10/2021
// Design Name:   decoder_3
// Module Name:   C:/Users/psyq/Desktop/veri/base/decoder_3_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_3_test;

	// Inputs
	reg g1;
	reg g2a;
	reg g2b;
	reg c;
	reg b;
	reg a;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	decoder_3 uut (
		.g1(g1), 
		.g2a(g2a), 
		.g2b(g2b), 
		.c(c), 
		.b(b), 
		.a(a), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		g1 = 1;
		g2a = 1;
		g2b = 1;
		c = 0;
		b = 0;
		a = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#10	g1=~g1;
			#12	g2a=~g2a;
			#15	g2b=~g2b;
			#30	{c,b,a}=({c,b,a}==3'b111)?3'b000:{c,b,a}+3'b001;
		end
        
		// Add stimulus here

	end
      
endmodule

