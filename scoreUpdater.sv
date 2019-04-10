module scoreUpdater(output logic [3:0] score, input logic clk, isPressed, reset, result);
    always_ff @(posedge clk) begin
        if(reset) 
            score <= 4'b0000;
        else if(isPressed == 1 && result == 1 && score < 4'b1001) 
            score <= score + 1;
        else if(isPressed == 1 && result == 0 && score > 4'b0000)
            score <= score - 1;
    end
endmodule