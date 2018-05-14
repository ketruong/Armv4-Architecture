module adder(
	input [31:0] a, b,
	input c_in,
	output [31:0] s,
	output c_out);

wire [30:0] carry;

full_adder fa0(
	.a(a[0]),
	.b(b[0]),
	.c_in(c_in),
	.s(s[0]),
	.c_out(carry[0]));

full_adder fa1(
	.a(a[1]),
	.b(b[1]),
	.c_in(carry[0]),
	.s(s[1]),
	.c_out(carry[1]));

full_adder fa2(
	.a(a[2]),
	.b(b[2]),
	.c_in(carry[1]),
	.s(s[2]),
	.c_out(carry[2]));

full_adder fa3(
	.a(a[3]),
	.b(b[3]),
	.c_in(carry[2]),
	.s(s[3]),
	.c_out(carry[3]));

full_adder fa4(
	.a(a[4]),
	.b(b[4]),
	.c_in(carry[3]),
	.s(s[4]),
	.c_out(carry[4]));

full_adder fa5(
	.a(a[5]),
	.b(b[5]),
	.c_in(carry[4]),
	.s(s[5]),
	.c_out(carry[5]));

full_adder fa6(
	.a(a[6]),
	.b(b[6]),
	.c_in(carry[5]),
	.s(s[6]),
	.c_out(carry[6]));

full_adder fa7(
	.a(a[7]),
	.b(b[7]),
	.c_in(carry[6]),
	.s(s[7]),
	.c_out(carry[7]));

full_adder fa8(
	.a(a[8]),
	.b(b[8]),
	.c_in(carry[7]),
	.s(s[8]),
	.c_out(carry[8]));

full_adder fa9(
	.a(a[9]),
	.b(b[9]),
	.c_in(carry[8]),
	.s(s[9]),
	.c_out(carry[9]));

full_adder fa10(
	.a(a[10]),
	.b(b[10]),
	.c_in(carry[9]),
	.s(s[10]),
	.c_out(carry[10]));

full_adder fa11(
	.a(a[11]),
	.b(b[11]),
	.c_in(carry[10]),
	.s(s[11]),
	.c_out(carry[11]));

full_adder fa12(
	.a(a[12]),
	.b(b[12]),
	.c_in(carry[11]),
	.s(s[12]),
	.c_out(carry[12]));

full_adder fa13(
	.a(a[13]),
	.b(b[13]),
	.c_in(carry[12]),
	.s(s[13]),
	.c_out(carry[13]));

full_adder fa14(
	.a(a[14]),
	.b(b[14]),
	.c_in(carry[13]),
	.s(s[14]),
	.c_out(carry[14]));

full_adder fa15(
	.a(a[15]),
	.b(b[15]),
	.c_in(carry[14]),
	.s(s[15]),
	.c_out(carry[15]));

full_adder fa16(
	.a(a[16]),
	.b(b[16]),
	.c_in(carry[15]),
	.s(s[16]),
	.c_out(carry[16]));

full_adder fa17(
	.a(a[17]),
	.b(b[17]),
	.c_in(carry[16]),
	.s(s[17]),
	.c_out(carry[17]));

full_adder fa18(
	.a(a[18]),
	.b(b[18]),
	.c_in(carry[17]),
	.s(s[18]),
	.c_out(carry[18]));

full_adder fa19(
	.a(a[19]),
	.b(b[19]),
	.c_in(carry[18]),
	.s(s[19]),
	.c_out(carry[19]));

full_adder fa20(
	.a(a[20]),
	.b(b[20]),
	.c_in(carry[19]),
	.s(s[20]),
	.c_out(carry[20]));

full_adder fa21(
	.a(a[21]),
	.b(b[21]),
	.c_in(carry[20]),
	.s(s[21]),
	.c_out(carry[21]));

full_adder fa22(
	.a(a[22]),
	.b(b[22]),
	.c_in(carry[21]),
	.s(s[22]),
	.c_out(carry[22]));

full_adder fa23(
	.a(a[23]),
	.b(b[23]),
	.c_in(carry[22]),
	.s(s[23]),
	.c_out(carry[23]));

full_adder fa24(
	.a(a[24]),
	.b(b[24]),
	.c_in(carry[23]),
	.s(s[24]),
	.c_out(carry[24]));

full_adder fa25(
	.a(a[25]),
	.b(b[25]),
	.c_in(carry[24]),
	.s(s[25]),
	.c_out(carry[25]));


full_adder fa26(
	.a(a[26]),
	.b(b[26]),
	.c_in(carry[25]),
	.s(s[26]),
	.c_out(carry[26]));

full_adder fa27(
	.a(a[27]),
	.b(b[27]),
	.c_in(carry[26]),
	.s(s[27]),
	.c_out(carry[27]));

full_adder fa28(
	.a(a[28]),
	.b(b[28]),
	.c_in(carry[27]),
	.s(s[28]),
	.c_out(carry[28]));

full_adder fa29(
	.a(a[29]),
	.b(b[29]),
	.c_in(carry[28]),
	.s(s[29]),
	.c_out(carry[29]));

full_adder fa30(
	.a(a[30]),
	.b(b[30]),
	.c_in(carry[29]),
	.s(s[30]),
	.c_out(carry[30]));

full_adder fa31(
	.a(a[31]),
	.b(b[31]),
	.c_in(carry[30]),
	.s(s[31]),
	.c_out(c_out));


endmodule 