`timescale 1ns / 1ps

module tb_top;

reg clk;
reg reset;
reg start;

top uut(

.clk(clk),
.reset(reset),
.start(start)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
start = 0;

#10;

reset = 0;

#10;

start = 1;

#10;

start = 0;

#150;

$finish;

end

endmodule
