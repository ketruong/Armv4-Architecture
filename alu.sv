
module alu (
  input wire clock,
  input wire [31:0] srca,
  input wire [31:0] srcb,
  input wire [31:0] alucontrol,
  output reg [3:0] aluflags,
  output wire [31:0] aluresult
);

// Compute the 'aluresut' based on the specified instruction,
// the lest significant 9 bits of 'alucontrol' should be:
// 0 00 0 0000 0 - AND
// 0 00 0 0001 0 - EOR
// 0 00 0 0010 0 - SUB
// 0 00 0 0011 0 - RSS
// 0 00 0 0100 0 - ADD
// 0 00 0 0101 0 - ADC
// 0 00 0 0110 0 - RSC
// 0 00 0 1100 0 - ORR
// 0 00 0 1000 1 - TST
// 0 00 0 1001 1 - TEQ
// 0 00 0 1010 1 - CMP
// 0 00 0 1011 1 - CMN
// 1 00 0 0000 0 - MUL 
// 1 00 0 0001 0 - MLA 
// etc.
// These bits are the same as bits in each machine instruction: op I funct S

//reg zero[31:0] = 32'b0;
reg[31:0] sum;
reg carry1, overflow;


adder adder_alu(
    .a(srca),
    .b(srcb),
    .s(sum)
);
wire [31:0] sub_minus1;
wire [31:0] sub;
assign sub[0] = !srcb[0];
assign sub[1] = !srcb[1];
assign sub[2] = !srcb[2];
assign sub[3] = !srcb[3];
assign sub[4] = !srcb[4];
assign sub[5] = !srcb[5];
assign sub[6] = !srcb[6];
assign sub[7] = !srcb[7];
assign sub[8] = !srcb[8];
assign sub[9] = !srcb[9];
assign sub[10] = !srcb[10];
assign sub[11] = !srcb[11];
assign sub[12] = !srcb[12];
assign sub[13] = !srcb[13];
assign sub[14] = !srcb[14];
assign sub[15] = !srcb[15];
assign sub[16] = !srcb[16];
assign sub[17] = !srcb[17];
assign sub[18] = !srcb[18];
assign sub[19] = !srcb[19];
assign sub[20] = !srcb[20];
assign sub[21] = !srcb[21];
assign sub[22] = !srcb[22];
assign sub[23] = !srcb[23];
assign sub[24] = !srcb[24];
assign sub[25] = !srcb[25];
assign sub[26] = !srcb[26];
assign sub[27] = !srcb[27];
assign sub[28] = !srcb[28];
assign sub[29] = !srcb[29];
assign sub[30] = !srcb[30];
assign sub[31] = !srcb[31];

wire [31:0] subfinal;
adder adder_sub(
    .a(srca),
    .b(sub),
    .s(sub_minus1)
);
adder adder_subfinal(
    .a(sub_minus1),
    .b(32'd1),
    .s(subfinal)
);

assign carry1 = 1'b0;

assign overflow = (srca[31] == srcb[31]) && (sum[31] == !srca[31]);

always_comb begin 
   
    
	if(alucontrol[8:0] ==  9'b000001000) begin
        aluresult = sum; 
        aluflags[3] = sum[31]; 
        aluflags[2] = (sum == 32'b0);
        aluflags[1] = carry1;
        aluflags[0] = overflow;
        if(aluflags[0]) begin
			//negative
            aluflags[3] = 0;
			//zero
            aluflags[2] = 0;
			//carry
            aluflags[1] = 0;
			//overflow
            aluflags[0] = 1;
        end
        else if(aluflags[2]) begin
			   //negative 
            aluflags[3] = 0;
			   //zero
            aluflags[2] = 1;
            //carry
            aluflags[1] = 0;
            //overflow
            aluflags[0] = 0;
        end

	end
	else if(alucontrol[8:0] ==  9'b000000100) begin
		  aluresult = sum; 
        aluflags[3] = sum[31]; 
        aluflags[2] = (sum == 32'b0);
        aluflags[1] = carry1;
        aluflags[0] = overflow;
        if(aluflags[0]) begin
			//negative
            aluflags[3] = 0;
			//zero
            aluflags[2] = 0;
			//carry
            aluflags[1] = 0;
			//overflow
            aluflags[0] = 1;
        end
        else if(aluflags[2]) begin
			   //negative 
            aluflags[3] = 0;
			   //zero
            aluflags[2] = 1;
            //carry
            aluflags[1] = 0;
            //overflow
            aluflags[0] = 0;
        end
	end
    else begin
        //default
        aluresult = 32'b0;
        aluflags[3] =0;
        aluflags[2] =0;
        aluflags[1] =0;
        aluflags[0] =0;
    end

end

// After result is computed, store flags in a 4-bit register:
//   flags[3] = Negative
//   flags[2] = Zero
//   flags[1] = Carry
//   flags[0] = oVerflow


endmodule
