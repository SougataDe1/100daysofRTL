`timescale 1ns / 1ps
module decoder_3x8(y,en,i);
output reg[7:0]y;
input en;
input [2:0]i;
//wire w1,w2,w3;
//        assign w1= ~i[2];
//        assign w2= ~i[1];
//        assign w3= ~i[0];
//        assign y[0]= w1&w2&w3;
//        assign y[1]= w1&w2&i[0];
//        assign y[2]= w1&i[1]&w3;
//        assign y[3]= w1&i[1]&i[0];
//        assign y[4]= i[2]&w2&w3;
//        assign y[5]= i[2]&w2&i[0];
//        assign y[6]= i[2]&i[1]&w3;
//        assign y[7]= i[2]&i[1]&i[0];

always @(*)
begin
if(en)
case(i)
 3'b000: y=8'b0000_0001;
 3'b001: y=8'b0000_0010;
 3'b010: y=8'b0000_0100;
 3'b011: y=8'b0000_1000;
 3'b100: y=8'b0001_0000;
 3'b101: y=8'b0010_0000;
 3'b110: y=8'b0100_0000;
 3'b111: y=8'b1000_0000; 
endcase
else
 y=8'bxxxx_xxxx;
end
endmodule
