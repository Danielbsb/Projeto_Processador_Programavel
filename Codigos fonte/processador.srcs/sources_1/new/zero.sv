`timescale 1ns / 1ps

module zero(
    input logic [15:0] in, //Rp_data
    output logic out //RF_Rp_zero
    );
    
    always_comb
    begin
        if (in == 0) out = 'b1;
        else         out = 'b0;
    end 

endmodule
