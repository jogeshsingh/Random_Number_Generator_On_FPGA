`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 06:07:46 PM
// Design Name: 
// Module Name: decoder
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


module decoder#(parameter DEC_WIDTH = 2)
                (x_in  , out_dec);
input [DEC_WIDTH-1:0] x_in ;
output reg [2:0] out_dec ;


always @(*)
   begin
     case(x_in)
     0: out_dec = 3'b110;
     1: out_dec = 3'b101;
     2: out_dec = 3'b011;
     3: out_dec = 3'b111;
     default : out_dec = 3'bzzz ;
     endcase
     end
endmodule
