`timescale 1ns / 1ps
module carry_look_ahead_adder_tb();
wire [3:0] sum;
wire c_out;
reg [3:0]i1,i2;
reg c_in;
carry_look_ahead_adder dut(sum,c_out,i1,i2,c_in);
initial
begin
$monitor("sum=%b c_out=%b i1=%b i2=%b c_in=%b",sum,c_out,i1,i2,c_in);
#500 $finish();
end
always #10 i1=$random;
always #20 i2=$random;
always #40 c_in=$random;
endmodule
