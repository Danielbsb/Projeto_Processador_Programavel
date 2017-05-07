`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 15:47:53
// Design Name: 
// Module Name: IR
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


module IR(
    input logic clk,
    input logic [15:0] data, //data que vem do I
    input logic ld, //IR_ld
    output logic [15:0] out //saida (IR_out)
    );
    
    always_ff @(posedge clk)
        if(ld) out <= data;
    
endmodule
