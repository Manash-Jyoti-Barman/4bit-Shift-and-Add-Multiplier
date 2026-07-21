module shiftregQ(
    input clk,
    input load,
    input shift,
    input [3:0] qin,
    input serial_in,
    output reg [3:0] out 
    );
    
    always @(posedge clk) begin
        if(load) 
            out <= qin;
        else if(shift) begin
            out <= {serial_in, out[3:1]};
        end
    end
endmodule