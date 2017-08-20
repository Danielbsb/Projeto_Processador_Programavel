`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2016 12:57:58
// Design Name: 
// Module Name: leds_out
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


module leds_out(
    input logic clk,
    input  logic leds_en,
    input logic leds_clr,
    input logic [15:0] ALU_res,
    output logic [15:0] leds
    );
    
    always_ff @(posedge clk)
            if(leds_clr)     leds <= 'b0;
            else if(leds_en) leds <= ALU_res;
            
endmodule
