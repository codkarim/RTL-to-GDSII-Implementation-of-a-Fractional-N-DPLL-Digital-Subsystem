//time_unit = 1ns & time percision = 1ps
`timescale 1ns/1ps

module DIG_FEEDFWD_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter  	clk_period     = 10;
parameter 	coeff_width_tb = 4;
parameter 	PHE_width_tb   = 4;
parameter 	dlf_width_tb   = 15;
parameter 	mash_width_tb  = 5;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////	

reg										REF_CLK_TB;	
reg										RST_TB;	
reg										DLF_Ext_En_TB;	
reg		signed	[dlf_width_tb-1:0]		DLF_Ext_Data_TB;	
reg		signed	[PHE_width_tb-1:0]		TDC_OUT_TB;	
reg				[coeff_width_tb-1:0]	KP_TB;	
reg				[coeff_width_tb-1:0]	KI_TB;	
wire			[mash_width_tb-1 :0]	DAC_IN_TB;
wire									OV_FL_TB;
wire									UN_FL_TB;	


////////////////////////////////////////////////////////
//////////////// Initial Blocks //////////////////////// 
////////////////////////////////////////////////////////
initial
	begin
	REF_CLK_TB = 1'b0;
	TDC_OUT_TB =  'b0;
	DLF_Ext_En_TB   = 'b0;
	DLF_Ext_Data_TB = 'b0;
	load_coeff('d10,'d12);
	reset();
	
	PHE_IN('d3);
	PHE_IN('d2);
	PHE_IN('d1);
	PHE_IN('d0);
	
	PHE_IN(-'d1);
	PHE_IN(-'d2);
	PHE_IN(-'d3);
	PHE_IN('d0);
	
	#100
	$stop;
	end
	
initial
	begin 
		#(2*clk_period)
		calc_avg('d72);
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


task load_coeff;
	input	reg [coeff_width_tb -1:0]	prop_in;
	input	reg [coeff_width_tb -1:0]	integeral_in;
	
	begin
		KP_TB = prop_in;
		KI_TB = integeral_in;
	end	
endtask


task PHE_IN;
	input reg	signed	[PHE_width_tb -1:0]	PHE;
	begin
	  @(negedge REF_CLK_TB)	
	  TDC_OUT_TB = PHE;
	  #100;
	end
endtask

// -----------------------------------------------------------------------------//
// Calculates the average value of DAC_IN
// over a specified number of samples.
// -----------------------------------------------------------------------------//

task calc_avg;
	input integer num_samples;	//Number of DSM output samples used for averaging.
	
	integer i;
	integer sum;
	
	real avg;
	
	begin
		sum = 0;

		// Accumulate DSM output samples.
		for(i=0; i<num_samples; i=i+1) 
			begin
				@(negedge REF_CLK_TB);
				sum = sum + DAC_IN_TB;
			end
			
		avg = sum * 1.0 /num_samples ;
		
        $display("Average = %.5f at time = %0d",avg,$time);
		$display("-----------------------------------------------");
    end

endtask


//for check overflow and underflow flags.
always @(*)
	begin
		if (OV_FL_TB || UN_FL_TB)
			begin
				$display("test case failed because OV_FL =%b or UN_FL = %b at time = %0d",OV_FL_TB,UN_FL_TB,$time);
				$display("--------------------------------------------------------------");
			end
		else
			begin
				$display("DLF accumulator output is within valid range at time = %0d",$time);
				$display("--------------------------------------------------------------");
			end	
	end

///////////////////// Clock Generator //////////////////

always #(clk_period/2) REF_CLK_TB = ~REF_CLK_TB;		// clock generator with freq =100MHZ and 10 ns clock cycle

///////////////// Module Instantiation ////////////////

DIG_FEEDFWD #(.coeff_width(coeff_width_tb),.PHE_width(PHE_width_tb),
			  .dlf_width(dlf_width_tb)    ,.mash_width(mash_width_tb)) 
DUT(
.REF_CLK(REF_CLK_TB),
.RST(RST_TB),
.DLF_Ext_En(DLF_Ext_En_TB),
.DLF_Ext_Data(DLF_Ext_Data_TB),
.TDC_OUT(TDC_OUT_TB),
.KP(KP_TB),
.KI(KI_TB),
.OV_FL(OV_FL_TB),
.UN_FL(UN_FL_TB),
.DAC_IN(DAC_IN_TB)); 

endmodule