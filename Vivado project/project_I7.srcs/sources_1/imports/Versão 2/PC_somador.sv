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
    logic [7:0] cmp2;
    always_comb
        if(a[7])
           cmp2 <= b - {8'b0,~a[7:0]} - 1;
        else
           cmp2 <= {8'b0,a[7:0]} + b;
    assign out = cmp2 - 1; 
endmodule
