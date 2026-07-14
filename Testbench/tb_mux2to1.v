`timescale 1ns / 1ps

module tb_mux2to1;

reg [31:0] input0;
reg [31:0] input1;

reg select;

wire [31:0] out;

mux2to1 uut(

.input0(input0),

.input1(input1),

.select(select),

.out(out)

);

initial begin

input0 = 32'd25;

input1 = 32'd100;

select = 0;

#10;

select = 1;

#10;

input0 = 32'd50;

input1 = 32'd200;

select = 0;

#10;

select = 1;

#10;

$finish;

end

endmodule
