`timescale 1ns/1ps
module fulladd(
  input ain,bin,cin,
  output wire cout,sum
);

  assign sum=ain^bin^cin;
  assign cout=(ain&bin)|(ain&cin)|(bin&cin);  

endmodule
