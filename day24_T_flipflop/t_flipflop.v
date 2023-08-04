`timescale 1ns / 1ps
module t_ff(q,qb,t,clk,rst);
output reg q;
output qb;
input t,clk,rst;
always@(posedge clk or negedge rst)
begin
if(!rst)
begin
if(t==0)
q<=q;
else
q<=~q;
end
else
q<=0;
end
assign qb=~q;
endmodule
