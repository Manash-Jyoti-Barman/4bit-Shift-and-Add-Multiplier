module alu(
    input [4:0] ain,
    input [4:0] bin,
    output [4:0] out
    );
    
    assign out = ain + bin;
endmodule
