`timescale 1ns / 1ps

module ex_memory(
                 input logic [15:0] adr,
                 input logic rd,
                 output logic [15:0] data);
                 
  logic  [15:0]mem [255:0];
  
  initial
    $readmemh("C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/DAT files/test_all.dat", mem);
 
  always_comb
    if(rd) data <= mem[adr];
  endmodule