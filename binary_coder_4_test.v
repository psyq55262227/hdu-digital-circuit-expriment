`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:29 12/04/2021
// Design Name:   binary_coder_4
// Module Name:   C:/Users/psyq/Desktop/veri/base/binary_coder_4_test.v
// Project Name:  base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_coder_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_coder_4_test;

	// Inputs
	reg EN;
	reg [7:0] In;

	// Outputs
	wire [2:0] Y;
	wire Done;

	// Instantiate the Unit Under Test (UUT)
	binary_coder_4 uut (
		.EN(EN), 
		.In(In), 
		.Y(Y), 
		.Done(Done)
	);

	initial begin
		EN=0;
		In=8'b00000000;

		// Wait 100 ns for global reset to finish
		forever begin
			#2 In[0]=~In[0];
			#3 In[1]=~In[1];
			#5 In[2]=~In[2];
			#7 In[3]=~In[3];
			#11 In[4]=~In[4];
			#13 In[5]=~In[5];
			#17 In[6]=~In[6];
			#19 In[7]=~In[7];
			#23 EN=~EN;
		end

	end
      
endmodule

