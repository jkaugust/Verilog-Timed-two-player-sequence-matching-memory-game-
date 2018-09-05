module TB_Gametimer1();
reg [10:0] In_s;
reg Lent_s,Rst_s,Clk_s; 
wire [3:0] Out_s;
wire Bor_s,Stop_s; 
Gametimer1 Gametimer1_s(In_s,Out_s,Bor_s,Stop_s,Lent_s,Rst_s);
always 
  begin
    Clk_s=0;
    #10;
    Clk_s=1;
    #10;
  end
always @(posedge Clk_s)
 begin
  In_s<=In_s+1'b1;
 end
initial 
  begin
   In_s=0;
   Rst_s=0;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
   @(posedge Clk_s);
   Rst_s=0;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=0;
  @(posedge Clk_s);
   Rst_s=0;
   Lent_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   Lent_s=1;
 end
endmodule



