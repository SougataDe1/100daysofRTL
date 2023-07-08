`timescale 1ns / 1ps

module mux_4x1_tb(  );
    wire y;
reg [3:0] i;
reg [1:0] s;
mux4x1 m(y,i,s);
initial
begin
/*i=4'b0101;
s=2'b00;
#15 s=2'b01;
#15 s=2'b10;
#15 s=2'b11;
#15 $finish();
*/
i[0]=1'b0;
i[1]=1'b0;
i[2]=1'b0;
i[3]=1'b0;
s[0]=1'b0;
s[1]=1'b0;
#320 $finish();
end

always #5s[0]=~s[0];
always #10s[1]=~s[1];
always #20i[0]=~i[0];
always #40i[1]=~i[1];
always #80i[2]=~i[2];
always #160i[3]=~i[3];

endmodule
