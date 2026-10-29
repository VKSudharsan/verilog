`timescale 1ns/1ps

module nortb;

reg a, b;
wire y;

norgate dut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("norgate.vcd");
    $dumpvars(0, nortb);

    $monitor("a=%b b=%b | y=%b", a, b, y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule