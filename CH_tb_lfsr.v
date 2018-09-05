`timescale 1ns/1ns
module TB_CH_LFSR();
reg Clk_s;
wire [15:0] Q_s;
CH_LFSR LFSRReg1(Clk_s,Q_s);
always 
  begin
    Clk_s=0;
    #10;
    Clk_s=1;
    #10;
  end
endmodule 


