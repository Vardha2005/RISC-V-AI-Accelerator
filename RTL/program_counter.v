`timescale 1ns / 1ps

module program_counter(
    input clk,
    input reset,
    input PCWrite,
    input [31:0] next_pc,
    output reg [31:0] pc
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        pc <= 32'd0;
    else if(PCWrite)
        pc <= next_pc;
end

endmodule
