module cmp_mod(
    input clk,
    input rst_n,
    input [7:0]n1,
    input [7:0]n2,
    output [7:0]min
);
    reg [7:0]min_buf;
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) min_buf <= 'd0;
        else begin
            min_buf <= (n1<n2)?n1:n2;
        end
    end
    
    assign min = min_buf;
    
endmodule
