`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Daniel Carvalho de Sousa
// 
// Create Date: 03.11.2016 12:03:43
// Design Name: Teste do processador conjugado com a memória externa de instruções
// Module Name: test_1
// Project Name: i7(10th Generation)
// Target Devices: for basys 3
// Tool Versions: v125
// Description: Teste de funcionamento da ligação memoria-processador
// 
// Additional Comments: Tá top ...
// 
//////////////////////////////////////////////////////////////////////////////////


module test_1();

logic clk;
logic clk_m;
logic rst;
logic [15:0]sw;
logic [15:0]leds;
logic [3:0]anodos;
logic [7:0]segmentos;

top_module dut(clk, clk_m, rst, sw, leds, anodos, segmentos);

always begin
    clk = 0; #5; clk = 1; #5;
end
always begin
    clk_m = 0; #25; clk_m = 1; #25;
end

initial begin
rst = 0;sw = 'b0; #20;
rst = 1; #10;
rst = 0; sw = 'hFF; #2000;
rst = 1; #100;
rst = 0;
end
endmodule
