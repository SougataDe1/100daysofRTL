`timescale 1ns / 1ps
module mealy_non_overlapping(out, clk, rst, in);
output out;
input clk,rst,in;
parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  
reg [3:0] cs, ns;
  always @(posedge clk) begin
    if(rst) begin 
      cs <= A;
    end
    else cs <= ns;
  end
  
  always @(cs or in) begin
    case(cs)
      A: begin
           if(in == 0) ns = A;
           else       ns = B;
         end
      B: begin
           if(in == 0) ns = C;
           else       ns = B;
         end
      C: begin
           if(in == 0) ns = A;
           else       ns = D;
         end
      D: begin
           if(in == 0) ns = A;
           else       ns = B;
         end
      default: ns = A;
    endcase
  end
  assign out = (cs == D)? 1:0;
endmodule
