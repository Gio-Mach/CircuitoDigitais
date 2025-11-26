`include "subtrator_completo.v"
`include "meio_subtrator.v"

module subtrator8 (
    A, B, S
);
    input [7:0] A, B;
    output [8:0] S;

    wire [7:0] C;

    meio_subtrator soma1(A[0], B[0], S[0], C[0]);
    subtrator_completo soma2(A[1], B[1], S[1], C[0], C[1]);
    subtrator_completo soma3(A[2], B[2], S[2], C[1], C[2]);
    subtrator_completo soma4(A[3], B[3], S[3], C[2], C[3]);
    subtrator_completo soma5(A[4], B[4], S[4], C[3], C[4]);
    subtrator_completo soma6(A[5], B[5], S[5], C[4], C[5]);
    subtrator_completo soma7(A[6], B[6], S[6], C[5], C[6]);
    subtrator_completo soma8(A[7], B[7], S[7], C[6], S[8]);

endmodule

