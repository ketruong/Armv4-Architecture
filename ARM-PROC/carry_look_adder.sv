module adder(
	input [31:0] a, b,

	output [31:0] s
);

wire [31:0] g,p;
wire [31:0] carry1;

assign p[0] = a[0] | b[0];
assign g[0] = a[0] & b[0];
assign p[1] = a[1] | b[1];
assign g[1] = a[1] & b[1];
assign p[2] = a[2] | b[2];
assign g[2] = a[2] & b[2];
assign p[3] = a[3] | b[3];
assign g[3] = a[3] & b[3];
assign p[4] = a[4] | b[4];
assign g[4] = a[4] & b[4];
assign p[5] = a[5] | b[5];
assign g[5] = a[5] & b[5];
assign p[6] = a[6] | b[6];
assign g[6] = a[6] & b[6];
assign p[7] = a[7] | b[7];
assign g[7] = a[7] & b[7];
assign p[8] = a[8] | b[8];
assign g[8] = a[8] & b[8];
assign p[9] = a[9] | b[9];
assign g[9] = a[9] & b[9];
assign p[10] = a[10] | b[10];
assign g[10] = a[10] & b[10];
assign p[11] = a[11] | b[11];
assign g[11] = a[11] & b[11];
assign p[12] = a[12] | b[12];
assign g[12] = a[12] & b[12];
assign p[13] = a[13] | b[13];
assign g[13] = a[13] & b[13];
assign p[14] = a[14] | b[14];
assign g[14] = a[14] & b[14];
assign p[15] = a[15] | b[15];
assign g[15] = a[15] & b[15];
assign p[16] = a[16] | b[16];
assign g[16] = a[16] & b[16];
assign p[17] = a[17] | b[17];
assign g[17] = a[17] & b[17];
assign p[18] = a[18] | b[18];
assign g[18] = a[18] & b[18];
assign p[19] = a[19] | b[19];
assign g[19] = a[19] & b[19];
assign p[20] = a[20] | b[20];
assign g[20] = a[20] & b[20];
assign p[21] = a[21] | b[21];
assign g[21] = a[21] & b[21];
assign p[22] = a[22] | b[22];
assign g[22] = a[22] & b[22];
assign p[23] = a[23] | b[23];
assign g[23] = a[23] & b[23];
assign p[24] = a[24] | b[24];
assign g[24] = a[24] & b[24];
assign p[25] = a[25] | b[25];
assign g[25] = a[25] & b[25];
assign p[26] = a[26] | b[26];
assign g[26] = a[26] & b[26];
assign p[27] = a[27] | b[27];
assign g[27] = a[27] & b[27];
assign p[28] = a[28] | b[28];
assign g[28] = a[28] & b[28];
assign p[29] = a[29] | b[29];
assign g[29] = a[29] & b[29];
assign p[30] = a[30] | b[30];
assign g[30] = a[30] & b[30];
assign p[31] = a[31] | b[31];
assign g[31] = a[31] & b[31];

assign carry1[1] = g[0] | (p[0]& carry1[0]);
assign carry1[2] = g[1] | (p[1]& carry1[1]);
assign carry1[3] = g[2] | (p[2]& carry1[2]);
assign carry1[4] = g[3] | (p[3]& carry1[3]);
assign carry1[5] = g[4] | (p[4]& carry1[4]);
assign carry1[6] = g[5] | (p[5]& carry1[5]);
assign carry1[7] = g[6] | (p[6]& carry1[6]);
assign carry1[8] = g[7] | (p[7]& carry1[7]);
assign carry1[9] = g[8] | (p[8]& carry1[8]);
assign carry1[10] = g[9] | (p[9]& carry1[9]);
assign carry1[11] = g[10] | (p[10]& carry1[10]);
assign carry1[12] = g[11] | (p[11]& carry1[11]);
assign carry1[13] = g[12] | (p[12]& carry1[12]);
assign carry1[14] = g[13] | (p[13]& carry1[13]);
assign carry1[15] = g[14] | (p[14]& carry1[14]);
assign carry1[16] = g[15] | (p[15]& carry1[15]);
assign carry1[17] = g[16] | (p[16]& carry1[16]);
assign carry1[18] = g[17] | (p[17]& carry1[17]);
assign carry1[19] = g[18] | (p[18]& carry1[18]);
assign carry1[20] = g[19] | (p[19]& carry1[19]);
assign carry1[21] = g[20] | (p[20]& carry1[20]);
assign carry1[22] = g[21] | (p[21]& carry1[21]);
assign carry1[23] = g[22] | (p[22]& carry1[22]);
assign carry1[24] = g[23] | (p[23]& carry1[23]);
assign carry1[25] = g[24] | (p[24]& carry1[24]);
assign carry1[26] = g[25] | (p[25]& carry1[25]);
assign carry1[27] = g[26] | (p[26]& carry1[26]);
assign carry1[28] = g[27] | (p[27]& carry1[27]);
assign carry1[29] = g[28] | (p[28]& carry1[28]);
assign carry1[30] = g[29] | (p[29]& carry1[29]);
assign carry1[31] = g[30] | (p[30]& carry1[30]);



