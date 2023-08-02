`timescale 1ns / 1ps
module encode8x3_tb();
wire [2:0]b_out;
reg [7:0]i;
reg en;
encoder_8x3 dut(b_out,i,en);
initial
begin
en=0;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
i=$random;
#20;
$finish(200);
end
endmodule
