`timescale 1ns / 1ps
module bcd_7_segment_tb();
wire [6:0] seg;
reg [3:0] bcd;
bcd_7_segment dut (.bcd(bcd),.seg(seg));
initial begin
bcd = 4'b0000;
#100 bcd = 4'b0001;
#100 bcd = 4'b0010;
#100 bcd = 4'b0011;
#100 bcd = 4'b0100;
#100 bcd = 4'b0101;
#100 bcd = 4'b0110;
#100 bcd = 4'b0111;
#100 bcd = 4'b1000;
#100 bcd = 4'b1001;
#1000 $finish;
end
endmodule
