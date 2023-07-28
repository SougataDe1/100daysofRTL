`timescale 1ns / 1ps

module decoder4x16_using_2x4(y,en,i);
output [15:0]y;
input en;
input [3:0]i;

wire [3:0]w;
decoder_2x4 D1(w,en,i[3:2]);
decoder_2x4 D2(y[3:0],w[0],i[1:0]);
decoder_2x4 D3(y[7:4],w[1],i[1:0]);
decoder_2x4 D4(y[11:8],w[2],i[1:0]);
decoder_2x4 D5(y[15:12],w[3],i[1:0]);
endmodule

module decoder_2x4(y,en,i);
output reg[3:0]y;
input en;
input [1:0]i;
always @(*)
begin
if(en)
case(i)
2'b00: y=4'b0001;
2'b01: y=4'b0010;
2'b10: y=4'b0100;
2'b11: y=4'b1000;
endcase
else
y=4'b0000;
end
endmodule
