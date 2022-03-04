`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:12:06 03/04/2022 
// Design Name: 
// Module Name:    D_FLIP_FLOP 
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
module D_FLIP_FLOP(
    input in,
    input rst_n,
    input clk_in,
    input load,
    output reg q_out
    );

always @ (posedge clk_in)
  begin
     if(~rst_n)
	    begin
    q_out<= 1'b0 ;
          end
      else if (load==1'b1)
        begin
    q_out<= in ;
     end
 end
 endmodule
