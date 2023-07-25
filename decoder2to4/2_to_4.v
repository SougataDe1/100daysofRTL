`timescale 1ns / 1ps

module decoder_2to4(
    output [3:0] y,
    input[1:0] b
    );
    
    assign y[0]= (~b[0]) & (~b[1]);
    assign y[1]= (b[0]) & (~b[1]);
    assign y[2]= (~b[0]) & (b[1]);
    assign y[3]= (b[0]) & (b[1]);
endmodule
