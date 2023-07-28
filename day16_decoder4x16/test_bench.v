`timescale 1ns / 1ps

module decoder4x16_tb();
wire [15:0]y;
reg en;
reg [3:0]i;
decoder4x16_using_2x4 dut(y,en,i);
initial
begin
$monitor("y=%b, en=%b,i=%b" ,y,en,i);
en=1'b1;
#10
i=4'b0000;
#10
i=4'b0001;
#10
i=4'b0010;
#10
i=4'b0011;
#10
i=4'b0100;
#10
i=4'b0101;
#10
i=4'b0110;
#10
i=4'b0111;
#10
i=4'b1000;
#10
i=4'b1001;
#10
i=4'b1010;
#10
i=4'b1011;
#10
i=4'b1100;
#10
i=4'b1101;
#10
i=4'b1110;
#10
i=4'b1111;
#10;
$finish(200);
end
endmodule
