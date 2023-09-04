`timescale 1ns / 1ps
module LFSR(out,clk,rst);
output reg [3:0] out;
input clk, rst;
wire feedback;
always@(posedge clk)
begin
if(rst)
out <= 4'hf;
else 
out <= {out[2:0],feedback};
end
assign feedback = (out[3]^out[2]);
endmodule
