module sync_FIFO(
  clk,
  FIFO_rst,
  read_enable,
  write_enable,
  read_data,
  write_data,
  full,
  empty
);

  input clk;
  input FIFO_rst;
  input read_enable;
  input write_enable;
  input [7:0] write_data;

  output reg [7:0] read_data;
  output full;
  output empty;
  wire [3:0] read_addr_a;
  wire [3:0] write_addr_a;

  reg [4:0] read_addr_e;
  reg [4:0] write_addr_e;
  reg [7:0] memory[15:0];

  assign read_addr_a = read_addr_e[3:0];
  assign write_addr_a = write_addr_e[3:0];

  //read operation
  always @(posedge clk, posedge FIFO_rst) begin
    if (FIFO_rst) begin
      read_addr_e = 5'b0;
    end
    else begin
      if (!empty && read_enable) begin
        read_data <= memory[read_addr_a];
        read_addr_e <= read_addr_e + 1;
      end
    end
  end

  //write operation
  always @(posedge clk, posedge FIFO_rst) begin
    if (FIFO_rst) begin
      write_addr_e = 5'b0;
    end
    else begin
      if (!full && write_enable) begin
        memory[write_addr_a] <= write_data;
        write_addr_e <= write_addr_e + 1;
      end
    end
  end

  assign empty = (read_addr_e == write_addr_e) ? 1 : 0;
  assign full = ((read_addr_e[4] != write_addr_e[4]) && (read_addr_e[3:0] == write_addr_e[3:0])) ? 1 : 0;


endmodule
