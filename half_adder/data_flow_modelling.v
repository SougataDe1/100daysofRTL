`timescale 1ns / 1ps

module half_adder_dataflow(sum,carry,a,b);
output sum,carry;
input a,b;
assign sum=a^b;
assign carry=a&b;
endmodule
