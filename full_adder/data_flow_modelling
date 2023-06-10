`timescale 1ns / 1ps

module full_adder_dataflow(s,c_out,a, b, c_in);

output s, c_out;
input a,b,c_in;
    
assign    s = a ^ b ^ c_in;
assign    c_out = (a & b) | (b & c_in) | (a & c_in);
endmodule



/////////TESTBENCH FOR DATAFLOW MODELLING/////////

`timescale 1ns / 1ps

module dataflow_tb();
wire s, c_out;
    reg a,b,c_in;
    full_adder_dataflow FA1(s,c_out,a, b, c_in);
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
