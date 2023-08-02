`timescale 1ns / 1ps
module encoder_8x3(b_out,i,en);
output reg[2:0]b_out;
input [7:0]i;
input en;
always @(*)
begin
if(en==1)
begin
b_out=3'bZZZ;
end
else
begin
casex(i)//use casex for don't care value
8'b00000001: b_out=3'b000;
8'b0000001X: b_out=3'b001;
8'b000001XX: b_out=3'b010;
8'b00001XXX: b_out=3'b011;
8'b0001XXXX: b_out=3'b100;
8'b001XXXXX: b_out=3'b101;
8'b01XXXXXX: b_out=3'b110;
8'b1XXXXXXX: b_out=3'b111;
endcase
end
end
endmodule
