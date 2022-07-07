`timescale 1ns/ 1ps
module fulladd_tb;

  reg ain,bin,cin;
  wire cout,sum;

  reg clk;

  fulladd u0_fulladd(
      .ain(ain),
      .bin(bin),
      .cin(cin),
      .cout(cout),
      .sum(sum)
      );

  always #1 clk=~clk;

  initial begin
    clk=0;
    ain=0;
    bin=1;
    cin=1;

    #10;
    ain=1;
    bin=1;
    cin=0;

    #10;
    ain=1;
    bin=1;
    cin=1;

    #10;
    $finish;
  end

  initial begin
    @(posedge clk);
    #5;
    if(sum!=0) $display("sum calc ERROR!!!, sum=%b",sum);
    else $display("sum calc CORRECT!!!");
    if(cout!=1) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");
    #10;
    if(sum!=0) $display("sum calc ERROR!!!, sum=%b",sum);
    else $display("sum calc CORRECT!!!");
    if(cout!=1) $display("cout calc ERROR!!!, cout=%b",cout);
    else $display("cout calc CORRECT!!!");
    #5;
    if(sum!=1) $display("sum calc ERROR!!!, sum=%b",sum);
    else $display("sum calc CORRECT!!!");
    if(cout!=1) $display("cout calc ERROR!!!, cout=%b",sum);
    else $display("cout calc CORRECT!!!");
  end

  initial begin
    $vcdpluson;
  end

endmodule
