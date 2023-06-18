`timescale 1ns / 1ps

module full_sub_structural(diff,borrow,a,b,c);
output diff,borrow;
input a,b,c;
wire x1,n,a1,a2,a3;

xor X1(x1,a,b);
xor d(diff,x1,c);

not N1 (n,a);

and A1(a1,n,b);
and A2(a2,b,c);
and A3(a3,n,c);

or bw(borrow,a1,a2,a3);

endmodule
