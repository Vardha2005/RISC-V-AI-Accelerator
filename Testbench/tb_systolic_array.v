`timescale 1ns / 1ps

module tb_systolic_array;

reg clk;
reg reset;

reg [7:0] A0,A1,A2,A3;
reg [7:0] B0,B1,B2,B3;

wire [31:0] C0,C1,C2,C3;

systolic_array uut(

.clk(clk),
.reset(reset),

.A0(A0),
.A1(A1),
.A2(A2),
.A3(A3),

.B0(B0),
.B1(B1),
.B2(B2),
.B3(B3),

.C0(C0),
.C1(C1),
.C2(C2),
.C3(C3)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;

#10;

reset = 0;

A0 = 2;
A1 = 4;
A2 = 6;
A3 = 8;

B0 = 1;
B1 = 3;
B2 = 5;
B3 = 7;

#20;

$finish;

end

endmodule
