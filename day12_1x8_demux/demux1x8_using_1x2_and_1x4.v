`timescale 1ns / 1ps

module demux1x8(y,s,i);
output [7:0]y;
input [2:0]s;
input i;
wire [1:0]w;
demux_1x2 m1(w[1:0],s[2],i);
demux_1x4 m2(y[3:0],s[1:0],w[0]);
demux_1x4 m3(y[7:4],s[1:0],w[1]);
endmodule

module demux_1x4(y,s,w0);
output [3:0]y;
input [1:0]s;
input w0;
wire [1:0]wi;
demux_1x2 m4(wi,s[1],w0);
demux_1x2 m5(y[1:0],s[0],wi[0]);
demux_1x2 m6(y[3:2],s[0],wi[1]);
endmodule

module demux_1x2(w,s,i);
output [1:0]w;
input s;
input i;
assign w[0]=i & (~s);
assign w[1]=i & (s);
endmodule
