module GameTimernew(First,Second,Third,In,Rst,Stop);
input [10:0]In;
input Rst;
output [3:0]First,Second,Third;
reg [3:0] First,Second,Third;
output Stop;
reg Stop;
always @(In)
 begin
   if(Rst==0)
    begin
     First=4'b0000;
     Second=4'b0000;
     Third=4'b0001;
     Stop=0;
    end
   else
    begin
     if(First==4'b0000 && Second==4'b0000 && Third==4'b0000)
      begin
       Stop=1;
      end
     else
      begin
       if(First==4'b0000)
        begin
         First=4'b1001;
         if(Second==4'b0000)
          begin
           Second=4'b1001;
           if(Third==4'b0001)
             begin
              Third=4'b0000;
              Second=4'b1001;
              First=4'b1001;
             end
           end
         else
          begin
           Second=Second-4'b0001;
          end
        end
       else
        begin
         First=First-4'b0001;
        end
      end
    end
end
endmodule

