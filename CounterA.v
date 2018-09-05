module CounterA(In,Out,Clk,Rst);
input [3:0]In;
input Clk,Rst;
output [3:0]Out;
reg [3:0]Out;
always @(posedge Clk)
 begin
  if (Rst==0)
   begin
    Out<=4'b0000;
    end
   else
    begin
     if (In==4'b1010)
      begin
       Out<=Out+4'b0001;
      end 
     end
   end
endmodule
