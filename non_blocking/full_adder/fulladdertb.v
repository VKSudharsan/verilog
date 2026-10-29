
module tb_full_adder_nonblock;

reg a, b, cin;
wire sum, cout;
integer i;

full_adder_nonblock dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("full_adder_nonblock.vcd");
    $dumpvars(0, tb_full_adder_nonblock);

    $monitor("Time=%0t a=%b b=%b cin=%b sum=%b cout=%b",
             $time, a, b, cin, sum, cout);

    for (i = 0; i < 8; i = i + 1) begin
        {a, b, cin} = i;
        #10;
    end

    $finish;
end

endmodule
