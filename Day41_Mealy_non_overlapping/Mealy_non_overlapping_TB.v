`timescale 1ns / 1ps
module mealy_non_overlapping_tb();
wire out;
reg clk, rst,in;

mealy_non_overlapping dut(out,clk, rst,in);
initial
begin
$monitor("%0t: in = %0b, out = %0b", $time, in, out);
rst=1;
clk = 0; 
in=0;  
#20 rst=0;
in = 1;
#20 in = 0;
#20 in= 1;
#20 in= 0;
#20 in= 1;
#20 in= 0;
#20 in= 1;
#20 in= 0;
#20 in= 1;
#20 in= 0;
#20 in= 1;
#20 in= 0;
#20 in = 0;
#20 in = 1;
#20 in = 1;
#20 in = 0;
#20 in = 1;
#20 in = 0;
#20 in = 1;
#20 $finish;
end
always #10 clk = ~clk;
endmodule
