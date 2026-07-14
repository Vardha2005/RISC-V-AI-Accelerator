`timescale 1ns / 1ps

module tb_immediate_generator;

reg [31:0] instruction;

wire [31:0] immediate;

immediate_generator uut(

.instruction(instruction),

.immediate(immediate)

);

initial begin

// addi x1,x0,5

instruction = 32'h00500093;

#10;

// sw x3,0(x0)

instruction = 32'h00302023;

#10;

// beq

instruction = 32'h00000063;

#10;

$finish;

end

endmodule
