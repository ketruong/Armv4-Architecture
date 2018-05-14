
module controller (
  input wire [3:0] cond,
  input wire [1:0] op,
  input wire [5:0] funct,
  input wire [3:0] rd,
  input wire [3:0] flags,
  input wire [31:0] rawinst,
  output wire pcsrc,
  output wire memtoreg,
  output wire memwrite,
  output wire [31:0] alucontrol,
  output wire alusrc,
  output wire immsrc,
  output wire regwrite,
  output wire regsrca,
  output wire regsrcb
);

// Inputs cond, op, funct, and rd are directly from instruction word
// (data coming from instruction memory).
//
// See alu.sv file for definition of flags and alucontrol.
//
// Remaining outputs control the operation of the processor, based on
// the inputs which specify the current instruction.  The controller should
// use the inputs to set the right output signals to execute the desired
// instruction.

wire [11:0] coics;
assign coics = {cond, op, funct};

always_comb
begin
  case(coics)
     12'b111000001000: begin // ADD
	    pcsrc = 0;
	    memtoreg = 0;
 	    alucontrol[8:0] =  9'b000001000;
       memwrite = 1;
       alusrc = 0;
       immsrc = 0;
       regwrite = 0;
       regsrca = 0;
       regsrcb = 0;  
	   end
		12'b111000000100: begin // SUB
	    pcsrc = 0;
	    memtoreg = 0;
 	    alucontrol[8:0] =  9'b000001000;
       memwrite = 1;
       alusrc = 0;
       immsrc = 0;
       regwrite = 0;
       regsrca = 0;
       regsrcb = 0;  
	   end
	 
     12'b111001000001: begin // LDR
	   pcsrc = 0;
	   memtoreg = 1;
       alucontrol[8:0] = 9'b000001000;
       memwrite = 0;
       alusrc = 1;
       immsrc = 0;
       regwrite = 1;
       regsrca = 1;
       regsrcb = 0;
	   end
	 
     12'b111001000000: begin // STR
	    pcsrc = 0;
	    memtoreg = 0;
       alucontrol[8:0] = 9'b000001000;
       memwrite = 1; 
       alusrc = 1;
       immsrc = 1;
       regwrite = 0;
       regsrca = 1;
       regsrcb = 0;
	   end
	 default: begin // B
       pcsrc = 1;
	    memtoreg = 0;
       alucontrol[8:0] = 9'b000000000;
       memwrite = 0;
       alusrc = 1;
       immsrc = 0;
       regwrite = 0;
       regsrca = 0;
       regsrcb = 1;
    end
     /*default: begin
	   pcsrc = 1;
	   memtoreg = 0;
       alucontrol[8:0] = 9'b000000000;
       memwrite = 0;
       alusrc = 1;
       immsrc = 0;
       regwrite = 0;
       regsrca = 0;
       regsrcb = 1;

	   end*/
    endcase
end


endmodule
