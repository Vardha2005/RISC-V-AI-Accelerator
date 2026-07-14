`timescale 1ns / 1ps

module tb_control_unit;

reg [6:0] opcode;

wire RegWrite;
wire MemRead;
wire MemWrite;
wire MemtoReg;
wire ALUSrc;
wire Branch;
wire Jump;
wire [1:0] ALUOp;

control_unit uut(

.opcode(opcode),

.RegWrite(RegWrite),
.MemRead(MemRead),
.MemWrite(MemWrite),
.MemtoReg(MemtoReg),
.ALUSrc(ALUSrc),
.Branch(Branch),
.Jump(Jump),
.ALUOp(ALUOp)

);

initial begin

// R-Type
opcode = 7'b0110011;
#10;

// I-Type
opcode = 7'b0010011;
#10;

// Load
opcode = 7'b0000011;
#10;

// Store
opcode = 7'b0100011;
#10;

// Branch
opcode = 7'b1100011;
#10;

// Jump
opcode = 7'b1101111;
#10;

$finish;

end

endmodule
