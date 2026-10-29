
module tb_mux2x1_nonblock;

reg a, b, sel;
wire y;
integer i;

mux2x1_nonblock uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux2x1_nonblock.vcd");
    $dumpvars(0, tb_mux2x1_nonblock);

    $monitor("Time=%0t a=%b b=%b sel=%b y=%b",
             $time, a, b, sel, y);

    for (i = 0; i < 8; i = i + 1) begin
        {a, b, sel} = i;
        #10;
    end

    $finish;
end

endmodule
