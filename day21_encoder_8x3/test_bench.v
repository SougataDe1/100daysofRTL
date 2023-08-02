`timescale 1ns / 1ps
module encoder_8x3_tb();
wire [2:0]b_out;
reg [7:0]i;
reg en;
encoder_8x3_wo_priority dut(b_out,i,en);
initial
begin
en=1;
#10 
i=8'b10000000;
#10 
i=8'b01000000;
#10
i=8'b00100000;
#10
i=8'b00010000;
#10
i=8'b00001000;
#10
i=8'b00000100;
#10
i=8'b00000010;
#10
i=8'b00000001;

$finish(200);
end
endmodule
