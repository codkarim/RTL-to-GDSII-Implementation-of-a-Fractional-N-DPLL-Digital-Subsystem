// ****************************** Description *******************************//
//LMS-based Correlator block used for DTC quantization noise cancellation    //
// in a Fractional-N PLL. Its main features are :-         					 //
//                                                                           //
//  1. Multiplies the signed TDC output by the signed quantization error     //
//     generated from the first-order DSM to estimate their correlation.     //
//                                                                           //
//  2.implementing the LMS update equation:									 //								
//		 K_CAL[n] = K_CAL[n-1] + mu * Q_ERR[n-1] * TDC_OUT[n].				 //
//																			 //				
//  3. The correlation result is scaled by the learning rate (MU_SHIFT)      //
//     before being accumulated to provide stable coefficient adaptation.    //
//                                                                           //
//  4. The accumulator output represents the adaptive calibration gain       //
//     (KCAL), where only the 9 MSBs are exported to the DTC.                //
//                                                                           //                                                                     
// **************************************************************************//
module LMS #( parameter in_width   = 4,
			  parameter K_width    = 9,
			  parameter err_width  = 20,
			  parameter MU_SHIFT   = 4,
			  parameter corr_width = err_width + in_width,	//24
			  parameter acc_width  = corr_width+1)			//25 
			  
(	input		wire									CLK,RST,	
	input		wire	signed	[in_width 	-1:0]		TDC_OUT,			//the output from TDC.
	input		wire	signed	[err_width  -1:0]		Q_ERR,				//quntization error from First order DSM.
	output		wire			[K_width  	-1:0]		Kcal_UNSIGN,		//correlator output to scale the error.
	output		wire									OV_FL,UN_FL);		//flags to detect accumulator saturation limits.

//////------------- Internal Signals -------------//////
	reg  	signed	[acc_width -1:0]		CORR_OUT;			// LMS accumulator.
	wire	signed  [corr_width-1:0]		CORR_IN;			//
	wire	signed	[K_width  	-1:0]		Kcal_SIGN;
	
//////----------- Correlation Calculation -----------//////
// Multiply the signed quantization error by the signed TDC output.	
	assign CORR_IN = Q_ERR * TDC_OUT;


//////----------- LMS Accumulator -----------//////
// Update the calibration coefficient using the scaled correlation.	
	always@(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					CORR_OUT <= 'b0; 
				end	
			else if (!UN_FL && !OV_FL)	
				begin
					CORR_OUT <= CORR_OUT + (CORR_IN >>> MU_SHIFT);
				end
			else
				begin
					CORR_OUT <= 'b0; 
				end	
		end
	
//////----------- KCAL Generation -----------//////
// Export the 9 MSBs of the accumulator as the calibration coefficient.	
	assign Kcal_SIGN    = CORR_OUT[acc_width-1:acc_width-9];
	
// Convert the signed calibration coefficient into offset-binary
// representation before driving the DTC.	
	assign Kcal_UNSIGN	= {~CORR_OUT[acc_width-1],CORR_OUT[acc_width-2:acc_width-9]};
	
//////---------- generate overflow && underflow flags ---------//////
//assert OV_FL flag if CORR_OUT = {9'sb01111_1000,16'b0}	
	assign OV_FL =  !CORR_OUT[acc_width-1] & (& CORR_OUT[acc_width-2:acc_width-6]) ;
	
//assert UN_FL flag if CORR_OUT = {9'sb10000_1000,16'b0}	
	assign UN_FL =   CORR_OUT[acc_width-1] & (~| CORR_OUT[acc_width-2:acc_width-5])& CORR_OUT[acc_width-6] ;

	
endmodule	