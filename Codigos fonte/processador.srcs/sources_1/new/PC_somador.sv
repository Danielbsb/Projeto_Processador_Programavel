`timescale 1ns / 1ps

module PC_somador(
    input logic [7:0] a, //IR_out
    input logic [7:0] b, //PC_out
    output logic [7:0] out //PC_load
    );
    logic [7:0] cmp2;
    always_comb
        if(a[7])
           cmp2 <= b - ~a - 1;
        else
           cmp2 <= a + b;
    assign out = cmp2 - 1; 
endmodule
