`timescale 1ns / 1ps

module IR(
    input logic clk,
    input logic [15:0] data, //data que vem do I
    input logic ld, //IR_ld
    output logic [15:0] out //saida (IR_out)
    );
    
    always_ff @(posedge clk)
        if(ld) out <= data;
    
endmodule
