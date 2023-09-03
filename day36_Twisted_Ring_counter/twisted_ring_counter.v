`timescale 1ns / 1ps
module twisted_ring_counter #(parameter N=4)(q,clk,rst);
output reg [N-1:0]q;
input clk,rst;
always @(posedge clk)
begin
if(rst)
q<='b0000;
else
q<={~q[0],q[N-1:1]};
end
endmodule
