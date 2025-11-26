`timescale 1ps/1ps
`include "diferente.v"

module diferente_tb;

    reg [7:0] A, B;
    wire [7:0] S;

    diferente teste(A, B, S);

    initial begin
        $dumpfile("diferente_tb.vcd");
        $dumpvars(0, diferente_tb);

        A = 8'b11100010; B = 8'b11100010; #20;
        A = 8'b11100010; B = 8'b00000010; #20;
        $display("Teste finalizado!");
    end

endmodule