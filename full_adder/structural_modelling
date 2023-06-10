`timescale 1ns / 1ps

module structural_modelling(s,c_out,a, b, c_in);
    output s, c_out;
    input a,b,c_in;
    wire w, c1 ,c2, c3;
    
    xor w1(w,a,b);
    xor sum(s,w,c_in);
    
    and a1(c1,a,b);
    and a2(c2,b,c_in); 
    and a3(c3,a,c_in);
    
    or carry (c_out,c1,c2,c3);
endmodule


//////////TESTBENCH FOR structural_modelling////////

`timescale 1ns / 1ps

module structural_tb();
wire s, c_out;
    reg a,b,c_in;
    structural_modelling FA1(s,c_out,a, b, c_in);
    initial
    begin
    a=0;
    b=0;
    c_in=0;
    end

    always #50 a=~a;
    always #100 b=~b;
    always #200 c_in=~c_in;
endmodule
