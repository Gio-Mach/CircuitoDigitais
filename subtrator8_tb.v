`timescale 1ps/1ps
`include "subtrator8.v"

module subtrator8_tb;

    reg [7:0] A, B;
    wire [8:0] S;

    subtrator8 teste(A, B, S);

    initial begin
        $dumpfile("subtrator8_tb.vcd");
        $dumpvars(0, subtrator8_tb);

        A = 8'd20; B = 8'd10; #20;
        A = 8'd2; B = 8'd1; #20;
        A = 8'd0; B = 8'd0; #20;
        A = 8'd100; B = 8'd200; #20;

        $display("Teste finalizado!");
    end

endmodule