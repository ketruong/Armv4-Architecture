module mem_dual (
  input  wire                                     clock,
  input  wire [WIDTH_BITS-1:0]                    data_0,
  input  wire [WIDTH_BITS-1:0]                    data_1,
  input  wire [($clog2(DEPTH_4BYTE_WORDS)*4)-1:0] address_0,
  input  wire [($clog2(DEPTH_4BYTE_WORDS)*4)-1:0] address_1,
  input  wire                                     wren_0,
  input  wire                                     wren_1,
  output wire  [WIDTH_BITS-1:0]                   q_0,
  output wire  [WIDTH_BITS-1:0]                   q_1
);

  parameter WIDTH_BITS = 32;
  parameter DEPTH_4BYTE_WORDS = 64;

  parameter FILE = "";
  parameter INIT = 0;

  reg [WIDTH_BITS-1:0] mem [0:DEPTH_4BYTE_WORDS-1];

  integer file;
  integer scan;
  integer i;

  wire [31:0] addr0;
  assign addr0 = {2'b00, address_0[($clog2(DEPTH_4BYTE_WORDS)*4)-1:2]};
  
  wire [31:0] addr1;
  assign addr1 = {2'b00, address_1[($clog2(DEPTH_4BYTE_WORDS)*4)-1:2]};
  
  initial
    begin
      // read file contents if FILE is given
      if (FILE != "")
        $readmemh(FILE, mem);

      // set all data to 0 if INIT is true
      if (INIT)
        for (i = 0; i < DEPTH_4BYTE_WORDS; i = i + 1)
          mem[i] = {WIDTH_BITS{1'b0}};
   end

  always @ (posedge clock)
  begin
    if (wren_0)
      begin
        mem[addr0] <= data_0;
      end
  end

  always @ (posedge clock)
  begin
    if (wren_1)
      begin
        mem[addr1] <= data_1;
      end
  end

assign q_0 = mem[addr0];
assign q_1 = mem[addr1];
  
endmodule

