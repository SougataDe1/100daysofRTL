`timescale 1ns / 1ps
module piso(q3,din,clk,rst,load);
output q3;
input [3:0]din;
input clk;
input rst;
input load;
wire s1,s2,s3;
wire [2:0]q;
assign s1= ((q[0] & load)|(~load & din[1]));
assign s2= ((q[1] & load)|(~load & din[2]));
assign s3= ((q[2] & load)|(~load & din[3]));
d_ff d1(q[0],din[0],clk,rst);
d_ff d2(q[1],s1,clk,rst);
d_ff d3(q[2],s2,clk,rst);
d_ff d4(q3,s3,clk,rst);
endmodule

module d_ff(q,din,clk,rst);
output reg q;

input din,clk,rst;
always @(posedge clk)
if(rst)
begin
q<=0;
end
else
begin
q<=din;
end

endmodule
