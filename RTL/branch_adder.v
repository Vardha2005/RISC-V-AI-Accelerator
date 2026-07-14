`timescale 1ns / 1ps

module branch_adder(

    input [31:0] current_pc,
    input [31:0] immediate,

    output [31:0] branch_address

);

assign branch_address = current_pc + immediate;

endmodule
