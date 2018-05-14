
module clock_divider(
  input clk,
  input rst,
  output reg clk_out
);

// Counter incremented on each "clk" cycle
// counter is 28 bits wide, can count up to
// 2^28 in decimal
reg [27:0] counter; 

// Sequential logic, when "rst" reset is true, reset to default
// values, otherwise if counter value is equal to the specified decimal value
// then reset counter and set "clk_out" to be logical NOT of its prior value,
// otherwise simply increment counter and keep "clk_out" at its current value
//
// This clock divider counts up and each time specified counter value is reached
// it toggles the "clk_out" so the period of the "clk_out" is 2 times the 
// specified counter value.

// Given input 50MHz clock there are 50,000,000 clock edges in 1 second
// to get 1Hz clock, output "clk_out" has to toggle between 1 and 0 every
// 25,000,000 counts
always_ff @(posedge clk or posedge rst)
begin
	if(rst) begin
		counter <= 28'd0;  // 28'd0 means 28-bit number with decimal value 0
		clk_out <= 1'b0;	 // 1'b0 means 1-bit number with binary value 0
	end
	else if(counter == 28'd50000000) begin // 0.5Hz
		counter <= 28'd0;
		clk_out <= ~clk_out;
	end	
	else begin
		counter <= counter + 28'd1;
	end
end

endmodule
