`timescale 1ns / 1ps

module demux1x2(
output y0,y1,
input s,
input i
);
assign y0=i & (~s);
assign y1=i & (s);
endmodule
