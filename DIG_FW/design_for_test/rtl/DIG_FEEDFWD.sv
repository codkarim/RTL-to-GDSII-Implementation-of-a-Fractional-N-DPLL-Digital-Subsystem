module DIG_FEEDFWD #( parameter coeff_width = 4,
					  parameter PHE_width	= 4,
					  parameter dlf_width   = 15,
					  parameter mash_width  = 5)
					  
(	input	wire									REF_CLK,
	input	wire									RST,
	input	wire									DLF_Ext_En,
	input	wire	signed		[dlf_width-1:0]					DLF_Ext_Data,
	input	wire	signed		[PHE_width-1:0]					TDC_OUT,
	input	wire			[coeff_width-1:0]				KP,
	input	wire			[coeff_width-1:0]				KI,
	input	wire									SI,
	input	wire									SE,
	input	wire									scan_clk,
	input	wire									scan_rst,
	input	wire									test_mode,
	output	wire									SO,
	output  wire			[mash_width-1 :0]				DAC_IN,
	output	wire									OV_FL,UN_FL);


 
///*************************************************///
//////////////////// Internal Signals /////////////////
///*************************************************///
 	
wire			[dlf_width -1:0]  	Mash_IN;
 
///*************************************************///
//////////////////// Muxing primary clock /////////////
///*************************************************///
 	
mux2X1	  U0_clk (
  	.IN_0(REF_CLK),
	.IN_1(scan_clk),
	.SEL(test_mode),
	.OUT(CLK_M));
 
///*************************************************///
//////////////////// Muxing reset /////////////////////
///*************************************************///

mux2X1	  U0_RST (
	.IN_0(RST),
	.IN_1(scan_rst),
	.SEL(test_mode),
	.OUT(RST_M));

///*************************************************///
////////////// Digital Loop Filter ////////////////////
///*************************************************///	
DLF #(.in_width(PHE_width),.coeff_width(coeff_width),.out_width(dlf_width))	
	U0_DLF( .DLF_IN(TDC_OUT),
			.KP(KP),	
			.KI(KI),	
			.CLK(CLK_M),	
			.RST(RST_M),	
			.DLF_Ext_En(DLF_Ext_En),	
			.DLF_Ext_Data(DLF_Ext_Data),	
			.OV_FL(OV_FL),	
			.UN_FL(UN_FL),	
			.DLF_OUT(Mash_IN));

///*************************************************///
////////////// Digital Delta Sigma Modulator //////////
///*************************************************///	
DSM_MASH_1_1 #(.IN_W(dlf_width))	
	U0_MASH(	.CLK(CLK_M),
			.RST(RST_M),	
			.DSM_IN(Mash_IN),	
			.DSM_OUT(DAC_IN));


endmodule
