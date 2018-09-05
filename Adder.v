//Course Number:6370
//Author: Justin K Augustine 2199
//Verilog code to get the sum of player inputs. 
//First Player: P1 & Second Player: P2
// Sum: S
//Access control: Allow
module Adder(P1,P2,Allow,S);
 input [3:0]P1,P2;
 input Allow;
 output [3:0]S;
 reg [3:0]S;
always@(P1,P2,Allow)
  begin
   if (Allow==1)
    begin
     S=P1+P2;
    end
   else
    begin
     S=4'b0;
    end
   end
endmodule

