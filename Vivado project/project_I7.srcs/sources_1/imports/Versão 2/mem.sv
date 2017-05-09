`timescale 1ns / 1ps

module memory(input logic clk,
              //input logic [15:0]sw,
              input logic [7:0]addr,           
              input logic rd,
              input logic wr,
              input logic [15:0]W_data,
              output logic [15:0]R_data,
              output logic [15:0]leds);

 logic [15:0] mem[255:0]; //define o tamanho da memória 256x16
 
 /*always_comb begin
    if (wr) mem[addr] <= W_data; // escreve W_Data(16) em uma posição na memória
    if (rd) R_data <= mem[addr]; // Lê uma posição na memória.
    end*/
    
 always_ff @ (negedge clk) begin
    if (wr) mem[addr] <= W_data; // escreve W_Data(16) em uma posição na memória
    if (rd) R_data <= mem[addr]; // Lê uma posição na memória.
    //mem[255] <= sw;
    //leds <= mem[254];
    end
endmodule 

 
