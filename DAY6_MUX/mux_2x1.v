`timescale 1ns / 1ps

/*module mux_2x1(y,i0,i1,s );
output y;
input i0,i1,s;
	assign y = (~s&i0)|(s&i1);
endmodule*/
module mux_2x1(y,i0,i1,s );
output reg y;
input i0,i1,s;
always @(*)
begin
if(s==1)
y=i1;
else
y=i0;
end
endmodule
