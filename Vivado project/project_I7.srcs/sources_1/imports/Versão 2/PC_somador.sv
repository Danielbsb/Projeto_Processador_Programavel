`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 17:02:03
// Design Name: 
// Module Name: PC_somador
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


module PC_somador(
    input logic [15:0] a, //IR_out
    input logic [15:0] b, //PC_out
    output logic [15:0] out //PC_load
    );
    
    assign out = a + b - 1;
    
endmodule
