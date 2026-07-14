`timescale 1ns / 1ps

module tb_writeback_mux;

reg [31:0] alu_result;
reg [31:0] memory_data;

reg MemtoReg;

wire [31:0] write_back_data;

writeback_mux uut(

.alu_result(alu_result),
.memory_data(memory_data),

.MemtoReg(MemtoReg),

.write_back_data(write_back_data)

);

initial begin

alu_result = 32'd50;
memory_data = 32'd100;

MemtoReg = 0;

#10;

MemtoReg = 1;

#10;

alu_result = 32'd200;
memory_data = 32'd500;

MemtoReg = 0;

#10;

MemtoReg = 1;

#10;

$finish;

end

endmodule
