`timescale 1ns / 1ps
module comparator(equal,greater,less,a,b);
output reg  equal,greater,less;
input [1:0]a,b;

always@(*) begin
equal=0;
greater=0;
less=0;
if(a==b) 
equal = 2'b01;
else if(a>b) 
greater = 2'b01;
else if(a<b) 
less = 2'b01;
end
endmodule
