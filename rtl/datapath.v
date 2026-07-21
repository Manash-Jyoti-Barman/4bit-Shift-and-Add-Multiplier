module datapath(clk, ain, bin,loadA, clrA, loadB, loadQ, clr_count, decr, shift, checkq0, check_count, product);
    input clk, loadA, clrA, loadB, loadQ, clr_count, decr, shift;
    input [3:0] ain, bin;
    output checkq0, check_count;
    output [7:0] product;
    
    wire [3:0] bout, qout;
    wire [4:0] aout, sum;
    wire [1:0] count;
    wire w1;
       
    pipo REGB(clk,loadB, bin, bout);
    shiftregQ REGQ(clk, loadQ, shift, ain, w1, qout);
    shiftregA REGA(clk, clrA, loadA, shift, sum, w1, aout);
    alu ALU0(aout, {1'b0, bout}, sum);
    counter CTR(clk, clr_count, decr, count);
    
    assign checkq0 = (qout[0] == 1'b1);
    assign check_count = (count == 2'b0);
    
    assign product = {aout[3:0], qout};
endmodule