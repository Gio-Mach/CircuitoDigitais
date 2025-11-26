`timescale 1ps/1ps
`include "inversorA.v"

module inversorA_tb;

    reg [7:0] A;
    wire [7:0] S;

    inversorA teste(A, S);

    initial begin
        $dumpfile("inversorA_tb.vcd");
        $dumpvars(0, inversorA_tb);

        A = 8'b11100010; #20;

        $display("Teste finalizado!");
    end

endmodule