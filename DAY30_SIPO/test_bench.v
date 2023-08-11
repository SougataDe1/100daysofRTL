`timescale 1ns / 1ps
module sipo_tb();
wire [3:0]q;
wire [3:0]qb;
reg din,clk,rst;
sipo dut(.q(q),.qb(qb),.din(din),.clk(clk),.rst(rst));
initial
begin
rst = 1;
clk = 0;
din=0;
#10 rst =0;
$monitor("time=%0t q=%b qb=%b rst=%b clk=%b din=%b",$time,q,qb,rst,clk,din);
#500 $finish();
end
always #20 clk=~clk;
always #40 din = $random;
endmodule
