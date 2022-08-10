`timescale 1ns/1ns
module main_mod(
	input clk,
	input rst_n,
	input [7:0]a,
	input [7:0]b,
	input [7:0]c,
	
	output [7:0]d
);
    wire [7:0]min_buf1;
    wire [7:0]min_buf2;
    cmp_mod u1_cmp_mod(
        .clk(clk),
        .rst_n(rst_n),
        .n1(a),
        .n2(b),
        .min(min_buf1)
    );
    cmp_mod u2_cmp_mod(
        .clk(clk),
        .rst_n(rst_n),
        .n1(b),
        .n2(c),
        .min(min_buf2)
    );
    assign d = (min_buf1<min_buf2)?min_buf1:min_buf2;

endmodule
