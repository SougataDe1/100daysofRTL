`timescale 1ns / 1ps

module full_adder_tb(

    );
    wire s, c_out;
    reg a,b,c_in;
    full_adder A1(s,c_out,a, b, c_in);
    initial
    begin
    a=0;
    b=0;
    c_in=0;
    end
    
    always
    begin
    #50 a=~a;
    #100 b=~b;
    #200 c_in=~c_in;
    end
endmodule
