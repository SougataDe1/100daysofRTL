`timescale 1ns / 1ps

module dataflow_hs(diff,borrow,a,b);
output diff,borrow;
input a,b;
wire n;
assign diff=a^b;
assign n=~a;
assign borrow=n&b;
endmodule
