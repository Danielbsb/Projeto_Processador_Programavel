`timescale 1ns / 1ps

module top_module(input logic clk, clk_m, //clk é o da placa para os displays e clk_ é o manual para a FSM
                  input logic rst,
                  input logic[15:0]sw,
                  output logic[15:0]leds,
                  output logic[3:0]anodos,
                  output logic[7:0]segmentos);

logic [15:0] I_data;
logic [7:0] I_addr;
logic I_rd;

processador_top processador_top(clk,clk_m,rst,sw,I_data,I_rd,I_addr,leds,anodos,segmentos);
memoria_instrucoes memoria_instrucoes(I_addr,I_rd,I_data);

endmodule
