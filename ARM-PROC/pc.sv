
module pc (
  input wire clock,
  input  wire [31:0] in,
  output wire [31:0] out
);

// On each clock edge, store in input 'in' into regiter,
// unless hlt is 1, in which case don't store the input.
// Assign the register to be output via 'out' port\

reg [31:0] temp;


always_ff @ (posedge clock) begin
	temp = in; 
    
end
	assign out = temp; 
endmodule
