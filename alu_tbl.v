module alu_tbl;

	wire [4:0] result;
	wire zero, carry, negative;
	reg [3:0] a, b;
	reg [2:0] sel;
	
	alu uut(.result(result), .carry(carry), .zero(zero), .negative(negative),
				.a(a), .b(b), .sel(sel));
				
	initial begin
		
		a = 4'b1010; b = 4'b0110; sel = 3'b000; #10;
		
		a = 4'b1010; b = 4'b1010; sel = 3'b001; #10;
		
		a = 4'b1010; b = 4'b0110; sel = 3'b010; #10;
		
		a = 4'b1010; b = 4'b0110; sel = 3'b011; #10;
		
		a = 4'b1010; b = 4'b0110; sel = 3'b100; #10;
		
		a = 4'b1010; sel = 3'b101; #10;
		
		a = 4'b1010; sel = 3'b110; #10;
		
		a = 4'b1010; b = 4'b0110; sel = 3'b111; #10;
		
		a = 4'b1010; b = 4'b1010; sel = 3'b111; #10;
		
		a = 4'b0010; b = 4'b0110; sel = 3'b001; #10;

	end

endmodule