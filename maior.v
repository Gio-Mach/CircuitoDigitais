module maior(
    input [7:0] A, B,  
    output reg [7:0] S
);

    always @ (A or B) begin  
        if (A > B) begin
            S = A;
        end else if (B > A) begin
            S = B;
        end else begin
            S = 8'b00000000;  
        end
    end


endmodule
