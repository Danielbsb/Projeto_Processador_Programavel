// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Jul 06 16:16:29 2017
// Host        : DESKTOP-2B2L9QP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Haroldo/Documents/PCID/processador_DCP/processador_DCP.sim/sim_1/synth/func/test_1_func_synth.v
// Design      : top_module
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module processador_top
   (clk,
    clk_m,
    rst,
    sw,
    I_data,
    I_rd,
    I_addr,
    leds,
    anodos,
    segmentos);
  input clk;
  input clk_m;
  input rst;
  input [15:0]sw;
  input [15:0]I_data;
  output I_rd;
  output [7:0]I_addr;
  output [15:0]leds;
  output [3:0]anodos;
  output [7:0]segmentos;

  wire [2:0]ALU_s;
  wire [7:0]D_addr;
  wire D_rd;
  wire [7:0]I_addr_OBUF;
  wire [15:0]I_data;
  wire I_rd_OBUF;
  wire InReg_ld;
  wire [3:0]RF_Rp_addr;
  wire RF_Rp_rd;
  wire [3:0]RF_Rq_addr;
  wire RF_Rq_rd;
  wire [3:0]RF_W_addr;
  wire [7:0]RF_W_data;
  wire RF_W_wr;
  wire RF_s0;
  wire RF_s1;
  wire [15:1]R_data;
  wire [15:1]W_data;
  wire [3:0]anodos;
  wire [3:0]anodos_OBUF;
  wire bloco_operacional_n_10;
  wire bloco_operacional_n_11;
  wire bloco_operacional_n_12;
  wire bloco_operacional_n_13;
  wire bloco_operacional_n_3;
  wire bloco_operacional_n_30;
  wire bloco_operacional_n_31;
  wire bloco_operacional_n_32;
  wire bloco_operacional_n_7;
  wire bloco_operacional_n_8;
  wire bloco_operacional_n_9;
  wire clk;
  wire clk_IBUF_BUFG;
  wire clk_m;
  wire clk_m_IBUF_BUFG;
  wire [15:1]in;
  wire [15:0]leds;
  wire [15:0]leds_OBUF;
  wire rst;
  wire [7:0]segmentos;
  wire [7:1]segmentos_OBUF;
  wire [15:0]sw;
  wire unidade_controle_n_0;
  wire unidade_controle_n_29;
  wire unidade_controle_n_30;

  assign I_addr[7:0] = I_addr_OBUF;
  assign I_rd = I_rd_OBUF;
  OBUF \anodos_OBUF[0]_inst 
       (.I(anodos_OBUF[0]),
        .O(anodos[0]));
  OBUF \anodos_OBUF[1]_inst 
       (.I(anodos_OBUF[1]),
        .O(anodos[1]));
  OBUF \anodos_OBUF[2]_inst 
       (.I(anodos_OBUF[2]),
        .O(anodos[2]));
  OBUF \anodos_OBUF[3]_inst 
       (.I(anodos_OBUF[3]),
        .O(anodos[3]));
  bloco_operacional bloco_operacional
       (.D(sw),
        .DOBDO({R_data[15],R_data[13],R_data[1]}),
        .D_rd(D_rd),
        .E(unidade_controle_n_30),
        .\FSM_sequential_state_reg[0] (RF_Rp_addr),
        .\FSM_sequential_state_reg[1] (ALU_s),
        .\FSM_sequential_state_reg[2] (bloco_operacional_n_3),
        .\FSM_sequential_state_reg[2]_0 (unidade_controle_n_29),
        .\FSM_sequential_state_reg[2]_1 (InReg_ld),
        .Q(D_addr),
        .RF_Rp_rd(RF_Rp_rd),
        .RF_Rq_rd(RF_Rq_rd),
        .RF_W_wr(RF_W_wr),
        .RF_s0(RF_s0),
        .RF_s1(RF_s1),
        .SR(rst),
        .clk_m(clk_m_IBUF_BUFG),
        .clk_m_IBUF_BUFG(clk_m_IBUF_BUFG),
        .mem_reg({in[15],in[13],in[1]}),
        .mem_reg_0(bloco_operacional_n_7),
        .mem_reg_1(bloco_operacional_n_8),
        .mem_reg_2(bloco_operacional_n_9),
        .mem_reg_3(bloco_operacional_n_10),
        .mem_reg_4(bloco_operacional_n_11),
        .mem_reg_5(bloco_operacional_n_12),
        .mem_reg_6({W_data[15],W_data[13],W_data[1]}),
        .out(unidade_controle_n_0),
        .\out_reg[11] (RF_W_addr),
        .\out_reg[3] (RF_Rq_addr),
        .\out_reg[7] ({RF_W_data[7:2],RF_W_data[0]}),
        .\s_anodos_reg[3] (anodos_OBUF[3:1]),
        .\segmentos[1] (bloco_operacional_n_13),
        .\segmentos[1]_0 (leds_OBUF),
        .\segmentos[1]_1 (bloco_operacional_n_30),
        .\segmentos[1]_2 (bloco_operacional_n_31),
        .\segmentos[1]_3 (bloco_operacional_n_32));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk),
        .O(clk_IBUF_BUFG));
  BUFG clk_m_IBUF_BUFG_inst
       (.I(clk_m),
        .O(clk_m_IBUF_BUFG));
  decoder_7seg decoder_7seg
       (.CLK(clk_IBUF_BUFG),
        .\FSM_sequential_state_reg[2] (leds_OBUF[3:0]),
        .Q(anodos_OBUF),
        .SR(rst),
        .\s_anodos_reg[1]_0 (bloco_operacional_n_30),
        .\s_anodos_reg[1]_1 (bloco_operacional_n_31),
        .\s_anodos_reg[1]_2 (bloco_operacional_n_32),
        .\s_anodos_reg[1]_3 (bloco_operacional_n_13),
        .segmentos_OBUF(segmentos_OBUF));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(leds_OBUF[11]),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF \leds_OBUF[8]_inst 
       (.I(leds_OBUF[8]),
        .O(leds[8]));
  OBUF \leds_OBUF[9]_inst 
       (.I(leds_OBUF[9]),
        .O(leds[9]));
  OBUF \segmentos_OBUF[0]_inst 
       (.I(1'b1),
        .O(segmentos[0]));
  OBUF \segmentos_OBUF[1]_inst 
       (.I(segmentos_OBUF[1]),
        .O(segmentos[1]));
  OBUF \segmentos_OBUF[2]_inst 
       (.I(segmentos_OBUF[2]),
        .O(segmentos[2]));
  OBUF \segmentos_OBUF[3]_inst 
       (.I(segmentos_OBUF[3]),
        .O(segmentos[3]));
  OBUF \segmentos_OBUF[4]_inst 
       (.I(segmentos_OBUF[4]),
        .O(segmentos[4]));
  OBUF \segmentos_OBUF[5]_inst 
       (.I(segmentos_OBUF[5]),
        .O(segmentos[5]));
  OBUF \segmentos_OBUF[6]_inst 
       (.I(segmentos_OBUF[6]),
        .O(segmentos[6]));
  OBUF \segmentos_OBUF[7]_inst 
       (.I(segmentos_OBUF[7]),
        .O(segmentos[7]));
  unidade_controle unidade_controle
       (.AR(rst),
        .CLK(clk_m_IBUF_BUFG),
        .D(I_data),
        .DOBDO({R_data[15],R_data[13],R_data[1]}),
        .D_rd(D_rd),
        .E(I_rd_OBUF),
        .\FSM_sequential_state_reg[2] ({in[15],in[13],in[1]}),
        .\FSM_sequential_state_reg[2]_0 (bloco_operacional_n_12),
        .\FSM_sequential_state_reg[2]_1 (bloco_operacional_n_11),
        .\FSM_sequential_state_reg[2]_2 (bloco_operacional_n_10),
        .\FSM_sequential_state_reg[3] (bloco_operacional_n_3),
        .\FSM_sequential_state_reg[3]_0 (bloco_operacional_n_7),
        .\FSM_sequential_state_reg[3]_1 (bloco_operacional_n_8),
        .\FSM_sequential_state_reg[3]_2 (bloco_operacional_n_9),
        .Q({RF_W_data[7:2],RF_W_data[0]}),
        .RF_Rp_rd(RF_Rp_rd),
        .RF_W_wr(RF_W_wr),
        .RF_s0(RF_s0),
        .RF_s1(RF_s1),
        .\counter_reg[7] (I_addr_OBUF),
        .mem_reg(InReg_ld),
        .mem_reg_0({W_data[15],W_data[13],W_data[1]}),
        .mem_reg_1(ALU_s),
        .mem_reg_2(unidade_controle_n_29),
        .mem_reg_3(RF_Rq_rd),
        .mem_reg_4(D_addr),
        .mem_reg_5(RF_W_addr),
        .mem_reg_6(RF_Rp_addr),
        .mem_reg_7(RF_Rq_addr),
        .out(unidade_controle_n_0),
        .\segmentos[1] (unidade_controle_n_30));
endmodule

module ALU
   (data1,
    Rp_data,
    \FSM_sequential_state_reg[2] ,
    S,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 );
  output [15:0]data1;
  input [14:0]Rp_data;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input [3:0]S;
  input [3:0]\FSM_sequential_state_reg[3] ;
  input [3:0]\FSM_sequential_state_reg[3]_0 ;
  input [3:0]\FSM_sequential_state_reg[3]_1 ;

  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [3:0]\FSM_sequential_state_reg[3] ;
  wire [3:0]\FSM_sequential_state_reg[3]_0 ;
  wire [3:0]\FSM_sequential_state_reg[3]_1 ;
  wire [14:0]Rp_data;
  wire [3:0]S;
  wire __13_carry__0_n_0;
  wire __13_carry__0_n_1;
  wire __13_carry__0_n_2;
  wire __13_carry__0_n_3;
  wire __13_carry__1_n_0;
  wire __13_carry__1_n_1;
  wire __13_carry__1_n_2;
  wire __13_carry__1_n_3;
  wire __13_carry__2_n_1;
  wire __13_carry__2_n_2;
  wire __13_carry__2_n_3;
  wire __13_carry_n_0;
  wire __13_carry_n_1;
  wire __13_carry_n_2;
  wire __13_carry_n_3;
  wire [15:0]data1;
  wire [3:3]NLW___13_carry__2_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __13_carry
       (.CI(1'b0),
        .CO({__13_carry_n_0,__13_carry_n_1,__13_carry_n_2,__13_carry_n_3}),
        .CYINIT(Rp_data[0]),
        .DI({Rp_data[3:1],\FSM_sequential_state_reg[2] }),
        .O(data1[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __13_carry__0
       (.CI(__13_carry_n_0),
        .CO({__13_carry__0_n_0,__13_carry__0_n_1,__13_carry__0_n_2,__13_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Rp_data[7:4]),
        .O(data1[7:4]),
        .S(\FSM_sequential_state_reg[3] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __13_carry__1
       (.CI(__13_carry__0_n_0),
        .CO({__13_carry__1_n_0,__13_carry__1_n_1,__13_carry__1_n_2,__13_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Rp_data[11:8]),
        .O(data1[11:8]),
        .S(\FSM_sequential_state_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __13_carry__2
       (.CI(__13_carry__1_n_0),
        .CO({NLW___13_carry__2_CO_UNCONNECTED[3],__13_carry__2_n_1,__13_carry__2_n_2,__13_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Rp_data[14:12]}),
        .O(data1[15:12]),
        .S(\FSM_sequential_state_reg[3]_1 ));
endmodule

module IR
   (\FSM_sequential_state_reg[0] ,
    Q,
    D,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[3] ,
    S,
    \counter_reg[3] ,
    DI,
    out,
    \out_reg[14]_0 ,
    \counter_reg[7] ,
    E,
    \I_data[15] ,
    CLK);
  output \FSM_sequential_state_reg[0] ;
  output [14:0]Q;
  output [0:0]D;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[3] ;
  output [0:0]S;
  output [1:0]\counter_reg[3] ;
  output [0:0]DI;
  input [2:0]out;
  input \out_reg[14]_0 ;
  input [5:0]\counter_reg[7] ;
  input [0:0]E;
  input [15:0]\I_data[15] ;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[3] ;
  wire [13:13]IR_out;
  wire [15:0]\I_data[15] ;
  wire [14:0]Q;
  wire [0:0]S;
  wire [1:0]\counter_reg[3] ;
  wire [5:0]\counter_reg[7] ;
  wire [2:0]out;
  wire \out_reg[14]_0 ;

  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(IR_out),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h4343FF4300000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(IR_out),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\out_reg[14]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h01011104)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(out[2]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[12]),
        .I4(IR_out),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h11041004)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(out[2]),
        .I1(Q[14]),
        .I2(IR_out),
        .I3(Q[13]),
        .I4(Q[12]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'hA15E0FF00FF05EA1)) 
    out__1_carry__0_i_4
       (.I0(Q[5]),
        .I1(\counter_reg[7] [3]),
        .I2(\counter_reg[7] [5]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(\counter_reg[7] [4]),
        .O(S));
  LUT2 #(
    .INIT(4'h9)) 
    out__1_carry_i_3
       (.I0(Q[1]),
        .I1(\counter_reg[7] [1]),
        .O(DI));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    out__1_carry_i_6
       (.I0(Q[2]),
        .I1(\counter_reg[7] [2]),
        .I2(\counter_reg[7] [1]),
        .I3(Q[1]),
        .O(\counter_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    out__1_carry_i_8
       (.I0(Q[0]),
        .I1(\counter_reg[7] [0]),
        .O(\counter_reg[3] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [13]),
        .Q(IR_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [14]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [15]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\I_data[15] [9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module PC
   (Q,
    DI,
    \counter_reg[7]_0 ,
    S,
    \counter_reg[7]_1 ,
    D,
    data,
    PC_ld,
    \out_reg[6] ,
    SR,
    E,
    CLK);
  output [7:0]Q;
  output [2:0]DI;
  output [2:0]\counter_reg[7]_0 ;
  output [1:0]S;
  output [2:0]\counter_reg[7]_1 ;
  input [0:0]D;
  input [6:0]data;
  input PC_ld;
  input [6:0]\out_reg[6] ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire PC_ld;
  wire [7:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire [2:0]\counter_reg[7]_0 ;
  wire [2:0]\counter_reg[7]_1 ;
  wire [6:0]data;
  wire [6:0]\out_reg[6] ;
  wire [7:1]p_0_in;

  LUT4 #(
    .INIT(16'h8BB8)) 
    \counter[1]_i_1 
       (.I0(data[0]),
        .I1(PC_ld),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \counter[2]_i_1 
       (.I0(data[1]),
        .I1(PC_ld),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \counter[3]_i_1 
       (.I0(data[2]),
        .I1(PC_ld),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \counter[4]_i_1 
       (.I0(data[3]),
        .I1(PC_ld),
        .I2(\counter[4]_i_2_n_0 ),
        .I3(Q[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\counter[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \counter[5]_i_1 
       (.I0(data[4]),
        .I1(PC_ld),
        .I2(\counter[5]_i_2_n_0 ),
        .I3(Q[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \counter[6]_i_1 
       (.I0(data[5]),
        .I1(PC_ld),
        .I2(\counter[7]_i_5_n_0 ),
        .I3(Q[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \counter[7]_i_3 
       (.I0(data[6]),
        .I1(PC_ld),
        .I2(\counter[7]_i_5_n_0 ),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[7]_i_5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\counter[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hD9D94940)) 
    out__1_carry__0_i_1
       (.I0(\out_reg[6] [5]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[4]),
        .I4(\out_reg[6] [4]),
        .O(\counter_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hD9D94940)) 
    out__1_carry__0_i_2
       (.I0(\out_reg[6] [4]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[3]),
        .I4(\out_reg[6] [3]),
        .O(\counter_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hD9D94940)) 
    out__1_carry__0_i_3
       (.I0(\out_reg[6] [3]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(Q[2]),
        .I4(\out_reg[6] [2]),
        .O(\counter_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h9696699696966969)) 
    out__1_carry__0_i_5
       (.I0(\counter_reg[7]_0 [2]),
        .I1(\out_reg[6] [6]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\out_reg[6] [5]),
        .I5(Q[5]),
        .O(\counter_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'h9696699696966969)) 
    out__1_carry__0_i_6
       (.I0(\counter_reg[7]_0 [1]),
        .I1(\out_reg[6] [5]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\out_reg[6] [4]),
        .I5(Q[4]),
        .O(\counter_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h9696699696966969)) 
    out__1_carry__0_i_7
       (.I0(\counter_reg[7]_0 [0]),
        .I1(\out_reg[6] [4]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(\out_reg[6] [3]),
        .I5(Q[3]),
        .O(\counter_reg[7]_1 [0]));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hD9D94940)) 
    out__1_carry_i_1
       (.I0(\out_reg[6] [2]),
        .I1(Q[2]),
        .I2(Q[7]),
        .I3(Q[1]),
        .I4(\out_reg[6] [1]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h31CECE31)) 
    out__1_carry_i_2
       (.I0(Q[1]),
        .I1(\out_reg[6] [1]),
        .I2(Q[7]),
        .I3(Q[2]),
        .I4(\out_reg[6] [2]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h2D)) 
    out__1_carry_i_4
       (.I0(Q[0]),
        .I1(Q[7]),
        .I2(\out_reg[6] [0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h9696699696966969)) 
    out__1_carry_i_5
       (.I0(DI[2]),
        .I1(\out_reg[6] [3]),
        .I2(Q[3]),
        .I3(Q[7]),
        .I4(\out_reg[6] [2]),
        .I5(Q[2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h66669969)) 
    out__1_carry_i_7
       (.I0(Q[1]),
        .I1(\out_reg[6] [1]),
        .I2(Q[0]),
        .I3(Q[7]),
        .I4(\out_reg[6] [0]),
        .O(S[0]));
endmodule

module PC_somador
   (data,
    DI,
    S,
    \out_reg[5] ,
    \out_reg[5]_0 );
  output [7:0]data;
  input [3:0]DI;
  input [3:0]S;
  input [2:0]\out_reg[5] ;
  input [3:0]\out_reg[5]_0 ;

  wire [3:0]DI;
  wire [3:0]S;
  wire [7:0]data;
  wire out__1_carry__0_n_1;
  wire out__1_carry__0_n_2;
  wire out__1_carry__0_n_3;
  wire out__1_carry_n_0;
  wire out__1_carry_n_1;
  wire out__1_carry_n_2;
  wire out__1_carry_n_3;
  wire [2:0]\out_reg[5] ;
  wire [3:0]\out_reg[5]_0 ;
  wire [3:3]NLW_out__1_carry__0_CO_UNCONNECTED;

  CARRY4 out__1_carry
       (.CI(1'b0),
        .CO({out__1_carry_n_0,out__1_carry_n_1,out__1_carry_n_2,out__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(data[3:0]),
        .S(S));
  CARRY4 out__1_carry__0
       (.CI(out__1_carry_n_0),
        .CO({NLW_out__1_carry__0_CO_UNCONNECTED[3],out__1_carry__0_n_1,out__1_carry__0_n_2,out__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\out_reg[5] }),
        .O(data[7:4]),
        .S(\out_reg[5]_0 ));
endmodule

module banco_registradores
   (\FSM_sequential_state_reg[2] ,
    mem_reg,
    Rp_data,
    out__128,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    S,
    mem_reg_6,
    mem_reg_7,
    out,
    \FSM_sequential_state_reg[1] ,
    data1,
    RF_Rp_rd,
    RF_Rq_rd,
    clk_m_IBUF_BUFG,
    RF_W_wr,
    W_data,
    \FSM_sequential_state_reg[0] ,
    \out_reg[11] ,
    \out_reg[3] );
  output \FSM_sequential_state_reg[2] ;
  output [3:0]mem_reg;
  output [15:0]Rp_data;
  output [12:0]out__128;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output [3:0]S;
  output [3:0]mem_reg_6;
  output [3:0]mem_reg_7;
  input [0:0]out;
  input [2:0]\FSM_sequential_state_reg[1] ;
  input [15:0]data1;
  input RF_Rp_rd;
  input RF_Rq_rd;
  input clk_m_IBUF_BUFG;
  input RF_W_wr;
  input [15:0]W_data;
  input [3:0]\FSM_sequential_state_reg[0] ;
  input [3:0]\out_reg[11] ;
  input [3:0]\out_reg[3] ;

  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire [2:0]\FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire RF_Rp_rd;
  wire RF_Rq_rd;
  wire RF_W_wr;
  wire [15:0]Rp_data;
  wire [15:0]Rp_data0;
  wire [15:0]Rq_data;
  wire [15:0]Rq_data0;
  wire [3:0]\^S ;
  wire [15:0]W_data;
  wire clk_m_IBUF_BUFG;
  wire [15:0]data1;
  wire [3:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire [3:0]mem_reg_6;
  wire [3:0]mem_reg_7;
  wire mem_reg_r1_0_15_0_5_i_18_n_0;
  wire mem_reg_r1_0_15_0_5_i_19_n_0;
  wire mem_reg_r1_0_15_0_5_i_20_n_0;
  wire mem_reg_r1_0_15_0_5_i_21_n_0;
  wire mem_reg_r1_0_15_0_5_i_22_n_0;
  wire mem_reg_r1_0_15_0_5_i_23_n_0;
  wire mem_reg_r1_0_15_0_5_i_24_n_0;
  wire mem_reg_r1_0_15_0_5_i_25_n_0;
  wire mem_reg_r1_0_15_0_5_i_26_n_0;
  wire mem_reg_r1_0_15_0_5_i_27_n_0;
  wire mem_reg_r1_0_15_0_5_i_28_n_0;
  wire mem_reg_r1_0_15_0_5_i_29_n_0;
  wire mem_reg_r1_0_15_0_5_i_30_n_0;
  wire mem_reg_r1_0_15_0_5_i_31_n_0;
  wire mem_reg_r1_0_15_0_5_i_32_n_0;
  wire mem_reg_r1_0_15_0_5_i_33_n_0;
  wire mem_reg_r1_0_15_0_5_i_34_n_0;
  wire mem_reg_r1_0_15_0_5_i_35_n_0;
  wire mem_reg_r1_0_15_0_5_i_36_n_0;
  wire mem_reg_r1_0_15_0_5_i_37_n_0;
  wire mem_reg_r1_0_15_0_5_i_38_n_0;
  wire mem_reg_r1_0_15_0_5_i_39_n_0;
  wire mem_reg_r1_0_15_0_5_i_40_n_0;
  wire mem_reg_r1_0_15_0_5_i_41_n_0;
  wire mem_reg_r1_0_15_0_5_i_42_n_0;
  wire mem_reg_r1_0_15_0_5_i_43_n_0;
  wire mem_reg_r1_0_15_0_5_i_44_n_0;
  wire mem_reg_r1_0_15_0_5_i_45_n_0;
  wire mem_reg_r1_0_15_0_5_i_46_n_0;
  wire mem_reg_r1_0_15_0_5_i_47_n_0;
  wire mem_reg_r1_0_15_0_5_i_48_n_0;
  wire mem_reg_r1_0_15_0_5_i_49_n_0;
  wire mem_reg_r1_0_15_0_5_i_50_n_0;
  wire mem_reg_r1_0_15_0_5_i_51_n_0;
  wire mem_reg_r1_0_15_0_5_i_52_n_0;
  wire mem_reg_r1_0_15_0_5_i_53_n_0;
  wire mem_reg_r1_0_15_0_5_i_54_n_0;
  wire mem_reg_r1_0_15_0_5_i_55_n_0;
  wire mem_reg_r1_0_15_12_15_i_11_n_0;
  wire mem_reg_r1_0_15_12_15_i_12_n_0;
  wire mem_reg_r1_0_15_12_15_i_15_n_0;
  wire mem_reg_r1_0_15_12_15_i_16_n_0;
  wire mem_reg_r1_0_15_12_15_i_17_n_0;
  wire mem_reg_r1_0_15_12_15_i_18_n_0;
  wire mem_reg_r1_0_15_12_15_i_19_n_0;
  wire mem_reg_r1_0_15_12_15_i_20_n_0;
  wire mem_reg_r1_0_15_12_15_i_21_n_0;
  wire mem_reg_r1_0_15_12_15_i_22_n_0;
  wire mem_reg_r1_0_15_12_15_i_23_n_0;
  wire mem_reg_r1_0_15_12_15_i_24_n_0;
  wire mem_reg_r1_0_15_12_15_i_25_n_0;
  wire mem_reg_r1_0_15_12_15_i_26_n_0;
  wire mem_reg_r1_0_15_12_15_i_27_n_0;
  wire mem_reg_r1_0_15_12_15_i_28_n_0;
  wire mem_reg_r1_0_15_12_15_i_29_n_0;
  wire mem_reg_r1_0_15_6_11_i_13_n_0;
  wire mem_reg_r1_0_15_6_11_i_14_n_0;
  wire mem_reg_r1_0_15_6_11_i_15_n_0;
  wire mem_reg_r1_0_15_6_11_i_16_n_0;
  wire mem_reg_r1_0_15_6_11_i_17_n_0;
  wire mem_reg_r1_0_15_6_11_i_18_n_0;
  wire mem_reg_r1_0_15_6_11_i_19_n_0;
  wire mem_reg_r1_0_15_6_11_i_20_n_0;
  wire mem_reg_r1_0_15_6_11_i_21_n_0;
  wire mem_reg_r1_0_15_6_11_i_22_n_0;
  wire mem_reg_r1_0_15_6_11_i_23_n_0;
  wire mem_reg_r1_0_15_6_11_i_24_n_0;
  wire mem_reg_r1_0_15_6_11_i_25_n_0;
  wire mem_reg_r1_0_15_6_11_i_26_n_0;
  wire mem_reg_r1_0_15_6_11_i_27_n_0;
  wire mem_reg_r1_0_15_6_11_i_28_n_0;
  wire mem_reg_r1_0_15_6_11_i_29_n_0;
  wire mem_reg_r1_0_15_6_11_i_30_n_0;
  wire mem_reg_r1_0_15_6_11_i_31_n_0;
  wire mem_reg_r1_0_15_6_11_i_32_n_0;
  wire mem_reg_r1_0_15_6_11_i_33_n_0;
  wire mem_reg_r1_0_15_6_11_i_34_n_0;
  wire mem_reg_r1_0_15_6_11_i_35_n_0;
  wire mem_reg_r1_0_15_6_11_i_36_n_0;
  wire mem_reg_r1_0_15_6_11_i_37_n_0;
  wire mem_reg_r1_0_15_6_11_i_38_n_0;
  wire mem_reg_r1_0_15_6_11_i_39_n_0;
  wire mem_reg_r1_0_15_6_11_i_40_n_0;
  wire mem_reg_r1_0_15_6_11_i_41_n_0;
  wire mem_reg_r1_0_15_6_11_i_42_n_0;
  wire mem_reg_r1_0_15_6_11_i_43_n_0;
  wire mem_reg_r1_0_15_6_11_i_44_n_0;
  wire mem_reg_r1_0_15_6_11_i_45_n_0;
  wire mem_reg_r1_0_15_6_11_i_46_n_0;
  wire mem_reg_r1_0_15_6_11_i_47_n_0;
  wire mem_reg_r1_0_15_6_11_i_48_n_0;
  wire mem_reg_r1_0_15_6_11_i_49_n_0;
  wire mem_reg_r1_0_15_6_11_i_50_n_0;
  wire [0:0]out;
  wire [12:0]out__128;
  wire [3:0]\out_reg[11] ;
  wire [3:0]\out_reg[3] ;
  wire [1:0]NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED;

  assign S[3:1] = \^S [3:1];
  assign S[0] = Rq_data[0];
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[2] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(Rp_data[6]),
        .I1(Rp_data[7]),
        .I2(Rp_data[4]),
        .I3(Rp_data[5]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(Rp_data[2]),
        .I1(Rp_data[3]),
        .I2(Rp_data[0]),
        .I3(Rp_data[1]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(Rp_data[15]),
        .I1(Rp_data[14]),
        .I2(Rp_data[12]),
        .I3(Rp_data[13]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(Rp_data[10]),
        .I1(Rp_data[11]),
        .I2(Rp_data[8]),
        .I3(Rp_data[9]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__0_i_1
       (.I0(Rq_data[7]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[7]),
        .O(mem_reg_6[3]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__0_i_2
       (.I0(Rq_data[6]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[6]),
        .O(mem_reg_6[2]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__0_i_3
       (.I0(Rq_data[5]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[5]),
        .O(mem_reg_6[1]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__0_i_4
       (.I0(Rq_data[4]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[4]),
        .O(mem_reg_6[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__0_i_5
       (.I0(Rq_data0[7]),
        .I1(RF_Rq_rd),
        .O(Rq_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__0_i_6
       (.I0(Rq_data0[6]),
        .I1(RF_Rq_rd),
        .O(Rq_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__0_i_7
       (.I0(Rq_data0[5]),
        .I1(RF_Rq_rd),
        .O(Rq_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__0_i_8
       (.I0(Rq_data0[4]),
        .I1(RF_Rq_rd),
        .O(Rq_data[4]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__1_i_1
       (.I0(Rq_data[11]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[11]),
        .O(mem_reg_7[3]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__1_i_2
       (.I0(Rq_data[10]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[10]),
        .O(mem_reg_7[2]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__1_i_3
       (.I0(Rq_data[9]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[9]),
        .O(mem_reg_7[1]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__1_i_4
       (.I0(Rq_data[8]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[8]),
        .O(mem_reg_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__1_i_5
       (.I0(Rq_data0[11]),
        .I1(RF_Rq_rd),
        .O(Rq_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__1_i_6
       (.I0(Rq_data0[10]),
        .I1(RF_Rq_rd),
        .O(Rq_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__1_i_7
       (.I0(Rq_data0[9]),
        .I1(RF_Rq_rd),
        .O(Rq_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__1_i_8
       (.I0(Rq_data0[8]),
        .I1(RF_Rq_rd),
        .O(Rq_data[8]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__2_i_1
       (.I0(Rq_data[15]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[15]),
        .O(mem_reg[3]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__2_i_2
       (.I0(Rq_data[14]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[14]),
        .O(mem_reg[2]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__2_i_3
       (.I0(Rq_data[13]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[13]),
        .O(mem_reg[1]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry__2_i_4
       (.I0(Rq_data[12]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[12]),
        .O(mem_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__2_i_5
       (.I0(Rq_data0[15]),
        .I1(RF_Rq_rd),
        .O(Rq_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__2_i_6
       (.I0(Rq_data0[14]),
        .I1(RF_Rq_rd),
        .O(Rq_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__2_i_7
       (.I0(Rq_data0[13]),
        .I1(RF_Rq_rd),
        .O(Rq_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry__2_i_8
       (.I0(Rq_data0[12]),
        .I1(RF_Rq_rd),
        .O(Rq_data[12]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry_i_1
       (.I0(Rq_data[3]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[3]),
        .O(\^S [3]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry_i_2
       (.I0(Rq_data[2]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[2]),
        .O(\^S [2]));
  LUT3 #(
    .INIT(8'h96)) 
    __13_carry_i_3
       (.I0(Rq_data[1]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(Rp_data[1]),
        .O(\^S [1]));
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry_i_5
       (.I0(Rq_data0[3]),
        .I1(RF_Rq_rd),
        .O(Rq_data[3]));
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry_i_6
       (.I0(Rq_data0[2]),
        .I1(RF_Rq_rd),
        .O(Rq_data[2]));
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry_i_7
       (.I0(Rq_data0[1]),
        .I1(RF_Rq_rd),
        .O(Rq_data[1]));
  LUT2 #(
    .INIT(4'h8)) 
    __13_carry_i_8
       (.I0(Rq_data0[0]),
        .I1(RF_Rq_rd),
        .O(Rq_data[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r1_0_15_0_5
       (.ADDRA({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRB({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRC({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[1:0]),
        .DIB(W_data[3:2]),
        .DIC(W_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(Rp_data0[1:0]),
        .DOB(Rp_data0[3:2]),
        .DOC(Rp_data0[5:4]),
        .DOD(NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  MUXF7 mem_reg_r1_0_15_0_5_i_11
       (.I0(mem_reg_r1_0_15_0_5_i_18_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_19_n_0),
        .O(out__128[0]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_0_5_i_12
       (.I0(mem_reg_r1_0_15_0_5_i_20_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_21_n_0),
        .O(out__128[2]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_0_5_i_13
       (.I0(mem_reg_r1_0_15_0_5_i_22_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_23_n_0),
        .O(out__128[1]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_0_5_i_14
       (.I0(mem_reg_r1_0_15_0_5_i_24_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_25_n_0),
        .O(out__128[4]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_0_5_i_15
       (.I0(mem_reg_r1_0_15_0_5_i_26_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_27_n_0),
        .O(out__128[3]),
        .S(\FSM_sequential_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_16
       (.I0(data1[1]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_29_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[1]),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_17
       (.I0(Rp_data[1]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_30_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[1]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_18
       (.I0(data1[0]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_31_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[0]),
        .O(mem_reg_r1_0_15_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_19
       (.I0(Rp_data[0]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_32_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[0]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_0_5_i_19_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_20
       (.I0(data1[3]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_33_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[3]),
        .O(mem_reg_r1_0_15_0_5_i_20_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_21
       (.I0(Rp_data[3]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_34_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[3]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_0_5_i_21_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_22
       (.I0(data1[2]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_35_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[2]),
        .O(mem_reg_r1_0_15_0_5_i_22_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_23
       (.I0(Rp_data[2]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_36_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[2]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_0_5_i_23_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_24
       (.I0(data1[5]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_37_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[5]),
        .O(mem_reg_r1_0_15_0_5_i_24_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_25
       (.I0(Rp_data[5]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_38_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[5]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_0_5_i_25_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_0_5_i_26
       (.I0(data1[4]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_0_5_i_39_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[4]),
        .O(mem_reg_r1_0_15_0_5_i_26_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_0_5_i_27
       (.I0(Rp_data[4]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_0_5_i_40_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[4]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_0_5_i_27_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mem_reg_r1_0_15_0_5_i_28
       (.I0(Rq_data[13]),
        .I1(Rq_data[12]),
        .I2(Rq_data[15]),
        .I3(Rq_data[14]),
        .I4(mem_reg_r1_0_15_0_5_i_41_n_0),
        .I5(mem_reg_r1_0_15_0_5_i_42_n_0),
        .O(mem_reg_r1_0_15_0_5_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_29
       (.I0(mem_reg_r1_0_15_0_5_i_43_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_44_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_45_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_46_n_0),
        .O(mem_reg_r1_0_15_0_5_i_29_n_0));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    mem_reg_r1_0_15_0_5_i_30
       (.I0(Rp_data[0]),
        .I1(Rq_data[0]),
        .I2(Rq_data[2]),
        .I3(Rp_data[1]),
        .I4(Rq_data[3]),
        .I5(Rq_data[1]),
        .O(mem_reg_r1_0_15_0_5_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_31
       (.I0(mem_reg_r1_0_15_0_5_i_45_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_46_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_44_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_47_n_0),
        .O(mem_reg_r1_0_15_0_5_i_31_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    mem_reg_r1_0_15_0_5_i_32
       (.I0(Rq_data[1]),
        .I1(Rq_data[3]),
        .I2(Rp_data[0]),
        .I3(Rq_data[2]),
        .I4(Rq_data[0]),
        .O(mem_reg_r1_0_15_0_5_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_33
       (.I0(mem_reg_r1_0_15_0_5_i_48_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_43_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_49_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_45_n_0),
        .O(mem_reg_r1_0_15_0_5_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_0_5_i_34
       (.I0(mem_reg_r1_0_15_0_5_i_50_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_0_5_i_51_n_0),
        .O(mem_reg_r1_0_15_0_5_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_35
       (.I0(mem_reg_r1_0_15_0_5_i_49_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_45_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_43_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_44_n_0),
        .O(mem_reg_r1_0_15_0_5_i_35_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    mem_reg_r1_0_15_0_5_i_36
       (.I0(Rq_data[2]),
        .I1(Rp_data[1]),
        .I2(Rq_data[3]),
        .I3(Rq_data[1]),
        .I4(Rq_data[0]),
        .I5(mem_reg_r1_0_15_0_5_i_50_n_0),
        .O(mem_reg_r1_0_15_0_5_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_37
       (.I0(mem_reg_r1_0_15_0_5_i_52_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_48_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_53_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_49_n_0),
        .O(mem_reg_r1_0_15_0_5_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_0_5_i_38
       (.I0(mem_reg_r1_0_15_0_5_i_54_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_0_5_i_55_n_0),
        .O(mem_reg_r1_0_15_0_5_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_39
       (.I0(mem_reg_r1_0_15_0_5_i_53_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_49_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_48_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_43_n_0),
        .O(mem_reg_r1_0_15_0_5_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_0_5_i_40
       (.I0(mem_reg_r1_0_15_0_5_i_51_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_0_5_i_54_n_0),
        .O(mem_reg_r1_0_15_0_5_i_40_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_r1_0_15_0_5_i_41
       (.I0(Rq_data[6]),
        .I1(Rq_data[7]),
        .I2(Rq_data[4]),
        .I3(Rq_data[5]),
        .O(mem_reg_r1_0_15_0_5_i_41_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_r1_0_15_0_5_i_42
       (.I0(Rq_data[10]),
        .I1(Rq_data[11]),
        .I2(Rq_data[8]),
        .I3(Rq_data[9]),
        .O(mem_reg_r1_0_15_0_5_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_0_5_i_43
       (.I0(Rp_data[8]),
        .I1(Rq_data[2]),
        .I2(Rp_data[12]),
        .I3(Rq_data[3]),
        .I4(Rp_data[4]),
        .O(mem_reg_r1_0_15_0_5_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_44
       (.I0(Rp_data[14]),
        .I1(Rp_data[6]),
        .I2(Rq_data[2]),
        .I3(Rp_data[10]),
        .I4(Rq_data[3]),
        .I5(Rp_data[2]),
        .O(mem_reg_r1_0_15_0_5_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_45
       (.I0(Rp_data[15]),
        .I1(Rp_data[7]),
        .I2(Rq_data[2]),
        .I3(Rp_data[11]),
        .I4(Rq_data[3]),
        .I5(Rp_data[3]),
        .O(mem_reg_r1_0_15_0_5_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_46
       (.I0(Rp_data[13]),
        .I1(Rp_data[5]),
        .I2(Rq_data[2]),
        .I3(Rp_data[9]),
        .I4(Rq_data[3]),
        .I5(Rp_data[1]),
        .O(mem_reg_r1_0_15_0_5_i_46_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_0_5_i_47
       (.I0(Rp_data[12]),
        .I1(Rp_data[4]),
        .I2(Rq_data[2]),
        .I3(Rp_data[8]),
        .I4(Rq_data[3]),
        .I5(Rp_data[0]),
        .O(mem_reg_r1_0_15_0_5_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_0_5_i_48
       (.I0(Rp_data[10]),
        .I1(Rq_data[2]),
        .I2(Rp_data[14]),
        .I3(Rq_data[3]),
        .I4(Rp_data[6]),
        .O(mem_reg_r1_0_15_0_5_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_0_5_i_49
       (.I0(Rp_data[9]),
        .I1(Rq_data[2]),
        .I2(Rp_data[13]),
        .I3(Rq_data[3]),
        .I4(Rp_data[5]),
        .O(mem_reg_r1_0_15_0_5_i_49_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    mem_reg_r1_0_15_0_5_i_50
       (.I0(Rp_data[0]),
        .I1(Rq_data[1]),
        .I2(Rq_data[3]),
        .I3(Rp_data[2]),
        .I4(Rq_data[2]),
        .O(mem_reg_r1_0_15_0_5_i_50_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    mem_reg_r1_0_15_0_5_i_51
       (.I0(Rp_data[1]),
        .I1(Rq_data[1]),
        .I2(Rq_data[3]),
        .I3(Rp_data[3]),
        .I4(Rq_data[2]),
        .O(mem_reg_r1_0_15_0_5_i_51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_0_5_i_52
       (.I0(Rp_data[12]),
        .I1(Rq_data[2]),
        .I2(Rp_data[8]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_0_5_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_0_5_i_53
       (.I0(Rp_data[11]),
        .I1(Rq_data[2]),
        .I2(Rp_data[15]),
        .I3(Rq_data[3]),
        .I4(Rp_data[7]),
        .O(mem_reg_r1_0_15_0_5_i_53_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    mem_reg_r1_0_15_0_5_i_54
       (.I0(Rp_data[2]),
        .I1(Rq_data[1]),
        .I2(Rp_data[0]),
        .I3(Rq_data[2]),
        .I4(Rp_data[4]),
        .I5(Rq_data[3]),
        .O(mem_reg_r1_0_15_0_5_i_54_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    mem_reg_r1_0_15_0_5_i_55
       (.I0(Rp_data[3]),
        .I1(Rq_data[1]),
        .I2(Rp_data[1]),
        .I3(Rq_data[2]),
        .I4(Rp_data[5]),
        .I5(Rq_data[3]),
        .O(mem_reg_r1_0_15_0_5_i_55_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r1_0_15_12_15
       (.ADDRA({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRB({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRC({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[13:12]),
        .DIB(W_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(Rp_data0[13:12]),
        .DOB(Rp_data0[15:14]),
        .DOC(NLW_mem_reg_r1_0_15_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_r1_0_15_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_12_15_i_10
       (.I0(Rp_data[13]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_12_15_i_18_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[13]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_12_15_i_11
       (.I0(data1[12]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_12_15_i_19_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[12]),
        .O(mem_reg_r1_0_15_12_15_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_12_15_i_12
       (.I0(Rp_data[12]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_12_15_i_20_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[12]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_12_15_i_12_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_12_15_i_13
       (.I0(data1[15]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_12_15_i_21_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[15]),
        .O(mem_reg_3));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_12_15_i_14
       (.I0(Rp_data[15]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_12_15_i_22_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[15]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_12_15_i_15
       (.I0(data1[14]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_12_15_i_23_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[14]),
        .O(mem_reg_r1_0_15_12_15_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_12_15_i_16
       (.I0(Rp_data[14]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_12_15_i_24_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[14]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_12_15_i_16_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    mem_reg_r1_0_15_12_15_i_17
       (.I0(Rq_data[2]),
        .I1(Rp_data[14]),
        .I2(Rq_data[3]),
        .I3(Rq_data[1]),
        .I4(Rq_data[0]),
        .I5(mem_reg_r1_0_15_12_15_i_25_n_0),
        .O(mem_reg_r1_0_15_12_15_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_18
       (.I0(mem_reg_r1_0_15_6_11_i_49_n_0),
        .I1(mem_reg_r1_0_15_12_15_i_26_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_50_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_12_15_i_27_n_0),
        .O(mem_reg_r1_0_15_12_15_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_12_15_i_19
       (.I0(mem_reg_r1_0_15_12_15_i_25_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_6_11_i_47_n_0),
        .O(mem_reg_r1_0_15_12_15_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_20
       (.I0(mem_reg_r1_0_15_6_11_i_46_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_50_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_49_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_12_15_i_26_n_0),
        .O(mem_reg_r1_0_15_12_15_i_20_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    mem_reg_r1_0_15_12_15_i_21
       (.I0(Rq_data[1]),
        .I1(Rq_data[3]),
        .I2(Rp_data[15]),
        .I3(Rq_data[2]),
        .I4(Rq_data[0]),
        .O(mem_reg_r1_0_15_12_15_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_22
       (.I0(mem_reg_r1_0_15_12_15_i_26_n_0),
        .I1(mem_reg_r1_0_15_12_15_i_28_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_12_15_i_27_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_12_15_i_29_n_0),
        .O(mem_reg_r1_0_15_12_15_i_22_n_0));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    mem_reg_r1_0_15_12_15_i_23
       (.I0(Rp_data[15]),
        .I1(Rq_data[0]),
        .I2(Rq_data[2]),
        .I3(Rp_data[14]),
        .I4(Rq_data[3]),
        .I5(Rq_data[1]),
        .O(mem_reg_r1_0_15_12_15_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_24
       (.I0(mem_reg_r1_0_15_6_11_i_50_n_0),
        .I1(mem_reg_r1_0_15_12_15_i_27_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_12_15_i_26_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_12_15_i_28_n_0),
        .O(mem_reg_r1_0_15_12_15_i_24_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    mem_reg_r1_0_15_12_15_i_25
       (.I0(Rp_data[15]),
        .I1(Rq_data[1]),
        .I2(Rq_data[3]),
        .I3(Rp_data[13]),
        .I4(Rq_data[2]),
        .O(mem_reg_r1_0_15_12_15_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_26
       (.I0(Rp_data[0]),
        .I1(Rp_data[8]),
        .I2(Rq_data[2]),
        .I3(Rp_data[4]),
        .I4(Rq_data[3]),
        .I5(Rp_data[12]),
        .O(mem_reg_r1_0_15_12_15_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_27
       (.I0(Rp_data[1]),
        .I1(Rp_data[9]),
        .I2(Rq_data[2]),
        .I3(Rp_data[5]),
        .I4(Rq_data[3]),
        .I5(Rp_data[13]),
        .O(mem_reg_r1_0_15_12_15_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_28
       (.I0(Rp_data[2]),
        .I1(Rp_data[10]),
        .I2(Rq_data[2]),
        .I3(Rp_data[6]),
        .I4(Rq_data[3]),
        .I5(Rp_data[14]),
        .O(mem_reg_r1_0_15_12_15_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_12_15_i_29
       (.I0(Rp_data[3]),
        .I1(Rp_data[11]),
        .I2(Rq_data[2]),
        .I3(Rp_data[7]),
        .I4(Rq_data[3]),
        .I5(Rp_data[15]),
        .O(mem_reg_r1_0_15_12_15_i_29_n_0));
  MUXF7 mem_reg_r1_0_15_12_15_i_6
       (.I0(mem_reg_r1_0_15_12_15_i_11_n_0),
        .I1(mem_reg_r1_0_15_12_15_i_12_n_0),
        .O(out__128[11]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_12_15_i_8
       (.I0(mem_reg_r1_0_15_12_15_i_15_n_0),
        .I1(mem_reg_r1_0_15_12_15_i_16_n_0),
        .O(out__128[12]),
        .S(\FSM_sequential_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_12_15_i_9
       (.I0(data1[13]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_12_15_i_17_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[13]),
        .O(mem_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r1_0_15_6_11
       (.ADDRA({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRB({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRC({1'b0,\FSM_sequential_state_reg[0] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[7:6]),
        .DIB(W_data[9:8]),
        .DIC(W_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(Rp_data0[7:6]),
        .DOB(Rp_data0[9:8]),
        .DOC(Rp_data0[11:10]),
        .DOD(NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  MUXF7 mem_reg_r1_0_15_6_11_i_10
       (.I0(mem_reg_r1_0_15_6_11_i_19_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_20_n_0),
        .O(out__128[7]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_6_11_i_11
       (.I0(mem_reg_r1_0_15_6_11_i_21_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_22_n_0),
        .O(out__128[10]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_6_11_i_12
       (.I0(mem_reg_r1_0_15_6_11_i_23_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_24_n_0),
        .O(out__128[9]),
        .S(\FSM_sequential_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_13
       (.I0(data1[7]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_25_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[7]),
        .O(mem_reg_r1_0_15_6_11_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_14
       (.I0(Rp_data[7]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_26_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[7]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_14_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_15
       (.I0(data1[6]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_27_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[6]),
        .O(mem_reg_r1_0_15_6_11_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_16
       (.I0(Rp_data[6]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_28_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[6]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_16_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_17
       (.I0(data1[9]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_29_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[9]),
        .O(mem_reg_r1_0_15_6_11_i_17_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_18
       (.I0(Rp_data[9]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_30_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[9]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_18_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_19
       (.I0(data1[8]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_31_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[8]),
        .O(mem_reg_r1_0_15_6_11_i_19_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_20
       (.I0(Rp_data[8]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_32_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[8]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_20_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_21
       (.I0(data1[11]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_33_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[11]),
        .O(mem_reg_r1_0_15_6_11_i_21_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_22
       (.I0(Rp_data[11]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_34_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[11]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_22_n_0));
  LUT6 #(
    .INIT(64'hFCCCBBBB30008888)) 
    mem_reg_r1_0_15_6_11_i_23
       (.I0(data1[10]),
        .I1(\FSM_sequential_state_reg[1] [1]),
        .I2(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I3(mem_reg_r1_0_15_6_11_i_35_n_0),
        .I4(\FSM_sequential_state_reg[1] [2]),
        .I5(Rp_data[10]),
        .O(mem_reg_r1_0_15_6_11_i_23_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0FFC000)) 
    mem_reg_r1_0_15_6_11_i_24
       (.I0(Rp_data[10]),
        .I1(mem_reg_r1_0_15_0_5_i_28_n_0),
        .I2(mem_reg_r1_0_15_6_11_i_36_n_0),
        .I3(\FSM_sequential_state_reg[1] [1]),
        .I4(data1[10]),
        .I5(\FSM_sequential_state_reg[1] [2]),
        .O(mem_reg_r1_0_15_6_11_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_25
       (.I0(mem_reg_r1_0_15_6_11_i_37_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_52_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_38_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_53_n_0),
        .O(mem_reg_r1_0_15_6_11_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_26
       (.I0(mem_reg_r1_0_15_6_11_i_39_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_40_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_41_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_6_11_i_42_n_0),
        .O(mem_reg_r1_0_15_6_11_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_27
       (.I0(mem_reg_r1_0_15_6_11_i_38_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_53_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_0_5_i_52_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_48_n_0),
        .O(mem_reg_r1_0_15_6_11_i_27_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_6_11_i_28
       (.I0(mem_reg_r1_0_15_0_5_i_55_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_6_11_i_39_n_0),
        .I3(Rq_data[1]),
        .I4(mem_reg_r1_0_15_6_11_i_40_n_0),
        .O(mem_reg_r1_0_15_6_11_i_28_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_6_11_i_29
       (.I0(mem_reg_r1_0_15_6_11_i_43_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_6_11_i_44_n_0),
        .I3(Rq_data[1]),
        .I4(mem_reg_r1_0_15_6_11_i_38_n_0),
        .O(mem_reg_r1_0_15_6_11_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_30
       (.I0(mem_reg_r1_0_15_6_11_i_40_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_45_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_42_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_6_11_i_46_n_0),
        .O(mem_reg_r1_0_15_6_11_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_31
       (.I0(mem_reg_r1_0_15_6_11_i_44_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_38_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_37_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_0_5_i_52_n_0),
        .O(mem_reg_r1_0_15_6_11_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_32
       (.I0(mem_reg_r1_0_15_6_11_i_41_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_42_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_40_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_6_11_i_45_n_0),
        .O(mem_reg_r1_0_15_6_11_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_6_11_i_33
       (.I0(mem_reg_r1_0_15_6_11_i_47_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_6_11_i_48_n_0),
        .O(mem_reg_r1_0_15_6_11_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_34
       (.I0(mem_reg_r1_0_15_6_11_i_45_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_49_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_46_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_6_11_i_50_n_0),
        .O(mem_reg_r1_0_15_6_11_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_r1_0_15_6_11_i_35
       (.I0(mem_reg_r1_0_15_6_11_i_48_n_0),
        .I1(Rq_data[0]),
        .I2(mem_reg_r1_0_15_6_11_i_43_n_0),
        .O(mem_reg_r1_0_15_6_11_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_r1_0_15_6_11_i_36
       (.I0(mem_reg_r1_0_15_6_11_i_42_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_46_n_0),
        .I2(Rq_data[0]),
        .I3(mem_reg_r1_0_15_6_11_i_45_n_0),
        .I4(Rq_data[1]),
        .I5(mem_reg_r1_0_15_6_11_i_49_n_0),
        .O(mem_reg_r1_0_15_6_11_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_37
       (.I0(Rp_data[14]),
        .I1(Rq_data[2]),
        .I2(Rp_data[10]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_38
       (.I0(Rp_data[13]),
        .I1(Rq_data[2]),
        .I2(Rp_data[9]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_39
       (.I0(Rp_data[0]),
        .I1(Rq_data[2]),
        .I2(Rp_data[4]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_40
       (.I0(Rp_data[2]),
        .I1(Rq_data[2]),
        .I2(Rp_data[6]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_41
       (.I0(Rp_data[1]),
        .I1(Rq_data[2]),
        .I2(Rp_data[5]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_42
       (.I0(Rp_data[3]),
        .I1(Rq_data[2]),
        .I2(Rp_data[7]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_42_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    mem_reg_r1_0_15_6_11_i_43
       (.I0(Rp_data[12]),
        .I1(Rq_data[1]),
        .I2(Rp_data[14]),
        .I3(Rq_data[2]),
        .I4(Rp_data[10]),
        .I5(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    mem_reg_r1_0_15_6_11_i_44
       (.I0(Rp_data[15]),
        .I1(Rq_data[2]),
        .I2(Rp_data[11]),
        .I3(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_6_11_i_45
       (.I0(Rp_data[4]),
        .I1(Rq_data[2]),
        .I2(Rp_data[0]),
        .I3(Rq_data[3]),
        .I4(Rp_data[8]),
        .O(mem_reg_r1_0_15_6_11_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_6_11_i_46
       (.I0(Rp_data[5]),
        .I1(Rq_data[2]),
        .I2(Rp_data[1]),
        .I3(Rq_data[3]),
        .I4(Rp_data[9]),
        .O(mem_reg_r1_0_15_6_11_i_46_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    mem_reg_r1_0_15_6_11_i_47
       (.I0(Rp_data[14]),
        .I1(Rq_data[1]),
        .I2(Rq_data[3]),
        .I3(Rp_data[12]),
        .I4(Rq_data[2]),
        .O(mem_reg_r1_0_15_6_11_i_47_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    mem_reg_r1_0_15_6_11_i_48
       (.I0(Rp_data[13]),
        .I1(Rq_data[1]),
        .I2(Rp_data[15]),
        .I3(Rq_data[2]),
        .I4(Rp_data[11]),
        .I5(Rq_data[3]),
        .O(mem_reg_r1_0_15_6_11_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_6_11_i_49
       (.I0(Rp_data[6]),
        .I1(Rq_data[2]),
        .I2(Rp_data[2]),
        .I3(Rq_data[3]),
        .I4(Rp_data[10]),
        .O(mem_reg_r1_0_15_6_11_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    mem_reg_r1_0_15_6_11_i_50
       (.I0(Rp_data[7]),
        .I1(Rq_data[2]),
        .I2(Rp_data[3]),
        .I3(Rq_data[3]),
        .I4(Rp_data[11]),
        .O(mem_reg_r1_0_15_6_11_i_50_n_0));
  MUXF7 mem_reg_r1_0_15_6_11_i_7
       (.I0(mem_reg_r1_0_15_6_11_i_13_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_14_n_0),
        .O(out__128[6]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_6_11_i_8
       (.I0(mem_reg_r1_0_15_6_11_i_15_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_16_n_0),
        .O(out__128[5]),
        .S(\FSM_sequential_state_reg[1] [0]));
  MUXF7 mem_reg_r1_0_15_6_11_i_9
       (.I0(mem_reg_r1_0_15_6_11_i_17_n_0),
        .I1(mem_reg_r1_0_15_6_11_i_18_n_0),
        .O(out__128[8]),
        .S(\FSM_sequential_state_reg[1] [0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r2_0_15_0_5
       (.ADDRA({1'b0,\out_reg[3] }),
        .ADDRB({1'b0,\out_reg[3] }),
        .ADDRC({1'b0,\out_reg[3] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[1:0]),
        .DIB(W_data[3:2]),
        .DIC(W_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(Rq_data0[1:0]),
        .DOB(Rq_data0[3:2]),
        .DOC(Rq_data0[5:4]),
        .DOD(NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r2_0_15_12_15
       (.ADDRA({1'b0,\out_reg[3] }),
        .ADDRB({1'b0,\out_reg[3] }),
        .ADDRC({1'b0,\out_reg[3] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[13:12]),
        .DIB(W_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(Rq_data0[13:12]),
        .DOB(Rq_data0[15:14]),
        .DOC(NLW_mem_reg_r2_0_15_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_r2_0_15_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_r2_0_15_6_11
       (.ADDRA({1'b0,\out_reg[3] }),
        .ADDRB({1'b0,\out_reg[3] }),
        .ADDRC({1'b0,\out_reg[3] }),
        .ADDRD({1'b0,\out_reg[11] }),
        .DIA(W_data[7:6]),
        .DIB(W_data[9:8]),
        .DIC(W_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(Rq_data0[7:6]),
        .DOB(Rq_data0[9:8]),
        .DOC(Rq_data0[11:10]),
        .DOD(NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_m_IBUF_BUFG),
        .WE(RF_W_wr));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[0]_i_1 
       (.I0(Rp_data0[0]),
        .I1(RF_Rp_rd),
        .O(Rp_data[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[10]_i_1 
       (.I0(Rp_data0[10]),
        .I1(RF_Rp_rd),
        .O(Rp_data[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[11]_i_1 
       (.I0(Rp_data0[11]),
        .I1(RF_Rp_rd),
        .O(Rp_data[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[12]_i_1 
       (.I0(Rp_data0[12]),
        .I1(RF_Rp_rd),
        .O(Rp_data[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[13]_i_1 
       (.I0(Rp_data0[13]),
        .I1(RF_Rp_rd),
        .O(Rp_data[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[14]_i_1 
       (.I0(Rp_data0[14]),
        .I1(RF_Rp_rd),
        .O(Rp_data[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[15]_i_1__0 
       (.I0(Rp_data0[15]),
        .I1(RF_Rp_rd),
        .O(Rp_data[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[1]_i_1 
       (.I0(Rp_data0[1]),
        .I1(RF_Rp_rd),
        .O(Rp_data[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[2]_i_1 
       (.I0(Rp_data0[2]),
        .I1(RF_Rp_rd),
        .O(Rp_data[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[3]_i_1 
       (.I0(Rp_data0[3]),
        .I1(RF_Rp_rd),
        .O(Rp_data[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[4]_i_1 
       (.I0(Rp_data0[4]),
        .I1(RF_Rp_rd),
        .O(Rp_data[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[5]_i_1 
       (.I0(Rp_data0[5]),
        .I1(RF_Rp_rd),
        .O(Rp_data[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[6]_i_1 
       (.I0(Rp_data0[6]),
        .I1(RF_Rp_rd),
        .O(Rp_data[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[7]_i_1 
       (.I0(Rp_data0[7]),
        .I1(RF_Rp_rd),
        .O(Rp_data[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[8]_i_1 
       (.I0(Rp_data0[8]),
        .I1(RF_Rp_rd),
        .O(Rp_data[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \out_reg[9]_i_1 
       (.I0(Rp_data0[9]),
        .I1(RF_Rp_rd),
        .O(Rp_data[9]));
endmodule

module bloco_controle
   (out,
    mem_reg,
    \FSM_sequential_state_reg[1]_0 ,
    SR,
    E,
    D_rd,
    PC_ld,
    RF_Rp_rd,
    RF_W_wr,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    \counter_reg[7] ,
    D,
    mem_reg_3,
    mem_reg_4,
    \segmentos[1] ,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    Q,
    \out_reg[14] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \FSM_sequential_state_reg[2]_0 ,
    DOBDO,
    data,
    \counter_reg[0] ,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[3]_2 ,
    \FSM_sequential_state_reg[2]_2 ,
    \FSM_sequential_state_reg[3]_3 ,
    \FSM_sequential_state_reg[2]_3 ,
    \FSM_sequential_state_reg[3]_4 ,
    \FSM_sequential_state_reg[3]_5 ,
    CLK,
    AR,
    \out_reg[15] );
  output [2:0]out;
  output [0:0]mem_reg;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output D_rd;
  output PC_ld;
  output RF_Rp_rd;
  output RF_W_wr;
  output [2:0]mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output [0:0]\counter_reg[7] ;
  output [0:0]D;
  output [2:0]mem_reg_3;
  output mem_reg_4;
  output [0:0]\segmentos[1] ;
  output [0:0]mem_reg_5;
  output [7:0]mem_reg_6;
  output [3:0]mem_reg_7;
  output [3:0]mem_reg_8;
  output [3:0]mem_reg_9;
  input [14:0]Q;
  input \out_reg[14] ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input [2:0]\FSM_sequential_state_reg[2]_0 ;
  input [2:0]DOBDO;
  input [0:0]data;
  input [0:0]\counter_reg[0] ;
  input \FSM_sequential_state_reg[2]_1 ;
  input \FSM_sequential_state_reg[3]_2 ;
  input \FSM_sequential_state_reg[2]_2 ;
  input \FSM_sequential_state_reg[3]_3 ;
  input \FSM_sequential_state_reg[2]_3 ;
  input \FSM_sequential_state_reg[3]_4 ;
  input \FSM_sequential_state_reg[3]_5 ;
  input CLK;
  input [0:0]AR;
  input [0:0]\out_reg[15] ;

  wire \ALU_s_reg[0]_i_1_n_0 ;
  wire \ALU_s_reg[1]_i_1_n_0 ;
  wire \ALU_s_reg[2]_i_1_n_0 ;
  wire \ALU_s_reg[2]_i_2_n_0 ;
  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DOBDO;
  wire \D_addr_reg[7]_i_1_n_0 ;
  wire D_rd;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [2:0]\FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[2]_3 ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire \FSM_sequential_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[3]_3 ;
  wire \FSM_sequential_state_reg[3]_4 ;
  wire \FSM_sequential_state_reg[3]_5 ;
  wire PC_ld;
  wire [14:0]Q;
  wire \RF_Rp_addr_reg[0]_i_1_n_0 ;
  wire \RF_Rp_addr_reg[1]_i_1_n_0 ;
  wire \RF_Rp_addr_reg[2]_i_1_n_0 ;
  wire \RF_Rp_addr_reg[3]_i_1_n_0 ;
  wire \RF_Rp_addr_reg[3]_i_2_n_0 ;
  wire RF_Rp_rd;
  wire \RF_W_addr_reg[3]_i_1_n_0 ;
  wire RF_W_wr;
  wire [0:0]SR;
  wire [15:1]\bloco_operacional/ALU/out__128 ;
  wire [0:0]\counter_reg[0] ;
  wire [0:0]\counter_reg[7] ;
  wire [0:0]data;
  wire [0:0]mem_reg;
  wire [2:0]mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [2:0]mem_reg_3;
  wire mem_reg_4;
  wire [0:0]mem_reg_5;
  wire [7:0]mem_reg_6;
  wire [3:0]mem_reg_7;
  wire [3:0]mem_reg_8;
  wire [3:0]mem_reg_9;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire \out_reg[14] ;
  wire [0:0]\out_reg[15] ;
  wire [0:0]\segmentos[1] ;
  (* RTL_KEEP = "yes" *) wire [2:2]state;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_s_reg[0] 
       (.CLR(1'b0),
        .D(\ALU_s_reg[0]_i_1_n_0 ),
        .G(\ALU_s_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_3[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \ALU_s_reg[0]_i_1 
       (.I0(out[1]),
        .O(\ALU_s_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_s_reg[1] 
       (.CLR(1'b0),
        .D(\ALU_s_reg[1]_i_1_n_0 ),
        .G(\ALU_s_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_3[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_s_reg[1]_i_1 
       (.I0(state),
        .I1(out[1]),
        .I2(out[2]),
        .O(\ALU_s_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_s_reg[2] 
       (.CLR(1'b0),
        .D(\ALU_s_reg[2]_i_1_n_0 ),
        .G(\ALU_s_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_3[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_s_reg[2]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\ALU_s_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h12A8)) 
    \ALU_s_reg[2]_i_2 
       (.I0(out[0]),
        .I1(state),
        .I2(out[1]),
        .I3(out[2]),
        .O(\ALU_s_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[5] 
       (.CLR(1'b0),
        .D(Q[5]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[6] 
       (.CLR(1'b0),
        .D(Q[6]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_addr_reg[7] 
       (.CLR(1'b0),
        .D(Q[7]),
        .G(\D_addr_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_6[7]));
  LUT4 #(
    .INIT(16'h0214)) 
    \D_addr_reg[7]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(state),
        .I3(out[1]),
        .O(\D_addr_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FF772555FF7727)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out[1]),
        .I1(\out_reg[14] ),
        .I2(out[0]),
        .I3(out[2]),
        .I4(state),
        .I5(Q[12]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000007F0)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(state),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h000E0002)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_0 ),
        .I1(out[1]),
        .I2(state),
        .I3(out[0]),
        .I4(\FSM_sequential_state_reg[3]_5 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11100010)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state),
        .I1(out[0]),
        .I2(\FSM_sequential_state_reg[3]_0 ),
        .I3(out[1]),
        .I4(\FSM_sequential_state_reg[3]_1 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[15] ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(out[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    I_rd_OBUF_inst_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(state),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rp_addr_reg[0] 
       (.CLR(1'b0),
        .D(\RF_Rp_addr_reg[0]_i_1_n_0 ),
        .G(\RF_Rp_addr_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_8[0]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \RF_Rp_addr_reg[0]_i_1 
       (.I0(out[0]),
        .I1(Q[4]),
        .I2(out[1]),
        .I3(Q[8]),
        .O(\RF_Rp_addr_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rp_addr_reg[1] 
       (.CLR(1'b0),
        .D(\RF_Rp_addr_reg[1]_i_1_n_0 ),
        .G(\RF_Rp_addr_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_8[1]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \RF_Rp_addr_reg[1]_i_1 
       (.I0(out[0]),
        .I1(Q[5]),
        .I2(out[1]),
        .I3(Q[9]),
        .O(\RF_Rp_addr_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rp_addr_reg[2] 
       (.CLR(1'b0),
        .D(\RF_Rp_addr_reg[2]_i_1_n_0 ),
        .G(\RF_Rp_addr_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_8[2]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \RF_Rp_addr_reg[2]_i_1 
       (.I0(out[0]),
        .I1(Q[6]),
        .I2(out[1]),
        .I3(Q[10]),
        .O(\RF_Rp_addr_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rp_addr_reg[3] 
       (.CLR(1'b0),
        .D(\RF_Rp_addr_reg[3]_i_1_n_0 ),
        .G(\RF_Rp_addr_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_8[3]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \RF_Rp_addr_reg[3]_i_1 
       (.I0(out[0]),
        .I1(Q[7]),
        .I2(out[1]),
        .I3(Q[11]),
        .O(\RF_Rp_addr_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h354C)) 
    \RF_Rp_addr_reg[3]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(state),
        .O(\RF_Rp_addr_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rq_addr_reg[0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(mem_reg_5),
        .GE(1'b1),
        .Q(mem_reg_9[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rq_addr_reg[1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(mem_reg_5),
        .GE(1'b1),
        .Q(mem_reg_9[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rq_addr_reg[2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(mem_reg_5),
        .GE(1'b1),
        .Q(mem_reg_9[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_Rq_addr_reg[3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(mem_reg_5),
        .GE(1'b1),
        .Q(mem_reg_9[3]));
  LUT4 #(
    .INIT(16'h5208)) 
    \RF_Rq_addr_reg[3]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(state),
        .I3(out[0]),
        .O(mem_reg_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_W_addr_reg[0] 
       (.CLR(1'b0),
        .D(Q[8]),
        .G(\RF_W_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_W_addr_reg[1] 
       (.CLR(1'b0),
        .D(Q[9]),
        .G(\RF_W_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_W_addr_reg[2] 
       (.CLR(1'b0),
        .D(Q[10]),
        .G(\RF_W_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RF_W_addr_reg[3] 
       (.CLR(1'b0),
        .D(Q[11]),
        .G(\RF_W_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_reg_7[3]));
  LUT4 #(
    .INIT(16'h54E8)) 
    \RF_W_addr_reg[3]_i_1 
       (.I0(state),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(\RF_W_addr_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800000FFBFFFFF)) 
    \counter[0]_i_1 
       (.I0(data),
        .I1(state),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\counter_reg[0] ),
        .O(D));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[7]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(state),
        .O(SR));
  LUT4 #(
    .INIT(16'h0804)) 
    \counter[7]_i_2 
       (.I0(state),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(\counter_reg[7] ));
  LUT4 #(
    .INIT(16'h0800)) 
    \counter[7]_i_4 
       (.I0(state),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(PC_ld));
  LUT4 #(
    .INIT(16'h0002)) 
    mem_reg_i_2
       (.I0(state),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(mem_reg_4));
  LUT4 #(
    .INIT(16'h0020)) 
    mem_reg_i_3
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(state),
        .O(D_rd));
  LUT4 #(
    .INIT(16'h5E48)) 
    mem_reg_r1_0_15_0_5_i_1
       (.I0(state),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(RF_W_wr));
  LUT4 #(
    .INIT(16'h2400)) 
    mem_reg_r1_0_15_0_5_i_10
       (.I0(out[0]),
        .I1(state),
        .I2(out[2]),
        .I3(out[1]),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_2
       (.I0(\FSM_sequential_state_reg[2]_0 [0]),
        .I1(Q[1]),
        .I2(DOBDO[0]),
        .I3(mem_reg_2),
        .I4(\bloco_operacional/ALU/out__128 [1]),
        .I5(mem_reg_1),
        .O(mem_reg_0[0]));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_r1_0_15_0_5_i_8
       (.I0(state),
        .I1(out[1]),
        .I2(out[0]),
        .O(mem_reg_2));
  MUXF7 mem_reg_r1_0_15_0_5_i_9
       (.I0(\FSM_sequential_state_reg[2]_1 ),
        .I1(\FSM_sequential_state_reg[3]_2 ),
        .O(\bloco_operacional/ALU/out__128 [1]),
        .S(mem_reg_3[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_12_15_i_1
       (.I0(\FSM_sequential_state_reg[2]_0 [1]),
        .I1(mem_reg_1),
        .I2(DOBDO[1]),
        .I3(mem_reg_2),
        .I4(\bloco_operacional/ALU/out__128 [13]),
        .O(mem_reg_0[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_12_15_i_3
       (.I0(\FSM_sequential_state_reg[2]_0 [2]),
        .I1(mem_reg_1),
        .I2(DOBDO[2]),
        .I3(mem_reg_2),
        .I4(\bloco_operacional/ALU/out__128 [15]),
        .O(mem_reg_0[2]));
  MUXF7 mem_reg_r1_0_15_12_15_i_5
       (.I0(\FSM_sequential_state_reg[2]_2 ),
        .I1(\FSM_sequential_state_reg[3]_3 ),
        .O(\bloco_operacional/ALU/out__128 [13]),
        .S(mem_reg_3[0]));
  MUXF7 mem_reg_r1_0_15_12_15_i_7
       (.I0(\FSM_sequential_state_reg[2]_3 ),
        .I1(\FSM_sequential_state_reg[3]_4 ),
        .O(\bloco_operacional/ALU/out__128 [15]),
        .S(mem_reg_3[0]));
  LUT4 #(
    .INIT(16'h4000)) 
    \out_reg[15]_i_1 
       (.I0(state),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(mem_reg));
  LUT4 #(
    .INIT(16'h0020)) 
    \out_reg[15]_i_2 
       (.I0(state),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\segmentos[1] ));
  LUT4 #(
    .INIT(16'h523A)) 
    \out_reg[15]_i_3 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(state),
        .I3(out[0]),
        .O(RF_Rp_rd));
endmodule

module bloco_operacional
   (DOBDO,
    \FSM_sequential_state_reg[2] ,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    \segmentos[1] ,
    \segmentos[1]_0 ,
    \segmentos[1]_1 ,
    \segmentos[1]_2 ,
    \segmentos[1]_3 ,
    clk_m_IBUF_BUFG,
    clk_m,
    \FSM_sequential_state_reg[2]_0 ,
    D_rd,
    Q,
    \FSM_sequential_state_reg[1] ,
    out,
    mem_reg_6,
    RF_s1,
    RF_s0,
    \out_reg[7] ,
    \s_anodos_reg[3] ,
    RF_Rp_rd,
    RF_Rq_rd,
    E,
    SR,
    D,
    \FSM_sequential_state_reg[2]_1 ,
    RF_W_wr,
    \FSM_sequential_state_reg[0] ,
    \out_reg[11] ,
    \out_reg[3] );
  output [2:0]DOBDO;
  output \FSM_sequential_state_reg[2] ;
  output [2:0]mem_reg;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output \segmentos[1] ;
  output [15:0]\segmentos[1]_0 ;
  output \segmentos[1]_1 ;
  output \segmentos[1]_2 ;
  output \segmentos[1]_3 ;
  input clk_m_IBUF_BUFG;
  input clk_m;
  input \FSM_sequential_state_reg[2]_0 ;
  input D_rd;
  input [7:0]Q;
  input [2:0]\FSM_sequential_state_reg[1] ;
  input [0:0]out;
  input [2:0]mem_reg_6;
  input RF_s1;
  input RF_s0;
  input [6:0]\out_reg[7] ;
  input [2:0]\s_anodos_reg[3] ;
  input RF_Rp_rd;
  input RF_Rq_rd;
  input [0:0]E;
  input [0:0]SR;
  input [15:0]D;
  input [0:0]\FSM_sequential_state_reg[2]_1 ;
  input RF_W_wr;
  input [3:0]\FSM_sequential_state_reg[0] ;
  input [3:0]\out_reg[11] ;
  input [3:0]\out_reg[3] ;

  wire [15:0]D;
  wire [2:0]DOBDO;
  wire D_rd;
  wire [0:0]E;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire [2:0]\FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_1 ;
  wire [7:0]Q;
  wire RF_Rp_rd;
  wire RF_Rq_rd;
  wire RF_W_wr;
  wire RF_s0;
  wire RF_s1;
  wire [14:0]R_data;
  wire [15:0]Rp_data;
  wire [0:0]SR;
  wire [14:0]W_data;
  wire banco_registradores_n_1;
  wire banco_registradores_n_2;
  wire banco_registradores_n_3;
  wire banco_registradores_n_4;
  wire banco_registradores_n_40;
  wire banco_registradores_n_41;
  wire banco_registradores_n_42;
  wire banco_registradores_n_43;
  wire banco_registradores_n_44;
  wire banco_registradores_n_45;
  wire banco_registradores_n_46;
  wire banco_registradores_n_47;
  wire banco_registradores_n_48;
  wire banco_registradores_n_49;
  wire banco_registradores_n_50;
  wire banco_registradores_n_51;
  wire clk_m;
  wire clk_m_IBUF_BUFG;
  wire [15:0]data1;
  wire [2:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire [2:0]mem_reg_6;
  wire [0:0]out;
  wire [14:0]out__128;
  wire [3:0]\out_reg[11] ;
  wire [3:0]\out_reg[3] ;
  wire [6:0]\out_reg[7] ;
  wire [2:0]\s_anodos_reg[3] ;
  wire \segmentos[1] ;
  wire [15:0]\segmentos[1]_0 ;
  wire \segmentos[1]_1 ;
  wire \segmentos[1]_2 ;
  wire \segmentos[1]_3 ;

  ALU ALU
       (.\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[1] [1]),
        .\FSM_sequential_state_reg[3] ({banco_registradores_n_44,banco_registradores_n_45,banco_registradores_n_46,banco_registradores_n_47}),
        .\FSM_sequential_state_reg[3]_0 ({banco_registradores_n_48,banco_registradores_n_49,banco_registradores_n_50,banco_registradores_n_51}),
        .\FSM_sequential_state_reg[3]_1 ({banco_registradores_n_1,banco_registradores_n_2,banco_registradores_n_3,banco_registradores_n_4}),
        .Rp_data(Rp_data[14:0]),
        .S({banco_registradores_n_40,banco_registradores_n_41,banco_registradores_n_42,banco_registradores_n_43}),
        .data1(data1));
  banco_registradores banco_registradores
       (.\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .RF_Rp_rd(RF_Rp_rd),
        .RF_Rq_rd(RF_Rq_rd),
        .RF_W_wr(RF_W_wr),
        .Rp_data(Rp_data),
        .S({banco_registradores_n_40,banco_registradores_n_41,banco_registradores_n_42,banco_registradores_n_43}),
        .W_data({mem_reg_6[2],W_data[14],mem_reg_6[1],W_data[12:2],mem_reg_6[0],W_data[0]}),
        .clk_m_IBUF_BUFG(clk_m_IBUF_BUFG),
        .data1(data1),
        .mem_reg({banco_registradores_n_1,banco_registradores_n_2,banco_registradores_n_3,banco_registradores_n_4}),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg_1),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_3),
        .mem_reg_4(mem_reg_4),
        .mem_reg_5(mem_reg_5),
        .mem_reg_6({banco_registradores_n_44,banco_registradores_n_45,banco_registradores_n_46,banco_registradores_n_47}),
        .mem_reg_7({banco_registradores_n_48,banco_registradores_n_49,banco_registradores_n_50,banco_registradores_n_51}),
        .out(out),
        .out__128({out__128[14],out__128[12:2],out__128[0]}),
        .\out_reg[11] (\out_reg[11] ),
        .\out_reg[3] (\out_reg[3] ));
  register input_register
       (.D(D),
        .DOBDO({R_data[14],R_data[12:2],R_data[0]}),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2]_1 ),
        .RF_s0(RF_s0),
        .RF_s1(RF_s1),
        .SR(SR),
        .W_data({W_data[14],W_data[12:2],W_data[0]}),
        .mem_reg(mem_reg),
        .out__128({out__128[14],out__128[12:2],out__128[0]}),
        .\out_reg[7]_0 (\out_reg[7] ));
  memoria memoria
       (.D(Rp_data),
        .DOBDO({DOBDO[2],R_data[14],DOBDO[1],R_data[12:2],DOBDO[0],R_data[0]}),
        .D_rd(D_rd),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2]_0 ),
        .Q(Q),
        .clk_m(clk_m),
        .clk_m_IBUF_BUFG(clk_m_IBUF_BUFG));
  register_0 output_register
       (.D(Rp_data),
        .E(E),
        .SR(SR),
        .\s_anodos_reg[3] (\s_anodos_reg[3] ),
        .\segmentos[1] (\segmentos[1] ),
        .\segmentos[1]_0 (\segmentos[1]_0 ),
        .\segmentos[1]_1 (\segmentos[1]_1 ),
        .\segmentos[1]_2 (\segmentos[1]_2 ),
        .\segmentos[1]_3 (\segmentos[1]_3 ));
endmodule

module decoder_7seg
   (segmentos_OBUF,
    Q,
    SR,
    CLK,
    \s_anodos_reg[1]_0 ,
    \FSM_sequential_state_reg[2] ,
    \s_anodos_reg[1]_1 ,
    \s_anodos_reg[1]_2 ,
    \s_anodos_reg[1]_3 );
  output [6:0]segmentos_OBUF;
  output [3:0]Q;
  input [0:0]SR;
  input CLK;
  input \s_anodos_reg[1]_0 ;
  input [3:0]\FSM_sequential_state_reg[2] ;
  input \s_anodos_reg[1]_1 ;
  input \s_anodos_reg[1]_2 ;
  input \s_anodos_reg[1]_3 ;

  wire CLK;
  wire [3:0]\FSM_sequential_state_reg[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_div;
  wire clk_div_i_1_n_0;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire [16:0]counter_0;
  wire [16:1]data0;
  wire [3:0]digito__37;
  wire \s_anodos_reg[1]_0 ;
  wire \s_anodos_reg[1]_1 ;
  wire \s_anodos_reg[1]_2 ;
  wire \s_anodos_reg[1]_3 ;
  wire [6:0]segmentos_OBUF;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    clk_div_i_1
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(clk_div),
        .O(clk_div_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clk_div_i_1_n_0),
        .Q(clk_div),
        .R(SR));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1__0 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \counter[0]_i_2 
       (.I0(\counter[16]_i_5_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(\counter[0]_i_3_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter[0]_i_3 
       (.I0(counter[12]),
        .I1(counter[11]),
        .I2(counter[9]),
        .I3(counter[10]),
        .I4(\counter[16]_i_3_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[10]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[11]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[12]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[13]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[13]),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[14]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[14]),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[15]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[15]),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[16]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[16]),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[16]_i_2 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[11]),
        .I3(counter[12]),
        .O(\counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[16]_i_3 
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[16]_i_4 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[3]),
        .I3(counter[4]),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[16]_i_5 
       (.I0(counter[6]),
        .I1(counter[5]),
        .I2(counter[8]),
        .I3(counter[7]),
        .O(\counter[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[1]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[2]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[3]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[4]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[5]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[6]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[7]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[8]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[9]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[9]),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_anodos_reg[0] 
       (.C(clk_div),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \s_anodos_reg[1] 
       (.C(clk_div),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \s_anodos_reg[2] 
       (.C(clk_div),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \s_anodos_reg[3] 
       (.C(clk_div),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[3]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0285)) 
    \segmentos_OBUF[1]_inst_i_1 
       (.I0(digito__37[2]),
        .I1(digito__37[0]),
        .I2(digito__37[1]),
        .I3(digito__37[3]),
        .O(segmentos_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h408E)) 
    \segmentos_OBUF[2]_inst_i_1 
       (.I0(digito__37[1]),
        .I1(digito__37[0]),
        .I2(digito__37[2]),
        .I3(digito__37[3]),
        .O(segmentos_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \segmentos_OBUF[3]_inst_i_1 
       (.I0(digito__37[3]),
        .I1(digito__37[0]),
        .I2(digito__37[2]),
        .I3(digito__37[1]),
        .O(segmentos_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8924)) 
    \segmentos_OBUF[4]_inst_i_1 
       (.I0(digito__37[1]),
        .I1(digito__37[2]),
        .I2(digito__37[3]),
        .I3(digito__37[0]),
        .O(segmentos_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \segmentos_OBUF[5]_inst_i_1 
       (.I0(digito__37[2]),
        .I1(digito__37[0]),
        .I2(digito__37[1]),
        .I3(digito__37[3]),
        .O(segmentos_OBUF[4]));
  LUT4 #(
    .INIT(16'hE448)) 
    \segmentos_OBUF[6]_inst_i_1 
       (.I0(digito__37[0]),
        .I1(digito__37[2]),
        .I2(digito__37[1]),
        .I3(digito__37[3]),
        .O(segmentos_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2812)) 
    \segmentos_OBUF[7]_inst_i_1 
       (.I0(digito__37[0]),
        .I1(digito__37[1]),
        .I2(digito__37[2]),
        .I3(digito__37[3]),
        .O(segmentos_OBUF[6]));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \segmentos_OBUF[7]_inst_i_2 
       (.I0(\s_anodos_reg[1]_3 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[2] [0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(digito__37[0]));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \segmentos_OBUF[7]_inst_i_3 
       (.I0(\s_anodos_reg[1]_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[2] [1]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(digito__37[1]));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \segmentos_OBUF[7]_inst_i_4 
       (.I0(\s_anodos_reg[1]_1 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[2] [2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(digito__37[2]));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \segmentos_OBUF[7]_inst_i_5 
       (.I0(\s_anodos_reg[1]_2 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[2] [3]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(digito__37[3]));
endmodule

module memoria
   (DOBDO,
    clk_m_IBUF_BUFG,
    clk_m,
    \FSM_sequential_state_reg[2] ,
    D_rd,
    Q,
    D);
  output [15:0]DOBDO;
  input clk_m_IBUF_BUFG;
  input clk_m;
  input \FSM_sequential_state_reg[2] ;
  input D_rd;
  input [7:0]Q;
  input [15:0]D;

  wire [15:0]D;
  wire [15:0]DOBDO;
  wire D_rd;
  wire \FSM_sequential_state_reg[2] ;
  wire [7:0]Q;
  wire clk_m;
  wire clk_m_IBUF_BUFG;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKBWRCLK_INVERTED(1'b1),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_m_IBUF_BUFG),
        .CLKBWRCLK(clk_m),
        .DIADI(D),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(\FSM_sequential_state_reg[2] ),
        .ENBWREN(D_rd),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module memoria_instrucoes
   (I_data,
    I_addr,
    E);
  output [11:0]I_data;
  input [3:0]I_addr;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]I_addr;
  wire [11:0]I_data;
  wire \I_data_reg[0]_i_1_n_0 ;
  wire \I_data_reg[12]_i_1_n_0 ;
  wire \I_data_reg[13]_i_1_n_0 ;
  wire \I_data_reg[14]_i_1_n_0 ;
  wire \I_data_reg[15]_i_1_n_0 ;
  wire \I_data_reg[1]_i_1_n_0 ;
  wire \I_data_reg[3]_i_1_n_0 ;
  wire \I_data_reg[4]_i_1_n_0 ;
  wire \I_data_reg[5]_i_1_n_0 ;
  wire \I_data_reg[7]_i_1_n_0 ;
  wire \I_data_reg[8]_i_1_n_0 ;
  wire \I_data_reg[9]_i_1_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[0] 
       (.CLR(1'b0),
        .D(\I_data_reg[0]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h37F0)) 
    \I_data_reg[0]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[1]),
        .I2(I_addr[3]),
        .I3(I_addr[0]),
        .O(\I_data_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[12] 
       (.CLR(1'b0),
        .D(\I_data_reg[12]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \I_data_reg[12]_i_1 
       (.I0(I_addr[0]),
        .I1(I_addr[1]),
        .I2(I_addr[3]),
        .I3(I_addr[2]),
        .O(\I_data_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[13] 
       (.CLR(1'b0),
        .D(\I_data_reg[13]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0436)) 
    \I_data_reg[13]_i_1 
       (.I0(I_addr[0]),
        .I1(I_addr[1]),
        .I2(I_addr[3]),
        .I3(I_addr[2]),
        .O(\I_data_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[14] 
       (.CLR(1'b0),
        .D(\I_data_reg[14]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \I_data_reg[14]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[3]),
        .I2(I_addr[1]),
        .O(\I_data_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[15] 
       (.CLR(1'b0),
        .D(\I_data_reg[15]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA081)) 
    \I_data_reg[15]_i_1 
       (.I0(I_addr[0]),
        .I1(I_addr[3]),
        .I2(I_addr[1]),
        .I3(I_addr[2]),
        .O(\I_data_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[1] 
       (.CLR(1'b0),
        .D(\I_data_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4618)) 
    \I_data_reg[1]_i_1 
       (.I0(I_addr[0]),
        .I1(I_addr[2]),
        .I2(I_addr[1]),
        .I3(I_addr[3]),
        .O(\I_data_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[3] 
       (.CLR(1'b0),
        .D(\I_data_reg[3]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB480)) 
    \I_data_reg[3]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[0]),
        .I2(I_addr[3]),
        .I3(I_addr[1]),
        .O(\I_data_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[4] 
       (.CLR(1'b0),
        .D(\I_data_reg[4]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \I_data_reg[4]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[0]),
        .I2(I_addr[1]),
        .I3(I_addr[3]),
        .O(\I_data_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[5] 
       (.CLR(1'b0),
        .D(\I_data_reg[5]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \I_data_reg[5]_i_1 
       (.I0(I_addr[3]),
        .I1(I_addr[1]),
        .O(\I_data_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[7] 
       (.CLR(1'b0),
        .D(\I_data_reg[7]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \I_data_reg[7]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[3]),
        .I2(I_addr[0]),
        .O(\I_data_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[8] 
       (.CLR(1'b0),
        .D(\I_data_reg[8]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h23BA)) 
    \I_data_reg[8]_i_1 
       (.I0(I_addr[3]),
        .I1(I_addr[2]),
        .I2(I_addr[1]),
        .I3(I_addr[0]),
        .O(\I_data_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \I_data_reg[9] 
       (.CLR(1'b0),
        .D(\I_data_reg[9]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(I_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5074)) 
    \I_data_reg[9]_i_1 
       (.I0(I_addr[2]),
        .I1(I_addr[0]),
        .I2(I_addr[3]),
        .I3(I_addr[1]),
        .O(\I_data_reg[9]_i_1_n_0 ));
endmodule

module register
   (W_data,
    mem_reg,
    RF_s1,
    DOBDO,
    RF_s0,
    out__128,
    \out_reg[7]_0 ,
    D,
    \FSM_sequential_state_reg[2] ,
    SR);
  output [12:0]W_data;
  output [2:0]mem_reg;
  input RF_s1;
  input [12:0]DOBDO;
  input RF_s0;
  input [12:0]out__128;
  input [6:0]\out_reg[7]_0 ;
  input [15:0]D;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input [0:0]SR;

  wire [15:0]D;
  wire [12:0]DOBDO;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire RF_s0;
  wire RF_s1;
  wire [0:0]SR;
  wire [12:0]W_data;
  wire [14:0]in;
  wire [2:0]mem_reg;
  wire [12:0]out__128;
  wire [6:0]\out_reg[7]_0 ;

  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_3
       (.I0(in[0]),
        .I1(\out_reg[7]_0 [0]),
        .I2(DOBDO[0]),
        .I3(RF_s0),
        .I4(out__128[0]),
        .I5(RF_s1),
        .O(W_data[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_4
       (.I0(in[3]),
        .I1(\out_reg[7]_0 [2]),
        .I2(DOBDO[2]),
        .I3(RF_s0),
        .I4(out__128[2]),
        .I5(RF_s1),
        .O(W_data[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_5
       (.I0(in[2]),
        .I1(\out_reg[7]_0 [1]),
        .I2(DOBDO[1]),
        .I3(RF_s0),
        .I4(out__128[1]),
        .I5(RF_s1),
        .O(W_data[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_6
       (.I0(in[5]),
        .I1(\out_reg[7]_0 [4]),
        .I2(DOBDO[4]),
        .I3(RF_s0),
        .I4(out__128[4]),
        .I5(RF_s1),
        .O(W_data[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_0_5_i_7
       (.I0(in[4]),
        .I1(\out_reg[7]_0 [3]),
        .I2(DOBDO[3]),
        .I3(RF_s0),
        .I4(out__128[3]),
        .I5(RF_s1),
        .O(W_data[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_12_15_i_2
       (.I0(in[12]),
        .I1(RF_s1),
        .I2(DOBDO[11]),
        .I3(RF_s0),
        .I4(out__128[11]),
        .O(W_data[11]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_12_15_i_4
       (.I0(in[14]),
        .I1(RF_s1),
        .I2(DOBDO[12]),
        .I3(RF_s0),
        .I4(out__128[12]),
        .O(W_data[12]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_6_11_i_1
       (.I0(in[7]),
        .I1(\out_reg[7]_0 [6]),
        .I2(DOBDO[6]),
        .I3(RF_s0),
        .I4(out__128[6]),
        .I5(RF_s1),
        .O(W_data[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    mem_reg_r1_0_15_6_11_i_2
       (.I0(in[6]),
        .I1(\out_reg[7]_0 [5]),
        .I2(DOBDO[5]),
        .I3(RF_s0),
        .I4(out__128[5]),
        .I5(RF_s1),
        .O(W_data[5]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_6_11_i_3
       (.I0(in[9]),
        .I1(RF_s1),
        .I2(DOBDO[8]),
        .I3(RF_s0),
        .I4(out__128[8]),
        .O(W_data[8]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_6_11_i_4
       (.I0(in[8]),
        .I1(RF_s1),
        .I2(DOBDO[7]),
        .I3(RF_s0),
        .I4(out__128[7]),
        .O(W_data[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_6_11_i_5
       (.I0(in[11]),
        .I1(RF_s1),
        .I2(DOBDO[10]),
        .I3(RF_s0),
        .I4(out__128[10]),
        .O(W_data[10]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    mem_reg_r1_0_15_6_11_i_6
       (.I0(in[10]),
        .I1(RF_s1),
        .I2(DOBDO[9]),
        .I3(RF_s0),
        .I4(out__128[9]),
        .O(W_data[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.CLR(SR),
        .D(D[0]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.CLR(SR),
        .D(D[10]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.CLR(SR),
        .D(D[11]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.CLR(SR),
        .D(D[12]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.CLR(SR),
        .D(D[13]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(mem_reg[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.CLR(SR),
        .D(D[14]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.CLR(SR),
        .D(D[15]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(mem_reg[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.CLR(SR),
        .D(D[1]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(mem_reg[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.CLR(SR),
        .D(D[2]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.CLR(SR),
        .D(D[3]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.CLR(SR),
        .D(D[4]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.CLR(SR),
        .D(D[5]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.CLR(SR),
        .D(D[6]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.CLR(SR),
        .D(D[7]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.CLR(SR),
        .D(D[8]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.CLR(SR),
        .D(D[9]),
        .G(\FSM_sequential_state_reg[2] ),
        .GE(1'b1),
        .Q(in[9]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_0
   (\segmentos[1] ,
    \segmentos[1]_0 ,
    \segmentos[1]_1 ,
    \segmentos[1]_2 ,
    \segmentos[1]_3 ,
    \s_anodos_reg[3] ,
    D,
    E,
    SR);
  output \segmentos[1] ;
  output [15:0]\segmentos[1]_0 ;
  output \segmentos[1]_1 ;
  output \segmentos[1]_2 ;
  output \segmentos[1]_3 ;
  input [2:0]\s_anodos_reg[3] ;
  input [15:0]D;
  input [0:0]E;
  input [0:0]SR;

  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire [2:0]\s_anodos_reg[3] ;
  wire \segmentos[1] ;
  wire [15:0]\segmentos[1]_0 ;
  wire \segmentos[1]_1 ;
  wire \segmentos[1]_2 ;
  wire \segmentos[1]_3 ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.CLR(SR),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.CLR(SR),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.CLR(SR),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.CLR(SR),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.CLR(SR),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.CLR(SR),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.CLR(SR),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.CLR(SR),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.CLR(SR),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.CLR(SR),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.CLR(SR),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.CLR(SR),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.CLR(SR),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.CLR(SR),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.CLR(SR),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.CLR(SR),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(\segmentos[1]_0 [9]));
  LUT6 #(
    .INIT(64'h0FA0C00000A0C000)) 
    \segmentos_OBUF[7]_inst_i_6 
       (.I0(\segmentos[1]_0 [12]),
        .I1(\segmentos[1]_0 [8]),
        .I2(\s_anodos_reg[3] [0]),
        .I3(\s_anodos_reg[3] [2]),
        .I4(\s_anodos_reg[3] [1]),
        .I5(\segmentos[1]_0 [4]),
        .O(\segmentos[1] ));
  LUT6 #(
    .INIT(64'h0FA0C00000A0C000)) 
    \segmentos_OBUF[7]_inst_i_7 
       (.I0(\segmentos[1]_0 [13]),
        .I1(\segmentos[1]_0 [9]),
        .I2(\s_anodos_reg[3] [0]),
        .I3(\s_anodos_reg[3] [2]),
        .I4(\s_anodos_reg[3] [1]),
        .I5(\segmentos[1]_0 [5]),
        .O(\segmentos[1]_1 ));
  LUT6 #(
    .INIT(64'h0FA0C00000A0C000)) 
    \segmentos_OBUF[7]_inst_i_8 
       (.I0(\segmentos[1]_0 [14]),
        .I1(\segmentos[1]_0 [10]),
        .I2(\s_anodos_reg[3] [0]),
        .I3(\s_anodos_reg[3] [2]),
        .I4(\s_anodos_reg[3] [1]),
        .I5(\segmentos[1]_0 [6]),
        .O(\segmentos[1]_2 ));
  LUT6 #(
    .INIT(64'h0FA0C00000A0C000)) 
    \segmentos_OBUF[7]_inst_i_9 
       (.I0(\segmentos[1]_0 [15]),
        .I1(\segmentos[1]_0 [11]),
        .I2(\s_anodos_reg[3] [0]),
        .I3(\s_anodos_reg[3] [2]),
        .I4(\s_anodos_reg[3] [1]),
        .I5(\segmentos[1]_0 [7]),
        .O(\segmentos[1]_3 ));
endmodule

(* NotValidForBitStream *)
module top_module
   (clk,
    clk_m,
    rst,
    sw,
    leds,
    anodos,
    segmentos);
  input clk;
  input clk_m;
  input rst;
  input [15:0]sw;
  output [15:0]leds;
  output [3:0]anodos;
  output [7:0]segmentos;

  wire [7:0]I_addr;
  wire [15:0]I_data;
  wire I_rd;
  wire [3:0]anodos;
  wire clk;
  wire clk_IBUF;
  wire clk_m;
  wire clk_m_IBUF;
  wire [15:0]leds;
  wire rst;
  wire rst_IBUF;
  wire [7:0]segmentos;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF clk_m_IBUF_inst
       (.I(clk_m),
        .O(clk_m_IBUF));
  memoria_instrucoes memoria_instrucoes
       (.E(I_rd),
        .I_addr(I_addr[3:0]),
        .I_data({I_data[15:12],I_data[9:7],I_data[5:3],I_data[1:0]}));
  processador_top processador_top
       (.I_addr(I_addr),
        .I_data({I_data[15:12],1'b0,1'b0,I_data[9:7],I_data[7],I_data[5:3],1'b0,I_data[1:0]}),
        .I_rd(I_rd),
        .anodos(anodos),
        .clk(clk_IBUF),
        .clk_m(clk_m_IBUF),
        .leds(leds),
        .rst(rst_IBUF),
        .segmentos(segmentos),
        .sw(sw_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule

module unidade_controle
   (out,
    mem_reg,
    Q,
    E,
    D_rd,
    RF_Rp_rd,
    RF_W_wr,
    mem_reg_0,
    RF_s1,
    RF_s0,
    \counter_reg[7] ,
    mem_reg_1,
    mem_reg_2,
    \segmentos[1] ,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[2] ,
    DOBDO,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[3]_1 ,
    \FSM_sequential_state_reg[2]_2 ,
    \FSM_sequential_state_reg[3]_2 ,
    CLK,
    AR,
    D);
  output [0:0]out;
  output [0:0]mem_reg;
  output [6:0]Q;
  output [0:0]E;
  output D_rd;
  output RF_Rp_rd;
  output RF_W_wr;
  output [2:0]mem_reg_0;
  output RF_s1;
  output RF_s0;
  output [7:0]\counter_reg[7] ;
  output [2:0]mem_reg_1;
  output mem_reg_2;
  output [0:0]\segmentos[1] ;
  output [0:0]mem_reg_3;
  output [7:0]mem_reg_4;
  output [3:0]mem_reg_5;
  output [3:0]mem_reg_6;
  output [3:0]mem_reg_7;
  input \FSM_sequential_state_reg[3] ;
  input [2:0]\FSM_sequential_state_reg[2] ;
  input [2:0]DOBDO;
  input \FSM_sequential_state_reg[2]_0 ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \FSM_sequential_state_reg[2]_1 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input \FSM_sequential_state_reg[2]_2 ;
  input \FSM_sequential_state_reg[3]_2 ;
  input CLK;
  input [0:0]AR;
  input [15:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [2:0]DOBDO;
  wire D_rd;
  wire [0:0]E;
  wire [2:0]\FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire \FSM_sequential_state_reg[3]_2 ;
  wire IR_n_0;
  wire IR_n_16;
  wire IR_n_17;
  wire IR_n_18;
  wire IR_n_19;
  wire IR_n_20;
  wire IR_n_21;
  wire IR_n_22;
  wire [15:8]IR_out;
  wire PC_clr;
  wire PC_ld;
  wire PC_n_10;
  wire PC_n_11;
  wire PC_n_12;
  wire PC_n_13;
  wire PC_n_14;
  wire PC_n_15;
  wire PC_n_16;
  wire PC_n_17;
  wire PC_n_18;
  wire PC_n_8;
  wire PC_n_9;
  wire [6:0]Q;
  wire RF_Rp_rd;
  wire [1:1]RF_W_data;
  wire RF_W_wr;
  wire RF_s0;
  wire RF_s1;
  wire bloco_controle_n_1;
  wire bloco_controle_n_16;
  wire bloco_controle_n_2;
  wire bloco_controle_n_4;
  wire [7:0]\counter_reg[7] ;
  wire [7:0]data;
  wire [0:0]mem_reg;
  wire [2:0]mem_reg_0;
  wire [2:0]mem_reg_1;
  wire mem_reg_2;
  wire [0:0]mem_reg_3;
  wire [7:0]mem_reg_4;
  wire [3:0]mem_reg_5;
  wire [3:0]mem_reg_6;
  wire [3:0]mem_reg_7;
  wire [0:0]out;
  wire [0:0]p_0_in;
  wire [0:0]\segmentos[1] ;

  IR IR
       (.CLK(CLK),
        .D(IR_n_16),
        .DI(IR_n_22),
        .E(E),
        .\FSM_sequential_state_reg[0] (IR_n_0),
        .\FSM_sequential_state_reg[2] (IR_n_17),
        .\FSM_sequential_state_reg[3] (IR_n_18),
        .\I_data[15] (D),
        .Q({IR_out[15:14],IR_out[12:8],Q[6:1],RF_W_data,Q[0]}),
        .S(IR_n_19),
        .\counter_reg[3] ({IR_n_20,IR_n_21}),
        .\counter_reg[7] ({\counter_reg[7] [7:5],\counter_reg[7] [2:0]}),
        .out({out,bloco_controle_n_1,bloco_controle_n_2}),
        .\out_reg[14]_0 (bloco_controle_n_4));
  PC PC
       (.CLK(CLK),
        .D(p_0_in),
        .DI({PC_n_8,PC_n_9,PC_n_10}),
        .E(bloco_controle_n_16),
        .PC_ld(PC_ld),
        .Q(\counter_reg[7] ),
        .S({PC_n_14,PC_n_15}),
        .SR(PC_clr),
        .\counter_reg[7]_0 ({PC_n_11,PC_n_12,PC_n_13}),
        .\counter_reg[7]_1 ({PC_n_16,PC_n_17,PC_n_18}),
        .data(data[7:1]),
        .\out_reg[6] ({Q[5:1],RF_W_data,Q[0]}));
  PC_somador PC_somador
       (.DI({PC_n_8,PC_n_9,IR_n_22,PC_n_10}),
        .S({PC_n_14,IR_n_20,PC_n_15,IR_n_21}),
        .data(data),
        .\out_reg[5] ({PC_n_11,PC_n_12,PC_n_13}),
        .\out_reg[5]_0 ({IR_n_19,PC_n_16,PC_n_17,PC_n_18}));
  bloco_controle bloco_controle
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in),
        .DOBDO(DOBDO),
        .D_rd(D_rd),
        .E(E),
        .\FSM_sequential_state_reg[1]_0 (bloco_controle_n_4),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[2]_1 (\FSM_sequential_state_reg[2]_0 ),
        .\FSM_sequential_state_reg[2]_2 (\FSM_sequential_state_reg[2]_1 ),
        .\FSM_sequential_state_reg[2]_3 (\FSM_sequential_state_reg[2]_2 ),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state_reg[3] ),
        .\FSM_sequential_state_reg[3]_1 (IR_n_18),
        .\FSM_sequential_state_reg[3]_2 (\FSM_sequential_state_reg[3]_0 ),
        .\FSM_sequential_state_reg[3]_3 (\FSM_sequential_state_reg[3]_1 ),
        .\FSM_sequential_state_reg[3]_4 (\FSM_sequential_state_reg[3]_2 ),
        .\FSM_sequential_state_reg[3]_5 (IR_n_17),
        .PC_ld(PC_ld),
        .Q({IR_out[15:14],IR_out[12:8],Q[6:1],RF_W_data,Q[0]}),
        .RF_Rp_rd(RF_Rp_rd),
        .RF_W_wr(RF_W_wr),
        .SR(PC_clr),
        .\counter_reg[0] (\counter_reg[7] [0]),
        .\counter_reg[7] (bloco_controle_n_16),
        .data(data[0]),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(RF_s1),
        .mem_reg_2(RF_s0),
        .mem_reg_3(mem_reg_1),
        .mem_reg_4(mem_reg_2),
        .mem_reg_5(mem_reg_3),
        .mem_reg_6(mem_reg_4),
        .mem_reg_7(mem_reg_5),
        .mem_reg_8(mem_reg_6),
        .mem_reg_9(mem_reg_7),
        .out({out,bloco_controle_n_1,bloco_controle_n_2}),
        .\out_reg[14] (IR_n_0),
        .\out_reg[15] (IR_n_16),
        .\segmentos[1] (\segmentos[1] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
