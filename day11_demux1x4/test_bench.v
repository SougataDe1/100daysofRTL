`timescale 1ns / 1ps

module test_bench();
wire [3:0]y;
reg [1:0]s;
reg i;
demux_1x4 dm(y,s,i);
initial
begin
s[0]=0;
s[1]=0;
i=0;
#200 $finish();
end
always #10 s[0]=~s[0];
always #20 s[1]=~s[1];
always #40 i=~i;
endmodule
