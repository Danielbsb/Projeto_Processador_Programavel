`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2017 10:41:40 PM
// Design Name: 
// Module Name: Input
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


module Output_register(
    input logic [15:0] in,
    input logic OutRed_ld,
    output logic [15:0] out
    );
    
    logic [15:0] regis;
    
    assign regis=in;
    
    always_comb
        if(OutRed_ld) out <= regis;
    
endmodule
