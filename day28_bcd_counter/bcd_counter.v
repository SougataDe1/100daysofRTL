`timescale 1ns / 1ps
module bcd_counter(q,clk,rst);
output reg[3:0]q;
input clk, rst;
always @(posedge clk)
begin
    if(rst)
        q<=4'b0000;
    else if(q==4'b1001)
        begin
        q<=4'b0000;
        end
    else
    q<=q+1;
end
endmodule
