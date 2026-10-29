
module tb_half_adder_nonblock;

reg a, b;
wire sum, carry;

half_adder_nonblock uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $dumpfile("half_adder_nonblock.vcd");
    $dumpvars(0, tb_half_adder_nonblock);

    $monitor("Time=%0t a=%b b=%b sum=%b carry=%b",
             $time, a, b, sum, carry);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule
