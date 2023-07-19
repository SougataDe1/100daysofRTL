`timescale 1ns / 1ps


module parallel_adder_tb();
wire [3:0]sum;
wire c_out;
reg [3:0]a,b;
reg c_in;
 parallel_adder pa4(sum,c_out,a,b,c_in);
 initial
 begin
 a=4'b0000;
 b=4'b0000;
 c_in=1'b0;
 end
 always #10 a[0]=~a[0];
 always #20 a[1]=~a[1];
 always #40 a[2]=~a[2];
always #80 a[3]=~a[3];
always #160 b[0]=~b[0];
 always #320 b[1]=~b[1];
 always #640 b[2]=~b[2];
always #1280 b[3]=~b[3];
always #5 c_in=~c_in;
endmodule
