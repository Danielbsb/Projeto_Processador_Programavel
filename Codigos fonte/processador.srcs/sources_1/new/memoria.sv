`timescale 1ns / 1ps

module memoria#(parameter N=8 ,M=4)(
              input logic clk,
              input logic [7:0]addr,           
              input logic rd,
              input logic wr,
              input logic [15:0]W_data,
              output logic [15:0]R_data
              );

 logic [2**M-1:0] mem[2**N-1:0]; //Memória 256x16
 
 always_ff @ (negedge clk) begin
    if (wr) mem[addr] <= W_data; // escreve W_Data(16) em uma posição na memória
    if (rd) R_data <= mem[addr]; // Lê uma posição na memória.
    end
endmodule 
