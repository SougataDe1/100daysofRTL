`timescale 1ns / 1ps

module full_adder(s,c_out,a,b,c_in);
output s, c_out;
input a,b,c_in;
assign s = a^b^c_in;
assign c_out=(a&b)|(b&c_in)|(a&c_in);

endmodule


module parallel_adder(sum,c_out,a,b,c_in);
output [3:0]sum;
output c_out;
input [3:0]a,b;
input c_in;
wire [2:0]c_o; 

full_adder fa0(sum[0],c_o[0],a[0],b[0],c_in);
full_adder fa1(sum[1],c_o[1],a[1],b[1],c_o[0]);
full_adder fa2(sum[2],c_o[2],a[2],b[2],c_o[1]);
full_adder fa3(sum[3],c_out,a[3],b[3],c_o[2]);
endmodule
