module demux1x4(
    input din,s0,s1,
    output y0,y1,y2,y3
);
assign y0=din&~s1&~s0;
assign y1=din&~s1&s0;
assign y2=din&s1&~s0;
assign y3=din&s1&s0;
endmodule