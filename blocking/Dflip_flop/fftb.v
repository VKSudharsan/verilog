
module tb_dff_block;

reg clk, d;
wire q;

dff_block dut (
    .clk(clk),
    .d(d),
    .q(q)
);

initial begin
    $dumpfile("dff_block.vcd");
    $dumpvars(0, tb_dff_block);

    $monitor("Time=%0t clk=%b d=%b q=%b",
             $time, clk, d, q);

    clk = 0;
    d = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;

    #10 $finish;
end

always #5 clk = ~clk;

endmodule
