`timescale 1ns / 1ps
module mux8x1_using_2x1_mux(
output y,
input [2:0]s,
input [7:0]i
);
wire  w1,w2,w3,w4,w5,w6;
mux2x1 m1(w1,s[0],i[1],i[0]);
mux2x1 m2(w2,s[0],i[3],i[2]);
mux2x1 m3(w3,s[0],i[5],i[4]);
mux2x1 m4(w4,s[0],i[7],i[6]);
mux2x1 m5(w5,s[1],w2,w1);
mux2x1 m6(w6,s[1],w4,w3);
mux2x1 M(y,s[2],w6,w5);
endmodule

module mux2x1(y,s,i[1],i[0]); 
 output y;
 input s;
 input [1:0]i;
 assign y=(i[0]&(~s))|(i[1]&(s));
//  always @(*) begin
//    if(s==1)
//      y = i[1];
//    else
//      y = i[0];
//  end
endmodule
