module TB_TopModule_Dupli();
 reg Start,Stop,AcsPA,AcsPB,Pas,AcsPas,AcsRNG,Clk,Rst;
 reg [3:0]PA,PB;
 wire[6:0]SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB;
 wire WinA,WinB;
Topmodule_Duplicate TopMod_D(Start,Stop,PA,AcsPA,PB,AcsPB,Pas,AcsPas,AcsRNG,Clk,Rst,WinA,WinB,SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB);
always begin
    Clk=1;
    #10;
    Clk=0;
    #10;
  end

  initial begin
    Rst=0;
    Pas=0;
    AcsPas=0;
    Stop=1;
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
    Stop=0;
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

