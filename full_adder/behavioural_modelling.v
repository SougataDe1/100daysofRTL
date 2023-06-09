`timescale 1ns / 1ps

module full_adder(s,c_out,a, b, c_in);
    output reg s, c_out;
    input a,b,c_in;
    
    always @(*)
    begin;
    s = a ^ b ^ c_in;
    c_out = (a & b) | (b & c_in) | (a & c_in);
    end
endmodule
