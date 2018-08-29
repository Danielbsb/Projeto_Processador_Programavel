`timescale 1ns / 1ps

module decoder_7seg(
    input logic clk,
    input logic rst,
    input logic [15:0] hexa,
    output logic [3:0] anodos,
    output logic [7:0] segmentos
    );
    
    reg [16:0] preset = 17'b11110100001001000; //conta até 1.000.000.000/2 para dar 100Hz
    reg [16:0] counter = 'b0;
    logic clk_div = 'b0;
    logic [3:0] digito;
    reg [3:0] s_anodos = 4'b1110;
    reg [7:0] s_segmentos = 7'b0; //ABCDEFGP
    
    always @(posedge clk) begin //divisor de clock
        if(rst) begin
            counter = 'b0;
            clk_div = 'b0;
        end
        else begin
            if(counter==preset) begin
                clk_div = ~clk_div;
                counter = 'b0;
            end
            else
                counter = counter + 1;
        end
    end
    
    always @(posedge clk_div) begin //shift para os displays
        if(rst) s_anodos = 4'b1110;
        else    s_anodos = {s_anodos[2:0], s_anodos[3]};
    end
    
    assign anodos = s_anodos;
    
    always_comb begin //digito a ser mostrado no display
        case(s_anodos)
            4'b1110: digito = hexa[3:0];
            4'b1101: digito = hexa[7:4];
            4'b1011: digito = hexa[11:8];
            4'b0111: digito = hexa[15:12];
            default: digito = 4'b0;
         endcase;
    end
    
    always_comb begin
        case(digito)
            4'h0:    s_segmentos = 8'b00000011; //0
            4'h1:    s_segmentos = 8'b10011111; //1
            4'h2:    s_segmentos = 8'b00100101; //2
            4'h3:    s_segmentos = 8'b00001101; //3
            4'h4:    s_segmentos = 8'b10011001; //4
            4'h5:    s_segmentos = 8'b01001001; //5
            4'h6:    s_segmentos = 8'b01000001; //6
            4'h7:    s_segmentos = 8'b00011111; //7
            4'h8:    s_segmentos = 8'b00000001; //8
            4'h9:    s_segmentos = 8'b00001001; //9
            4'hA:    s_segmentos = 8'b00010001; //A
            4'hB:    s_segmentos = 8'b11000001; //b
            4'hC:    s_segmentos = 8'b01100011; //C
            4'hD:    s_segmentos = 8'b10000101; //d
            4'hE:    s_segmentos = 8'b01100001; //E
            4'hF:    s_segmentos = 8'b01110001; //F
            default: s_segmentos = 8'b11111111; //apagado
        endcase;
    end
    
    assign segmentos = s_segmentos;
    
endmodule
