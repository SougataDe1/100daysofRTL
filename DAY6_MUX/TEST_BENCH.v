`timescale 1ns / 1ps

module mux_2x1_tb( );
wire y;
reg i0,i1,s;

mux_2x1 m1 (y,i0,i1,s );
initial
begin
i0=0;
i1=0;
s=0;
#500 $finish();
end
always #10 s=~s;
always #20 i0=~i0;
always #40 i1=~i1;
endmodule
