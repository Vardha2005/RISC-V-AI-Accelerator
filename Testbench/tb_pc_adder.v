`timescale 1ns / 1ps

module tb_pc_adder;

reg [31:0] current_pc;

wire [31:0] next_pc;

pc_adder uut(

.current_pc(current_pc),

.next_pc(next_pc)

);

initial begin

current_pc = 0;
#10;

current_pc = 4;
#10;

current_pc = 8;
#10;

current_pc = 100;
#10;

$finish;

end

endmodule
