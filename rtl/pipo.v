module pipo(
    input clk,
    input load,
    input [3:0] in,
    output reg [3:0] out
);
    always @(posedge clk) begin
        if (load) out <= in;
    end
endmodule    

    