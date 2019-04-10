module comparator(output logic result, input logic [3:0] correct, movement);
    assign result = (correct[0] ~^ movement[0]) & (correct[1] ~^ movement[1]) & (correct[2] ~^ movement[2]) & (correct[3] ~^ movement[3]);
endmodule