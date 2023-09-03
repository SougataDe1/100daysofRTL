`timescale 1ns / 1ps
module ring_counter #(parameter N=4,width=7)(out,clk,rst);
output reg [N-1:0]out;
input clk,rst;
always @(posedge clk)
begin
if(rst)
out<='b1101;
else
out<={out[0],out[N-1:1]};
end
endmodule
