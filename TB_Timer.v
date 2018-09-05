`timescale 1ns/1ns
module TB_Timer();
reg Start_s,Clk_s,Rst_s;
wire [10:0]Out_s;
Timer1s Timer1s_s(Start_s,Out_s,Clk_s,Rst_s);
always 
  begin
    Clk_s=0;
    #1;
    Clk_s=1;
    #1;
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
