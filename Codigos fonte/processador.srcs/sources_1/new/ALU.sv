`timescale 1ns / 1ps

module ALU(
    input logic [15:0] A, //Rp_data
    input logic [15:0] B, //Rq_data
    input logic [2:0] s, //ALU_s
    output logic [15:0] out //ALU_out
    );
    
    always_comb
    begin
     case(s)
                 3'b000 : out <= A;             //0
                 3'b001 : out <= (A + B);       //1 adição
                 3'b010 : out <= (A - B);       //2 subtração
                 3'b011 : out <= (A << B);      //3 shift-left
                 3'b100 : out <= (A >> B);      //4 shift-right
                 default : out <= A;
             endcase
         end
    
    
endmodule
