`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:36:35 12/10/2021
// Design Name:   adder_6
// Module Name:   C:/Users/psyq/Desktop/veri/base/adder_6_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_6_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C0;

	// Outputs
	wire [3:0] F;
	wire C4;

	// Instantiate the Unit Under Test (UUT)
	adder_6 uut (
		.A(A), 
		.B(B), 
		.F(F), 
		.C4(C4), 
		.C0(C0)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0;
		B = 4'b0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#3	A=(A==4'b1111)?4'b0000:A+2'b0001;
			#7	B=(B==4'b1111)?4'b0000:B+2'b0001;
			#11	C0=~C0;
		end
		
        
		// Add stimulus here

	end
      
endmodule

