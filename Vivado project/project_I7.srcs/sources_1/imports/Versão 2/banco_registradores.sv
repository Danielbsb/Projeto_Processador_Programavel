`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2016 11:11:05 AM
// Design Name: 
// Module Name: banco_registradores
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


module banco_registradores#(parameter N= 4 ,M=4)(
    input logic clk,
    input logic [3:0] W_addr, // Endereço para escrita do valor da sáida do mux 
    input logic W_wr, // Habilita o escrita da entrada num registrador
    input logic [3:0] Rp_addr, // Endereço Rp
    input logic Rp_rd, // Habilita leitura do Rp
    input logic [3:0] Rq_addr, //Endereço Rq
    input logic Rq_rd,//Habilita leitura do Rq
    input logic [15:0] W_data, // Sáida do mux 
    output tri [15:0] Rp_data, // Sáida Rp
    output tri [15:0] Rq_data// Sáida Rq
    );
    
    logic [2**M-1:0] mem[2**N-1:0]; // Memoria 16x16
    always @(posedge clk)
    if(W_wr)
    mem[W_addr]<=W_data; //  Se W_wr = 1 , escreva no endereço
    
    assign Rp_data = Rp_rd ? mem[Rp_addr] : 'z; //Se Rp = 1 , leia o endereço, se Rp=0 alta impedancia
    assign Rq_data = Rq_rd ? mem[Rq_addr] : 'z;//Se Rq = 1 , leia o endereço, se Rq=0 alta impedancia

    
    
    
endmodule
