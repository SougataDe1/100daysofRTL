`timescale 1ns / 1ps

module mod_6_counter #(parameter N=6)(q,clk,rst);
output reg [N-1:0]q;
input clk;
input rst;

always @(posedge clk)
begin
if(rst)
q<=0;
else
q<=(q==N-1)?0:q+1;
end
endmodule
