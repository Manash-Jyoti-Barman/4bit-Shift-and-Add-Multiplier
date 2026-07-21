module shiftregA(
    input clk,
    input clr,
    input load,
    input shift,
    input [4:0] ain,
    output serial_out,
    output reg [4:0] out 
    );
    
    always @(posedge clk) begin
        if(clr) begin
            out <= 5'b0;
        end
        else if(load) 
            out <= ain;
        else if(shift) begin
            out <= {1'b0, out[4:1]};
        end
    end
    
    assign serial_out = out[0];
endmodule
