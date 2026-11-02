module system_clock(
    input clk,
    input reset,
    input tick,
    output [3:0] sec_ones,
    output [3:0] sec_tens,
    output [3:0] min_ones,
    output [3:0] min_tens,
);
always @(posedge) begin
if (reset) begin
