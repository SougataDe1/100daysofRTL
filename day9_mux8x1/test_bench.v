`timescale 1ns / 1ps
module mux8x1_tb();
wire y;
reg [2:0]s;
reg [7:0]i;
mux8x1 MX(y,s,i);
initial
begin
s=0;
i=0;
#5 i=8'b11010110;

#5 s=3'b000;
#5 s=3'b001;
#5 s=3'b010;
#5 s=3'b011;
#5 s=3'b100;
#5 s=3'b101;
#5 s=3'b110;
#5 s=3'b111;
#15 $finish();
end
endmodule
