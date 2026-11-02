module tbdecoder;
reg a,b;
wire y0,y1,y2,y3;
decoder dut(
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);
initial begin
$dumpfile("decoder.vcd");
$dumpvars(0,tbdecoder);
a=0;b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
#10 $finish;
end
endmodule