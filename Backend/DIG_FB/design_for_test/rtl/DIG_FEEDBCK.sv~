module DIG_FEEDBCK #(	parameter PHE_width = 4,
						parameter FCW_WIDTH = 27, 
						parameter DCW_WIDTH = 9,
						parameter FRAC_WIDTH = 20,
						parameter INT_WIDTH  = 7,
						parameter CNTRL_WIDTH  = 8)

(	input	wire									FB_CLK,
	input	wire									RST,
	input	wire	signed		[PHE_width-1:0]					TDC_OUT,
	input	wire			[FCW_WIDTH-1:0]					FCW,
	output	wire									LMS_OV_FL,
	output	wire									LMS_UN_FL,
	output	wire			[CNTRL_WIDTH -1:0]				MMD_CNTRL,
	output	wire			[DCW_WIDTH-1:0]					DCW);
	

///*************************************************///
//////////////////// Internal Signals /////////////////
///*************************************************///	
wire										DSM_out;	
wire				[FRAC_WIDTH	 -1:0]		FRAC_IN;
wire				[INT_WIDTH 	 -1:0]		INTEGER_IN;
wire		signed	[FRAC_WIDTH  -1:0]	   	Q_ERR_SIGN;
wire  				[FRAC_WIDTH  -1:0]	   	Q_ERR_UNSIGN;
wire				[DCW_WIDTH   -1:0]		Kcal;
///*************************************************///
///////// Digital Delta Sigma Modulator (DDSM) ////////
///*************************************************///
DSM_1ST_ORDER #(.in_width(FRAC_WIDTH))
	U0_DSM (.CLK(FB_CLK),
			.RST(RST),
			.DSM_IN(FRAC_IN),
			.Q_ERR_SIGN(Q_ERR_SIGN),
			.Q_ERR(Q_ERR_UNSIGN),
			.DSM_out(DSM_out));


///*************************************************///
///////// Digital Control Word(DCW) ///////////////////
///*************************************************///
CALC_DCW	#(.DCW_WIDTH(DCW_WIDTH),.err_width(FRAC_WIDTH),.K_width(DCW_WIDTH))
	U0_DCW (.CLK(FB_CLK),
			.RST(RST),
			.Q_ERR(Q_ERR_UNSIGN),
			.Kcal(Kcal),
			.DCW(DCW));

///*************************************************///
///////// CONTROL multi-modulus divider ///////////////
///*************************************************///
	
CNTRL_MMD #(.FCW_WIDTH(FCW_WIDTH),.FRAC_WIDTH(FRAC_WIDTH),.INT_WIDTH(INT_WIDTH),.CNTRL_WIDTH(CNTRL_WIDTH))
	U0_CNT_MMD( .CLK(FB_CLK),
				.RST(RST),
				.DSM_out(DSM_out),
				.FCW(FCW),
				.FRAC_IN(FRAC_IN),
				.INTEGER_IN(INTEGER_IN),
				.MMD_CNTRL(MMD_CNTRL));


///*************************************************///
///////// Least Mean Square (LMS) Correlator //////////
///*************************************************///
LMS #(.in_width(PHE_width),.K_width(DCW_WIDTH),.err_width(FRAC_WIDTH))
	U0_LMS(	.CLK(FB_CLK),
			.RST(RST),
			.TDC_OUT(TDC_OUT),
			.Q_ERR(Q_ERR_SIGN),
			.Kcal_UNSIGN(Kcal),
			.OV_FL(LMS_OV_FL),
			.UN_FL(LMS_UN_FL));

endmodule
