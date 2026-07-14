`timescale 1ns / 1ps

module tb_alu_control;

reg [1:0] ALUOp;
reg [2:0] funct3;
reg [6:0] funct7;

wire [3:0] ALUControl;

alu_control uut(

.ALUOp(ALUOp),
.funct3(funct3),
.funct7(funct7),

.ALUControl(ALUControl)

);

initial begin

// ADD
ALUOp = 2'b10;
funct3 = 3'b000;
funct7 = 7'b0000000;
#10;

// SUB
funct7 = 7'b0100000;
#10;

// AND
funct3 = 3'b111;
funct7 = 7'b0000000;
#10;

// OR
funct3 = 3'b110;
#10;

// XOR
funct3 = 3'b100;
#10;

// SLT
funct3 = 3'b010;
#10;

// LOAD
ALUOp = 2'b00;
#10;

// BRANCH
ALUOp = 2'b01;
#10;

$finish;

end

endmodule
