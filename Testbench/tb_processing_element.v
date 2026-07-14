`timescale 1ns / 1ps

module tb_processing_element;

reg clk;
reg reset;

reg [7:0] a_in;
reg [7:0] b_in;

reg [31:0] sum_in;

wire [7:0] a_out;
wire [7:0] b_out;

wire [31:0] sum_out;

processing_element uut(

.clk(clk),
.reset(reset),

.a_in(a_in),
.b_in(b_in),

.sum_in(sum_in),

.a_out(a_out),
.b_out(b_out),

.sum_out(sum_out)

);

always #5 clk = ~clk;

initial begin

clk = 0;

reset = 1;

#10;

reset = 0;

a_in = 4;
b_in = 5;
sum_in = 10;

#10;

a_in = 2;
b_in = 6;
sum_in = sum_out;

#10;

$finish;

end

endmodule
