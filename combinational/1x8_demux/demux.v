module demux1x8(
    input din,s0,s1,s2,
    output y0,y1,y2,y3,y4,y5,y6,y7
);
assign y0 = din & ~s2 & ~s1 & ~s0;
assign y1 = din & ~s2 & ~s1 &  s0;
assign y2 = din & ~s2 &  s1 & ~s0;
assign y3 = din & ~s2 &  s1 &  s0;
assign y4 = din &  s2 & ~s1 & ~s0;
assign y5 = din &  s2 & ~s1 &  s0;
assign y6 = din &  s2 &  s1 & ~s0;
assign y7 = din &  s2 &  s1 &  s0;
endmodule