module  somador_completo (
    A, B, S, Cin, Cout
);
    input   A, B, Cin;
    output  S, Cout;

    assign S = A ^ B ^ Cin;
    assign Cout = (B | Cin) & (A | Cin) & (A | B);   
    
endmodule