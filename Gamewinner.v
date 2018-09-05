module Gamewinner(Stop,CounterA_out,CounterB_out,WinA,WinB,Winner,Clk,Rst);
input [3:0]CounterA_out,CounterB_out;
input Rst,Clk,Stop;
output WinA,WinB;
output [3:0]Winner;
reg WinA,WinB;
reg [3:0] Winner;
reg [1:0]State;
parameter TIMMER=1,COUNTER=2;
always@(posedge Clk)
 begin
 if (Rst==0)
  begin
   WinA<=0;
   WinB<=0;
   Winner<=4'b0000;
  end
 else
  begin 
  case(State)
    TIMMER:begin
     if (Stop==1)
      begin
       if (CounterA_out>CounterB_out)
        begin
         WinA<=1;
         Winner<=4'b1010;
         end
        else
          begin
           if (CounterA_out<CounterB_out)
            begin
             WinB<=1;
             Winner<=4'b1000;
            end
             else
   	      begin
               WinA<=1;
               WinB<=1;
               Winner<=4'b1101;
	      end
             end
          end
       end
     COUNTER:begin	 
      if (Stop==0)
       begin
        if (CounterA_out==4'b1111)
         begin
          WinA<=1;
          Winner<=4'b1010;
         end
        end
          else
           begin
            if (CounterB_out==4'b1111)
             begin
              WinA<=1;
              Winner<=4'b1010;
             end
          end
         end
        default:begin
         WinA<=0;
         WinB<=0;
         Winner<=4'b0000;
         end
     endcase
   end
 end 
endmodule 
                     
