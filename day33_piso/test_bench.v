`timescale 1ns / 1ps
module piso_tb();
wire q3;
reg [3:0]din;
reg clk,rst,load;
piso dut(.q3(q3),.din(din),.clk(clk),.rst(rst),.load(load));
initial
begin
load=0;
rst = 1;
clk = 0;
#20 rst =0;
din=4'b0100;
#340 din=4'b1101;
#160 din =4'b0110;
#860 $finish();
end
always #20 clk=~clk;
always #140 load = ~load;

endmodule
