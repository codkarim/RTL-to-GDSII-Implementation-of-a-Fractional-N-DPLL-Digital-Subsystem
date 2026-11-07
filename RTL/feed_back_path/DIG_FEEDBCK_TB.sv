//time_unit = 1ns & time percision = 1ps
`timescale 1ns/1ps

module DIG_FEEDBCK_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter  	clk_period       = 10;
parameter 	PHE_width_TB 	 = 4;
parameter 	FCW_WIDTH_TB     = 27; 
parameter 	DCW_WIDTH_TB     = 9;
parameter 	FRAC_WIDTH_TB    = 20;
parameter 	INT_WIDTH_TB     = 7;
parameter 	CNTRL_WIDTH_TB   = 8;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////	

reg											FB_CLK_TB;
reg											RST_TB;
reg		signed	[PHE_width_TB-1:0]			TDC_OUT_TB;
reg				[FCW_WIDTH_TB-1:0]			FCW_TB;
wire										LMS_OV_FL_TB;
wire										LMS_UN_FL_TB;
wire			[CNTRL_WIDTH_TB -1:0]		MMD_CNTRL_TB;
wire			[DCW_WIDTH_TB   -1:0]		DCW_TB;


////////////////////////////////////////////////////////
//////////////// Initial Blocks //////////////////////// 
////////////////////////////////////////////////////////
initial
	begin
	FB_CLK_TB = 'b0;
	TDC_OUT_TB     = 'b0;
	FCW_TB         = 'b0;
	reset();
	
	DO_OPER(10.25,-'d6,'d40,1);
	DO_OPER(12,-'d3,'d40,2);
	DO_OPER(25.125,'d3,'d40,3);
	DO_OPER(13.29,'d6,'d100,4);
	
	#100
	$stop;
	end

////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////
task reset;
	begin
	  RST_TB = 1'b0;
	  #clk_period
	  RST_TB = 1'b1;
	  #clk_period;
	end
endtask


// -----------------------------------------------------------------------------//
// Input values are represented using Q7.20 fixed-point format.					//
//																				//		
// Conversion:																	//
//      Fixed_Point = Real_Value × 2^20											//	
//																				//					
// -----------------------------------------------------------------------------//

task DO_OPER;
	input real								CNTRL_WORD;
	input reg	signed	[PHE_width_TB -1:0]	PHE;

	
	input integer num_samples;
	input integer num;
	
	integer i;
	integer sum;
	
	real avg;
	
	begin
		sum = 0;
		@(negedge FB_CLK_TB)
		FCW_TB     = CNTRL_WORD * (2.0 ** FRAC_WIDTH_TB); 
		TDC_OUT_TB = PHE;
	  	
		#(2.5*clk_period)	 // Wait for the DSM output to settle before collecting samples.
	  
		// Accumulate output samples.
		for(i=0; i<num_samples; i=i+1) 
			begin
				@(negedge FB_CLK_TB);
				sum = sum + MMD_CNTRL_TB;
			end
			
		avg = sum * 1.0 /num_samples ;
		
        $display("Test Case %0d : Average = %.4f at time = %0d",num,avg,$time);
		$display("-----------------------------------------------");
		
		#100;
	end
endtask


// -----------------------------------------------------------------------------//
// Calculates the average value of MMD_CNTRL
// over a specified number of samples.
// -----------------------------------------------------------------------------//


//for check overflow and underflow flags.
always @(*)
 begin
  if (LMS_OV_FL_TB || LMS_UN_FL_TB)
    begin
	  $display("test case failed because LMS_OV_FL =%b or LMS_UN_FL = %b at time = %0d",LMS_OV_FL_TB,LMS_UN_FL_TB,$time);
	  $display("--------------------------------------------------------------");
	end
  else
	begin
	  $display("LMS accumulator output is within valid range at time = %0d",$time);
	  $display("--------------------------------------------------------------");
	end	
 end

///////////////////// Clock Generator //////////////////

always #(clk_period/2) FB_CLK_TB = ~FB_CLK_TB ;		// clock generator with freq =100MHZ and 10 ns clock cycle

///////////////// Module Instantiation ////////////////

DIG_FEEDBCK #(	.PHE_width(PHE_width_TB)  ,.FCW_WIDTH(FCW_WIDTH_TB),.DCW_WIDTH(DCW_WIDTH_TB),
				.FRAC_WIDTH(FRAC_WIDTH_TB),.INT_WIDTH(INT_WIDTH_TB),.CNTRL_WIDTH(CNTRL_WIDTH_TB))
				
	DUT(.FB_CLK(FB_CLK_TB),
		.RST(RST_TB),
		.TDC_OUT(TDC_OUT_TB),
		.FCW(FCW_TB),
		.LMS_OV_FL(LMS_OV_FL_TB),
		.LMS_UN_FL(LMS_UN_FL_TB),
		.MMD_CNTRL(MMD_CNTRL_TB),
		.DCW(DCW_TB)); 
		

endmodule