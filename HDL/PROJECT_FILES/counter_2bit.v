`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 06:08:04 PM
// Design Name: 
// Module Name: counter_2bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_2bit
#(parameter DATA_WID =2)
( clk_in , cnt_out  );


input clk_in ;
output reg[DATA_WID-1:0]  cnt_out ; 


always @ (posedge clk_in)
 begin
  cnt_out <= cnt_out+1'b1 ;
  end
endmodule
