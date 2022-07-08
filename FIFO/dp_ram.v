/*
*Filename:dp_ram.v
*/

module dp_ram(
  write_clock,
  read_clock,
  write_allow,
  read_allow,
  write_addr,
  read_addr,
  write_data,
  read_data
  );

//clock to output delay
//zero time delay may be confusing and causing problems
  parameter DLY = 1;
  parameter RAM_WIDTH = 8;      //number of bits
  parameter RAM_DEEPTH = 16;   //number of bytes
  parameter ADDR_WIDTH = 9;   //length of address

  input write_clock;
  input read_clock;
  input write_allow;
  input read_allow;
  input [ADDR_WIDTH-1:0]write_addr;
  input [ADDR_WIDTH-1:0]read_addr;
  input [RAM_WIDTH-1:0]write_data;
  output [RAM_WIDTH-1:0]read_data;
  reg [RAM_WIDTH-1:0]read_data;
  reg [RAM_WIDTH-1:0] memory[RAM_DEEPTH-1:0];

  always @(posedge write_clock) begin
    if (write_allow)
      memory[write_addr] <= #DLY write_data;
  end

  always @(posedge read_clock) begin
    if (read_allow)
      read_data = #DLY memory[read_addr];
  end  
 


endmodule
