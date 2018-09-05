module TB_Gametimer_top ();
reg [10:0] In_s;
reg Rst_s,Clk_s; 
wire [3:0] Out1_s,Out2_s,Out3_s;
wire Stop_s; 
GameTimernew GameTimer_s (Out1_s,Out2_s,Out3_s,In_s,Rst_s,Stop_s);
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
  @(posedge Clk_s);
   Rst_s=0;
  @(posedge Clk_s);
   Rst_s=0;
  @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
   @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
  @(posedge Clk_s);
   Rst_s=1;
  
 end
endmodule



