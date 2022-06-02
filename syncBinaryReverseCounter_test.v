`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:18 12/10/2021
// Design Name:   syncBinaryReverseCounter
// Module Name:   C:/Users/psyq/Desktop/veri/base/syncBinaryReverseCounter_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: syncBinaryReverseCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module syncBinaryReverseCounter_test;

	// Inputs
	reg mr;
	reg load;
	reg en;
	reg dn;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire co;
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	syncBinaryReverseCounter uut (
		.mr(mr), 
		.load(load), 
		.en(en), 
		.dn(dn), 
		.clk(clk), 
		.d(d), 
		.co(co), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		load = 1;
		en = 0;
		dn = 0;
		clk = 0;
		d = 4'b0011;

		// Wait 100 ns for global reset to finish
		#10	clk=1;
		#20	load=0;	en=0;	clk=0;
		#30	load=0;	en=1;	dn=0;	clk=1;
		#40	clk=0;
		#50	clk=1;
		#60	dn=1;clk=0;
		#70	clk=1;
		#80	mr=1;
        
		// Add stimulus here

	end
      
endmodule

