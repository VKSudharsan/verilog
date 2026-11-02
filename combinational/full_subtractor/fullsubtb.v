module fullsubtb;
reg a,b,bin;
wire diff,bout;
fullsub dut(
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);
initial begin
$dumpfile("fullsub.vcd");
$dumpvars(0,fullsubtb);
a=0;b=0;bin=0;
        #10 a = 0; b = 0; bin = 1;
        #10 a = 0; b = 1; bin = 0;
        #10 a = 0; b = 1; bin = 1;
        #10 a = 1; b = 0; bin = 0;
        #10 a = 1; b = 0; bin = 1;
        #10 a = 1; b = 1; bin = 0;
        #10 a = 1; b = 1; bin = 1;

        #10 $finish;
    end
endmodule