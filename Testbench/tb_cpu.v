`timescale 1ns / 1ps

module tb_cpu;

reg clk;

cpu_top uut(

.clk(clk)

);

always #5 clk = ~clk;

initial begin

clk = 0;

#200;

$finish;

end

endmodule
