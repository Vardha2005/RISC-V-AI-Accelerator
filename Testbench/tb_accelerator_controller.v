`timescale 1ns / 1ps

module tb_accelerator_controller;

reg clk;
reg reset;
reg start;

wire busy;
wire done;

accelerator_controller uut(

.clk(clk),
.reset(reset),
.start(start),

.busy(busy),
.done(done)

);

always #5 clk = ~clk;

initial begin

clk = 0;

reset = 1;

start = 0;

#10;

reset = 0;

start = 1;

#10;

start = 0;

#100;

$finish;

end

endmodule
