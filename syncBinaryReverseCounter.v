`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:39 12/10/2021 
// Design Name: 
// Module Name:    syncBinaryReverseCounter 
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
module syncBinaryReverseCounter(mr,load,en,dn,clk,d,co,q);
	input mr,load,en,dn,clk;
	input[3:0] d;
	output reg co=0;
	output reg[3:0] q=4'b0000;
	
	always@(posedge mr or posedge clk)
	begin
		// 异步清零
		if(mr==1)	{q,co}=5'b00000;
		else begin
			// 装数
			if(load===1) begin
				q=d;
				co=0;
			end
				//{q,co}={d,0};
			// 加减计数
			else if(en==1) begin
				case (dn)
					// 加
					0:	begin {q,co}=addResult(q,co);end
					// 减
					1: begin {q,co}=subsResult(q,co);end
				endcase
			end
		end
	end
	
	function [4:0] addResult;
		input [3:0] q;
		input co;
		begin
			case(q) 
				5'b1110:
					addResult=5'b11111;
				5'b1111:
					addResult=5'b00000;
				default:
					addResult={q+4'b0001,co};
			endcase
		end
	endfunction
	
	function [4:0] subsResult;
		input [3:0] q;
		input co;
		begin
			case({q,co})
				5'b00001:
					subsResult=5'b11110;
				5'b00000:
					subsResult=5'b11111;
				default:
					subsResult={q-4'b0001,co};
			endcase
		end
	endfunction

endmodule
