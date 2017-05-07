`timescale 1ns / 1ps

module Unidade_controladora(
    input logic clk,
    input logic RF_Rp_zero,
    output logic [7:0] D_addr,
    output logic D_rd,
    output logic D_wr,
    output logic [7:0] RF_W_data,
    output logic RF_s1,
    output logic RF_s0,
    output logic [3:0] RF_W_addr,
    output logic RF_W_wr,
    output logic [3:0] RF_Rp_addr,
    output logic RF_Rp_rd,
    output logic [3:0] RF_Rq_addr,
    output logic RF_Rq_rd,
    output logic [3:0] ALU_s,
    output logic [2:0] shift
    //output logic leds_en,
    //output logic leds_clr,
    //output logic mux_SW
    );

logic [15:0] PC_out, PC_load, IR_out,data_exmemory; 
logic PC_ld, PC_clr, PC_inc, IR_ld,I_rd;


PC PC(clk, PC_ld, PC_clr, PC_inc, PC_load, PC_out);
PC_somador PC_somador(IR_out, PC_out, PC_load);
IR IR(clk, data_exmemory, IR_ld, IR_out);
ex_memory ex_memory(PC_out,I_rd, data_exmemory);
Bloco_de_Controle Bloco_de_Controle(clk,IR_out,RF_Rp_zero,IR_ld,I_rd,PC_ld,PC_clr,PC_inc,D_addr,D_rd,D_wr,RF_W_data,RF_s1,RF_s0,RF_W_addr,RF_W_wr,RF_Rp_addr,RF_Rp_rd,RF_Rq_addr,RF_Rq_rd,ALU_s,shift);
endmodule



