`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 06:07:30 PM
// Design Name: 
// Module Name: mux
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


module mux#(parameter WIDTH_4 = 4 , WIDTH_2 = 2 )
(in_1 , in_2 , in_3 , in_4 , sel, out_mux);

input [WIDTH_4-1:0] in_1 , in_2 ,  in_3 , in_4 ;
input [WIDTH_2-1:0] sel ;
output reg [WIDTH_4-1:0] out_mux ;


always @ (*)
 begin
   case(sel)
   2'b00: out_mux = in_1 ;
   2'b01: out_mux = in_2 ;
   2'b10: out_mux = in_3 ;
   2'b11: out_mux = in_4 ;
   endcase
    end
endmodule
