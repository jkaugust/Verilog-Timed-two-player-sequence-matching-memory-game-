`timescale 1ns/1ns
module TB_LFSR();
reg Clk_s,Rst_s;
wire [15:0] Q_s;
LFSReg LFSRReg1(Clk_s,Rst_s,Q_s);
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
  @(posedge Clk_s);
  Rst_s=1;
  end
endmodule 


