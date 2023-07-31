`timescale 1ns / 1ps
module gray2binary_tb();
wire [3:0]binary;
reg [3:0]gray;
gray2binary dut(binary,gray);
initial
begin
gray=4'b0000;
#200
$finish();
end
always #10 gray[0]=~gray[0];
always #20 gray[1]=~gray[1];
always #40 gray[2]=~gray[2];
always #80 gray[3]=~gray[3];
endmodule
