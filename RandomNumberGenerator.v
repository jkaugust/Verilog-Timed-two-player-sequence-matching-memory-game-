module RanNumGen(Allow,Access,Clk,Rst,Output);
input Allow,Access,Clk,Rst;
output [3:0] Output;
wire [15:0]Q;
wire Bout;
LFSReg LFSReg1(Clk,Rst,Q);
LoadRegister LoadRegLFSR({Q[14],Q[12],Q[4],Q[2]},Output,Allow,Bout,Clk,Rst);
ButtonShaper ButtonShaper1(Access,Bout,Clk,Rst);
endmodule

