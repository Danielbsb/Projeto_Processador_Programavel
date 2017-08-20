`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 16:05:17
// Design Name: 
// Module Name: PC
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


module PC(
    input logic clk,
    input logic ld, //PC_ld
    input logic clr, //PC_clr
    input logic up, //PC_inc
    input logic [15:0] load, //sa�da do somador a+b-1
    output logic [15:0] out //addr do I (I_addr)
    );
    
    reg [15:0] counter;
    //initial counter = 'b0;
    
    always_ff @(posedge clk)
    begin
        if(clr)     counter <= 'b0;
        else if(ld) counter <= load;
        else if(up) counter <= counter + 1;
    end
        
    assign out = counter;
    
endmodule
