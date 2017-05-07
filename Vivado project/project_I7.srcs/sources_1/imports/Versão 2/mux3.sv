`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 17:10:44
// Design Name: 
// Module Name: mux3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux3(
    input logic [15:0] d0, //ALU_out
    input logic [15:0] d1, //D_R_data
    input logic [15:0] d2, //RF_W_data
    input logic s1, //RF_s1
    input logic s0, //RF_s0
    output logic [15:0] out //W_data_in
    );
    
    assign out = s1 ? (s0 ? 'b0 : d2) : (s0 ? d1 : d0);
    
endmodule
