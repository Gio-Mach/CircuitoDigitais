`timescale 1ps/1ps
`include "ex.v"

module registrador_tb;

    // Parâmetro N, aqui estamos definindo um registrador de 8 bits
    parameter N = 8;

    // Sinais de entrada
    reg clk;
    reg [N-1:0] d;     // Dados (N bits)

    // Sinais de saída
    wire [N-1:0] q;    // Saída do registrador

    // Instancia o módulo ex com N bits
    ex #(N) uut (
        .clk(clk),
        .d(d),
        .q(q),
    );

    // Geração do clock
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Inverte o clock a cada 10ps (50ps de período)
    end

    // Bloco inicial para estímulos
    initial begin
        // Salva a simulação em um arquivo VCD para visualização com o GTKWave
        $dumpfile("registrador_tb.vcd");
        $dumpvars(0, registrador_tb);

        // Inicializa os sinais
        d = 8'b00000000; // Inicializa com 0s
        #20;

        // Teste 1: Clear ativo (clr = 1)
        d = 8'b10101010; // Dados são irrelevantes, Q deve ser 0
        #20;
        
        // Teste 2: Preset ativo (pr = 1)
        d = 8'b01010101; // Dados são irrelevantes, Q deve ser 1
        #20;

        // Teste 3: Sem CLR e PR, Q deve seguir o valor de D
        d = 8'b11001100; // Dados devem ser transferidos para Q
        #20;

        // Teste 4: Alterando D
        d = 8'b11110000; // Mudando os dados, Q deve refletir isso
        #20;

        // Teste 5: Testando transição de dados
        d = 8'b00001111; // Mudando os dados novamente, Q deve refletir isso
        #20;

        // Finaliza a simulação
        $finish;
    end
endmodule
