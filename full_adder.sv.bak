module full_adder(
	input a,b,c_in, 
	output s, c_out);

wire net1, net2, net3;

xor(net1, a ,b);
xor(s, net1, c_in);
and(net2, net1, c_in);
and(net3, a, b);
or(c_ount, net2, net3);


endmodule


