`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2016 17:35:49
// Design Name: 
// Module Name: ALU
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


module ALU(
    input logic [15:0] A, //Rp_data
    input logic [15:0] B, //Rq_data
    input logic [3:0] s, //ALU_s
    output logic [15:0] out //ALU_out
    );
    
    always_comb
    begin
     //   if(~s1 & s0)       out <= (A + B);
     //   else if(s1 & ~s0)  out <= (A - B);
     //   else if(~s1 & ~s0) out <= A;
     //   else
     //       out <= (A << B);
     case(s)
                 4'b0000 : out <= A;             //0
                 4'b0001 : out <= (A + B);       //1 adição
                 4'b0010 : out <= (A - B);       //2 subtração
           //      4'b0011 : out <= mult[15:0];    //3 multiplicação
           //      4'b0100 : out <= ~A;            //4 not
           //      4'b0101 : out <= (A & B);       //5 and
           //      4'b0110 : out <= (A | B);       //6 or
                 4'b1000 : out <= (A << B);      //7 shift-left
                 4'b1001 : out <= (A >> B);      //8 shift-right
                 default : out <= A;
             endcase
         end
    
    
endmodule
