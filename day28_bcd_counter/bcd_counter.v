`timescale 1ns / 1ps
module bcd_counter_tb();
wire [3:0]q;
reg clk;
reg rst;
 bcd_counter dut(.q(q),.clk(clk),.rst(rst));
 initial
 begin
 rst=1;
 clk=0;
 #50
 rst=0;
 #400
 
 rst=1;
 #50 $finish();
end
always #10 clk=~clk;
initial
begin
$monitor ("T=%0t out=%b", $time, q);
end
endmodule
