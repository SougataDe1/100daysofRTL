`timescale 1ns / 1ps
module twisted_ring_counter_tb();
wire [3:0]q;
reg clk,rst;
twisted_ring_counter dut(.q(q),.clk(clk),.rst(rst));
initial
begin
rst=1;
clk=0;
#20 rst=0;
#200 $finish();
end
always #10 clk=~clk;
endmodule
