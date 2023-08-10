`timescale 1ns / 1ps
module siso_tb();
wire q,qb;
reg din,clk,rst_n;
siso dut(.q(q),.qb(qb),.din(din),.clk(clk),.rst_n(rst_n));
initial
begin
rst_n = 1;
#10 rst_n =0;
clk = 0;
din=0;

$monitor("time=%0t q=%b qb=%b rst_n=%b clk=%b din=%b",$time,q,qb,rst_n,clk,din);
#500 $finish();
end
always #20 clk=~clk;
always #40 din = ~din;
endmodule
