`timescale 1ns / 1ps

module t_ff_tb();
wire q;
wire qb;
reg t,clk,rst;
t_ff T1(q,qb,t,clk,rst);
//t_ff dut(.q(q),.qb(qb),.t(t),.clk(clk),.rst(rst));
initial
begin
t=0;
rst=0;
clk=0;
#10 rst=1;
forever #5 clk=~clk;
$finish(100);
end
always #20 t=~t;

endmodule
