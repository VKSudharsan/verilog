module tbdemux1x4;
reg din,s0,s1;
wire y0,y1,y2,y3;
demux1x4 dut(
    .din(din),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);
initial begin
$dumpfile("demux1x4.vcd");
$dumpvars(0,tbdemux1x4);
din=0; s0=0; s1=0;
#10 din=1; s0=0; s1=0;
#10 din=1; s0=1; s1=0;
#10 din=1; s0=0; s1=1;
#10 din=1; s0=1; s1=1;

#10 $finish;

end
endmodule