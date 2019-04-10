module twoBitArrayReverser(output logic [1:0] reversed, input logic [1:0] inputArray);
    assign reversed[1] = inputArray[0];
    assign reversed[0] = inputArray[1];
endmodule