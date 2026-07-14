`timescale 1ns / 1ps

module tb_program_counter;

reg clk;
reg reset;
reg PCWrite;
reg [31:0] next_pc;

wire [31:0] pc;

program_counter uut(
    .clk(clk),
    .reset(reset),
    .PCWrite(PCWrite),
    .next_pc(next_pc),
    .pc(pc)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    PCWrite = 0;
    next_pc = 0;

    #10;
    reset = 0;

    PCWrite = 1;
    next_pc = 4;

    #10;
    next_pc = 8;

    #10;
    next_pc = 12;

    #10;
    PCWrite = 0;
    next_pc = 100;

    #10;
    PCWrite = 1;

    #10;

    $finish;
end

endmodule
