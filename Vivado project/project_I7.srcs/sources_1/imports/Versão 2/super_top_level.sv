`timescale 1ns / 1ps

module super_top_level(input logic clk, clk_m, //clk é o da placa para os displays e clk_ é o manual para a FSM
                       input logic[15:0]sw,
                       output logic[15:0]leds,
                       output logic[3:0]anodos,
                       output logic[7:0]segmentos);

logic [15:0] I_out,s_leds;
logic [7:0] D_addr, RF_W_data;
logic [3:0] RF_W_addr, RF_Rp_addr, RF_Rq_addr, ALU_s;
logic [2:0] shift;
logic F_Rp_zero, PC_ld, PC_clr, PC_inc, I_rd, IR_ld, D_rd, D_wr, RF_s1, RF_s0, RF_W_wr, RF_Rp_rd, RF_Rq_rd;
//logic leds_en,leds_clr;
assign leds=s_leds;
Unidade_controladora Unidade_controladora(clk_m,RF_Rp_zero,D_addr,D_rd,D_wr,RF_W_data,RF_s1,RF_s0,RF_W_addr,RF_W_wr,RF_Rp_addr,RF_Rp_rd,RF_Rq_addr,RF_Rq_rd, ALU_s,shift);
datapath datapath(clk_m,D_addr, D_rd, D_wr, RF_W_data, RF_s1, RF_s0, RF_W_addr, RF_W_wr, RF_Rp_addr, RF_Rp_rd, RF_Rq_addr, RF_Rq_rd, ALU_s, shift,sw,s_leds, RF_Rp_zero);
decoder_7seg decoder_7seg(clk,s_leds,anodos,segmentos);
endmodule
