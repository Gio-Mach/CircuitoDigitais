`timescale 1ps/1ps
`include "meio_somador"

module meio_somador_tb;

    reg A, B;
    wire S, C;

    ex teste(A, B, S, C);

    initial begin
        $dumpfile("meio_somador_tb.vcd");
        $dumpvars(0, meio_somador_tb);

        A = 0; B = 0; #20
        A = 0; B = 1; #20
        A = 1; B = 0; #20
        A = 1; B = 1; #20

        $display("Teste finalizado!");
    end

endmodule