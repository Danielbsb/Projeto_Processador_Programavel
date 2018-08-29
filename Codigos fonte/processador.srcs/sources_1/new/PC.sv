`timescale 1ns / 1ps

module PC(
    input logic clk,
    input logic ld, //PC_ld
    input logic clr, //PC_clr
    input logic inc, //PC_inc
    input logic [7:0] load, //saida do somador a+b-1
    output logic [7:0] out //addr do I (I_addr)
    );
    
    reg [7:0] counter;
    
    always_ff @(posedge clk)
    begin
        if(clr)         counter <= 'b0;
        else if(ld)     counter <= load;
        else if(inc)    counter <= counter + 1;
    end
        
    assign out = counter;
    
endmodule
