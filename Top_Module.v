module Topmodule (Start,PA,AcsPA,PB,AcsPB,Pas,AcsPas,AcsRNG,Clk,Rst,WinA,WinB,SegoutT1,SegoutT2,SegoutT3,SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB);
input AcsRNG,AcsPA,AcsPB,Pas,AcsPas,Start,Clk,Rst;
input [3:0]PA,PB;
output [6:0]SegoutT1,SegoutT2,SegoutT3,SegoutCA,SegoutCB,SegoutRNG,SegoutWinner,SegoutPA,SegoutPB;
output WinA,WinB;
wire [3:0]OutRNG,OutLRA,OutLRB,SumA,SumB,W,CA_out,CB_out,Winner;
wire Allow,AcsPasout,Stop;
RanNumGen RanNumGen_1(Allow,AcsRNG,Clk,Rst,OutRNG);
Timerfinal Timerfinal_1(Start,SegoutT1,SegoutT2,SegoutT3,Clk,Rst,Stop);
LoadReg LoadReg_A(PA,OutLRA,Allow,AcsPA,Clk,Rst);
LoadReg LoadReg_B(PB,OutLRB,Allow,AcsPB,Clk,Rst);
Adder Adder_A(OutLRA,OutRNG,Allow,SumA);
Adder Adder_B(OutLRB,OutRNG,Allow,SumB);
Checker Checker_1(SumA,SumB,Start,W,Clk,Rst);
ButtonShaper AccesssPas(AcsPas,AcsPasout,Clk,Rst);
AccessControl AccessControl_1(Pas,AcsPasout,Allow,Clk,Rst);
CounterA CounterA_1(W,CA_out,Clk,Rst);
CounterB CounterB_1(W,CB_out,Clk,Rst);
Gamewinner Gamewinner_1(Stop,CA_out,CB_out,WinA,WinB,Winner,Clk,Rst);
Sevenseg Sevense_A(SumA,SegoutPA);
Sevenseg Sevense_B(SumB,SegoutPB);
Sevenseg Sevense_CA(CA_out,SegoutCA);
Sevenseg Sevense_CB(CB_out,SegoutCB);
Sevenseg Sevense_RNG(OutRNG,SegoutRNG);
Sevenseg Sevense_Winner(Winner,SegoutWinner);
endmodule



