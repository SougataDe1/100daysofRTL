`timescale 1ns / 1ps

module mux4x1(
    output y,
    input [3:0] i,
    input [1:0] s
    );
    
    wire t1,t2;
    
    mux2x1 m1(t1,i[1],i[0],s[0]);
        mux2x1 m2(t2,i[3],i[2],s[0]);
            mux2x1 m(y,t2,t1,s[1]);
endmodule

module mux2x1(y,i[1],i[0],s); 
 output reg y;
 input [1:0]i;
 input s;
  always @(*) begin
    if(s==1)
      y = i[1];
    else
      y = i[0];
  end
endmodule
