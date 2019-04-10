module LSFR(output logic [15:0]Q, input logic clk, input logic reset);
    always_ff @(posedge clk) begin
        if(reset)
            Q <= 16'b1111111111111111;
        else
            Q <= {Q[14], Q[13], Q[12], Q[11], Q[10], Q[9], Q[8], Q[7], Q[6], Q[5], Q[4], Q[3], Q[2], Q[1], Q[0], (Q[15] ^ Q[14] ^ Q[12] ^ Q[3])};
    end
endmodule