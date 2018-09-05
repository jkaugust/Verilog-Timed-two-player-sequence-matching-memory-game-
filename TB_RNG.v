module TB_RNG();
reg Allow,Access,Rst,Clk;
wire [3:0]Output;
RanNumGen RanNumGen_s(Allow,Access,Clk,Rst,Output);
  always begin
    Clk=1;
    #10;
    Clk=0;
    #10;
  end
  initial begin
    Rst=0;
    Allow=0;
    Access=1;
  @(posedge Clk);
    Rst=1;
    Allow=1;
    Access=0;
    #100;
  @(posedge Clk);
    Access=1;
    #10
  @(posedge Clk);
    Access=0;
    #100;
  @(posedge Clk);
    Access=1;
    #10
  @(posedge Clk);
    Access=0;
 
  end
endmodule
  
