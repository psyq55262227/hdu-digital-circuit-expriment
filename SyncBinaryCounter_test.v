`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:56 12/08/2021
// Design Name:   SyncBinaryCounter_11
// Module Name:   C:/Users/psyq/Desktop/veri/base/SyncBinaryCounter_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SyncBinaryCounter_11
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SyncBinaryCounter_test;

	// Inputs
	reg mr;
	reg load;
	reg en;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	SyncBinaryCounter_11 uut (
		.mr(mr), 
		.load(load), 
		.en(en), 
		.clk(clk), 
		.d(d), 
		.q(q), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		load = 0;
		en = 0;
		clk = 0;
		d = 2'b0011;

		// Wait 100 ns for global reset to finish
		//forever begin
			//#5 d=~d;
			//#7 en=~en;
			//#11 clk=~clk;
			//#13 load=~load;
			//#17 mr=~mr;
		//end
		#100 mr=0;
		#200 mr=0;load=1;clk=1;
		#300 mr=0;load=0;en=1;clk=0;
		#400 clk=1;
		#450 clk=0;
		#400 mr=0;load=0;en=0;clk=1;
        
		// Add stimulus here

	end
      
endmodule

