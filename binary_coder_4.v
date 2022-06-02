`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:51 12/04/2021 
// Design Name: 
// Module Name:    binary_coder_4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binary_coder_4(EN,In,Y,Done);
// en=0->y=000,done=0
// en=1:优先级依次为in[0]>in[1]>...
//		in=00000000->y=000,done=0;
//		in=xxxxxxx1->y=000,done=1;
//		in=xxxxxx10->y=001,done=1;
	input EN;
	input[7:0] In;
	output reg Done;
	output reg[2:0] Y;
	
	always @(*)
	begin
		if(!EN||(~|In))
			begin
				Y[2:0]=3'b000;
				Done=0;
			end
		else
			begin
				Done=1;
				if(In[0]==1)
					Y=3'b000;
				else if(In[1]==1)
					Y=3'b001;
				else if(In[2]==1)
					Y=3'b010;
				else if(In[3]==1)
					Y=3'b011;
				else if(In[4]==1)
					Y=3'b100;
				else if(In[5]==1)
					Y=3'b101;
				else if(In[6]==1)
					Y=3'b110;
				else if(In[7]==1)
					Y=3'b111;
			end
	end

endmodule
