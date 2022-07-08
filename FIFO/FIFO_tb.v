`timescale 1ns/ 1ps

module FIFO_tb;

  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 9;

  reg FIFO_rst,clk,read_enable,write_enable;
  reg [DATA_WIDTH-1:0]write_data;
  wire [DATA_WIDTH-1:0]read_data;
  wire full, empty;
  wire [ADDR_WIDTH-1:0] Fcounter;

  syncfifo u0_FIFO(
    .FIFO_rst(FIFO_rst),
    .clk(clk),
    .read_enable(read_enable),
    .write_enable(write_enable),
    .read_data(read_data),
    .write_data(write_data),
    .full(full),
    .empty(empty),
    .Fcounter(Fcounter)
    );

  initial begin
    FIFO_rst = 1;
    clk = 0;
    read_enable = 0;
    write_enable = 0;
    write_data = 0;
    #20
    FIFO_rst = 0;
  end
  always #20 clk = ~clk;

  initial begin
    begin
      @(posedge clk) write_enable = 'b1; read_enable = 'b0; write_data = 'hff;
    end
    #40

    begin
      @(posedge clk) write_enable = 'b1; read_enable = 'b0; write_data = 'hfe;
    end
    #40

    begin
      @(posedge clk) write_enable = 'b1; read_enable = 'b0; write_data = 'hfd;
    end
    #40
    
    begin
      @(posedge clk) read_enable = 'b1; write_enable = 'b0;
    end
    #40

    $finish;
  end

  initial begin
    $vcdpluson;
  end

  

endmodule
