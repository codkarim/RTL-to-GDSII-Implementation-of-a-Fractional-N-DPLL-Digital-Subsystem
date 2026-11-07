module CNTRL_MMD #(	parameter FCW_WIDTH  = 27,
					parameter FRAC_WIDTH = 20,
					parameter INT_WIDTH  = 7,
					parameter CNTRL_WIDTH  = 8)
					
(	input	wire										CLK,RST,
	input	wire										DSM_out,
	input	wire			[FCW_WIDTH   -1:0]			FCW,
	output	reg				[FRAC_WIDTH	 -1:0]			FRAC_IN, 
	output	reg				[INT_WIDTH 	 -1:0]			INTEGER_IN,
	output	reg				[CNTRL_WIDTH -1:0]			MMD_CNTRL);
	
		
//////------------- Operand Isolation Technique -------------//////	
	 always@(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					FRAC_IN 	<= 'b0;
					INTEGER_IN 	<= 'b0;
				end
			else
				begin
					FRAC_IN 	<= FCW[FCW_WIDTH-8:0];
					INTEGER_IN 	<= FCW[FCW_WIDTH-1:FCW_WIDTH-7];
				end	
		end
	
//////------------- Generate MMD_CNTRL	-------------//////
	always@(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					MMD_CNTRL <= 'b0;
				end
			else
				begin
					MMD_CNTRL <= DSM_out + INTEGER_IN;
				end	
		end
	
endmodule