//Course Number:6370
//Author: Justin K Augustine 2199

module LoadRegister(Input,Output,Allow,Access,Clk,Rst);
 input[3:0]Input;
 input Allow,Access,Clk,Rst;
 output [3:0]Output;
 reg [3:0]Output;
 always@(posedge Clk)
  begin
   if (Rst==0)
    begin
    Output=4'b0;
    end
  else
    if (Access==1&&Allow==1)
     begin
     Output<=Input;
     end
   // else
    // begin
    //  Output=4'b0;
    // end
   end
endmodule
