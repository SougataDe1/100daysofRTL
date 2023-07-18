`timescale 1ns / 1ps
module demux1x8_tb();
 wire [7:0]y;
  reg [2:0]s;
    reg i;
  demux1x8 DM(y[7:0],s[2:0],i);
  initial begin
      i=8'b0;
      s[0]=0;
      s[1]=0;
      s[2]=0;
      #100 i=8'hfd;
      #1000 $finish;
  end
  
  always #100 s[0] = ~s[0];
  always #200 s[1] = ~s[1];
  always #400 s[2] = ~s[2];
endmodule
