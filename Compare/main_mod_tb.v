module main_mod_tb();
  reg clk,rst_n; //using reg
  reg[7:0] a,b,c;
  wire[7:0] d;

  main_mod u_main_mod(
   	.clk(clk),
	  .rst_n(rst_n),
	  .a(a),
	  .b(b),
	  .c(c),
	
  	.d(d) 
  );

  always #5 clk = ~clk;

  initial begin
    #1 clk = 'b0;
    #3 rst_n = 'b1;
    #5 a = 12; b = 23; c = 33;
    #15 a = 90; b = 0; c = 56;
    #25 a = 8; b = 32; c = 1;
    #10
    $finish;
  end

  initial begin
    $fsdbDumpfile("main_mod_tb.fsdb");
    $fsdbDumpvars();
  end






endmodule
