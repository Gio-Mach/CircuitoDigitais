`timescale 1ps/1ps
`include "somador_completo.v"

module somador_completo_tb;

    reg A, B, Cin;
    wire S, Cout;

    somador_completo teste(A, B, S, Cin, Cout);

    initial begin
        $dumpfile("somador_completo_tb.vcd");
        $dumpvars(0, somador_completo_tb);

        A = 0; B = 0; Cin = 0; #20;
        A = 0; B = 0; Cin = 1; #20;
        A = 0; B = 1; Cin = 0; #20;
        A = 0; B = 1; Cin = 1; #20;
        A = 1; B = 0; Cin = 0; #20;
        A = 1; B = 0; Cin = 1; #20;
        A = 1; B = 1; Cin = 0; #20;
        A = 1; B = 1; Cin = 1; #20;


        $display("Teste finalizado!");
    end

endmodule