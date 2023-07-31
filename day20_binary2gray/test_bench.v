`timescale 1ns / 1ps
module binary2gray_converter_tb();
wire [3:0]gray;
reg [3:0]binary;
binary2gray dut(gray,binary);
initial
begin
binary=4'b0000;
#200
$finish();
end
always
begin
binary = $random;
#20;
end
//always #10 binary[0]=~binary[0];
//always #20 binary[1]=~binary[1];
//always #40 binary[2]=~binary[2];
//always #80 binary[3]=~binary[3];

endmodule
