`timescale 1ps/1ps
`include "inversorB.v"

module inversorB_tb;

    reg [7:0] B;
    wire [7:0] S;

    inversorA teste(B, S);

    initial begin
        $dumpfile("inversorB_tb.vcd");
        $dumpvars(0, inversorB_tb);

        B = 8'b11100010; #20

        $display("Teste finalizado!");
    end

endmodule