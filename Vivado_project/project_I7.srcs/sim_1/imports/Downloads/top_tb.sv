`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2016 10:30:01
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb();

logic clk,clk_m;
logic [15:0]sw;
logic [15:0]leds;
logic[3:0]anodos;
logic[7:0]segmentos;

super_top_level dut(clk,clk_m,sw,leds,anodos,segmentos);

always begin
clk = 0; #5; clk = 1; #5;
end

always begin
clk_m = 0; #5; clk_m = 1; #5;
end

initial begin
sw = 'd10; #55;
sw = 'd12; #50;
end
endmodule
