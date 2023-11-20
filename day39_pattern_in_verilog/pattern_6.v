`timescale 1ns / 1ps

module pattern_4();
integer i,j;
integer n;
initial
begin
n = 1;
for(i=1;i<10;i=i+1)
begin
for(j=1;j<=i;j=j+1)
begin
$write("%0d\t",n);
n=n+1;
end
$display("");
end
end
endmodule
