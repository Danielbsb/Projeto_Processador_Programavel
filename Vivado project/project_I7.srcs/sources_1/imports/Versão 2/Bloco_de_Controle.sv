`timescale 1ns / 1ps

module Bloco_de_Controle(
    input logic clk,
    input logic [15:0] IR,
    input logic RF_Rp_zero,
    output logic IR_ld,
    output logic I_rd,
    output logic PC_ld,
    output logic PC_clr,
    output logic PC_inc,
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
    output logic [2:0] deslocamento,
    output logic InReg_ld,
    output logic OutRed_ld
    //output logic leds_en,
    //output logic leds_clr,
    //output logic mux_SW
    
    );
    
    typedef enum logic [3:0] {inicio = 4'b0000,
                              busca = 4'b0001,
                              decodificacao = 4'b0010,
                              carregar = 4'b0011,
                              armazenar = 4'b0100,
                              somar = 4'b0101,
                              carregar_constante = 4'b0110,
                              subtrair = 4'b0111,
                              saltar_se_zero = 4'b1000,
                              saltar = 4'b1001,
                              shiftl = 4'b1010,
                              shiftr = 4'b1011,
                              inputS = 4'b1100,
                              outputL = 4'b1101
                              } statetype;
    
    statetype state, nextstate;
    
    logic [3:0] opcode, ra, rb, rc;
    logic [7:0] d;
    
    assign opcode = IR[15:12];
    assign ra = IR[11:8];
    assign rb = IR[7:4];
    assign rc = IR[3:0];
    assign d = IR[7:0];
    assign RF_W_data = IR[7:0];
    assign deslocamento = IR[2:0];
    
    //state register
    always_ff @ (posedge clk)
        state <= nextstate;
        
    //next state logic
    always_comb
      case(state)
        inicio:                                 nextstate = busca;
        busca:                                  nextstate = decodificacao;
        decodificacao: case (opcode)
                               4'b0000:         nextstate = carregar;
                               4'b0001:         nextstate = armazenar;
                               4'b0010:         nextstate = somar;
                               4'b0011:         nextstate = carregar_constante;
                               4'b0100:         nextstate = subtrair;
                               4'b0101:         nextstate = saltar_se_zero;
                               4'b0110:         nextstate = shiftl;
                               4'b0111:         nextstate = shiftr;
                               4'b1000:         nextstate = inputS;
                               4'b1001:         nextstate = outputL;
                               default:         nextstate = inicio; // should never happen.
                        endcase
        carregar:                               nextstate = busca;
        armazenar:                              nextstate = busca;
        somar:                                  nextstate = busca;
        carregar_constante:                     nextstate = busca;
        subtrair:                               nextstate = busca;
        saltar_se_zero: if(RF_Rp_zero)          nextstate = saltar;
                        else                    nextstate = busca;
        saltar:                                 nextstate = busca;
        shiftl:                                 nextstate = busca;
        shiftr:                                 nextstate = busca;
        inputS:                                 nextstate = busca;
        outputL:                                nextstate = busca;
        default:                                nextstate = inicio;
      endcase;
    
    //output logic
    //1-bit outputs
    assign PC_clr = (state == inicio);
    assign I_rd = (state == busca);
    assign PC_inc = (state == busca);
    assign IR_ld = (state == busca);
    assign D_rd = (state == carregar);
    assign RF_s0 = (state == carregar);
    assign RF_W_wr = (state == carregar) || (state == somar) || (state == carregar_constante) || (state == subtrair)||(state == shiftl) ||(state == shiftr);
    assign D_wr = (state == armazenar);//|| state == inputS);
    assign RF_Rp_rd = (state == armazenar) || (state == somar) || (state == subtrair) || (state == saltar_se_zero) ||(state == shiftl) || (state == shiftr)|| (state == outputL);    
    assign RF_Rq_rd = (state == somar) || (state == subtrair)||(state == shiftl) ||(state == shiftr);
   // assign ALU_s0 = (state == somar) || (state == shiftl)||(state == shiftr);
    assign RF_s1 = (state == carregar_constante);
   // assign ALU_s1 = (state == subtrair) || (state == shift);
    assign PC_ld = (state == saltar);
    //assign mux_SW = (state==inputS); 
    //assign leds_en = (state==outputL); 
    //assign leds_clr = ~(state==outputL || state == busca);
    assign InReg_ld = (state == inputS);
    assign OutRed_ld = (state == outputL);
     
    //mult-bits outputs
    always_comb 
      case(state)
        carregar: begin
            D_addr = d;
            RF_W_addr = ra;
            ALU_s = 4'b0000;
        end
        armazenar: begin
            D_addr = d;
            RF_Rp_addr = ra;
        end
        somar: begin
            RF_W_addr = ra;
            RF_Rp_addr = rb;
            RF_Rq_addr = rc;
            ALU_s = 4'b0001;
        end
        carregar_constante: begin
            RF_W_addr = ra;
        end
        subtrair: begin
            RF_W_addr = ra;
            RF_Rp_addr = rb;
            RF_Rq_addr = rc;
            ALU_s = 4'b0010;
        end
        saltar_se_zero: begin
            D_addr = d;
            RF_Rp_addr = ra;
        end
        shiftl: begin
            RF_W_addr = ra;
            RF_Rp_addr = rb;
            RF_Rq_addr = rc;
            ALU_s=4'b1000;
        end
        shiftr: begin
        RF_W_addr = ra;
        RF_Rp_addr = rb;
        RF_Rq_addr = rc;
        ALU_s=4'b1001;
        end
        //inputS : begin    // inputS não usa sinais com mais de bit. 
        //    InReg_ld = d;
        //end
        outputL: begin
            RF_Rp_addr = rb;
        end    
      endcase
     
endmodule
