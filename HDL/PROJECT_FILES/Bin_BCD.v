
`define WIDTH 4
module Bin_BCD (
 input [7:0] bin_in ,
 output reg [`WIDTH-1:0] HUND , TENS , ONES 
);

integer i ;
always @ (bin_in)
  begin
   ONES = 4'b0000 ;
   TENS = 4'b0000;
   HUND = 4'b0000;
 
  for (i = 7; i>=0; i=i-1)
       begin
             if (HUND>=5)
                 HUND = HUND + 2'b11;
             if (TENS >=5)
                 TENS = TENS + 2'b11 ;
             if (ONES >=5)
                 ONES = ONES + 2'b11 ;
             
       HUND = HUND<<1;
       HUND[0] = TENS[3];
       TENS = TENS<<1 ;
       TENS[0] = ONES[3];
       ONES = ONES<<1 ;
       ONES[0] = bin_in[i] ;
  end
 end
endmodule 