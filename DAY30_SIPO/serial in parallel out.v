`timescale 1ns / 1ps
module sipo(q,qb,din,clk,rst);
output [3:0]q,qb;
input din;
input clk;
input rst;

d_ff d1(q[0],qb[0],din,clk,rst);
d_ff d2(q[1],qb[1],q[0],clk,rst);
d_ff d3(q[2],qb[2],q[1],clk,rst);
d_ff d4(q[3],qb[3],q[2],clk,rst);
endmodule

module d_ff(q,qb,din,clk,rst);
output reg q;
output reg qb;
input din,clk,rst;
always @(posedge clk)
if(rst)
begin
q<=0;
qb<=1;
end
else
begin
q<=din;
qb<=~din;
end
endmodule
