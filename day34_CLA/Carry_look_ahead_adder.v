`timescale 1ns / 1ps
module carry_look_ahead_adder(sum,c_out,i1,i2,c_in);
output [3:0] sum;
output c_out;
input [3:0]i1,i2;
input c_in;
wire [3:0] P,G,C;

assign P = i1^i2; 
assign G = i1&i2;

assign C[0]=c_in;
assign C[1]= G[0]|(P[0]&C[0]);
assign C[2]= G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
assign C[3]= G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
assign c_out= G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
assign sum=P^C;
endmodule
