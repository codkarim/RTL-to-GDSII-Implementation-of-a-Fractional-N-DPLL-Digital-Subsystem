// ************************* Description *********************** //
//  This Digital loop filter is implemented to:-                 //
//   -- take the phase error output from the TDC.                //
//   -- then convert phase error  into a freq control word(FCW). //
//   -- drives the DCO toward frequency and phase lock.          //
// ************************************************************* //

module DLF #( parameter in_width	= 4,
			  parameter coeff_width = 4,
			  parameter out_width = 15,
			  parameter path_width = 20,
			  parameter pi_path_width =21)

(	input 		wire 	signed	[in_width -1:0]		DLF_IN,      //the output from TDC.
	input		wire			[coeff_width -1:0]	KP,KI,       //DLF_coeffecients.
	input		wire								CLK,RST,
	input		wire								DLF_Ext_En,
	input 		wire 	signed  [out_width -1: 0]   DLF_Ext_Data,
	output		wire								OV_FL,UN_FL, //flags to detect DLF accumulator saturation limits.
	output  	wire			[out_width -1:0]  	DLF_OUT);    //filter's output to control DCO.


//////----------- internal signals ----------//////
wire	signed 	[path_width -1:0]     I_path,P_path;
reg  	signed	[pi_path_width -1:0]  acc_out;
reg  	signed	[pi_path_width -1:0]  PI_path;

reg	 	signed	[in_width -1:0]		DLF_IN_FLOP;
wire	signed	[out_width -1:0]  	DLF_OUT_SIGN;

//////----------- Operand isolation technique ----------//////
always @(posedge CLK or negedge RST)
	begin
		if (!RST)
			begin
				DLF_IN_FLOP <= 'b0;
			end
		else
			begin
				DLF_IN_FLOP <= DLF_IN;
			end	
	end

//////----------- integeral path ----------//////
//The filter can handle long-term frequency drift 
//because the integrator uses the gain KI to accumulate phase error over time.

assign I_path = DLF_IN_FLOP <<< KI;

//////----------- proportional path ----------//////
//When the error signal changes, the proportional path instantly corrects it 
//by multiplying the input phase error by a constant gain coefficient KP.

assign P_path = DLF_IN_FLOP <<< KP;


//////----------- Accumulator ----------//////	
//to accumulate previous phase errors to correct for long-term drift.	
always @(posedge CLK or negedge RST)
	begin
		if (!RST)
			begin
				acc_out <= 'b0;
			end
		else if (!DLF_Ext_En && !OV_FL && !UN_FL)
			begin
				acc_out <= acc_out + I_path;
			end
		else
			begin
				acc_out <= 'b0;
			end	
	end
	

//////----------- generate filtered output ----------//////	
assign PI_path = acc_out + P_path;

assign DLF_OUT_SIGN = DLF_Ext_En ?	DLF_Ext_Data : PI_path[pi_path_width -1:6];

assign DLF_OUT 		= DLF_Ext_En ?  {~DLF_Ext_Data[out_width-1],DLF_Ext_Data[out_width-2:0]} :
									{~PI_path[pi_path_width-1],PI_path[pi_path_width-2:6]};
									
//////---------- generate Overflow && Underflow flags ---------//////
//assert Overflow flag if PI_path = {5'sb01110, 16'b0};
assign OV_FL = !PI_path[pi_path_width-1] & (& PI_path[pi_path_width-2:pi_path_width-4]); 

//assert Underflow flag if PI_path = {5'sb10001, 16'b0};
assign UN_FL =  PI_path[pi_path_width-1] & (~|PI_path[pi_path_width-2:pi_path_width-4]) & PI_path[pi_path_width-5]; //10001


endmodule