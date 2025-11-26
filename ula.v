`include "decoder.v"
`include "somador8.v"
`include "subtrator8.v"
`include "tristate.v"
`include "registrador.v"
`include "inversorA.v"
`include "inversorB.v"
`include "igual.v"
`include "diferente.v"
`include "maior.v"
`include "menor.v"

module ula (
    A, B, S, ck, opcode
);
    input [7:0] A, B;
    input [2:0] opcode;
    input ck;
    output [7:0] S;

    wire [7:0] out_decoder, out_somador,regA, regB, regOut, out_tristate, out_subtrator, out_inversorA, out_inversorB, out_igual, out_diferente, out_maior, out_menor;
    wire overflow;
   
    registrador r0(A, regA, ck);
   
    registrador r1(B, regB, ck);
    
    registrador r2(out_tristate, S, ck);
    
    decoder u1(opcode,out_decoder, 1'b1);
    
    somador8 u2(regA, regB, {overflow,out_somador});

    tristate u3(out_somador, out_decoder[0], out_tristate);

    subtrator8 u4(regA, regB, {overflow,out_subtrator});

    tristate u5(out_subtrator, out_decoder[1], out_tristate);

    inversorA u6(regA, out_inversorA);

    tristate u7(out_inversorA, out_decoder[2], out_tristate);

    inversorB u8(regB, out_inversorB);
    
    tristate u9(out_inversorB, out_decoder[3], out_tristate);

    igual u10(regA, regB, out_igual);

    tristate u11(out_igual, out_decoder[4], out_tristate);

    diferente u12(regA, regB, out_diferente);

    tristate u13(out_diferente, out_decoder[5], out_tristate);

    maior u14(regA, regB, out_maior);

    tristate u15(out_maior, out_decoder[6], out_tristate);

    menor u16(regA, regB, out_menor);

    tristate u17(out_menor, out_decoder[7], out_tristate);


endmodule