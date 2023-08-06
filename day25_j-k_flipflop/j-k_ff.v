`timescale 1ns / 1ps
module j_k_flipflop(q,qb,j,k,clk,rst_n);
output reg q;
output qb;
input j,k;
input clk, rst_n;

always@(posedge clk or negedge rst_n) // for asynchronous reset
  if(!rst_n)
  begin
    case({j,k})
      2'b00: q <= q;    
      2'b01: q <= 1'b0; 
      2'b10: q <= 1'b1; 
      2'b11: q <= ~q;
    endcase
  end
    else 
    begin
      q <= 0;
      end
assign qb = ~q;
endmodule
