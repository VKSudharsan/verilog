
module half_subtractor_block (
    input a,
    input b,
    output reg diff,
    output reg borrow
);

always @(*) begin
    diff   = a ^ b;
    borrow = ~a & b;
end

endmodule
