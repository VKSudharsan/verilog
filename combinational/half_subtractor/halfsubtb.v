module halfsubtb;
reg a,b;
wire d, bo;
halfsub dut(
    .a(a),
    .b(b),
    .d(d),
    .bo(bo)
);
initial begin
$dumpfile("halfsub.vcd");
$dumpvars(0,halfsubtb);
  a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;

        #10 $finish;
  end   
  endmodule