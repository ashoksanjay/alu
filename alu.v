module alu(output reg [4:0] result,
				output reg carry,
				output reg zero,
				output reg negative,
				input [3:0] a,
				input [3:0] b,
				input [2:0] sel);
				
	always @(*) begin
	
		zero = 0;
		carry = 0;
		negative = 0;
		
		case(sel)
			3'b000 : {carry, result} = a + b;
			
			3'b001 : {carry, result} = a - b;
			
			3'b010 : result = a & b;
			
			3'b011 : result = a | b;
			
			3'b100 : result = a ^ b;
			
			3'b101 : result = a << 1;
			
			3'b110 : result = a >> 1;
			
			3'b111 : result = (a == b) ? 1:0;
			
			default : result = 0;
		endcase
		
		zero = (result == 0);
		
		negative = result[4];
	end
				
endmodule
				