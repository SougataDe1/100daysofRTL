`timescale 1ns / 1ps

module full_sub_tb();
wire diff,borrow;
reg a,b,c;
full_sub_structural FS(diff,borrow,a,b,c);
initial
begin
a=0;
b=0;
c=0;
#1200 $finish();
end

always #50a=~a;
always #100b=~b;
always #200c=~c;
endmodule
