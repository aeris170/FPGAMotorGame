module FSMKeypadStartFrequency(output logic outputLogic, input logic inputLogic, clk);
    logic valve = 0;
    always_ff @(posedge clk) begin
        if(valve == 0 && inputLogic == 0) begin
            valve <= 0;
            outputLogic <= 0;
        end else if(valve == 0 && inputLogic == 1) begin
            valve <= 1;
            outputLogic <= 1;
        end else if(valve == 1 && inputLogic == 0) begin
            valve <= 0;
            outputLogic <= 0;
        end else begin
            valve <= 1;
            outputLogic <= 0;
        end
    end
endmodule