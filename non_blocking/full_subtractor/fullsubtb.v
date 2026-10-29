
module tb_full_subtractor_nonblock;

reg a, b, bin;
wire diff, bout;
integer i;

full_subtractor_nonblock dut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial begin
    $dumpfile("full_subtractor_nonblock.vcd");
    $dumpvars(0, tb_full_subtractor_nonblock);

    $monitor("Time=%0t a=%b b=%b bin=%b diff=%b bout=%b",
             $time, a, b, bin, diff, bout);

    for (i = 0; i < 8; i = i + 1) begin
        {a, b, bin} = i;
        #10;
    end

    $finish;
end

endmodule
