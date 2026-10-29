
module full_subtractor_block (
    input a,
    input b,
    input bin,
    output reg diff,
    output reg bout
);

always @(*) begin
    diff = a ^ b ^ bin;
    bout = (~a & b) | (~(a ^ b) & bin);
end

endmodule
