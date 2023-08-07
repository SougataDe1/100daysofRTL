`timescale 1ns / 1ps
module up_down_counter_tb();
wire [3:0]q;
reg rst,clk,mod;
up_down_counter dut(.q(q),.rst(rst),.clk(clk),.mod(mod));
initial
begin
rst=1;
clk=0;
mod=0;
#20
rst=0;
mod=0;
#200
mod=1;
#400 $finish();
end
always #10 clk=~clk;
endmodule
