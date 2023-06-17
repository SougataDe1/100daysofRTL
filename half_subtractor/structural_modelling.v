`timescale 1ns / 1ps

module half_sub_structural(diff,borrow,a,b);
output diff,borrow;
input a,b;
wire n;
xor d1(diff,a,b);
not (n,a);
and a1(borrow,n,b);
endmodule
