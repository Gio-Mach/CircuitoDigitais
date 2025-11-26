`timescale 1ns/1ps
`include "ula.v"  

module ula_tb;  

    reg [7:0] A, B;        
    reg [2:0] opcode;
    reg ck;                
    wire [7:0] S;           

    ula uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .ck(ck),
        .S(S)
    );

    initial begin
            $dumpfile ("ula_tb.vcd");  
            $dumpvars(0, ula_tb);             
            A = 8'b00000000;
            B = 8'b00000000;
            opcode = 3'b000; 
            #20;  
            
            
            A = 8'b00000001; B = 8'b00000001; opcode = 3'b000; #20;
            A = 8'b00001100; B = 8'b00000011; opcode = 3'b001; #20;
            A = 8'b11111111; B = 8'b00000000; opcode = 3'b010; #20;
            A = 8'b00000000; B = 8'b00000000; opcode = 3'b011; #20;      
            A = 8'b00000000; B = 8'b00000000; opcode = 3'b100; #20;
            A = 8'b00000011; B = 8'b00000010; opcode = 3'b101; #20;
            A = 8'b00000011; B = 8'b00000010; opcode = 3'b110; #20;
            A = 8'b00000010; B = 8'b00000011; opcode = 3'b111; #20; 
            $finish;                  
    end

        
    initial begin
         ck = 0;                  
        forever #2 ck = ~ck;
    end


endmodule