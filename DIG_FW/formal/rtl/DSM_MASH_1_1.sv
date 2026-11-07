// **************************** Description **************************  //
// Second-order Delta-Sigma Modulator based on a MASH 1-1 architecture  //
// which its Features is :-     									    //	
//  1- Converts a fractional control word (FCW) into a sequence of      //
//     integer values while shaping the quantization noise 			    //
//     to high frequencies. This reduces in-band noise and minimizes    //
//     fractional spurs.												//
//  2- Achieves overall second-order noise shaping.       				//
// ******************************************************************** //

module DSM_MASH_1_1 #(  parameter IN_W  = 15,
					    parameter OUT_W = 5,
						parameter ERR_W = IN_W - OUT_W,	// Fractional remainder width = 10
						parameter Q_width = IN_W + 1) 
	
(	input  	wire              CLK,
    input  	wire              RST,
    input  	wire [IN_W-1:0]   DSM_IN,    // Fractional input word.
    output 	reg  [OUT_W-1:0]  DSM_OUT);	 // MASH DSM output.


//----------------------------------- First Stage ------------------------------//
//Stage 1 — First-order accumulator. 
//Quantizes by taking the MSB OUT_W bits as integer output,
//and keeping the LSB bits as the fractional remainder.
//
//------------------------------------------------------------------------------//

	wire [Q_width-1 :0]	   Q_IN_1;     		// output of accumulator which needed to be quantized. 
	reg  [ERR_W-1:0]	   Q_ERR_1;   		// Stage_1 quantization error (fractional remainder).
	reg  [OUT_W-1:0]	   out_stage_1;	    // Stage_1 integer output.
	
// Accumulator: previous error + current input
assign Q_IN_1 = Q_ERR_1 + DSM_IN;

//----------------------------------- Second Stage -----------------------------//
//Stage 2 — First-order accumulator driven by stage_1 error
//Input is the stage_1 fractional remainder (Q_IN_1[ERR_W-1:0]),
//accumulated with stage_2's own previous remainder.
//Output is 1-bit (MSB of the ERR_W+1 sum).
//
//------------------------------------------------------------------------------//
	
	wire  [ERR_W:0]		   Q_IN_2;    		  //Stage_2 accumulator sum (ERR_W+1 bits wide).
	reg   [ERR_W-1:0]	   Q_ERR_2;   		  //Stage_2 quantization error (fractional remainder).
	reg  				   out_stage_2;    	  //Stage-2 integer output (1-bit).
	reg  				   out_stage_2_del;   //for differentiation operation.



// Accumulate stage_1 error with stage_2's previous remainder
assign Q_IN_2 = Q_IN_1[ERR_W-1:0] + Q_ERR_2;


//------------------------------------------------------------------------------
// generate output of first stage and stage_1's error.
//------------------------------------------------------------------------------	

always @(posedge CLK or negedge RST)
	begin
		if(!RST)
			begin
				Q_ERR_1     <= 'b0;
				out_stage_1 <= 'b0;
			end	
		else
			begin
				{out_stage_1,Q_ERR_1} <= Q_IN_1;
			/*
				Q_ERR    <=   Q_IN[10:0];
				out_stage <= Q_IN[15:11];
			*/	
			end	
	end	


//------------------------------------------------------------------------------
// generate output of second stage and stage_2's error.
//------------------------------------------------------------------------------

always @(posedge CLK or negedge RST)
	begin
		if(!RST)
			begin
				Q_ERR_2    <= 'b0;
				out_stage_2 <= 'b0;
			end	
		else
			begin
				{out_stage_2,Q_ERR_2} <= Q_IN_2;	
			end	
	end	

always @(posedge CLK or negedge RST)
	begin
		if(!RST)
			out_stage_2_del <= 'b0;
		else
			out_stage_2_del <=  out_stage_2;	
	end


//------------------------- generate DSM output -------------------------------//
// MASH 1-1 output: y[n] = y1[n] + y2[n] - y2[n-1].
// This implements the noise cancellation logic.
// This operation cancels the first-stage quantization noise
// and achieves second-order noise shaping.
//-----------------------------------------------------------------------------//

always @(posedge CLK or negedge RST)
	begin
		if(!RST)
			DSM_OUT <= 'b0;
		else
			DSM_OUT <= out_stage_1 + (out_stage_2 - out_stage_2_del);	
	end	

endmodule