//Course Number:6370
//Author: Justin K Augustine 2199
`timescale 1ns/1ns

module TB_ButtonShaper();

  reg B_in_s, Rst, Clk;
  wire B_out_s;

  ButtonShaper TB_button_shaper(B_in_s, B_out_s, Clk, Rst);

  always begin
    Clk=1;
    #10;
    Clk=0;
    #10;
  end

  initial begin
    Rst=0;
    B_in_s=1;
        
    @(posedge Clk);		
	#20 B_in_s=0;
    @(posedge Clk);
        #50 Rst=1;
    @(posedge Clk);
        #50 B_in_s=1;
    @(posedge Clk);		
        #50 B_in_s=0;
    @(posedge Clk);		
        #50 Rst=0;
    @(posedge Clk);		
        #50 B_in_s=0;
    @(posedge Clk);		
        #50 Rst=1;
    @(posedge Clk);
        #50 B_in_s=1;
    @(posedge Clk);		
        #50 B_in_s=0;
    @(posedge Clk);
        #50 B_in_s=1;
    @(posedge Clk);		
        #50 B_in_s=0;
  end
endmodule

