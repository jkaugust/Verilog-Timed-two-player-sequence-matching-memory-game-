module Simple_Counter (Cnt_in,Cnt_out,Clk,Rst);
input Cnt_in,Clk,Rst;
output [3:0] Cnt_out;
reg [3:0] Cnt_out;
always@(posedge Clk)
 begin
  if (Rst==0)
   begin
    Cnt_out<=4'b0000;
   end
  else
   begin
    if (Cnt_in==1)
     begin
      Cnt_out<=Cnt_out+1;
     end
    end
 end
endmodule

