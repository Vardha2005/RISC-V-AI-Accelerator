`timescale 1ns / 1ps

module systolic_array(

    input clk,
    input reset,

    input [7:0] A0,
    input [7:0] A1,
    input [7:0] A2,
    input [7:0] A3,

    input [7:0] B0,
    input [7:0] B1,
    input [7:0] B2,
    input [7:0] B3,

    output [31:0] C0,
    output [31:0] C1,
    output [31:0] C2,
    output [31:0] C3

);

// Simplified implementation
// Four Processing Elements working in parallel

wire [7:0] a_out0,a_out1,a_out2,a_out3;
wire [7:0] b_out0,b_out1,b_out2,b_out3;

processing_element PE0(

.clk(clk),
.reset(reset),

.a_in(A0),
.b_in(B0),

.sum_in(32'd0),

.a_out(a_out0),
.b_out(b_out0),

.sum_out(C0)

);

processing_element PE1(

.clk(clk),
.reset(reset),

.a_in(A1),
.b_in(B1),

.sum_in(32'd0),

.a_out(a_out1),
.b_out(b_out1),

.sum_out(C1)

);

processing_element PE2(

.clk(clk),
.reset(reset),

.a_in(A2),
.b_in(B2),

.sum_in(32'd0),

.a_out(a_out2),
.b_out(b_out2),

.sum_out(C2)

);

processing_element PE3(

.clk(clk),
.reset(reset),

.a_in(A3),
.b_in(B3),

.sum_in(32'd0),

.a_out(a_out3),
.b_out(b_out3),

.sum_out(C3)

);

endmodule
