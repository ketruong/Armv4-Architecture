
module regfile (
  input wire clock,
  input wire we3,
  input wire [3:0] a1,
  input wire [3:0] a2,
  input wire [3:0] a3,
  input wire [31:0] wd3,
  input wire [31:0] r15,
  output wire [31:0] rd1,
  output wire [31:0] rd2
);

// This module should contain a set of 15 registers.
// E.g. use array of register:
// reg [7:0] a [0:3]; <-- this creates array of 4 registers, each storing 8-bits
//
// On each clock edge, if 'we3' is true, update value of register at index 'a3'
// with data coming from input 'wd3'.
// Independently, on each clock cycle, store input 'r15' into register number 15.

// At all times, assign rd1 to output value of register at index 'a1',
// and assign rd2 to output value of register at index 'a2'.
reg [31:0] rf[15:0];


always_ff @(posedge clock) begin 
    if (we3) begin 
		rf[a3] <= wd3; 
	 end
	 rf[15] <=r15;
	 end

assign rd1 = rf[a1];
assign rd2 = rf[a2];

endmodule
