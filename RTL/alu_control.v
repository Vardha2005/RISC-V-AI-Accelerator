`timescale 1ns / 1ps

module alu_control(

    input [1:0] ALUOp,
    input [2:0] funct3,
    input [6:0] funct7,

    output reg [3:0] ALUControl

);

always @(*) begin

    case(ALUOp)

        // Load / Store
        2'b00:
            ALUControl = 4'b0000;

        // Branch
        2'b01:
            ALUControl = 4'b0001;

        // R-Type
        2'b10:
        begin

            case({funct7,funct3})

                10'b0000000000:
                    ALUControl = 4'b0000;

                10'b0100000000:
                    ALUControl = 4'b0001;

                10'b0000000111:
                    ALUControl = 4'b0010;

                10'b0000000110:
                    ALUControl = 4'b0011;

                10'b0000000100:
                    ALUControl = 4'b0100;

                10'b0000000010:
                    ALUControl = 4'b0101;

                default:
                    ALUControl = 4'b0000;

            endcase

        end

        // ADDI
        2'b11:
            ALUControl = 4'b0000;

        default:
            ALUControl = 4'b0000;

    endcase

end

endmodule
