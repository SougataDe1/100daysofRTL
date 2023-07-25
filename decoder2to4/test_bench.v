`timescale 1ns / 1ps

module decoder_2to4_tb(

    );
    wire [3:0] y;
     reg [1:0] b;
     decoder_2to4 d1(y,b);
     initial
     begin
     b[0]=1'b0;
     b[1]=1'b0;
     #1200 $finish();
     end
//     always
//     begin
//     #50.5 b[0]=~b[0];
//          #100.456 b[1]=~b[1];
//     end
     
     always #50 b[0]=~b[0];
      always #100 b[1]=~b[1];
endmodule
