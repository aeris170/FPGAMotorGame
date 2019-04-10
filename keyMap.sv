module keyMap(output logic [3:0] mappedMovement, input logic [3:0] movement);
    always_comb begin
        case(movement)
            4'b0000:mappedMovement = 4'b0000;
            4'b0001:mappedMovement = 4'b1111;
            4'b0010:mappedMovement = 4'b1110;
            4'b0011:mappedMovement = 4'b1101;
            4'b0100:mappedMovement = 4'b1100;
            4'b0101:mappedMovement = 4'b1011;
            4'b0110:mappedMovement = 4'b1010;
            4'b0111:mappedMovement = 4'b1001;
            4'b1000:mappedMovement = 4'b1000;
            4'b1001:mappedMovement = 4'b0111;
            4'b1010:mappedMovement = 4'b0110;
            4'b1011:mappedMovement = 4'b0101;
            4'b1100:mappedMovement = 4'b0100;
            4'b1101:mappedMovement = 4'b0011;
            4'b1110:mappedMovement = 4'b0010;
            4'b1111:mappedMovement = 4'b0001;
        endcase
    end
endmodule