`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:56:24 12/04/2021
// Design Name:   digital_comparator_5
// Module Name:   C:/Users/psyq/Desktop/veri/base/digital_comparator_5_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: digital_comparator_5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module digital_comparator_5_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [2:0] Y;

	// Instantiate the Unit Under Test (UUT)
	digital_comparator_5 uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0000;

		// Wait 100 ns for global reset to finish
		forever begin
			#2 A[2]=~A[2];
			#3 B[1]=~B[1];
			#5 A[0]=~A[0];
			#7 B[2]=~B[2];
			#11	A[1]=~A[1];
			#13	B[0]=~B[0];
			#17	A[3]=~A[3];
			#23	B[3]=~B[3];
		end
	end
      
endmodule

