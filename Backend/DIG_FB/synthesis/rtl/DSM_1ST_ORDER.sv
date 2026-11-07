// ****************************** Description *******************************//
// First-order Delta-Sigma Modulator based on a single accumulator using a   //
// truncation quantizer Its main features are :-                             //
//																			 //
//  1. Accumulates the input fractional value with the previous  			 //
//     quantization residue. The accumulator output is then split into:      //
//       - A 1-bit output stream (MSB).                                      //
//       - A quantization residue (LSBs) fed back to the accumulator.        //
//                                                                           //
//  2. The feedback of the quantization residue shapes the quantization      //
//     noise, pushing most of its energy toward higher frequencies while     //
//     preserving the average value of the input.                            //
//                                                                           //
//  3. Provides first-order quantization noise shaping.                      //
// **************************************************************************//

module DSM_1ST_ORDER #(parameter in_width = 20,parameter Q_width = in_width + 1)
(	input		wire							   	CLK,RST,	
	input		wire			[in_width-1:0]	   	DSM_IN,		// fractional input value.
	output		reg		signed	[in_width-1:0]	   	Q_ERR_SIGN,
	output		reg  			[in_width-1:0]	   	Q_ERR,   //quntization error (fractional remainder).
	output		reg									DSM_out);	//quantized output
	
//////----------- internal signals ----------//////	
	wire 			[Q_width-1 :0]	   Q_IN;     //output of accumulator which needed to be quantized. 
	
//////----------- accumulator ----------//////			
// Accumulate the current input with the previous quantization error
assign Q_IN = Q_ERR + DSM_IN;


//////----------- quantization process ----------//////	
always @(posedge CLK or negedge RST)
	begin
		if(!RST)
			begin
				Q_ERR   	<= 'b0;
				Q_ERR_SIGN	<= {1'b1,19'b0};
				DSM_out 	<= 'b0;
			end	
		else
			begin
				{DSM_out,Q_ERR} <= Q_IN;
				Q_ERR_SIGN <= {~Q_IN[Q_width-2],Q_IN[Q_width-3:0]};
			end	
	end
	
endmodule	