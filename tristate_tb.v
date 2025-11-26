`timescale 1ps/1ps
`include "tristate.v"

module tristate_tb;

    reg [7:0] a;    
    reg en;          
    wire [7:0] out; 

    tristate uut (
        .a(a),   
        .en(en),   
        .out(out)  
    );

    initial begin
        $dumpfile("tristate_tb.vcd");
        $dumpvars(0, tristate_tb);
        
        a = 8'b00000000;  
        en = 0; #10; 
        a = 8'b11001100;
        en = 1; #10;
        en = 0; #10; 

        $finish; 
    end

endmodule
