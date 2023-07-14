`timescale 1ns / 1ps

module demux1x2_tb();
  wire y0,y1;
  reg s;
  reg i;

 demux1x2 d(y0,y1,s,i);
initial
begin
s=0;
i=0;
#100 $finish();
end
always #10 s=~s;
always #20 i=~i;
endmodule
