module pseudoRandomNumberGenerator(output logic [3:0] movement, input logic clk, reset);
    logic [15:0] Q;
    LSFR random1(Q, clk, reset);
    assign movement = Q[15:12];
endmodule