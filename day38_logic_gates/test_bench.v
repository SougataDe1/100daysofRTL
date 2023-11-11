`timescale 1ns / 1ps
module logic_gates_using_mux_2x1_tb();
wire [6:0]Y;
reg A,B;

integer i;
mux2x1_logics MX(Y,A,B);

initial begin
for(i=0;i<4;i=i+1)
begin
{A,B}=i; #20;
end
end
endmodule
