`timescale 1ns / 1ps
module mux8x1(y,s,i);
output y;
input [2:0]s;
input [7:0]i;
wire [1:0]w;
mux4x1 m1(w[0],s[1],s[0],i[3],i[2],i[1],i[0]);
mux4x1 m2(w[1],s[1],s[0],i[7],i[6],i[5],i[4]);
mux2x1 M(y,s[2],w[1],w[0]);
endmodule

module mux4x1(w,s1,s0,i3,i2,i1,i0);
output w;
input s1,s0;
input i3,i2,i1,i0;
wire w3,w2;
mux2x1 m3(w2,s0,i1,i0);
mux2x1 m4(w3,s0,i3,i2);
mux2x1 m5(w,s1,w3,w2);
endmodule

module mux2x1(w2,s0,i1,i0);
output reg w2;
input s0;
input i1,i0;
always @(*)
begin
if(s0==0)
w2= i0;
else
w2=i1;
end
endmodule
