module tbmux4x1;
reg a,b,c,d,s0,s1;
wire y;
mux4x1 dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s0(s0),
    .s1(s1),
    .y(y)
);
initial begin
$dumpfile("mux4x1.vcd");
$dumpvars(0,tbmux4x1);
a=0; b=1; c=0; d=1; s0=0; s1=0;
#10 s0=1; s1=0;
#10 s0=0; s1=1;
#10 s0=1; s1=1;

#10 $finish;

end
endmodule