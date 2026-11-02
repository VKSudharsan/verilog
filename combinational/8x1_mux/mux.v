module mux8x1(
    input a,b,c,d,e,f,g,h,
    input s0,s1,s2,
    output y
);
assign y = (~s2 & ~s1 & ~s0 & a) |
           (~s2 & ~s1 &  s0 & b) |
           (~s2 &  s1 & ~s0 & c) |
           (~s2 &  s1 &  s0 & d) |
           ( s2 & ~s1 & ~s0 & e) |
           ( s2 & ~s1 &  s0 & f) |
           ( s2 &  s1 & ~s0 & g) |
           ( s2 &  s1 &  s0 & h);
endmodule