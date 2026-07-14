`timescale 1ns / 1ps

module cpu_top(

    input clk

);

//-----------------------------
// Program Counter
//-----------------------------

wire [31:0] pc;
wire [31:0] next_pc;

program_counter PC(

.clk(clk),
.next_pc(next_pc),
.pc(pc)

);

//-----------------------------
// PC Adder
//-----------------------------

pc_adder PCADD(

.current_pc(pc),
.next_pc(next_pc)

);

//-----------------------------
// Instruction Memory
//-----------------------------

wire [31:0] instruction;

instruction_memory IM(

.address(pc),

.instruction(instruction)

);

//-----------------------------
// Register File
//-----------------------------

wire [31:0] read_data1;
wire [31:0] read_data2;

wire [31:0] write_back_data;

register_file RF(

.clk(clk),

.RegWrite(RegWrite),

.rs1(instruction[19:15]),
.rs2(instruction[24:20]),
.rd(instruction[11:7]),

.write_data(write_back_data),

.read_data1(read_data1),

.read_data2(read_data2)

);

//-----------------------------
// Immediate Generator
//-----------------------------

wire [31:0] immediate;

immediate_generator IG(

.instruction(instruction),

.immediate(immediate)

);

//-----------------------------
// Control Unit
//-----------------------------

wire RegWrite;
wire MemRead;
wire MemWrite;
wire MemtoReg;
wire ALUSrc;
wire Branch;
wire Jump;

wire [1:0] ALUOp;

control_unit CU(

.opcode(instruction[6:0]),

.RegWrite(RegWrite),

.MemRead(MemRead),

.MemWrite(MemWrite),

.MemtoReg(MemtoReg),

.ALUSrc(ALUSrc),

.Branch(Branch),

.Jump(Jump),

.ALUOp(ALUOp)

);

//-----------------------------
// ALU Control
//-----------------------------

wire [3:0] ALUControl;

alu_control ALC(

.ALUOp(ALUOp),

.funct3(instruction[14:12]),

.funct7(instruction[31:25]),

.ALUControl(ALUControl)

);

//-----------------------------
// ALU Operand MUX
//-----------------------------

wire [31:0] alu_input2;

mux2to1 ALUMUX(

.input0(read_data2),

.input1(immediate),

.select(ALUSrc),

.out(alu_input2)

);

//-----------------------------
// ALU
//-----------------------------

wire [31:0] alu_result;
wire zero;

alu ALU(

.A(read_data1),

.B(alu_input2),

.ALUControl(ALUControl),

.Result(alu_result),

.Zero(zero)

);

//-----------------------------
// Data Memory
//-----------------------------

wire [31:0] memory_data;

data_memory DM(

.clk(clk),

.MemRead(MemRead),

.MemWrite(MemWrite),

.address(alu_result),

.write_data(read_data2),

.read_data(memory_data)

);

//-----------------------------
// Write Back MUX
//-----------------------------

writeback_mux WBM(

.alu_result(alu_result),

.memory_data(memory_data),

.MemtoReg(MemtoReg),

.write_back_data(write_back_data)

);

endmodule
