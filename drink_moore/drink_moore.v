`timescale 1ns/1ps
module drink_moore(
  input clk,
  input reset,
  input half,
  input one,
  output cout,
  output out
);

  reg [2:0] curr_state;
  reg [2:0] next_state;

/*定义所需要状态*/
  localparam [2:0] s0='b000,
                   s1='b001,
                   s2='b010,
                   s3='b011,
                   s4='b100,
                   s5='b101,
                   s6='b110;

/*状态赋值(时序逻辑电路)*/
  always @(posedge clk , negedge reset) begin
    if(!reset)
      curr_state <= s0;
    else
      curr_state <= #1 next_state;    
  end 

/*状态转换(组合逻辑电路)*/ 
  always @(curr_state, half, one) begin
    case (curr_state)

      s0: begin
            if (half) next_state = s1;
            else if (one) next_state = s2;
            else next_state = s0;
          end

      s1: begin
            if (half) next_state = s2;
            else if (one) next_state = s3;
            else next_state = s1;
          end

      s2: begin
            if (half) next_state = s3;
            else if (one) next_state = s4;
            else next_state = s2;
          end

      s3: begin
            if (half) next_state = s4;
            else if (one) next_state = s5;
            else next_state = s3;
          end

      s4: begin
            if (half) next_state = s5;
            else if (one) next_state = s6;
            else next_state = s4;
          end

      s5: begin
            next_state = s0;
          end

      s6: begin
            next_state = s0;
          end

      default: next_state = s0;
    endcase
  end

  /*状态输出*/
  assign out = ((curr_state==s5)||(curr_state==s6)) ? 1 : 0;
  assign cout = (curr_state==s6) ? 1 : 0;


endmodule
