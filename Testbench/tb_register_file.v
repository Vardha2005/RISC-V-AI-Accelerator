`timescale 1ns / 1ps

module tb_register_file;

reg clk;
reg RegWrite;

reg [4:0] rs1;
reg [4:0] rs2;
reg [4:0] rd;

reg [31:0] write_data;

wire [31:0] read_data1;
wire [31:0] read_data2;

register_file uut(

.clk(clk),
.RegWrite(RegWrite),

.rs1(rs1),
.rs2(rs2),

.rd(rd),

.write_data(write_data),

.read_data1(read_data1),
.read_data2(read_data2)

);

always #5 clk=~clk;

initial
begin

clk=0;

RegWrite=1;

rd=5;
write_data=32'd25;

rs1=5;
rs2=0;

#10;

rd=10;
write_data=32'd100;

rs1=10;

#10;

RegWrite=0;

rs2=5;

#10;

$finish;

end

endmodule
