module Timer1s(Start,Out,Clk,Rst);
input Start,Clk,Rst;
output [10:0] Out;
wire [20:0]T;
Timer1ms Timer1ms2(Start,T,Clk,Rst);
Timer1msto1s Timer1msto1s2(T,Out,Rst);
endmodule
