`timescale 1ns / 1ps
module pipo_tb();
wire [3:0]q,qb;
reg [3:0]din;
reg clk,rst;
pipo dut(.q(q),.qb(qb),.din(din),.clk(clk),.rst(rst));
initial
begin
rst = 1;
clk = 0;
#10 rst =0;
$monitor("time=%0t q=%b qb=%b rst=%b clk=%b din=%b",$time,q,qb,rst,clk,din);
#500 $finish();
end
always #20 clk=~clk;
always #40 din = $random;
endmodule
