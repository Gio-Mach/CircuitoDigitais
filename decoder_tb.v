`timescale 1ps/1ps
`include "decoder.v"

module ex_tb;

    reg [2:0] a;
    reg en;
    wire [7:0] d;

    ex teste(.a(a), .en(en), .d(d));

    initial begin
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);
        
        en = 1;
        a = 3'b000; #20;
        a = 3'b001; #20; 
        a = 3'b010; #20;
        a = 3'b011; #20;
        a = 3'b100; #20;
        a = 3'b101; #20;
        a = 3'b110; #20;
        a = 3'b111; #20;

        $display("Teste finalizado!");
    end
    
endmodule