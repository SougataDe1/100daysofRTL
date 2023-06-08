`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2023 20:46:45
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(s,c_out,a, b, c_in);
    output reg s, c_out;
    input a,b,c_in;
    
    always @(*)
    begin;
    s = a^b^c_in;
    c_out = (a&b) | (b&c_in) | (a&c_in);
    end
endmodule
