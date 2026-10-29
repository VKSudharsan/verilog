
module tb_full_adder_block;

reg a, b, cin;
wire sum, cout;
integer i;

full_adder_block dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("full_adder_block.vcd");
    $dumpvars(0, tb_full_adder_block);

    $monitor("Time=%0t a=%b b=%b cin=%b sum=%b cout=%b",
             $time, a, b, cin, sum, cout);

    for (i = 0; i < 8; i = i + 1) begin
        {a, b, cin} = i;
        #10;
    end

    $finish;
end

endmodule
