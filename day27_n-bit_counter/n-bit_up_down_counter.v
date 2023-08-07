`timescale 1ns / 1ps
module n_bit_up_down_counter #(parameter N=15,parameter WIDTH=4)(q,rst_n,clk,mod);
output reg[WIDTH-1:0]q;
input rst_n;
input clk;
input mod;
always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
q<=0;
end
else
begin
if(mod==1)
    if(q==N-1)
        q<=0;
        else
        q<=q+1;
        
else
    if(q==0)
    q<=N-1;
    else
    q<=q-1;
end
end
endmodule
