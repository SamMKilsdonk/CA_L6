module Lab_6(data, a,enable);
	input [6:0]a; //for this lab only need 76 bytes, 7 bits gives 128 bytes
	input enable;
	output reg [31:0] data;
	
	always @(a or enable) begin
		if (enable == 1'b1)
			case (a)
				7'h00 : data = 32'h00450693;
				7'h04 : data = 32'h00100713;
				7'h08 : data = 32'h00b76463;
				7'h0c : data = 32'h00008067;
				7'h10 : data = 32'h0006a803;
				7'h14 : data = 32'h00068613;
				7'h18 : data = 32'h00070793;
				7'h1c : data = 32'hffc62883;
				7'h20 : data = 32'h01185a63;
				7'h24 : data = 32'h01162023;
				7'h28 : data = 32'hfff78793;
				7'h2c : data = 32'hffc60613;
				7'h30 : data = 32'hfe0796e3;
				7'h34 : data = 32'h00279793;
				7'h38 : data = 32'h00f507b3;
				7'h3c : data = 32'h0107a023;
				7'h40 : data = 32'h00170713;
				7'h44 : data = 32'h00468693;
				7'h48 : data = 32'hfc1ff06f;
				
				//filling in the gaps
				7'h01: data = 32'h13004506;
				7'h02: data = 32'h07130045;
				7'h03: data = 32'h10071300;
				7'h05: data = 32'h63001007;
				7'h06: data = 32'h64630010;
				7'h07: data = 32'hb7646300;
				7'h09: data = 32'h6700b764;
				7'h0a: data = 32'h806700b7;
				7'h0b: data = 32'h00806700;
				7'h0d: data = 32'h03000080;
				7'h0e: data = 32'ha8030000;
				7'h0f: data = 32'h06a80300;
				7'h11: data = 32'h130006a8;
				7'h12: data = 32'h86130006;
				7'h13: data = 32'h06861300;
				7'h15: data = 32'h93000686;
				7'h16: data = 32'h07930006;
				7'h17: data = 32'h07079300;
				7'h19: data = 32'h83000707;
				7'h1a: data = 32'h28830007;
				7'h1b: data = 32'hc6288300;
				7'h1d: data = 32'h63ffc628;
				7'h1e: data = 32'h5a63ffc6;
				7'h1f: data = 32'h185a63ff;
				7'h21: data = 32'h2301185a;
				7'h22: data = 32'h20230118;
				7'h23: data = 32'h16202301;
				7'h25: data = 32'h93011620;
				7'h26: data = 32'h87930116;
				7'h27: data = 32'hf7879301;
				7'h29: data = 32'h13fff787;
				7'h2a: data = 32'h0613fff7;
				7'h2b: data = 32'hc60613ff;
				7'h2d: data = 32'he3ffc606;
				7'h2e: data = 32'h96e3ffc6;
				7'h2f: data = 32'h0796e3ff;
				7'h31: data = 32'h93fe0796;
				7'h32: data = 32'h9793fe07;
				7'h33: data = 32'h279793fe;
				7'h35: data = 32'hb3002797;
				7'h36: data = 32'h07b30027;
				7'h37: data = 32'hf507b300;
				7'h39: data = 32'h2300f507;
				7'h3a: data = 32'ha02300f5;
				7'h3b: data = 32'h07a02300;
				7'h3d: data = 32'h130107a0;
				7'h3e: data = 32'h07130107;
				7'h3f: data = 32'h17071301;
				7'h41: data = 32'h93001707;
				7'h42: data = 32'h86930017;
				7'h43: data = 32'h46869300;
				7'h45: data = 32'h6f004686;
				7'h46: data = 32'hf06f0046;
				7'h47: data = 32'h1ff06f00;
				7'h49: data = 32'hxxfc1ff0;
				7'h4a: data = 32'hxxxxfc1f;
				7'h4b: data = 32'hxxxxxxfc;
				default: data = 32'hxxxxxxxx;
			endcase
		if (enable == 1'b0)
			data = 32'hzzzzzzzz;
	end
	//
	
	
	
endmodule


/*
				7'h00 : data = 32'h00450693;
				7'h04 : data = 32'h00100713;
				7'h08 : data = 32'h00b76463;
				7'h0c : data = 32'h00008067;
				7'h10 : data = 32'h0006a803;
				7'h14 : data = 32'h00068613;
				7'h18 : data = 32'h00070793;
				7'h1c : data = 32'hffc62883;
				7'h20 : data = 32'h01185a63;
				7'h24 : data = 32'h01162023;
				7'h28 : data = 32'hfff78793;
				7'h2c : data = 32'hffc60613;
				7'h30 : data = 32'hfe0796e3;
				7'h34 : data = 32'h00279793;
				7'h38 : data = 32'h00f507b3;
				7'h3c : data = 32'h0107a023;
				7'h40 : data = 32'h00170713;
				7'h44 : data = 32'h00468693;
				7'h48 : data = 32'hfc1ff06f;

				
				7'h00: data = 32'h00450693;
				7'h01: data = 32'h13004506;
				7'h02: data = 32'h07130045;
				7'h03: data = 32'h10071300;
				7'h04: data = 32'h00100713;
				7'h05: data = 32'h63001007;
				7'h06: data = 32'h64630010;
				7'h07: data = 32'hb7646300;
				7'h08: data = 32'h00b76463;
				7'h09: data = 32'h6700b764;
				7'h0a: data = 32'h806700b7;
				7'h0b: data = 32'h00806700;
				7'h0c: data = 32'h00008067;
				7'h0d: data = 32'h03000080;
				7'h0e: data = 32'ha8030000;
				7'h0f: data = 32'h06a80300;
				7'h10: data = 32'h0006a803;
				7'h11: data = 32'h130006a8;
				7'h12: data = 32'h86130006;
				7'h13: data = 32'h06861300;
				7'h14: data = 32'h00068613;
				7'h15: data = 32'h93000686;
				7'h16: data = 32'h07930006;
				7'h17: data = 32'h07079300;
				7'h18: data = 32'h00070793;
				7'h19: data = 32'h83000707;
				7'h1a: data = 32'h28830007;
				7'h1b: data = 32'hc6288300;
				7'h1c: data = 32'hffc62883;
				7'h1d: data = 32'h63ffc628;
				7'h1e: data = 32'h5a63ffc6;
				7'h1f: data = 32'h185a63ff;
				7'h20: data = 32'h01185a63;
				7'h21: data = 32'h2301185a;
				7'h22: data = 32'h20230118;
				7'h23: data = 32'h16202301;
				7'h24: data = 32'h01162023;
				7'h25: data = 32'h93011620;
				7'h26: data = 32'h87930116;
				7'h27: data = 32'hf7879301;
				7'h28: data = 32'hfff78793;
				7'h29: data = 32'h13fff787;
				7'h2a: data = 32'h0613fff7;
				7'h2b: data = 32'hc60613ff;
				7'h2c: data = 32'hffc60613;
				7'h2d: data = 32'he3ffc606;
				7'h2e: data = 32'h96e3ffc6;
				7'h2f: data = 32'h0796e3ff;
				7'h30: data = 32'hfe0796e3;
				7'h31: data = 32'h93fe0796;
				7'h32: data = 32'h9793fe07;
				7'h33: data = 32'h279793fe;
				7'h34: data = 32'h00279793;
				7'h35: data = 32'hb3002797;
				7'h36: data = 32'h07b30027;
				7'h37: data = 32'hf507b300;
				7'h38: data = 32'h00f507b3;
				7'h39: data = 32'h2300f507;
				7'h3a: data = 32'ha02300f5;
				7'h3b: data = 32'h07a02300;
				7'h3c: data = 32'h0107a023;
				7'h3d: data = 32'h130107a0;
				7'h3e: data = 32'h07130107;
				7'h3f: data = 32'h17071301;
				7'h40: data = 32'h00170713;
				7'h41: data = 32'h93001707;
				7'h42: data = 32'h86930017;
				7'h43: data = 32'h46869300;
				7'h44: data = 32'h00468693;
				7'h45: data = 32'h6f004686;
				7'h46: data = 32'hf06f0046;
				7'h47: data = 32'h1ff06f00;
				7'h48: data = 32'hfc1ff06f;
				7'h49: data = 32'hxxfc1ff0;
				7'h4a: data = 32'hxxxxfc1f;
				7'h4b: data = 32'hxxxxxxfc;
				*/
				