`timescale 1ns / 1ps
module pattern_3();
integer i,j;
integer n=1;
initial begin
for(i=0;i<=4;i=i+1)begin
for(j=0;j<=i;j=j+1)begin
$write("%d",n+i);
end
$display("");
end
end
endmodule
