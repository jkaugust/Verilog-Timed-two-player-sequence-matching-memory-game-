module Checker(A,B,Start,W,Clk,Rst);
input [3:0] A,B;
input Clk,Rst,Start;
output [3:0] W;
reg [3:0] W;
reg [2:0]State;
parameter INIT=0,WINNER=1,AWINS=2,BWINS=3,DRAW=4,WAIT=5;
always@(posedge Clk)
 begin
 if (Rst==1)
  begin
  case(State)
 INIT:
  begin
    if(Start==1)
     begin
      State<=WINNER;
     end
     else
      begin
       State<=INIT;
      end
  end
 WINNER:
  begin  
   if (A==4'b 1111&&B!=4'b1111)
     begin
      State<=AWINS;
      end
   if (B==4'b 1111&&A!=4'b1111)
     begin
       State<=BWINS;
      end
   if (A==4'b 1111&&B==4'b1111)
     begin
       State<=DRAW;
     end
  end
 AWINS:
  begin
   W<=4'b1010;
   State<=WAIT;
  end
 BWINS:
  begin
   W<=4'b1000;
   State<=WAIT;
  end
 DRAW:
  begin
   W<=4'b1101;
   State<=WAIT;
  end
 WAIT:
  begin
   if(Start==0)
    begin
     State<=INIT;
    end
   else
    begin
     State<=WAIT;
     end
   end
  default:begin
    State<=INIT;
    end
  endcase
 end
 else
  if (Rst==0)
    begin
     W<= 4'b 0000;
    end
 end
endmodule
 
        