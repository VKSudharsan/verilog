
module tb_mux4x1_block;

reg a, b, c, d;
reg [1:0] sel;
wire y;
integer i;

mux4x1_block dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux4x1_block.vcd");
    $dumpvars(0, tb_mux4x1_block);

    $monitor("Time=%0t a=%b b=%b c=%b d=%b sel=%b y=%b",
             $time, a, b, c, d, sel, y);

    a=0; b=1; c=0; d=1;

    for (i = 0; i < 4; i = i + 1) begin
        sel = i;
        #10;
    end

    $finish;
end

endmodule
