module sync_FIFO_tb;

  reg clk;
  reg FIFO_rst;
  reg read_enable;
  reg write_enable;
  reg [7:0]write_data;

  wire [7:0]read_data;
  wire full;
  wire empty;

  sync_FIFO u0_FIFO(
    .clk(clk),
    .FIFO_rst(FIFO_rst),
    .read_enable(read_enable),
    .write_enable(write_enable),
    .read_data(read_data),
    .write_data(write_data),
    .full(full),
    .empty(empty)
  );

  initial begin
    FIFO_rst = 0;
    clk = 0;
    #5 FIFO_rst = 1;
    #5 FIFO_rst = 0;
  end

  always #20 clk=~clk;

  initial begin
    write_enable = 0;
    read_enable = 0;

    #5 write_enable = 1;
    #620 read_enable = 1; write_enable = 0;
  end 

  initial begin
    #20 write_data = 'h0;
    #40 write_data = 'h1;
    #40 write_data = 'h2;
    #40 write_data = 'h3;
    #40 write_data = 'h4;
    #40 write_data = 'h5;
    #40 write_data = 'h6;
    #40 write_data = 'h7;
    #40 write_data = 'h8;
    #40 write_data = 'h9;
    #40 write_data = 'ha;
    #40 write_data = 'hb;
    #40 write_data = 'hc;
    #40 write_data = 'hd;
    #40 write_data = 'he;
    #40 write_data = 'hf;
    #680

    $finish;
  end

  initial begin
    $vcdpluson;
  end 

endmodule
