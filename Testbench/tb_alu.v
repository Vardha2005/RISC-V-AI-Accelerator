`timescale 1ns / 1ps

module tb_alu;

reg [31:0] A;
reg [31:0] B;
reg [3:0] ALUControl;

wire [31:0] Result;
wire Zero;

alu uut(

.A(A),
.B(B),
.ALUControl(ALUControl),

.Result(Result),
.Zero(Zero)

);

initial begin

A = 15;
B = 5;

// ADD
ALUControl = 4'b0000;
#10;

// SUB
ALUControl = 4'b0001;
#10;

// AND
ALUControl = 4'b0010;
#10;

// OR
ALUControl = 4'b0011;
#10;

// XOR
ALUControl = 4'b0100;
#10;

// SLT
A = 2;
B = 5;
ALUControl = 4'b0101;
#10;

// Shift Left
A = 4;
B = 1;
ALUControl = 4'b0110;
#10;

// Shift Right
A = 8;
B = 1;
ALUControl = 4'b0111;
#10;

$finish;

end

endmodule
