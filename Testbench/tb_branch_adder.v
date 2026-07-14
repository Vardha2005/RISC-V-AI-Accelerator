`timescale 1ns / 1ps

module tb_branch_adder;

reg [31:0] current_pc;
reg [31:0] immediate;

wire [31:0] branch_address;

branch_adder uut(

.current_pc(current_pc),

.immediate(immediate),

.branch_address(branch_address)

);

initial begin

// Example 1
current_pc = 20;
immediate = 16;

#10;

// Example 2
current_pc = 100;
immediate = 32'hFFFFFFF8;

#10;

// Example 3
current_pc = 200;
immediate = 32'd32;

#10;

$finish;

end

endmodule
