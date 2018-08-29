`timescale 1ns / 1ps

module unidade_controle(
    input logic clk,
    input logic rst,
    input logic RF_Rp_zero,
    input logic [15:0] I_data,
    output logic I_rd,
    output logic [7:0] I_addr,
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
    output logic [2:0] ALU_s,
    output logic InReg_ld,
    output logic OutReg_ld
    );

logic [15:0] IR_out,data;
logic [7:0] PC_out, PC_load;
logic PC_ld, PC_clr, PC_inc;
logic [15:0]out;
logic [15:0]in;

assign I_addr = PC_out;

PC PC(clk, PC_ld, PC_clr, PC_inc, PC_load, PC_out);
PC_somador PC_somador(PC_out, IR_out[7:0], PC_load);
IR IR(clk, I_data, IR_ld, IR_out);
bloco_controle bloco_controle(clk,rst,IR_out,RF_Rp_zero,IR_ld,I_rd,PC_ld,PC_clr,PC_inc,D_addr,D_rd,D_wr,RF_W_data,RF_s1,RF_s0,RF_W_addr,RF_W_wr,RF_Rp_addr,RF_Rp_rd,RF_Rq_addr,RF_Rq_rd,ALU_s,InReg_ld,OutReg_ld);

endmodule
