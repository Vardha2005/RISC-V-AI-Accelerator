`timescale 1ns / 1ps

module processing_element(

    input clk,
    input reset,

    input [7:0] a_in,
    input [7:0] b_in,

    input [31:0] sum_in,

    output reg [7:0] a_out,
    output reg [7:0] b_out,

    output reg [31:0] sum_out

);

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin

        a_out <= 0;
        b_out <= 0;
        sum_out <= 0;

    end

    else

    begin

        a_out <= a_in;

        b_out <= b_in;

        sum_out <= sum_in + (a_in * b_in);

    end

end

endmodule
