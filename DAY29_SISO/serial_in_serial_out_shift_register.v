`timescale 1ns / 1ps
module siso(q,qb,din,clk,rst_n);
output q,qb;
input din;
input clk;
input rst_n;
wire q1,q2,q3,qb1,qb2,qb3;
d_ff d1(q1,qb1,din,clk,rst_n);
d_ff d2(q2,qb2,q1,clk,rst_n);
d_ff d3(q3,qb3,q2,clk,rst_n);
d_ff d4(q,qb,q3,clk,rst_n);
endmodule

module d_ff(q,qb,din,clk,rst_n);
output reg q;
output qb;
input din,clk,rst_n;
//always @(posedge clk or negedge rst_n)
always @(posedge clk)
if(rst_n)
begin
q<=0;
end
else
begin
q<=din;
end
assign qb=~q;
endmodule
