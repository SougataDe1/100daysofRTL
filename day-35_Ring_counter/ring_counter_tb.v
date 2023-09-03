`timescale 1ns / 1ps
module ring_counter_tb();
wire [3:0]out;
reg clk,rst;
ring_counter dut(.out(out),.clk(clk),.rst(rst));
initial
begin
rst=1;
clk=0;
#20 rst=0;
$monitor("time = %t out = %b clk= %b",$time,out,clk);
#200 $finish();
end
always #10 clk=~clk;
endmodule
