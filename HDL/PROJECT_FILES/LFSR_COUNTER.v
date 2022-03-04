`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:03:51 03/04/2022 
// Design Name: 
// Module Name:    LFSR_COUNTER 
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
`define WIDTH_INPUT 8
module LFSR_COUNTER(i_clk , data_in, an ,rst_n, seg_OUT);
input i_clk ;
input rst_n ;    //reset the flip flops 
input data_in ;   //data_in for flip-flops from debouncing pushbutton ///
//////////input ld_in ;         ///laod_enable for D-FF ///
///input [`WIDTH_INPUT-1:0] data_input ;
output [2:0] an ;      ///seven_seg_enable used in decoder section ////
output  [7:0] seg_OUT ;

wire [3:0] ones_out ;
wire [3:0] tens_out ;
wire [3:0] hundreds_out ;

wire [1:0] count_out ;      ///output of counter (2-bit ocnfiguartion) ///

///wire [7:0] seg_OUT ;    ////seven_seg_out /////////////
wire [3:0] mux_OUT ;      //output of mux ///
wire debounce ;  ///data output of debouncing pushbutton ///
wire clock_out ; /////clock_out = 100hz ///
wire [7:0] Q ; ///output of D-FLIP FLOPS ////

Bin_BCD BC(Q, hundreds_out , tens_out, ones_out );
slow_clkgen CLK_GEN(i_clk , clock_out);
//////binary_bcd BIN_BCD( data_input ,  ones_out , hundreds_out, tens_out  );
counter_2bit Counter( clock_out , count_out  );
decoder DEC(count_out  , an);
seven_seg_converter SEV_SEG( mux_OUT , seg_OUT );
mux MUX ( ones_out , tens_out , hundreds_out ,4'b0000 ,  count_out, mux_OUT);

debounce_button P(clock_out,data_in,debounce);

D_FLIP_FLOP  DFF0( Q[1] , rst_n, i_clk , debounce, Q[0] );
D_FLIP_FLOP  DFF1( Q[2] , rst_n, i_clk , debounce, Q[1] );
D_FLIP_FLOP  DFF2( Q[3] , rst_n, i_clk , debounce, Q[2] );
D_FLIP_FLOP  DFF3( Q[4] , rst_n, i_clk , debounce, Q[3] );
D_FLIP_FLOP  DFF4( Q[5] , rst_n, i_clk , debounce, Q[4] );
D_FLIP_FLOP  DFF5( Q[6] , rst_n, i_clk, debounce,  Q[5] );
D_FLIP_FLOP  DFF6( Q[7] , rst_n, i_clk , debounce, Q[6] );
D_FLIP_FLOP  DFF7( ~{Q[7]^Q[5]^Q[4]^Q[3]} , rst_n, i_clk, debounce,  Q[7] );

endmodule
