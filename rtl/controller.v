module controller(clk, start, checkq0, check_count, loadA, clrA, loadB, loadQ, clr_count, decr, shift, done);
    input clk, start, checkq0, check_count;
    output reg loadA, clrA, loadB, loadQ, clr_count, decr, shift, done;
    
    reg [2:0] state;
    
    localparam S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101; 
    
    always @(posedge clk) begin
        case(state)
            S0: if (start) state <= S1;
            S1: state <= S2;
            S2: begin
                    if(checkq0) state <= S3;
                    else state <= S4;
                end
            S3: state <= S4;
            S4: begin
                    if(check_count == 1'b1) state <= S5;
                    else state <= S2;
                end
            S5: state <= S0;
            default state <= S0;
        endcase
    end
    
    always @(state) begin
        case(state)
            S0: begin
                    loadA = 1'b0; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                    clr_count = 1'b0; decr = 1'b0; shift = 1'b0; done = 1'b0;
                end
            S1: begin
                    loadA = 1'b0; clrA = 1'b1; loadB = 1'b1; loadQ = 1'b1;
                    clr_count = 1'b1; decr = 1'b0; shift = 1'b0; done = 1'b0;
                end
            S2: begin
                    loadA = 1'b0; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                    clr_count = 1'b0; decr = 1'b0; shift = 1'b0; done = 1'b0;
                end
            S3: begin
                    loadA = 1'b1; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                    clr_count = 1'b0; decr = 1'b0; shift = 1'b0; done = 1'b0;
                end
            S4: begin
                    loadA = 1'b0; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                    clr_count = 1'b0; decr = 1'b1; shift = 1'b1; done = 1'b0;
                end
            S5: begin
                    loadA = 1'b0; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                    clr_count = 1'b0; decr = 1'b0; shift = 1'b0; done = 1'b1;
                end
            default:begin
                        loadA = 1'b0; clrA = 1'b0; loadB = 1'b0; loadQ = 1'b0;
                        clr_count = 1'b0; decr = 1'b0; shift = 1'b0; done = 1'b0;
                    end
        endcase
    end
endmodule