`timescale 1ns / 1ps

module bloco_operacional(
    input logic clk,
    input logic rst,
    input logic [7:0] D_addr,
    input logic D_rd,
    input logic D_wr,
    input logic [7:0] RF_W_data,
    input logic RF_s1,
    input logic RF_s0,
    input logic [3:0] RF_W_addr,
    input logic RF_W_wr,
    input logic [3:0] RF_Rp_addr,
    input logic RF_Rp_rd,
    input logic [3:0] RF_Rq_addr,
    input logic RF_Rq_rd,
    input logic [2:0] ALU_s,
    input logic [15:0] sw,
    input logic InReg_ld,
    input logic OutReg_ld,
    output logic [15:0] leds,
    output logic RF_Rp_zero);

logic [15:0]Rp_data, Rq_data, W_data,R_data,aluresult,d2,DW_data,in;
assign d2 = {8'b0,RF_W_data};
    
banco_registradores banco_registradores(clk,RF_W_addr, RF_W_wr, RF_Rp_addr, RF_Rp_rd, RF_Rq_addr, RF_Rq_rd,W_data,Rp_data,Rq_data);
mux4 mux4(aluresult,R_data,d2,in,RF_s1,RF_s0,W_data);
register output_register(rst,Rp_data,OutReg_ld,leds);
register input_register(rst,sw,InReg_ld,in);
memoria memoria(clk,D_addr,D_rd,D_wr,Rp_data,R_data); 
ALU ALU(Rp_data,Rq_data,ALU_s,aluresult);
zero zero(Rp_data, RF_Rp_zero);
endmodule
