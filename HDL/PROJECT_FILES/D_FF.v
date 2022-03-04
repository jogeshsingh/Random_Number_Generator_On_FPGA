`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:08:16 03/01/2022 
// Design Name: 
// Module Name:    D_FF 
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
module D_Flip(
    input i_clk,
    input d_in,
    output reg Q 
	 ///////////output reg Q_bar
    );

always @ (posedge i_clk)
     begin
	   Q<= d_in ;
		//////Q_bar <= ~Q ;
		 end

endmodule
