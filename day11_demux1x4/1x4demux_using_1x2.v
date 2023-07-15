`timescale 1ns / 1ps
module demux_1x4(y,s,i);
output [3:0]y;
input [1:0]s;
input i;
wire [1:0]w;
demux_1x2 m1(w,s[1],i);
demux_1x2 m2(y[1:0],s[0],w[0]);
demux_1x2 m3(y[3:2],s[0],w[1]);
endmodule

module demux_1x2(w,s,i);
output [1:0]w;
input s;
input i;
assign w[0]=i & (~s);
assign w[1]=i & (s);
endmodule
