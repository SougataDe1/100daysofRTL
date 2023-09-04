`timescale 1ns / 1ps
module LFSR_tb();
wire [3:0]out;
reg clk, rst;
LFSR dut(out,clk,rst);
initial 
begin
rst = 1;
clk = 0; 
#20 rst = 0;
$monitor("out=%b",out);
#500 $finish();
end
always #10 clk=~clk;
endmodule
