`timescale 1ns / 1ps

module hs_tb();
wire diff,borrow;
reg a,b;
half_sub_structural hs1(diff,borrow,a,b);
initial
begin
a=0;
b=0;
end
always #50 a=~a;
always #100 b=~b;

endmodule
