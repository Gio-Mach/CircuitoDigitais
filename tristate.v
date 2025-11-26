
module tristate(
    input [7:0] a,   
    input en,         
    output [7:0] out
);

    assign out = (en) ? a : 8'bzzzzzzzz;

endmodule