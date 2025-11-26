`timescale 1ps/1ps
`include "somador8.v"

module somador8_tb;

    reg [7:0] A, B;
    wire [8:0] S;

    somador8 teste(A, B, S);

    initial begin
        $dumpfile("somador8_tb.vcd");
        $dumpvars(0, somador8_tb);

        A = 8'd20; B = 8'd10; #20;
        A = 8'd2; B = 8'd1; #20;
        A = 8'd0; B = 8'd0; #20;
        A = 8'd200; B = 8'd200; #20;

        $display("Teste finalizado!");
    end

endmodule