`timescale 1ns / 1ps
module structural_adder_sub_tb();
wire [3:0]S;
wire C4;
reg [3:0]A,B;
reg M;
four_bit_adder_sub dut(S, C4, A, B, M);
initial
begin
A= 4'b1111;
B= 4'b1111;
M= 1'b1;
#20;
A= 4'b1110;
B= 4'b1001;
M= 1'b1;
#20;
A= 4'b0111;
B= 4'b1101;
M= 1'b1;
#20;
A= 4'b1111;
B= 4'b1110;
M= 1'b0;
#20;
A= 4'b1110;
B= 4'b1101;
M= 1'b0;
#20;
A= 4'b1111;
B= 4'b1001;
M= 1'b0;
#20;
$finish(1000);
end
endmodule
