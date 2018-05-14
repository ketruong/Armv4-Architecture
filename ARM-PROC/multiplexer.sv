module multiplexer (
  input wire sel,
  input wire [WIDTH-1:0] in0,
  input wire [WIDTH-1:0] in1,
  output wire [WIDTH-1:0] out  
);

  parameter WIDTH = 32;
  
  // Assign output based on sel signal
  assign out = (sel) ? in1 : in0;
  
endmodule
