`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 17:48:56
// Design Name: 
// Module Name: zero
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


module zero(
    input logic [15:0] in, //Rp_data
    output logic out //RF_Rp_zero
    );
    
    always_comb
    begin
        if (in == 0) out = 'b1;
        else         out = 'b0;
    end 

endmodule
