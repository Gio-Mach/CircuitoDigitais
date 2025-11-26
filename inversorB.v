module inversorB (
    
    input [7:0] B,  
    output [7:0] S  
);

    assign S = ~B;
    
endmodule
