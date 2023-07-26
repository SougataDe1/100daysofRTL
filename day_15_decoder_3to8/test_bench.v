`timescale 1ns / 1ps
module decoder_3x8_tb();
wire [7:0]y;
reg en;
reg [2:0]i;
decoder_3x8 D(y,en,i);
initial
begin
$monitor("y=%b,i=%b,en=%b" ,y,i,en);
en=1'b1;
#10
i=3'b000;
#10
i=3'b001;
#10
i=3'b010;
#10
i=3'b011;
#10
i=3'b100;
#10
i=3'b101;
#10
i=3'b110;
#10
i=3'b111;
#10;
$finish(200);
end
endmodule
