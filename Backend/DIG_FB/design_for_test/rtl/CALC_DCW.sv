module CALC_DCW #(	parameter	DCW_WIDTH     = 9,
					parameter 	err_width     = 20,
					parameter 	K_width    	  = 9,
					parameter	product_width = err_width + K_width)

(	input	wire									CLK,RST,
	input	wire  			[err_width  -1:0]	   	Q_ERR, 
	input	wire			[K_width  	-1:0]		Kcal, 
	output	reg				[DCW_WIDTH	-1:0]		DCW);
	
//////------------- Internal Signal	-------------//////
	wire 	[product_width-1:0]		DCW_MUL;
	
//////------------- Multiply Kcal by the quantization error (Qerr)	-------------//////	
	assign	DCW_MUL = Q_ERR * Kcal; 
	
//////------------- generate Digital Control Word (DCW)	-------------//////
	
	always@(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					DCW <= 'b0;
				end
			else
				begin
					DCW <= DCW_MUL[product_width-1:product_width-9];
				end	
		end
	
endmodule