`timescale 1ns / 1ps

module four_bit_adder_sub(S, C4, A, B, M);
output [3:0]S;
output C4;
input [3:0]A, B;
input M;
wire [4:1]X;
wire [3:1]C;

xor t1(X[1],B[0],M);
xor t2(X[2],B[1],M);
xor t3(X[3],B[2],M);
xor t4(X[4],B[3],M);

full_adder FA0(S[0],C[1],A[0],X[1],M);
full_adder FA1(S[1],C[2],A[1],X[2],C[1]);
full_adder FA2(S[2],C[3],A[2],X[3],C[2]);
full_adder FA3(S[3],C4,A[3],X[4],C[3]);

endmodule

module full_adder(sum,cout,A,B,M);
output sum,cout;
input A,B,M;
wire w0,c1,c2,c3;
xor x1(w0,A,B);
xor x2(sum,w0,M);

and a1(c1,A,B);
and a2(c2,B,M); 
and a3(c3,A,M);

or carry (cout,c1,c2,c3);

endmodule
