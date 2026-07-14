`timescale 1ns / 1ps

module accelerator_controller(

    input clk,
    input reset,
    input start,

    output reg busy,
    output reg done

);

reg [3:0] counter;

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin

        busy <= 0;
        done <= 0;
        counter <= 0;

    end

    else
    begin

        if(start && !busy)
        begin

            busy <= 1;
            done <= 0;
            counter <= 0;

        end

        else if(busy)
        begin

            counter <= counter + 1;

            if(counter == 4'd8)
            begin

                busy <= 0;
                done <= 1;

            end

        end

        else
        begin

            done <= 0;

        end

    end

end

endmodule
