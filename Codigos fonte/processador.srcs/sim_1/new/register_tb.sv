`timescale 1ns / 1ps

module register_tb();

    logic rst;
    logic [15:0] in;
    logic ld;
    logic [15:0] out;
    
    register dut(rst, in, ld, out);
    
    initial begin
        rst = 'b1; ld = 'b0; in = 16'd927; #10;
        rst = 'b0; ld = 'b1; #10;
        rst = 'b1; ld = 'b1; #10;
        rst = 'b0; #10;
        ld = 'b0; #10;
    end

endmodule
