`timescale 1ns / 1ps
module j_k_flipflop_tb();
wire q;
wire qb;
reg j,k;
reg clk, rst_n;
j_k_flipflop dut(.q(q),.qb(qb),.j(j),.k(k),.clk(clk),.rst_n(rst_n));
initial
begin
clk=0;
rst_n=1;
#5 rst_n=0;
j=0;
k=0;
#10 
j=0;
k=1;
#20
j=1;
k=0;
#40
j=1;
k=1;
#40
j=0;
k=0;
#40 $finish;
end
always #5 clk = ~clk;
endmodule
