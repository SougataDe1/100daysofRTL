`timescale 1ns / 1ps

module behavioural_modelling(sum,carry, a,b);
    output reg sum,carry;
    input a,b;
    always @(*)
    begin
    sum=a^b;
    carry=a&b;
    end
    
endmodule

//test bench
`timescale 1ns / 1ps

module behavioural_tb( );
wire sum,carry;
reg a,b;
behavioural_modelling ha1(sum,carry,a,b);
initial
begin
a=0;
b=0;
#1200 $finish();
end
always #50 a=~a;
always #100 b=~b;
endmodule
