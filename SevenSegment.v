//Course Number:6370
//Author: Justin K Augustine 2199
//Verilog Code for Seven Segment Display
//Fourbit input: Segin
//Seven Segement Display input: Segout
module Sevenseg(Segin,Segout);
 input [3:0]Segin;
 output [6:0]Segout;
 reg [6:0]Segout;
always@(Segin)
 begin
  case(Segin)
    4'b0000:
      begin
       Segout=7'b1000000;
      end
    4'b0001:
      begin
       Segout=7'b1111001;
      end
    4'b0010:
      begin
       Segout=7'b0100100;
      end
    4'b0011:
      begin
       Segout=7'b0110000;
      end
    4'b0100:
      begin
       Segout=7'b0011001;
      end
    4'b0101:
      begin
       Segout=7'b0010010;
      end
    4'b0110:
      begin
       Segout=7'b0000010;
      end
    4'b0111:
      begin
       Segout=7'b1111000;
      end
    4'b1000:
      begin
       Segout=7'b0000000;
      end
    4'b1001:
      begin
       Segout=7'b0010000;
      end
    4'b1010:
      begin
       Segout=7'b0001000;
      end
    4'b1011:
      begin
       Segout=7'b0000011;
      end
    4'b1100:
      begin
       Segout=7'b1000110;
      end
    4'b1101:
      begin
       Segout=7'b0100001;
      end
    4'b1110:
      begin
       Segout=7'b0000110;
      end
    4'b1111:
      begin
       Segout=7'b0001110;
      end
    default:
      begin
       Segout=7'b1111111;
      end
    endcase
  end
endmodule






    
