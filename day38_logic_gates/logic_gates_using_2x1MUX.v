`timescale 1ns / 1ps

module logic_gates_using_mux_2x1(output reg y,input sel, i0,i1);
always@(*)
begin
if(sel)
y = i1;
else
y = i0;
end
endmodule
    
module mux2x1_logics(Y,A,B);
output [6:0]Y;
input A,B;

logic_gates_using_mux_2x1 AND(Y[0], B, 1'b0, A);
logic_gates_using_mux_2x1 OR(Y[1], B, A, 1'b1);
logic_gates_using_mux_2x1 NOT(Y[2], A, 1'b1, 1'b0);
logic_gates_using_mux_2x1 NAND(Y[3], A, 1'b1, ~B);
logic_gates_using_mux_2x1 NOR(Y[4], A, ~B, 1'b0);
logic_gates_using_mux_2x1 XOR(Y[5], A, B, ~B);
logic_gates_using_mux_2x1 XNOR(Y[6], A, ~B, B);
    
endmodule
