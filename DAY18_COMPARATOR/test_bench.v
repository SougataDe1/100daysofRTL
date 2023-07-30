`timescale 1ns / 1ps
module comparator_tb();
wire  equal,greater,less;
reg [1:0]a,b;
comparator dut(equal,greater,less,a,b);
initial
begin
a=0;
b=0;
#10;
end
always
begin
a = $random;
b = $random;
#50;
end
endmodule
