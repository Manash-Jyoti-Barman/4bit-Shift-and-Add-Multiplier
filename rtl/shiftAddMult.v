module shiftAddMult(
    input clk,
    input start,
    input [3:0] ain,
    input [3:0] bin,
    output [7:0] product,
    output done
    );
    datapath DP(clk, ain, bin,loadA, clrA, loadB, loadQ, clr_count, decr, shift, checkq0, check_count, product);
    controller CON(clk, start, checkq0, check_count, loadA, clrA, loadB, loadQ, clr_count, decr, shift, done);
endmodule
