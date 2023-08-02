`timescale 1ns / 1ps
module encoder_8x3_wo_priority(b_out,i,en);
output reg[2:0]b_out;
input [7:0]i;
input en;
always @(*)
begin
if(!en)
b_out=3'b000;
else
case(i)
8'b00000001: b_out=3'b000;
8'b00000010: b_out=3'b001;
8'b00000100: b_out=3'b010;
8'b00001000: b_out=3'b011;
8'b00010000: b_out=3'b100;
8'b00100000: b_out=3'b101;
8'b01000000: b_out=3'b110;
8'b10000000: b_out=3'b111;
endcase
end
endmodule
