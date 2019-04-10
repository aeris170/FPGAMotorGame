module register(output logic [3:0] whatIsStored, input logic clk, load, input logic [3:0] toBeStored);
    always_ff @(posedge clk) begin
        if(load) begin
            whatIsStored <= toBeStored;
        end
    end
endmodule