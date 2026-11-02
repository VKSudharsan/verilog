module mux4x1(
    input a,b,c,d,
    input s0,s1,
    output y
);
assign y= (~s1&~s0&a)|(~s1&s0&b)|(s1&~s0&c)|(s1&s0&d);
endmodule