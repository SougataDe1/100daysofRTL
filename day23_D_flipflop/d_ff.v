`timescale 1ns / 1ps
module d_ff(q,qb,d,rst_n,clk);
output reg q;
output reg qb;
input d,rst_n,clk;

always @(posedge clk or negedge rst_n)
if(!rst_n)
begin
q<=0;
qb<=1;
end
else
begin
q<=d;
qb<=~d;
end
endmodule
