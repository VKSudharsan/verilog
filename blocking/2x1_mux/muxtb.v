
module tb_mux2x1_block;

reg a, b, sel;
wire y;
integer i;

mux2x1_block dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux2x1_block.vcd");
    $dumpvars(0, tb_mux2x1_block);

    $monitor("Time=%0t a=%b b=%b sel=%b y=%b",
             $time, a, b, sel, y);

    for (i = 0; i < 8; i = i + 1) begin
        {a, b, sel} = i;
        #10;
    end

    $finish;
end

endmodule
