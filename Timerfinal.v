module Timerfinal(Start,Segout1,Segout2,Segout3,Clk,Rst,Stop);
input Start,Clk,Rst;
output [6:0]Segout1,Segout2,Segout3;
output Stop;
wire [10:0]Out;
wire [20:0]T;
wire [3:0]First,Second,Third;
GameTimernew GametimernewF(First,Second,Third,Out,Rst,Stop);
Timer1ms Timer1ms2(Start,T,Clk,Rst);
Timer1msto1s Timer1msto1s2(T,Out,Rst);
Sevenseg Sevenseg1(First,Segout1);
Sevenseg Sevenseg2(Second,Segout2);
Sevenseg Sevenseg3(Third,Segout3);
endmodule
