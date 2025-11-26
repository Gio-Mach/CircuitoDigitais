`include "somador_completo.v"
`include "meio_somador.v"

module somador8 (
    A, B, S
);
    input [7:0] A, B;
    output [8:0] S;

    wire [7:0] C;

    meio_somador soma1(A[0], B[0], S[0], C[0]);
    somador_completo soma2(A[1], B[1], S[1], C[0], C[1]);
    somador_completo soma3(A[2], B[2], S[2], C[1], C[2]);
    somador_completo soma4(A[3], B[3], S[3], C[2], C[3]);
    somador_completo soma5(A[4], B[4], S[4], C[3], C[4]);
    somador_completo soma6(A[5], B[5], S[5], C[4], C[5]);
    somador_completo soma7(A[6], B[6], S[6], C[5], C[6]);
    somador_completo soma8(A[7], B[7], S[7], C[6], S[8]);
    

endmodule

