`timescale 1ns / 1ps

module processador_top(input logic clk, clk_m, //clk é o da placa para os displays e clk_ é o manual para a FSM
                       input logic rst,
                       input logic [15:0] sw,
                       input logic [15:0] I_data,
                       output logic I_rd,
                       output logic [7:0] I_addr,
                       output logic [15:0] leds,
                       output logic [3:0] anodos,
                       output logic [7:0] segmentos);

logic [15:0] I_out,s_leds;
logic InReg_ld,OutReg_ld;
logic [7:0] D_addr, RF_W_data;
logic [3:0] RF_W_addr, RF_Rp_addr, RF_Rq_addr;
logic [2:0] ALU_s;
logic F_Rp_zero, PC_ld, PC_clr, PC_inc, IR_ld, D_rd, D_wr, RF_s1, RF_s0, RF_W_wr, RF_Rp_rd, RF_Rq_rd;
unidade_controle unidade_controle(clk_m,rst,RF_Rp_zero,I_data,I_rd,I_addr,D_addr,D_rd,D_wr,RF_W_data,RF_s1,RF_s0,RF_W_addr,RF_W_wr,RF_Rp_addr,RF_Rp_rd,RF_Rq_addr,RF_Rq_rd, ALU_s,InReg_ld,OutReg_ld);
bloco_operacional bloco_operacional(clk_m,rst,D_addr, D_rd, D_wr, RF_W_data, RF_s1, RF_s0, RF_W_addr, RF_W_wr, RF_Rp_addr, RF_Rp_rd, RF_Rq_addr, RF_Rq_rd, ALU_s, sw, InReg_ld, OutReg_ld, leds, RF_Rp_zero);
decoder_7seg decoder_7seg(clk,rst,leds,anodos,segmentos);
endmodule
