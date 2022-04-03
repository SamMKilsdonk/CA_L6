module Lab_6_TB ();
	reg [6:0] address;
	reg enable;
	
	wire [31:0] data;

	Lab_6 mut (data, address,enable);

	initial begin 
		address = 5'd0;
		enable = 1'b0;
	end

	always begin
		#10
		address <= address + 7'd1;
	end
	
	initial begin
		#1280
		enable = 1'b1;
		#1280
		$stop;
	end

endmodule
