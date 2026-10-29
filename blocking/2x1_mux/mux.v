
module mux2x1_block (
    input a,
    input b,
    input sel,
    output reg y
);

always @(*) begin
    if (sel == 1'b0)
        y = a;
    else
        y = b;
end

endmodule
