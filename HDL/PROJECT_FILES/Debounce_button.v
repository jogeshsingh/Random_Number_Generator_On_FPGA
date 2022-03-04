`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:07:43 03/01/2022 
// Design Name: 
// Module Name:    Top_module 
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
module debounce_button(
    input i_clk,
	 input d_input,
    output out_sig
    );
	 

	 wire Q1 ;
	 wire Q2 ;
	 wire Q2_bar ;

	
 ///slow_clk gen_clk(i_clk, out_clk);
 D_Flip D1(i_clk,d_input ,Q1 );
 D_Flip D2(i_clk,Q1,Q2);
 and_gate AND_G1(Q1,Q2_bar,out_sig);

assign Q2_bar = ~Q2 ;

endmodule
