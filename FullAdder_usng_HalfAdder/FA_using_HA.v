`timescale 1ns / 1ps

module HA(sum,carry_out,a,b);
output sum,carry_out;
input a,b;
assign sum=a^b;
assign carry_out=a&b;
endmodule


module FA_using_HA(sum,carry_out,a,b,c_in);
output sum,carry_out;
input a,b,c_in;
wire s1,c1,c2;
HA ha1(s1,c1,a,b);
HA ha2(sum,c2,s1,c_in);
assign carry_out= c1 | c2;
endmodule
