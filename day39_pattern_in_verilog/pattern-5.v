`timescale 1ns / 1ps

module pattern_5( );
integer i,j;
initial
begin
for(i=1;i<10;i=i+1)
begin
for(j=1;j<=i;j=j+1)
begin
$write("*");
end
$display("");
end
end
endmodule
