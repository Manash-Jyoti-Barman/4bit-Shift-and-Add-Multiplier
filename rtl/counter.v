module counter(
    input clk,
    input rst,
    input decr,
    output reg [1:0] count
);
    always @(posedge clk) begin
        if(rst) count <= 3'd3;
        else if(decr) count <= count - 1;
    end
endmodule