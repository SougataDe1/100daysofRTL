`timescale 1ns / 1ps
module n_bit_up_down_counter_tb();
//parameter N=15;
//parameter WIDTH=4;
wire [3:0]q;
reg rst_n;
reg clk;
reg mod;
n_bit_up_down_counter uut(.q(q),.rst_n(rst_n),.clk(clk),.mod(mod));
initial
begin
rst_n=0;
clk=0;
mod=0;
#10
rst_n=1;
mod=0;
#100
mod=1;
#100
rst_n=0; 
mod =0;
#50;
rst_n=1;
end
always #10 clk=~clk;
initial
begin
$monitor("q=%0b,mod=%0b",q,mod);
#2000 $finish();
end
endmodule
