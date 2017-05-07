`timescale 1ns / 1ps

module datapath(
    input logic clk,
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
    input logic [3:0] ALU_s,
    input logic [2:0] shift,
    input logic [15:0] sw,
    //input logic leds_en,
    //input logic leds_clr,
    //input logic mux_SW,
    output logic [15:0] leds,
    output logic RF_Rp_zero);

logic [15:0]Rp_data, Rq_data, W_data,R_data,aluresult,d2,DW_data;
assign d2 = {8'b0,RF_W_data};
    
banco_registradores register(clk,RF_W_addr, RF_W_wr, RF_Rp_addr, RF_Rp_rd, RF_Rq_addr, RF_Rq_rd,W_data,Rp_data,Rq_data);
mux3 mx3(aluresult,R_data,d2,RF_s1,RF_s0,W_data);
//mux2 muxsw(Rp_data,sw,mux_SW,DW_data);
//leds_out leds_out(clk,leds_en,leds_clr,aluresult,leds);
memory mem1(clk,sw,D_addr,D_rd,D_wr,Rp_data,R_data,leds);
ALU alunit(Rp_data,Rq_data,ALU_s,aluresult);
zero zero(Rp_data, RF_Rp_zero);
endmodule
