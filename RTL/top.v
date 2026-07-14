`timescale 1ns / 1ps

module top(

    input clk,
    input reset,
    input start

);

//----------------------------------
// CPU
//----------------------------------

cpu_top CPU(

.clk(clk)

);

//----------------------------------
// Accelerator Controller
//----------------------------------

wire busy;
wire done;

accelerator_controller CTRL(

.clk(clk),
.reset(reset),
.start(start),

.busy(busy),
.done(done)

);

//----------------------------------
// Example Inputs to AI Accelerator
//----------------------------------

wire [31:0] C0;
wire [31:0] C1;
wire [31:0] C2;
wire [31:0] C3;

systolic_array SA(

.clk(clk),
.reset(reset),

.A0(8'd2),
.A1(8'd4),
.A2(8'd6),
.A3(8'd8),

.B0(8'd1),
.B1(8'd3),
.B2(8'd5),
.B3(8'd7),

.C0(C0),
.C1(C1),
.C2(C2),
.C3(C3)

);

endmodule
