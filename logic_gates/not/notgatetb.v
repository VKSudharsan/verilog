`timescale 1ns/1ps

module notgatetb;

reg a;
wire y;

notgate dut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("notgate.vcd");
    $dumpvars(0, notgatetb);
    $monitor("a=%b | y=%b", a, y);
    a = 0; #10;
    a = 1; #10;
    $finish;
end
endmodule