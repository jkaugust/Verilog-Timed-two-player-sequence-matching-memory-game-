module Timer1ms(Start,T,Clk,Rst);
input Start,Clk,Rst;
output [20:0]T;
reg [20:0]T;
reg [15:0] LFSR;
wire[15:0]Q;
wire feedback = LFSR[15];
always@(posedge Clk,Start)
 begin
  if (Rst==0)
    begin
     LFSR <= 16'b 1111111111111111;
     T <=1'b0;
     end
    else
     begin
     if (Start==1)  
     begin
       if (Q!= 16'b 0110110110110110)      
          begin
            LFSR[0] <= feedback;
            LFSR[1] <= LFSR[0];
            LFSR[2] <= LFSR[1] ^ feedback;
            LFSR[3] <= LFSR[2] ^ feedback;
            LFSR[4] <= LFSR[3];
            LFSR[5] <= LFSR[4] ^ feedback;
            LFSR[6] <= LFSR[5];
            LFSR[7] <= LFSR[6];
            LFSR[8] <= LFSR[7];
            LFSR[9] <= LFSR[8];
            LFSR[10] <= LFSR[9];
            LFSR[11] <= LFSR[10];
            LFSR[12] <= LFSR[11];
            LFSR[13] <= LFSR[12];
            LFSR[14] <= LFSR[13];
     	    LFSR[15] <= LFSR[14];
      	 end
	else
         begin
	   T<=T+1;
           LFSR<=16'b 1111111111111111;
  	 end
     end
    end
   end
 assign Q = LFSR;
endmodule
