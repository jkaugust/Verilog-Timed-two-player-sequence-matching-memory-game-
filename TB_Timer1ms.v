module TB_Timer1ms();
reg Start_s,Clk_s,Rst_s;
wire [20:0]T_s;
Timer1ms Timer1ms1(Start_s,T_s,Clk_s,Rst_s);
always 
  begin
    Clk_s=0;
    #10;
    Clk_s=1;
    #10;
  end
initial
  begin
  Rst_s=0;
  Start_s=0;
  @(posedge Clk_s);
  Rst_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=0;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=0;
  @(posedge Clk_s);
  Start_s=0;
  @(posedge Clk_s);
  Start_s=0;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Rst_s=0;
  @(posedge Clk_s);
  Rst_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  @(posedge Clk_s);
  Start_s=1;
  end
endmodule
