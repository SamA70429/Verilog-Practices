/*t 
*filename:fifo.v
*/
`timescale 1ns/ 1ps

module syncfifo(
  FIFO_rst,
  clk,
  read_enable,
  write_enable,
  read_data,
  write_data,
  full,
  empty,
  Fcounter
  );

  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 9;

  input FIFO_rst;
  input clk;
  input read_enable;
  input write_enable;
  output [DATA_WIDTH-1:0] read_data;
  input [DATA_WIDTH-1:0] write_data;
  output full;
  output empty;
  output [ADDR_WIDTH-1:0] Fcounter;

  reg [DATA_WIDTH-1:0] read_data;
  reg full;
  reg empty;
  reg [ADDR_WIDTH-1:0] Fcounter;
  reg [ADDR_WIDTH-1:0] write_addr;
  reg [ADDR_WIDTH-1:0] read_addr;
  wire read_allow = (read_enable && !empty);
  wire write_allow = (write_enable && !full);

  dp_ram u0_ram(
    .write_clock(clk),
    .read_clock(clk),
    .write_allow(write_allow),
    .read_allow(read_allow),
    .write_addr(write_addr),
    .read_addr(read_addr),
    .write_data(write_data),
    .read_data(read_data)
  );

  always @(posedge clk or posedge FIFO_rst) begin
    if (FIFO_rst)
      empty <= 'b1;
    else
      empty <= (!write_enable && (Fcounter[ADDR_WIDTH-1:1]==8'h0) && ((Fcounter[0]==0)||read_enable));
  end

  always @(posedge clk or posedge FIFO_rst) begin
    if (FIFO_rst)
      full <= 'b0;
    else
      full <= (!read_enable && (Fcounter[ADDR_WIDTH-1:0]==8'hFF) && ((Fcounter[0]==1)||write_enable));
  end

  always @(posedge clk or posedge FIFO_rst) begin
    if (FIFO_rst)
      read_addr <= 'h0;
    else if(read_allow && !empty)
      read_addr <= read_addr + 'b1;
  end

  always @(posedge clk or posedge FIFO_rst) begin
    if (FIFO_rst)
      write_addr <= 'h0;
    else if(write_allow && !full)
      write_addr <= write_addr + 'b1;
  end

  always @(posedge clk or posedge FIFO_rst) begin
    if (FIFO_rst)
      Fcounter <= 'h0;
    else if((!read_allow && write_allow) || (read_allow && !write_allow)) begin
      if(write_allow) Fcounter <= Fcounter + 'b1;
      else Fcounter = Fcounter -'b1;
    end
  end



endmodule
