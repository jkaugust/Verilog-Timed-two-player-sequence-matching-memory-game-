module TB_TopModule();
 reg Start,AcsPA,AcsPB,Pas,AcsPas,AcsRNG,Clk,Rst;
 reg [3:0]PA,PB;
 wire[6:0]SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB,SegoutT1,SegoutT2,SegoutT3;
 wire WinA,WinB;
Topmodule TopMod(Start,PA,AcsPA,PB,AcsPB,Pas,AcsPas,AcsRNG,Clk,Rst,WinA,WinB,SegoutT1,SegoutT2,SegoutT3,SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB);
always begin
    Clk=1;
    #1;
    Clk=0;
    #1;
  end

  initial begin
    Rst=0;
    Pas=0;
    AcsPas=0;
    AcsPA=1;
    AcsPB=1;
    AcsRNG=1;
    Start=0;
    @(posedge Clk);
    Rst=1;
    AcsPA=0;
    AcsPB=0;
    AcsRNG=0;
    Start=1;
    @(posedge Clk);
       AcsPas=1; Pas=1;
    @(posedge Clk);
       AcsPas=0;
    @(posedge Clk);		
       AcsPas=1; Pas=1;
    @(posedge Clk);	
       AcsPas=0;
    @(posedge Clk);		
       AcsPas=1; Pas=1;
    @(posedge Clk);	
       AcsPas=0;
    @(posedge Clk);
       AcsPas=1; Pas=1;
    @(posedge Clk);	
       AcsPas=0;
    @(posedge Clk);
       AcsPas=1; Pas=1;
    @(posedge Clk);
       AcsPas=0;
    @(posedge Clk);
       AcsPas=1; Pas=1;
     @(posedge Clk);
       AcsRNG=1;
     @(posedge Clk);
       AcsPA=1;
       AcsPB=1;
     @(posedge Clk);
       PA=4'b1010; PB=4'b1100;
     @(posedge Clk);
       AcsPA=0;
       AcsPB=0;
       AcsRNG=0;

     

    #100;
     @(posedge Clk);
       AcsRNG=1;
     @(posedge Clk);
       AcsPA=1;
       AcsPB=1;
    @(posedge Clk);
       PA=4'b1110; PB=4'b1000;
     @(posedge Clk);
       AcsPA=0;
       AcsPB=0;
       AcsRNG=0;


   end
endmodule 

