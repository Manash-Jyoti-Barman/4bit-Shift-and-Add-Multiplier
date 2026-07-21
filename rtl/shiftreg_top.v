module shiftreg_top(
    input clk,
    input rst,
    input load,
    input shift,
    input [8:0] in,
    output [8:0] out
    );
    wire w1;
    shiftregA REGA(clk, rst, load, shift, in[8:4], w1, out[8:4]);
    shiftregQ REGQ(clk, rst, load, shift, in[3:0], w1,out[3:0]);
endmodule
