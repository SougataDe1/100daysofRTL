`timescale 1ns / 1ps

module fa_tb();
wire sum,carry_out;
reg a,b;
reg c_in;
FA_using_HA fa1(sum,carry_out, a,b,c_in);
initial
begin
a=0;
b=0;
c_in=0;
#1200 $finish();
end
always #20 a=~a;
always #40 b=~b;
always #80 c_in=~c_in;
endmodule
