
module hex_decoder (
    input wire [3:0] in,
    output reg [6:0] out_n
);
    
wire [6:0] out_tmp;

assign out_n[6] = out_tmp[0];
assign out_n[5] = out_tmp[1];
assign out_n[4] = out_tmp[2];
assign out_n[3] = out_tmp[3];
assign out_n[2] = out_tmp[4];
assign out_n[1] = out_tmp[5];
assign out_n[0] = out_tmp[6];

always_comb
begin
    case (in) // out_tmp = segments a, b, c, d, e, f, g
              // out_tmp is active low
        4'b0000: out_tmp = 7'b0000001;
        4'b0001: out_tmp = 7'b1001111;
        4'b0010: out_tmp = 7'b0010010;
        4'b0011: out_tmp = 7'b0000110;
        4'b0100: out_tmp = 7'b1001100;
        4'b0101: out_tmp = 7'b0100100;
        4'b0110: out_tmp = 7'b0100000;
        4'b0111: out_tmp = 7'b0001111;
        4'b1000: out_tmp = 7'b0000000;
        4'b1001: out_tmp = 7'b0000100;
        4'b1010: out_tmp = 7'b0001000;
        4'b1011: out_tmp = 7'b1100000;
        4'b1100: out_tmp = 7'b0110001;
        4'b1101: out_tmp = 7'b1000010;
        4'b1110: out_tmp = 7'b0110000;
        4'b1111: out_tmp = 7'b0111000;
        default: out_tmp = 7'bx;
    endcase
end
        
endmodule
