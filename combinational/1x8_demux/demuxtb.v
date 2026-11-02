module tbdemux1x8;
reg din,s0,s1,s2;
wire y0,y1,y2,y3,y4,y5,y6,y7;
demux1x8 dut(
    .din(din),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);
initial begin
$dumpfile("demux1x8.vcd");
$dumpvars(0,tbdemux1x8);
din=0; s0=0; s1=0; s2=0;
#10 din=1; s0=0; s1=0; s2=0;
#10 din=1; s0=1; s1=0; s2=0;
#10 din=1; s0=0; s1=1; s2=0;
#10 din=1; s0=1; s1=1; s2=0;
#10 din=1; s0=0; s1=0; s2=1;
#10 din=1; s0=1; s1=0; s2=1;
#10 din=1; s0=0; s1=1; s2=1;
#10 din=1; s0=1; s1=1; s2=1;

#10 $finish;
end
endmodule