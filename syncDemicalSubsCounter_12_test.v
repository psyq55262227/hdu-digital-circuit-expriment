`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:19 12/10/2021
// Design Name:   syncDemicalSubsCounter_12
// Module Name:   C:/Users/psyq/Desktop/veri/base/syncDemicalSubsCounter_12_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: syncDemicalSubsCounter_12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module syncDemicalSubsCounter_12_test;

	// Inputs
	reg mr;
	reg en;
	reg clk;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	syncDemicalSubsCounter_12 uut (
		.mr(mr), 
		.en(en), 
		.clk(clk), 
		.q(q), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		en = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10 mr=0;en=1;clk=1;
		#20 clk=0;
		#30 clk=1;
		#40 en=0;
		#50 en=1;clk=0;
		#60 clk=1;
		#70 clk=0;
		#80 clk=1;
		#90 mr=1;
		#100 en=1;
		// Add stimulus here

	end
      
endmodule

