module cell_clock_gating(TE,E,CP,Q);

  input TE; //test enable which is used for test mode in DFT
  input E;  //enable
  input CP; //clock
  output Q;  //output signal

  reg E_lat; //internal signal
  assign E_or = E | TE;

  always@ (CP or E_or)
    if(!CP) begin
      E_lat <= E_or;  //let signal enable in negedge
    end
  
  assign Q = E_lat & CP;  // let input clk to output Q

endmodule
