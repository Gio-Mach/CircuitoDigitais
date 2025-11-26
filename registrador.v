module registrador #(parameter N = 8) (

    input [N-1:0] d,  
    output [N-1:0] q,
    input clk
);

    genvar i;
    generate 
        for (i = 0; i < N; i = i + 1) begin : d_flip_flop
            d_flip_flop ff (
                .clk(clk), 
                .d(d[i]),
                .q(q[i])
            );
        end
    endgenerate

endmodule

module d_flip_flop (
    input clk,   // Clock
    input d,     // Entrada de dados
    output reg q   // Saída do flip-flop
);

    always @(negedge clk) begin

            q <= d; 
        end

endmodule