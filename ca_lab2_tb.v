module ca_lab2_tb;

reg clock;
reg reset; 
reg I;
wire F;
	
initial
begin
	clock = 0;
	reset = 0;
	I = 0;
end


always
begin
	#200 clock = ~clock;
end

always
begin
	#400 I = 1;
	#400 I = 0;
	#400 I = 0;
	#400 I = 1;
end

ca_lab2 ca_lab2_dut(.clock(clock), .reset(reset), .I(I), .F(F));

endmodule 