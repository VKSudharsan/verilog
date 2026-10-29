`timescale 1ns/1ps

module orgate_tb;

reg a, b;
wire y;

or_gate dut (
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("orgate.vcd");
    $dumpvars(0, orgate_tb);
    $monitor("a=%b b=%b y=%b", a, b, y);
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
end
endmodule