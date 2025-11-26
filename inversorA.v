module inversorA (
    
    input [7:0] A,  
    output [7:0] S  
);

    assign S = ~A;
    
endmodule
