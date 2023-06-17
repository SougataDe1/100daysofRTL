`timescale 1ns / 1ps

module hs_behavioural(diff,borrow,a,b);

output reg diff,borrow;
input a,b;
always @(*)
begin
diff=a^b;
borrow=~a&b;
end
endmodule

///////////////test bench////////////

`timescale 1ns / 1ps
module behavioural_tb();
wire diff,borrow;
reg a,b;
hs_behavioural hs1(diff,borrow,a,b);
initial
begin
a=0;
b=0;
end
always #50 a=~a;
always #100 b=~b;

endmodule
