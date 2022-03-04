`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 06:09:11 PM
// Design Name: 
// Module Name: slow_clkgen
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

`define SIG_WIDTH 19
module slow_clkgen(clk , clk_out);
input clk ;
output clk_out ;


parameter cnt_100HZ = 50_00_00;       ///100MHZ/100 = 100_00_00 ; for 50_00_00
                                      // cycles the output is 1 and for next 50_00_00 cycles the output is 0 // 
reg [`SIG_WIDTH-1:0] reg_cnt_100HZ ;   /////2^19 = 52_42_88 which is greater than and approx to 50_00_00 cycles for completion //

reg Toggle_100HZ ;

wire CE ;
assign CE = (reg_cnt_100HZ == cnt_100HZ-1) ;
always @ (posedge clk)
   begin
       reg_cnt_100HZ = reg_cnt_100HZ + 1'b1 ;
          if (CE)
            begin
             Toggle_100HZ = ~Toggle_100HZ ;
             reg_cnt_100HZ = 0;
             end
         end   
assign clk_out = Toggle_100HZ ;         
endmodule
