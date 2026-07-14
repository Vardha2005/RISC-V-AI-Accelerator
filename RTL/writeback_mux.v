`timescale 1ns / 1ps

module writeback_mux(

    input [31:0] alu_result,
    input [31:0] memory_data,

    input MemtoReg,

    output [31:0] write_back_data

);

assign write_back_data =
        (MemtoReg) ? memory_data : alu_result;

endmodule
