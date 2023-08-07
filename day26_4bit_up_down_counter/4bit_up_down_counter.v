`timescale 1ns / 1ps
module up_down_counter(q,rst,clk,mod);
output reg[3:0]q;
input rst,clk,mod;
always@(posedge clk)
begin
case({rst,mod})
2'b10:q=0;
2'b11:q=0;
2'b00:q=q+1;
2'b01:q=q-1;
endcase
end
endmodule
