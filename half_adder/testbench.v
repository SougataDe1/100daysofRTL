`timescale 1ns / 1ps

module half_adder_struc_tb();
wire sum,carry;
reg a,b;
half_adder_structural ha1(sum,carry,a,b);
initial
begin
a=0;
b=0;
#1200 $finish();
end
always #50 a=~a;
always #100 b=~b;
endmodule
