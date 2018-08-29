`timescale 1ns / 1ps

module memoria_instrucoes#(parameter N=8 ,M=4)(
                 input logic [N-1:0] I_addr,
                 input logic I_rd,
                 output logic [15:0] I_data);
                 
  logic  [2**M-1:0] mem[2**N-1:0]; //Memória 256x16
  
  initial
    $readmemh("D:/PCID/mem.dat", mem);
 
  always_comb
    if(I_rd) I_data <= mem[I_addr];
  endmodule