module TB_1msto1s();
 reg [20:0]In_s;
 reg Clk_s,Rst_s;
 wire [10:0] Out_s;
Timer1msto1s Timer1msto1s1(In_s,Out_s,Rst_s);
always 
  begin
   Clk_s=0;
   #10;
   Clk_s=1;
   #10;
    end
always @(posedge Clk_s)
 begin
  In_s=In_s+1'b1;
 end
initial 
  begin
    Rst_s=0;
    In_s=0;
   @(posedge Clk_s);
    Rst_s=1;
  end
endmodule
    
