`timescale 1ns / 1ps

module tb_data_memory;

reg clk;
reg MemRead;
reg MemWrite;

reg [31:0] address;
reg [31:0] write_data;

wire [31:0] read_data;

data_memory uut(

.clk(clk),

.MemRead(MemRead),

.MemWrite(MemWrite),

.address(address),

.write_data(write_data),

.read_data(read_data)

);

always #5 clk = ~clk;

initial begin

clk = 0;

MemRead = 0;
MemWrite = 1;

address = 8;
write_data = 32'd123;

#10;

MemWrite = 0;
MemRead = 1;

#10;

address = 12;

#10;

$finish;

end

endmodule
