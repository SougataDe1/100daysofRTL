`timescale 1ns / 1ps

module d_ff_tb();
wire q;
wire qb;
reg d,rst_n,clk;
d_ff D1(q,qb,d,rst_n,clk);
initial
begin
d=0;
rst_n=0;
clk=0;
#10 rst_n=1;
forever #5 clk=~clk;
$finish(100);
end
always #20 d=~d;

endmodule
