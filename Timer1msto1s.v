module Timer1msto1s(In,Out,Rst);
input [20:0]In;
input Rst;
output[10:0] Out;
reg [10:0] Out;
reg [11:0]X;
always @(In)
 begin
  if (Rst==0)
   begin
    Out<=0;
    X<=0;
   end
 else
  begin
   X=X+1;
    if (X==1000)
     begin
      Out<=Out+1;
      X<=0;
     end
   end
 end
endmodule
