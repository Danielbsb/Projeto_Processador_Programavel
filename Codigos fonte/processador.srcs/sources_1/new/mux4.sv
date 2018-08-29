`timescale 1ns / 1ps

module mux4(
    input logic [15:0] d0, //ALU_out
    input logic [15:0] d1, //D_R_data
    input logic [15:0] d2, //RF_W_data
    input logic [15:0] d3, //Input
    input logic s1, //RF_s1
    input logic s0, //RF_s0
    output logic [15:0] out //W_data_in
    );
    
    assign out = s1 ? (s0 ? d3 : d2) : (s0 ? d1 : d0);
    
endmodule
