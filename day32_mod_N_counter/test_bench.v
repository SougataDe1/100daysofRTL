`timescale 1ns / 1ps
module mod_6_counter_tb();
wire [5:0]q;
reg clk;
reg rst;
mod_6_counter uut(.q(q),.clk(clk),.rst(rst));
initial
begin
rst=1;
clk=0;
#20
rst=0;
#300 $finish();
end
always #10 clk=~clk;
endmodule
