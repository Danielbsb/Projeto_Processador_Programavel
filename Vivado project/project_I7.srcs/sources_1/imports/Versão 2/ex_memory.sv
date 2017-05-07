`timescale 1ns / 1ps

module ex_memory(
                 input logic [15:0] adr,
                 input logic rd,
                 output logic [15:0] data);
                 
  logic [255:0] mem [15:0];
  
  initial
    $readmemh("C:/Users/Daniel/Documents/ARQUIVOS_FACULDADE/PROJETO_GILMAR/memdata.dat", mem);
 
  always_comb
    if(rd) data <= mem[adr];
  endmodule