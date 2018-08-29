`timescale 1ns / 1ps

module register#(parameter M=16)(
    input logic rst,
    input logic [M-1:0] in,
    input logic ld,
    output logic [M-1:0] out
    );
    
    always_comb
    begin
        if(rst)     out <= 16'b0;
        else if(ld) out <= in;
    end
    
endmodule