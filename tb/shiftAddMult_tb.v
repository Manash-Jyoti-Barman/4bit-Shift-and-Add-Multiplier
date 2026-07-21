`timescale 1ns / 1ps
module shiftAddMult_tb;
    reg clk, start;
    reg [3:0] ain, bin;
    wire [7:0] product;
    wire done;
    
    shiftAddMult DUT(clk, start, ain, bin, product, done);
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        start = 1'b0;
        
        #100;
        ain = 4'd4; bin = 4'd3;
        start = 1'b1;
        #20 start = 1'b0;
        
        wait(done);
        
        #20;
        ain = 4'd7; bin = 4'd7;
        #20 start = 1'b1;
        #20 start = 1'b0;
        
        wait(done);
        
        #20;
        ain = 4'd11; bin = 4'd12;
        #20 start = 1'b1;
        #20 start = 1'b0;
        
        wait(done);
        
        #10;
        $finish;
    end
endmodule
