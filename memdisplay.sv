
module memdisplay (
  output wire [31:0] address,
  input wire [31:0] datain,
  output wire [6:0] hex0,
  output wire [6:0] hex1,
  output wire [6:0] hex2,
  output wire [6:0] hex3
);

// Always read/display from adderss 252
//assign address = 32'd252;
assign address = 32'd4 * 63;

// Output the low-oder bits of the data at
// address 63 to the four hex displays
hex_decoder hex3_inst (
  .in (datain[15:12]),
  .out_n (hex3)
);

hex_decoder hex2_inst (
  .in (datain[11:8]),
  .out_n (hex2)
);

hex_decoder hex1_inst (
  .in (datain[7:4]),
  .out_n (hex1)
);

hex_decoder hex0_inst (
  .in (datain[3:0]),
  .out_n (hex0)
);

endmodule
