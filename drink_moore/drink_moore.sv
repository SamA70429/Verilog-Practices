`timescale 1ns/ 1ps
module fulladd_tb;

  reg reset,half, one;
  wire cout,out;

  reg clk;

/*实例化模型*/
  drink_moore u0_drink_moore(
      .clk(clk),
      .reset(reset),
      .half(half),
      .one(one),
      .cout(cout),
      .out(out)
      );

  initial begin
    clk = 0;
    reset = 0;
    half = 0;
    one = 0;
    #20
    reset = 1;
  end

  always #20 clk = ~clk;

  initial begin

    begin
    @(posedge clk) half = 1; one = 0;
    end
    #40

    begin
    @(posedge clk) half = 0; one = 1;
    end
    #40
  
    begin
    @(posedge clk) half = 1; one = 0;
    end
    #40

    begin
    @(posedge clk) half = 0; one = 1;
    end
    #40

    begin
    @(posedge clk) half = 1; one = 0;
    end
    #40

    begin
    @(posedge clk) half = 0; one = 1;
    end
    #40

    $finish;

  end

  /*initial begin
    @(posedge clk);

    //s0
    if(out!=0) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s1
    #40;
    if(out!=0) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s2
    #200;
    if(out!=0) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s3
    #200;
    if(out!=0) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s4
    #200;
    if(out!=0) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s5
    #200;
    if(out!=1) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=0) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

    //s6
    #200;
    if(out!=1) $display("out calc ERROR!!!, out=%b",out);
    else $display("out calc CORRECT!!!");
    if(cout!=1) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");

  end*/

  initial begin
    $vcdpluson;
  end

endmodule
