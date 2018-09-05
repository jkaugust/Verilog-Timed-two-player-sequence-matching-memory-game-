//Course Number:6370
//Author: Justin K Augustine 2199

module LoadReg(Input,Output,Allow,Access,Clk,Rst);
 input[3:0]Input;
 input Allow,Access,Clk,Rst;
 output [3:0]Output;
 reg [3:0]Output;
 reg X;
 always@(posedge Clk)
  begin
   if (Rst==0)
    begin
    Output=4'b0;
    end
  else
   begin
    if (Allow==1)
     begin
     if (Access==1) 
       begin
        Output<=Input;
       end
      end
      else
       begin
        Output=4'b0;
       end
   end
 end
endmodule
  
     
    

     