full_adder fa0(
	.a(a[0]),
	.b(b[0]),
	.c_in(carry1[0]),
	.s(s[0])
);

full_adder fa1(
	.a(a[1]),
	.b(b[1]),
	.c_in(carry1[1]),
	.s(s[1])

);
full_adder fa2(
	.a(a[2]),
	.b(b[2]),
	.c_in(carry1[2]),
	.s(s[2])

);
full_adder fa3(
	.a(a[3]),
	.b(b[3]),
	.c_in(carry1[3]),
	.s(s[3])

);
full_adder fa4(
	.a(a[4]),
	.b(b[4]),
	.c_in(carry1[4]),
	.s(s[4])

);
full_adder fa5(
	.a(a[5]),
	.b(b[5]),
	.c_in(carry1[5]),
	.s(s[5])

);
full_adder fa6(
	.a(a[6]),
	.b(b[6]),
	.c_in(carry1[6]),
	.s(s[6])

);
full_adder fa7(
	.a(a[7]),
	.b(b[7]),
	.c_in(carry1[7]),
	.s(s[7])

);
full_adder fa8(
	.a(a[8]),
	.b(b[8]),
	.c_in(carry1[8]),
	.s(s[8])
);
full_adder fa9(
	.a(a[9]),
	.b(b[9]),
	.c_in(carry1[9]),
	.s(s[9])

);
full_adder fa10(
	.a(a[10]),
	.b(b[10]),
	.c_in(carry1[10]),
	.s(s[10])

);
full_adder fa11(
	.a(a[11]),
	.b(b[11]),
	.c_in(carry1[11]),
	.s(s[11])

);
full_adder fa12(
	.a(a[12]),
	.b(b[12]),
	.c_in(carry1[12]),
	.s(s[12])

);
full_adder fa13(
	.a(a[13]),
	.b(b[13]),
	.c_in(carry1[13]),
	.s(s[13])

);
full_adder fa14(
	.a(a[14]),
	.b(b[14]),
	.c_in(carry1[14]),
	.s(s[14])

);
full_adder fa15(
	.a(a[15]),
	.b(b[15]),
	.c_in(carry1[15]),
	.s(s[15])
);
full_adder fa16(
	.a(a[16]),
	.b(b[16]),
	.c_in(carry1[16]),
	.s(s[16])

);
full_adder fa17(
	.a(a[17]),
	.b(b[17]),
	.c_in(carry1[17]),
	.s(s[17])

);
full_adder fa18(
	.a(a[18]),
	.b(b[18]),
	.c_in(carry1[18]),
	.s(s[18])

);
full_adder fa19(
	.a(a[19]),
	.b(b[19]),
	.c_in(carry1[19]),
	.s(s[19])

);
full_adder fa20(
	.a(a[20]),
	.b(b[20]),
	.c_in(carry1[20]),
	.s(s[20])

);
full_adder fa21(
	.a(a[21]),
	.b(b[21]),
	.c_in(carry1[21]),
	.s(s[21])

);
full_adder fa22(
	.a(a[22]),
	.b(b[22]),
	.c_in(carry1[22]),
	.s(s[22])

);
full_adder fa23(
	.a(a[23]),
	.b(b[23]),
	.c_in(carry1[23]),
	.s(s[23])

);
full_adder fa24(
	.a(a[24]),
	.b(b[24]),
	.c_in(carry1[24]),
	.s(s[24])

);
full_adder fa25(
	.a(a[25]),
	.b(b[25]),
	.c_in(carry1[25]),
	.s(s[25])


);
full_adder fa26(
	.a(a[26]),
	.b(b[26]),
	.c_in(carry1[26]),
	.s(s[26])

);
full_adder fa27(
	.a(a[27]),
	.b(b[27]),
	.c_in(carry1[27]),
	.s(s[27]));

full_adder fa28(
	.a(a[28]),
	.b(b[28]),
	.c_in(carry1[28]),
	.s(s[28])

);
full_adder fa29(
	.a(a[29]),
	.b(b[29]),
	.c_in(carry1[29]),
	.s(s[29])

);
full_adder fa30(
	.a(a[30]),
	.b(b[30]),
	.c_in(carry1[30]),
	.s(s[30])

);
full_adder fa31(
	.a(a[31]),
	.b(b[31]),
	.c_in(carry1[31]),
	.s(s[31])
);
endmodule 
