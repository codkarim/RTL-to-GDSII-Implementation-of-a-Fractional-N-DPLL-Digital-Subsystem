module DIG_FEEDBCK (
	FB_CLK, 
	RST, 
	TDC_OUT, 
	FCW, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	LMS_OV_FL, 
	LMS_UN_FL, 
	MMD_CNTRL, 
	DCW, 
	test_si2, 
	test_so2);
   input FB_CLK;
   input RST;
   input [3:0] TDC_OUT;
   input [26:0] FCW;
   input SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output SO;
   output LMS_OV_FL;
   output LMS_UN_FL;
   output [7:0] MMD_CNTRL;
   output [8:0] DCW;
   input test_si2;
   output test_so2;

   // Internal wires
   wire FE_OFN0_RST_M;
   wire CLK_M;
   wire RST_M;
   wire DSM_out;
   wire n2;
   wire n8;
   wire n9;
   wire [19:0] FRAC_IN;
   wire [19:0] Q_ERR_SIGN;
   wire [19:0] Q_ERR_UNSIGN;
   wire [8:0] Kcal;

   assign SO = DCW[8] ;
   assign test_so2 = Kcal[8] ;

   BUFX5M FE_OFC0_RST_M (.Y(FE_OFN0_RST_M), 
	.A(RST_M));
   BUFX10M U2 (.Y(n2), 
	.A(TDC_OUT[3]));
   DLY1X1M U5 (.Y(n8), 
	.A(SE));
   DLY1X1M U6 (.Y(n9), 
	.A(SE));
   mux2X1_1 U0_clk (.IN_0(FB_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(CLK_M));
   mux2X1_0 U0_RST (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_M));
   DSM_1ST_ORDER_in_width20_test_1 U0_DSM (.CLK(CLK_M), 
	.RST(RST_M), 
	.DSM_IN({ FRAC_IN[19],
		FRAC_IN[18],
		FRAC_IN[17],
		FRAC_IN[16],
		FRAC_IN[15],
		FRAC_IN[14],
		FRAC_IN[13],
		FRAC_IN[12],
		FRAC_IN[11],
		FRAC_IN[10],
		FRAC_IN[9],
		FRAC_IN[8],
		FRAC_IN[7],
		FRAC_IN[6],
		FRAC_IN[5],
		FRAC_IN[4],
		FRAC_IN[3],
		FRAC_IN[2],
		FRAC_IN[1],
		FRAC_IN[0] }), 
	.Q_ERR_SIGN({ Q_ERR_SIGN[19],
		Q_ERR_SIGN[18],
		Q_ERR_SIGN[17],
		Q_ERR_SIGN[16],
		Q_ERR_SIGN[15],
		Q_ERR_SIGN[14],
		Q_ERR_SIGN[13],
		Q_ERR_SIGN[12],
		Q_ERR_SIGN[11],
		Q_ERR_SIGN[10],
		Q_ERR_SIGN[9],
		Q_ERR_SIGN[8],
		Q_ERR_SIGN[7],
		Q_ERR_SIGN[6],
		Q_ERR_SIGN[5],
		Q_ERR_SIGN[4],
		Q_ERR_SIGN[3],
		Q_ERR_SIGN[2],
		Q_ERR_SIGN[1],
		Q_ERR_SIGN[0] }), 
	.Q_ERR({ Q_ERR_UNSIGN[19],
		Q_ERR_UNSIGN[18],
		Q_ERR_UNSIGN[17],
		Q_ERR_UNSIGN[16],
		Q_ERR_UNSIGN[15],
		Q_ERR_UNSIGN[14],
		Q_ERR_UNSIGN[13],
		Q_ERR_UNSIGN[12],
		Q_ERR_UNSIGN[11],
		Q_ERR_UNSIGN[10],
		Q_ERR_UNSIGN[9],
		Q_ERR_UNSIGN[8],
		Q_ERR_UNSIGN[7],
		Q_ERR_UNSIGN[6],
		Q_ERR_UNSIGN[5],
		Q_ERR_UNSIGN[4],
		Q_ERR_UNSIGN[3],
		Q_ERR_UNSIGN[2],
		Q_ERR_UNSIGN[1],
		Q_ERR_UNSIGN[0] }), 
	.DSM_out(DSM_out), 
	.test_si2(test_si2), 
	.test_si1(DCW[7]), 
	.test_se(n9));
   CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 U0_DCW (.CLK(CLK_M), 
	.RST(FE_OFN0_RST_M), 
	.Q_ERR({ Q_ERR_UNSIGN[19],
		Q_ERR_UNSIGN[18],
		Q_ERR_UNSIGN[17],
		Q_ERR_UNSIGN[16],
		Q_ERR_UNSIGN[15],
		Q_ERR_UNSIGN[14],
		Q_ERR_UNSIGN[13],
		Q_ERR_UNSIGN[12],
		Q_ERR_UNSIGN[11],
		Q_ERR_UNSIGN[10],
		Q_ERR_UNSIGN[9],
		Q_ERR_UNSIGN[8],
		Q_ERR_UNSIGN[7],
		Q_ERR_UNSIGN[6],
		Q_ERR_UNSIGN[5],
		Q_ERR_UNSIGN[4],
		Q_ERR_UNSIGN[3],
		Q_ERR_UNSIGN[2],
		Q_ERR_UNSIGN[1],
		Q_ERR_UNSIGN[0] }), 
	.Kcal({ Kcal[8],
		Kcal[7],
		Kcal[6],
		Kcal[5],
		Kcal[4],
		Kcal[3],
		Kcal[2],
		Kcal[1],
		Kcal[0] }), 
	.DCW({ DCW[8],
		DCW[7],
		DCW[6],
		DCW[5],
		DCW[4],
		DCW[3],
		DCW[2],
		DCW[1],
		DCW[0] }), 
	.test_si2(Q_ERR_SIGN[9]), 
	.test_si1(MMD_CNTRL[7]), 
	.test_se(n9));
   CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 U0_CNT_MMD (.CLK(CLK_M), 
	.RST(RST_M), 
	.DSM_out(DSM_out), 
	.FCW({ FCW[26],
		FCW[25],
		FCW[24],
		FCW[23],
		FCW[22],
		FCW[21],
		FCW[20],
		FCW[19],
		FCW[18],
		FCW[17],
		FCW[16],
		FCW[15],
		FCW[14],
		FCW[13],
		FCW[12],
		FCW[11],
		FCW[10],
		FCW[9],
		FCW[8],
		FCW[7],
		FCW[6],
		FCW[5],
		FCW[4],
		FCW[3],
		FCW[2],
		FCW[1],
		FCW[0] }), 
	.FRAC_IN({ FRAC_IN[19],
		FRAC_IN[18],
		FRAC_IN[17],
		FRAC_IN[16],
		FRAC_IN[15],
		FRAC_IN[14],
		FRAC_IN[13],
		FRAC_IN[12],
		FRAC_IN[11],
		FRAC_IN[10],
		FRAC_IN[9],
		FRAC_IN[8],
		FRAC_IN[7],
		FRAC_IN[6],
		FRAC_IN[5],
		FRAC_IN[4],
		FRAC_IN[3],
		FRAC_IN[2],
		FRAC_IN[1],
		FRAC_IN[0] }), 
	.INTEGER_IN (), 
	.MMD_CNTRL({ MMD_CNTRL[7],
		MMD_CNTRL[6],
		MMD_CNTRL[5],
		MMD_CNTRL[4],
		MMD_CNTRL[3],
		MMD_CNTRL[2],
		MMD_CNTRL[1],
		MMD_CNTRL[0] }), 
	.test_si(SI), 
	.test_se(n8), 
	.FE_OFN0_RST_M(FE_OFN0_RST_M));
   LMS_in_width4_K_width9_err_width20_test_1 U0_LMS (.CLK(CLK_M), 
	.RST(RST_M), 
	.TDC_OUT({ n2,
		TDC_OUT[2],
		TDC_OUT[1],
		TDC_OUT[0] }), 
	.Q_ERR({ Q_ERR_SIGN[19],
		Q_ERR_SIGN[18],
		Q_ERR_SIGN[17],
		Q_ERR_SIGN[16],
		Q_ERR_SIGN[15],
		Q_ERR_SIGN[14],
		Q_ERR_SIGN[13],
		Q_ERR_SIGN[12],
		Q_ERR_SIGN[11],
		Q_ERR_SIGN[10],
		Q_ERR_SIGN[9],
		Q_ERR_SIGN[8],
		Q_ERR_SIGN[7],
		Q_ERR_SIGN[6],
		Q_ERR_SIGN[5],
		Q_ERR_SIGN[4],
		Q_ERR_SIGN[3],
		Q_ERR_SIGN[2],
		Q_ERR_SIGN[1],
		Q_ERR_SIGN[0] }), 
	.Kcal_UNSIGN({ Kcal[8],
		Kcal[7],
		Kcal[6],
		Kcal[5],
		Kcal[4],
		Kcal[3],
		Kcal[2],
		Kcal[1],
		Kcal[0] }), 
	.OV_FL(LMS_OV_FL), 
	.UN_FL(LMS_UN_FL), 
	.test_si(Q_ERR_UNSIGN[19]), 
	.test_se(SE));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 11:31:27 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X8M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module DSM_1ST_ORDER_in_width20_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [20:0] A;
   input [20:0] B;
   input CI;
   output [20:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [20:1] carry;

   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFX2M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   ADDFX2M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFX2M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFX2M U1_16 (.S(SUM[16]), 
	.CO(carry[17]), 
	.CI(carry[16]), 
	.B(B[16]), 
	.A(A[16]));
   ADDFX2M U1_17 (.S(SUM[17]), 
	.CO(carry[18]), 
	.CI(carry[17]), 
	.B(B[17]), 
	.A(A[17]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(SUM[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module DSM_1ST_ORDER_in_width20_test_1 (
	CLK, 
	RST, 
	DSM_IN, 
	Q_ERR_SIGN, 
	Q_ERR, 
	DSM_out, 
	test_si2, 
	test_si1, 
	test_se);
   input CLK;
   input RST;
   input [19:0] DSM_IN;
   output [19:0] Q_ERR_SIGN;
   output [19:0] Q_ERR;
   output DSM_out;
   input test_si2;
   input test_si1;
   input test_se;

   // Internal wires
   wire n75;
   wire n48;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire [20:0] Q_IN;

   SDFFRQX2M DSM_out_reg (.SI(test_si1), 
	.SE(n55), 
	.RN(RST), 
	.Q(DSM_out), 
	.D(Q_IN[20]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[18]  (.SI(Q_ERR_SIGN[17]), 
	.SE(n60), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[18]), 
	.D(Q_IN[18]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[17]  (.SI(Q_ERR_SIGN[16]), 
	.SE(n62), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[17]), 
	.D(Q_IN[17]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[16]  (.SI(Q_ERR_SIGN[15]), 
	.SE(n70), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[16]), 
	.D(Q_IN[16]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[15]  (.SI(Q_ERR_SIGN[14]), 
	.SE(n61), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[15]), 
	.D(Q_IN[15]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[14]  (.SI(Q_ERR_SIGN[13]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[14]), 
	.D(Q_IN[14]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[13]  (.SI(Q_ERR_SIGN[12]), 
	.SE(n68), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[13]), 
	.D(Q_IN[13]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[12]  (.SI(Q_ERR_SIGN[11]), 
	.SE(n71), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[12]), 
	.D(Q_IN[12]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[19]  (.SI(Q_ERR[18]), 
	.SE(n64), 
	.RN(RST), 
	.Q(Q_ERR[19]), 
	.D(Q_IN[19]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[11]  (.SI(Q_ERR_SIGN[10]), 
	.SE(n67), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[11]), 
	.D(Q_IN[11]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[10]  (.SI(test_si2), 
	.SE(n60), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[10]), 
	.D(Q_IN[10]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[9]  (.SI(Q_ERR_SIGN[8]), 
	.SE(n63), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[9]), 
	.D(Q_IN[9]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[16]  (.SI(Q_ERR[15]), 
	.SE(n69), 
	.RN(RST), 
	.Q(Q_ERR[16]), 
	.D(Q_IN[16]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[17]  (.SI(Q_ERR[16]), 
	.SE(n61), 
	.RN(RST), 
	.Q(Q_ERR[17]), 
	.D(Q_IN[17]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[18]  (.SI(Q_ERR[17]), 
	.SE(n54), 
	.RN(RST), 
	.Q(Q_ERR[18]), 
	.D(Q_IN[18]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[8]  (.SI(Q_ERR_SIGN[7]), 
	.SE(n68), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[8]), 
	.D(Q_IN[8]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[7]  (.SI(Q_ERR_SIGN[6]), 
	.SE(n55), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[7]), 
	.D(Q_IN[7]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[6]  (.SI(Q_ERR_SIGN[5]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[6]), 
	.D(Q_IN[6]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[13]  (.SI(Q_ERR[12]), 
	.SE(n67), 
	.RN(RST), 
	.Q(Q_ERR[13]), 
	.D(Q_IN[13]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[14]  (.SI(Q_ERR[13]), 
	.SE(n58), 
	.RN(RST), 
	.Q(Q_ERR[14]), 
	.D(Q_IN[14]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[15]  (.SI(Q_ERR[14]), 
	.SE(n64), 
	.RN(RST), 
	.Q(Q_ERR[15]), 
	.D(Q_IN[15]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_SIGN_reg[5]  (.SI(Q_ERR_SIGN[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[5]), 
	.D(Q_IN[5]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[10]  (.SI(Q_ERR[9]), 
	.SE(n53), 
	.RN(RST), 
	.Q(Q_ERR[10]), 
	.D(Q_IN[10]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[11]  (.SI(Q_ERR[10]), 
	.SE(n63), 
	.RN(RST), 
	.Q(Q_ERR[11]), 
	.D(Q_IN[11]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[12]  (.SI(Q_ERR[11]), 
	.SE(n68), 
	.RN(RST), 
	.Q(Q_ERR[12]), 
	.D(Q_IN[12]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[7]  (.SI(Q_ERR[6]), 
	.SE(n54), 
	.RN(RST), 
	.Q(Q_ERR[7]), 
	.D(Q_IN[7]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[8]  (.SI(Q_ERR[7]), 
	.SE(n54), 
	.RN(RST), 
	.Q(Q_ERR[8]), 
	.D(Q_IN[8]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_reg[9]  (.SI(Q_ERR[8]), 
	.SE(n67), 
	.RN(RST), 
	.Q(Q_ERR[9]), 
	.D(Q_IN[9]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[6]  (.SI(Q_ERR[5]), 
	.SE(n58), 
	.RN(RST), 
	.Q(Q_ERR[6]), 
	.D(Q_IN[6]), 
	.CK(CLK));
   SDFFRHQX8M \Q_ERR_reg[0]  (.SI(n75), 
	.SE(n52), 
	.RN(RST), 
	.Q(Q_ERR[0]), 
	.D(Q_IN[0]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[5]  (.SI(Q_ERR[4]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR[5]), 
	.D(Q_IN[5]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_SIGN_reg[4]  (.SI(Q_ERR_SIGN[3]), 
	.SE(n59), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[4]), 
	.D(Q_IN[4]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_SIGN_reg[3]  (.SI(Q_ERR_SIGN[2]), 
	.SE(n52), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[3]), 
	.D(Q_IN[3]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[4]  (.SI(Q_ERR[3]), 
	.SE(n64), 
	.RN(RST), 
	.Q(Q_ERR[4]), 
	.D(Q_IN[4]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[3]  (.SI(Q_ERR[2]), 
	.SE(n66), 
	.RN(RST), 
	.Q(Q_ERR[3]), 
	.D(Q_IN[3]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_SIGN_reg[1]  (.SI(Q_ERR_SIGN[0]), 
	.SE(n61), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[1]), 
	.D(Q_IN[1]), 
	.CK(CLK));
   SDFFSQX1M \Q_ERR_SIGN_reg[19]  (.SN(RST), 
	.SI(Q_ERR_SIGN[18]), 
	.SE(n66), 
	.Q(n75), 
	.D(n48), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_SIGN_reg[2]  (.SI(Q_ERR_SIGN[1]), 
	.SE(n52), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[2]), 
	.D(Q_IN[2]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_SIGN_reg[0]  (.SI(DSM_out), 
	.SE(n66), 
	.RN(RST), 
	.Q(Q_ERR_SIGN[0]), 
	.D(Q_IN[0]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[2]  (.SI(Q_ERR[1]), 
	.SE(n58), 
	.RN(RST), 
	.Q(Q_ERR[2]), 
	.D(Q_IN[2]), 
	.CK(CLK));
   SDFFRHQX4M \Q_ERR_reg[1]  (.SI(Q_ERR[0]), 
	.SE(n62), 
	.RN(RST), 
	.Q(Q_ERR[1]), 
	.D(Q_IN[1]), 
	.CK(CLK));
   INVX2M U49 (.Y(n48), 
	.A(Q_IN[19]));
   DLY1X1M U51 (.Y(n52), 
	.A(n63));
   DLY1X1M U52 (.Y(n53), 
	.A(n72));
   DLY1X1M U53 (.Y(n54), 
	.A(n62));
   INVXLM U54 (.Y(n55), 
	.A(n57));
   DLY1X1M U55 (.Y(n69), 
	.A(test_se));
   INVXLM U56 (.Y(n56), 
	.A(n69));
   INVXLM U57 (.Y(n57), 
	.A(n69));
   DLY1X1M U58 (.Y(n58), 
	.A(n60));
   DLY1X1M U59 (.Y(n59), 
	.A(n71));
   DLY1X1M U60 (.Y(n60), 
	.A(n70));
   DLY1X1M U61 (.Y(n61), 
	.A(n72));
   DLY1X1M U62 (.Y(n62), 
	.A(n53));
   DLY1X1M U63 (.Y(n63), 
	.A(n53));
   DLY1X1M U64 (.Y(n64), 
	.A(n53));
   DLY1X1M U65 (.Y(n65), 
	.A(n69));
   DLY1X1M U66 (.Y(n66), 
	.A(n59));
   DLY1X1M U67 (.Y(n67), 
	.A(n59));
   DLY1X1M U68 (.Y(n68), 
	.A(n59));
   INVXLM U69 (.Y(n70), 
	.A(n56));
   INVXLM U70 (.Y(n71), 
	.A(n57));
   INVXLM U71 (.Y(n72), 
	.A(n56));
   CLKBUFX2M U72 (.Y(Q_ERR_SIGN[19]), 
	.A(n75));
   DSM_1ST_ORDER_in_width20_DW01_add_0 add_29 (.A({ 1'b0,
		Q_ERR[19],
		Q_ERR[18],
		Q_ERR[17],
		Q_ERR[16],
		Q_ERR[15],
		Q_ERR[14],
		Q_ERR[13],
		Q_ERR[12],
		Q_ERR[11],
		Q_ERR[10],
		Q_ERR[9],
		Q_ERR[8],
		Q_ERR[7],
		Q_ERR[6],
		Q_ERR[5],
		Q_ERR[4],
		Q_ERR[3],
		Q_ERR[2],
		Q_ERR[1],
		Q_ERR[0] }), 
	.B({ 1'b0,
		DSM_IN[19],
		DSM_IN[18],
		DSM_IN[17],
		DSM_IN[16],
		DSM_IN[15],
		DSM_IN[14],
		DSM_IN[13],
		DSM_IN[12],
		DSM_IN[11],
		DSM_IN[10],
		DSM_IN[9],
		DSM_IN[8],
		DSM_IN[7],
		DSM_IN[6],
		DSM_IN[5],
		DSM_IN[4],
		DSM_IN[3],
		DSM_IN[2],
		DSM_IN[1],
		DSM_IN[0] }), 
	.CI(1'b0), 
	.SUM({ Q_IN[20],
		Q_IN[19],
		Q_IN[18],
		Q_IN[17],
		Q_IN[16],
		Q_IN[15],
		Q_IN[14],
		Q_IN[13],
		Q_IN[12],
		Q_IN[11],
		Q_IN[10],
		Q_IN[9],
		Q_IN[8],
		Q_IN[7],
		Q_IN[6],
		Q_IN[5],
		Q_IN[4],
		Q_IN[3],
		Q_IN[2],
		Q_IN[1],
		Q_IN[0] }));
endmodule

module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [26:0] A;
   input [26:0] B;
   input CI;
   output [26:0] SUM;
   output CO;

   // Internal wires
   wire FE_RN_1154_0;
   wire FE_RN_1153_0;
   wire FE_RN_1152_0;
   wire FE_RN_1151_0;
   wire FE_RN_1150_0;
   wire FE_RN_1149_0;
   wire FE_RN_1148_0;
   wire FE_RN_1147_0;
   wire FE_RN_1146_0;
   wire FE_RN_1145_0;
   wire FE_RN_1092_0;
   wire n1;
   wire n3;
   wire n5;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;

   assign SUM[18] = A[18] ;

   NAND2X4M FE_RC_1280_0 (.Y(FE_RN_1154_0), 
	.B(n13), 
	.A(FE_RN_1147_0));
   CLKNAND2X4M FE_RC_1279_0 (.Y(n11), 
	.B(FE_RN_1153_0), 
	.A(FE_RN_1154_0));
   NAND2X3M FE_RC_1278_0 (.Y(FE_RN_1153_0), 
	.B(B[24]), 
	.A(A[24]));
   INVX2M FE_RC_1277_0 (.Y(FE_RN_1152_0), 
	.A(FE_RN_1153_0));
   NOR2X2M FE_RC_1276_0 (.Y(FE_RN_1151_0), 
	.B(A[25]), 
	.A(FE_RN_1152_0));
   INVX2M FE_RC_1275_0 (.Y(FE_RN_1150_0), 
	.A(A[25]));
   INVX2M FE_RC_1274_0 (.Y(FE_RN_1149_0), 
	.A(B[24]));
   INVX2M FE_RC_1273_0 (.Y(FE_RN_1148_0), 
	.A(A[24]));
   NAND2X4M FE_RC_1272_0 (.Y(FE_RN_1147_0), 
	.B(FE_RN_1149_0), 
	.A(FE_RN_1148_0));
   INVX2M FE_RC_1271_0 (.Y(FE_RN_1146_0), 
	.A(FE_RN_1147_0));
   NAND2X2M FE_RC_1270_0 (.Y(FE_RN_1145_0), 
	.B(FE_RN_1150_0), 
	.A(FE_RN_1146_0));
   OAI2B11X4M FE_RC_1269_0 (.Y(n12), 
	.C0(B[25]), 
	.B0(FE_RN_1145_0), 
	.A1N(FE_RN_1151_0), 
	.A0(n13));
   INVX2M FE_RC_1206_0 (.Y(FE_RN_1092_0), 
	.A(B[20]));
   NOR2BX4M FE_RC_1205_0 (.Y(n28), 
	.B(FE_RN_1092_0), 
	.AN(A[20]));
   NAND2X2M U2 (.Y(n30), 
	.B(A[19]), 
	.A(B[19]));
   NAND2X4M U3 (.Y(n20), 
	.B(n25), 
	.A(n3));
   XOR2X4M U5 (.Y(SUM[26]), 
	.B(n10), 
	.A(B[26]));
   CLKNAND2X4M U6 (.Y(n3), 
	.B(n31), 
	.A(n1));
   INVX2M U7 (.Y(n1), 
	.A(n23));
   NOR2X2M U9 (.Y(n19), 
	.B(A[22]), 
	.A(B[22]));
   CLKNAND2X2M U11 (.Y(n25), 
	.B(A[21]), 
	.A(B[21]));
   NOR2X3M U12 (.Y(n5), 
	.B(n16), 
	.A(n15));
   OAI2BB1X2M U14 (.Y(n10), 
	.B0(n12), 
	.A1N(A[25]), 
	.A0N(n11));
   OR2X12M U15 (.Y(n13), 
	.B(n6), 
	.A(n5));
   NOR2X2M U16 (.Y(n27), 
	.B(A[20]), 
	.A(B[20]));
   AOI2B1X8M U18 (.Y(n16), 
	.B0(n21), 
	.A1N(n19), 
	.A0(n20));
   XOR2XLM U19 (.Y(SUM[23]), 
	.B(n16), 
	.A(n18));
   XOR2XLM U20 (.Y(SUM[22]), 
	.B(n22), 
	.A(n20));
   NOR2XLM U21 (.Y(n22), 
	.B(n19), 
	.A(n21));
   NAND2X1M U23 (.Y(n17), 
	.B(A[23]), 
	.A(B[23]));
   CLKINVX2M U24 (.Y(n9), 
	.A(n30));
   AND2X1M U25 (.Y(SUM[19]), 
	.B(n30), 
	.A(n8));
   OR2X1M U26 (.Y(n8), 
	.B(A[19]), 
	.A(B[19]));
   INVX2M U28 (.Y(n6), 
	.A(n17));
   NOR2X2M U29 (.Y(n15), 
	.B(A[23]), 
	.A(B[23]));
   XOR3X1M U30 (.Y(SUM[25]), 
	.C(n11), 
	.B(A[25]), 
	.A(B[25]));
   XOR3XLM U31 (.Y(SUM[24]), 
	.C(n13), 
	.B(A[24]), 
	.A(B[24]));
   NAND2BX1M U32 (.Y(n18), 
	.B(n17), 
	.AN(n15));
   AND2X2M U33 (.Y(n21), 
	.B(A[22]), 
	.A(B[22]));
   XOR2X2M U34 (.Y(SUM[21]), 
	.B(n24), 
	.A(n26));
   NAND2BX1M U35 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   NOR2X2M U36 (.Y(n23), 
	.B(A[21]), 
	.A(B[21]));
   XOR2X2M U37 (.Y(SUM[20]), 
	.B(n29), 
	.A(n9));
   NOR2X1M U38 (.Y(n29), 
	.B(n27), 
	.A(n28));
   OAI21BX4M U4 (.Y(n31), 
	.B0N(n28), 
	.A1(n30), 
	.A0(n27));
   CLKINVX2M U8 (.Y(n24), 
	.A(n31));
endmodule

module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [19:0] A;
   input [8:0] B;
   input TC;
   output [28:0] PRODUCT;

   // Internal wires
   wire FE_RN_2006_0;
   wire FE_RN_2005_0;
   wire FE_RN_2004_0;
   wire FE_RN_2003_0;
   wire FE_RN_2002_0;
   wire FE_RN_2001_0;
   wire FE_RN_2000_0;
   wire FE_RN_1999_0;
   wire FE_RN_1998_0;
   wire FE_RN_1997_0;
   wire FE_RN_1996_0;
   wire FE_RN_1995_0;
   wire FE_RN_1994_0;
   wire FE_RN_1993_0;
   wire FE_RN_1992_0;
   wire FE_RN_1991_0;
   wire FE_RN_1990_0;
   wire FE_RN_1989_0;
   wire FE_RN_1988_0;
   wire FE_RN_1987_0;
   wire FE_RN_1986_0;
   wire FE_RN_1930_0;
   wire FE_RN_1929_0;
   wire FE_RN_1928_0;
   wire FE_RN_1927_0;
   wire FE_RN_1926_0;
   wire FE_RN_1925_0;
   wire FE_RN_1924_0;
   wire FE_RN_1923_0;
   wire FE_RN_1922_0;
   wire FE_RN_1921_0;
   wire FE_RN_1920_0;
   wire FE_RN_1919_0;
   wire FE_RN_1918_0;
   wire FE_RN_1917_0;
   wire FE_RN_1916_0;
   wire FE_RN_1915_0;
   wire FE_RN_1914_0;
   wire FE_RN_1913_0;
   wire FE_RN_1912_0;
   wire FE_RN_1911_0;
   wire FE_RN_1910_0;
   wire FE_RN_1909_0;
   wire FE_RN_1908_0;
   wire FE_RN_1907_0;
   wire FE_RN_1906_0;
   wire FE_RN_1905_0;
   wire FE_RN_1904_0;
   wire FE_RN_1903_0;
   wire FE_RN_1902_0;
   wire FE_RN_1901_0;
   wire FE_RN_1900_0;
   wire FE_RN_1899_0;
   wire FE_RN_1898_0;
   wire FE_RN_1897_0;
   wire FE_RN_1896_0;
   wire FE_RN_1895_0;
   wire FE_RN_1894_0;
   wire FE_RN_1893_0;
   wire FE_RN_1892_0;
   wire FE_RN_1842_0;
   wire FE_RN_1841_0;
   wire FE_RN_1840_0;
   wire FE_RN_1839_0;
   wire FE_RN_1838_0;
   wire FE_RN_1837_0;
   wire FE_RN_1836_0;
   wire FE_RN_1835_0;
   wire FE_RN_1834_0;
   wire FE_RN_1833_0;
   wire FE_RN_1832_0;
   wire FE_RN_1831_0;
   wire FE_RN_1830_0;
   wire FE_RN_1829_0;
   wire FE_RN_1828_0;
   wire FE_RN_1827_0;
   wire FE_RN_1826_0;
   wire FE_RN_1825_0;
   wire FE_RN_1824_0;
   wire FE_RN_1823_0;
   wire FE_RN_1735_0;
   wire FE_RN_1734_0;
   wire FE_RN_1733_0;
   wire FE_RN_1732_0;
   wire FE_RN_1731_0;
   wire FE_RN_1730_0;
   wire FE_RN_1729_0;
   wire FE_RN_1728_0;
   wire FE_RN_1727_0;
   wire FE_RN_1726_0;
   wire FE_RN_1725_0;
   wire FE_RN_1724_0;
   wire FE_RN_1723_0;
   wire FE_RN_1722_0;
   wire FE_RN_1721_0;
   wire FE_RN_1720_0;
   wire FE_RN_1719_0;
   wire FE_RN_1718_0;
   wire FE_RN_1717_0;
   wire FE_RN_1716_0;
   wire FE_RN_1715_0;
   wire FE_RN_1714_0;
   wire FE_RN_1713_0;
   wire FE_RN_1712_0;
   wire FE_RN_1711_0;
   wire FE_RN_1710_0;
   wire FE_RN_1709_0;
   wire FE_RN_1708_0;
   wire FE_RN_1707_0;
   wire FE_RN_1706_0;
   wire FE_RN_1705_0;
   wire FE_RN_1704_0;
   wire FE_RN_1703_0;
   wire FE_RN_1702_0;
   wire FE_RN_1701_0;
   wire FE_RN_1700_0;
   wire FE_RN_1699_0;
   wire FE_RN_1698_0;
   wire FE_RN_1697_0;
   wire FE_RN_1696_0;
   wire FE_RN_1695_0;
   wire FE_RN_1694_0;
   wire FE_RN_1693_0;
   wire FE_RN_1692_0;
   wire FE_RN_1691_0;
   wire FE_RN_1690_0;
   wire FE_RN_1689_0;
   wire FE_RN_1688_0;
   wire FE_RN_1687_0;
   wire FE_RN_1686_0;
   wire FE_RN_1685_0;
   wire FE_RN_1684_0;
   wire FE_RN_1683_0;
   wire FE_RN_1682_0;
   wire FE_RN_1681_0;
   wire FE_RN_1680_0;
   wire FE_RN_1679_0;
   wire FE_RN_1678_0;
   wire FE_RN_1677_0;
   wire FE_RN_1676_0;
   wire FE_RN_1675_0;
   wire FE_RN_1674_0;
   wire FE_RN_1673_0;
   wire FE_RN_1672_0;
   wire FE_RN_1671_0;
   wire FE_RN_1670_0;
   wire FE_RN_1669_0;
   wire FE_RN_1668_0;
   wire FE_RN_1667_0;
   wire FE_RN_1666_0;
   wire FE_RN_1665_0;
   wire FE_RN_1664_0;
   wire FE_RN_1663_0;
   wire FE_RN_1662_0;
   wire FE_RN_1661_0;
   wire FE_RN_1660_0;
   wire FE_RN_1659_0;
   wire FE_RN_1658_0;
   wire FE_RN_1657_0;
   wire FE_RN_1656_0;
   wire FE_RN_1655_0;
   wire FE_RN_1654_0;
   wire FE_RN_1653_0;
   wire FE_RN_1652_0;
   wire FE_RN_1651_0;
   wire FE_RN_1650_0;
   wire FE_RN_1649_0;
   wire FE_RN_1648_0;
   wire FE_RN_1647_0;
   wire FE_RN_1646_0;
   wire FE_RN_1645_0;
   wire FE_RN_1644_0;
   wire FE_RN_1643_0;
   wire FE_RN_1642_0;
   wire FE_RN_1641_0;
   wire FE_RN_1640_0;
   wire FE_RN_1639_0;
   wire FE_RN_1637_0;
   wire FE_RN_1636_0;
   wire FE_RN_1635_0;
   wire FE_RN_1634_0;
   wire FE_RN_1633_0;
   wire FE_RN_1632_0;
   wire FE_RN_1631_0;
   wire FE_RN_1630_0;
   wire FE_RN_1629_0;
   wire FE_RN_1628_0;
   wire FE_RN_1627_0;
   wire FE_RN_1626_0;
   wire FE_RN_1625_0;
   wire FE_RN_1624_0;
   wire FE_RN_1348_0;
   wire FE_RN_1347_0;
   wire FE_RN_1346_0;
   wire FE_RN_1345_0;
   wire FE_RN_1344_0;
   wire FE_RN_1343_0;
   wire FE_RN_1342_0;
   wire FE_RN_1341_0;
   wire FE_RN_1340_0;
   wire FE_RN_1339_0;
   wire FE_RN_1338_0;
   wire FE_RN_1337_0;
   wire FE_RN_1336_0;
   wire FE_RN_1335_0;
   wire FE_RN_1334_0;
   wire FE_RN_1333_0;
   wire FE_RN_1332_0;
   wire FE_RN_1331_0;
   wire FE_RN_1330_0;
   wire FE_RN_1329_0;
   wire FE_RN_1328_0;
   wire FE_RN_1327_0;
   wire FE_RN_1326_0;
   wire FE_RN_1325_0;
   wire FE_RN_1324_0;
   wire FE_RN_1323_0;
   wire FE_RN_1322_0;
   wire FE_RN_1321_0;
   wire FE_RN_1320_0;
   wire FE_RN_1319_0;
   wire FE_RN_1318_0;
   wire FE_RN_1317_0;
   wire FE_RN_1316_0;
   wire FE_RN_1315_0;
   wire FE_RN_1291_0;
   wire FE_RN_1290_0;
   wire FE_RN_1289_0;
   wire FE_RN_1288_0;
   wire FE_RN_1287_0;
   wire FE_RN_1286_0;
   wire FE_RN_1285_0;
   wire FE_RN_1284_0;
   wire FE_RN_1283_0;
   wire FE_RN_1282_0;
   wire FE_RN_1281_0;
   wire FE_RN_1280_0;
   wire FE_RN_1279_0;
   wire FE_RN_1278_0;
   wire FE_RN_1277_0;
   wire FE_RN_1276_0;
   wire FE_RN_1275_0;
   wire FE_RN_1274_0;
   wire FE_RN_1273_0;
   wire FE_RN_1272_0;
   wire FE_RN_1271_0;
   wire FE_RN_1270_0;
   wire FE_RN_1269_0;
   wire FE_RN_1268_0;
   wire FE_RN_1267_0;
   wire FE_RN_1266_0;
   wire FE_RN_1265_0;
   wire FE_RN_1264_0;
   wire FE_RN_1263_0;
   wire FE_RN_1262_0;
   wire FE_RN_1261_0;
   wire FE_RN_1260_0;
   wire FE_RN_1259_0;
   wire FE_RN_1258_0;
   wire FE_RN_1257_0;
   wire FE_RN_1256_0;
   wire FE_RN_1255_0;
   wire FE_RN_1254_0;
   wire FE_RN_1253_0;
   wire FE_RN_1252_0;
   wire FE_RN_1251_0;
   wire FE_RN_1250_0;
   wire FE_RN_1249_0;
   wire FE_RN_1248_0;
   wire FE_RN_1247_0;
   wire FE_RN_1246_0;
   wire FE_RN_1245_0;
   wire FE_RN_1244_0;
   wire FE_RN_1243_0;
   wire FE_RN_1242_0;
   wire FE_RN_1241_0;
   wire FE_RN_1240_0;
   wire FE_RN_1239_0;
   wire FE_RN_1238_0;
   wire FE_RN_1237_0;
   wire FE_RN_1235_0;
   wire FE_RN_1234_0;
   wire FE_RN_1233_0;
   wire FE_RN_1232_0;
   wire FE_RN_1231_0;
   wire FE_RN_1230_0;
   wire FE_RN_1229_0;
   wire FE_RN_1228_0;
   wire FE_RN_1227_0;
   wire FE_RN_1226_0;
   wire FE_RN_1225_0;
   wire FE_RN_1224_0;
   wire FE_RN_1223_0;
   wire FE_RN_1222_0;
   wire FE_RN_1221_0;
   wire FE_RN_1220_0;
   wire FE_RN_1219_0;
   wire FE_RN_1218_0;
   wire FE_RN_1217_0;
   wire FE_RN_1216_0;
   wire FE_RN_1215_0;
   wire FE_RN_1214_0;
   wire FE_RN_1213_0;
   wire FE_RN_1212_0;
   wire FE_RN_1211_0;
   wire FE_RN_1210_0;
   wire FE_RN_1209_0;
   wire FE_RN_1208_0;
   wire FE_RN_1207_0;
   wire FE_RN_1206_0;
   wire FE_RN_1193_0;
   wire FE_RN_1019_0;
   wire FE_RN_1018_0;
   wire FE_RN_1017_0;
   wire FE_RN_1016_0;
   wire FE_RN_1015_0;
   wire FE_RN_1014_0;
   wire FE_RN_1013_0;
   wire FE_RN_1012_0;
   wire FE_RN_1011_0;
   wire FE_RN_1010_0;
   wire FE_RN_1009_0;
   wire FE_RN_1008_0;
   wire FE_RN_1007_0;
   wire FE_RN_1006_0;
   wire FE_RN_1005_0;
   wire FE_RN_1004_0;
   wire FE_RN_1003_0;
   wire FE_RN_1002_0;
   wire FE_RN_1001_0;
   wire FE_RN_1000_0;
   wire FE_RN_999_0;
   wire FE_RN_998_0;
   wire FE_RN_997_0;
   wire FE_RN_996_0;
   wire FE_RN_995_0;
   wire FE_RN_994_0;
   wire FE_RN_993_0;
   wire FE_RN_992_0;
   wire FE_RN_991_0;
   wire FE_RN_990_0;
   wire FE_RN_989_0;
   wire FE_RN_988_0;
   wire FE_RN_987_0;
   wire FE_RN_986_0;
   wire FE_RN_985_0;
   wire FE_RN_984_0;
   wire FE_RN_983_0;
   wire FE_RN_982_0;
   wire FE_RN_775_0;
   wire FE_RN_774_0;
   wire FE_RN_773_0;
   wire FE_RN_772_0;
   wire FE_RN_771_0;
   wire FE_RN_770_0;
   wire FE_RN_769_0;
   wire FE_RN_768_0;
   wire FE_RN_767_0;
   wire FE_RN_766_0;
   wire FE_RN_765_0;
   wire FE_RN_764_0;
   wire FE_RN_763_0;
   wire FE_RN_762_0;
   wire FE_RN_761_0;
   wire FE_RN_760_0;
   wire FE_RN_759_0;
   wire FE_RN_758_0;
   wire FE_RN_757_0;
   wire FE_RN_756_0;
   wire FE_RN_755_0;
   wire FE_RN_754_0;
   wire FE_RN_753_0;
   wire FE_RN_752_0;
   wire FE_RN_751_0;
   wire FE_RN_750_0;
   wire FE_RN_749_0;
   wire FE_RN_748_0;
   wire FE_RN_747_0;
   wire FE_RN_746_0;
   wire FE_RN_745_0;
   wire FE_RN_744_0;
   wire FE_RN_743_0;
   wire FE_RN_742_0;
   wire FE_RN_741_0;
   wire FE_RN_740_0;
   wire FE_RN_739_0;
   wire FE_RN_738_0;
   wire FE_RN_737_0;
   wire FE_RN_736_0;
   wire FE_RN_735_0;
   wire FE_RN_734_0;
   wire FE_RN_733_0;
   wire FE_RN_732_0;
   wire FE_RN_731_0;
   wire FE_RN_730_0;
   wire FE_RN_729_0;
   wire FE_RN_728_0;
   wire FE_RN_727_0;
   wire FE_RN_726_0;
   wire FE_RN_725_0;
   wire FE_RN_724_0;
   wire FE_RN_723_0;
   wire FE_RN_164_0;
   wire FE_RN_163_0;
   wire FE_RN_162_0;
   wire FE_RN_161_0;
   wire FE_RN_160_0;
   wire FE_RN_159_0;
   wire FE_RN_158_0;
   wire FE_RN_157_0;
   wire FE_RN_156_0;
   wire FE_RN_155_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_152_0;
   wire FE_RN_151_0;
   wire FE_RN_150_0;
   wire FE_RN_149_0;
   wire FE_RN_148_0;
   wire FE_RN_147_0;
   wire FE_RN_146_0;
   wire FE_RN_145_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_142_0;
   wire FE_RN_141_0;
   wire FE_RN_140_0;
   wire FE_RN_139_0;
   wire FE_RN_138_0;
   wire FE_RN_137_0;
   wire FE_RN_136_0;
   wire FE_RN_135_0;
   wire FE_RN_134_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_130_0;
   wire FE_RN_129_0;
   wire FE_RN_128_0;
   wire FE_RN_127_0;
   wire FE_RN_126_0;
   wire FE_RN_125_0;
   wire FE_RN_124_0;
   wire FE_RN_123_0;
   wire FE_RN_122_0;
   wire FE_RN_121_0;
   wire FE_RN_120_0;
   wire FE_RN_119_0;
   wire FE_RN_118_0;
   wire FE_RN_117_0;
   wire FE_RN_116_0;
   wire FE_RN_115_0;
   wire FE_RN_114_0;
   wire FE_RN_113_0;
   wire FE_RN_112_0;
   wire FE_RN_111_0;
   wire FE_RN_110_0;
   wire FE_RN_109_0;
   wire FE_RN_108_0;
   wire FE_RN_107_0;
   wire FE_RN_106_0;
   wire FE_RN_105_0;
   wire FE_RN_104_0;
   wire FE_RN_103_0;
   wire FE_RN_102_0;
   wire FE_RN_101_0;
   wire FE_RN_100_0;
   wire FE_RN_99_0;
   wire FE_RN_98_0;
   wire FE_RN_97_0;
   wire FE_RN_96_0;
   wire FE_RN_95_0;
   wire FE_RN_94_0;
   wire FE_RN_93_0;
   wire FE_RN_92_0;
   wire FE_RN_91_0;
   wire FE_RN_90_0;
   wire FE_RN_89_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_79_0;
   wire FE_RN_78_0;
   wire FE_RN_12_0;
   wire FE_RN_11_0;
   wire FE_RN_10_0;
   wire FE_RN_9_0;
   wire FE_RN_8_0;
   wire FE_RN_7_0;
   wire FE_RN_6_0;
   wire FE_RN_5_0;
   wire FE_RN_4_0;
   wire FE_RN_3_0;
   wire FE_RN_2_0;
   wire FE_RN_1_0;
   wire FE_RN_0_0;
   wire \ab[19][8] ;
   wire \ab[19][7] ;
   wire \ab[19][6] ;
   wire \ab[19][5] ;
   wire \ab[19][4] ;
   wire \ab[19][3] ;
   wire \ab[19][2] ;
   wire \ab[19][1] ;
   wire \ab[19][0] ;
   wire \ab[18][8] ;
   wire \ab[18][7] ;
   wire \ab[18][6] ;
   wire \ab[18][5] ;
   wire \ab[18][4] ;
   wire \ab[18][3] ;
   wire \ab[18][2] ;
   wire \ab[18][1] ;
   wire \ab[18][0] ;
   wire \ab[17][8] ;
   wire \ab[17][7] ;
   wire \ab[17][6] ;
   wire \ab[17][5] ;
   wire \ab[17][4] ;
   wire \ab[17][3] ;
   wire \ab[17][2] ;
   wire \ab[17][1] ;
   wire \ab[17][0] ;
   wire \ab[16][8] ;
   wire \ab[16][7] ;
   wire \ab[16][6] ;
   wire \ab[16][5] ;
   wire \ab[16][4] ;
   wire \ab[16][3] ;
   wire \ab[16][2] ;
   wire \ab[16][1] ;
   wire \ab[16][0] ;
   wire \ab[15][8] ;
   wire \ab[15][7] ;
   wire \ab[15][6] ;
   wire \ab[15][5] ;
   wire \ab[15][4] ;
   wire \ab[15][3] ;
   wire \ab[15][2] ;
   wire \ab[15][1] ;
   wire \ab[15][0] ;
   wire \ab[14][8] ;
   wire \ab[14][7] ;
   wire \ab[14][6] ;
   wire \ab[14][5] ;
   wire \ab[14][4] ;
   wire \ab[14][3] ;
   wire \ab[14][2] ;
   wire \ab[14][1] ;
   wire \ab[14][0] ;
   wire \ab[13][8] ;
   wire \ab[13][7] ;
   wire \ab[13][6] ;
   wire \ab[13][5] ;
   wire \ab[13][4] ;
   wire \ab[13][3] ;
   wire \ab[13][2] ;
   wire \ab[13][1] ;
   wire \ab[13][0] ;
   wire \ab[12][8] ;
   wire \ab[12][7] ;
   wire \ab[12][6] ;
   wire \ab[12][5] ;
   wire \ab[12][4] ;
   wire \ab[12][3] ;
   wire \ab[12][2] ;
   wire \ab[12][1] ;
   wire \ab[12][0] ;
   wire \ab[11][8] ;
   wire \ab[11][7] ;
   wire \ab[11][6] ;
   wire \ab[11][5] ;
   wire \ab[11][4] ;
   wire \ab[11][3] ;
   wire \ab[11][2] ;
   wire \ab[11][1] ;
   wire \ab[11][0] ;
   wire \ab[10][8] ;
   wire \ab[10][7] ;
   wire \ab[10][6] ;
   wire \ab[10][5] ;
   wire \ab[10][4] ;
   wire \ab[10][3] ;
   wire \ab[10][2] ;
   wire \ab[10][1] ;
   wire \ab[10][0] ;
   wire \ab[9][8] ;
   wire \ab[9][7] ;
   wire \ab[9][6] ;
   wire \ab[9][5] ;
   wire \ab[9][4] ;
   wire \ab[9][3] ;
   wire \ab[9][2] ;
   wire \ab[9][1] ;
   wire \ab[9][0] ;
   wire \ab[8][8] ;
   wire \ab[8][7] ;
   wire \ab[8][6] ;
   wire \ab[8][5] ;
   wire \ab[8][4] ;
   wire \ab[8][3] ;
   wire \ab[8][2] ;
   wire \ab[8][1] ;
   wire \ab[8][0] ;
   wire \ab[7][8] ;
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][8] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][8] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][8] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][8] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][8] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][8] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[0][8] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \CARRYB[19][7] ;
   wire \CARRYB[19][6] ;
   wire \CARRYB[19][5] ;
   wire \CARRYB[19][4] ;
   wire \CARRYB[19][3] ;
   wire \CARRYB[19][2] ;
   wire \CARRYB[19][1] ;
   wire \CARRYB[19][0] ;
   wire \CARRYB[18][7] ;
   wire \CARRYB[18][6] ;
   wire \CARRYB[18][5] ;
   wire \CARRYB[18][4] ;
   wire \CARRYB[18][3] ;
   wire \CARRYB[18][2] ;
   wire \CARRYB[18][1] ;
   wire \CARRYB[18][0] ;
   wire \CARRYB[17][7] ;
   wire \CARRYB[17][6] ;
   wire \CARRYB[17][5] ;
   wire \CARRYB[17][4] ;
   wire \CARRYB[17][3] ;
   wire \CARRYB[17][2] ;
   wire \CARRYB[17][1] ;
   wire \CARRYB[17][0] ;
   wire \CARRYB[16][7] ;
   wire \CARRYB[16][6] ;
   wire \CARRYB[16][5] ;
   wire \CARRYB[16][4] ;
   wire \CARRYB[16][3] ;
   wire \CARRYB[16][2] ;
   wire \CARRYB[16][1] ;
   wire \CARRYB[15][7] ;
   wire \CARRYB[15][6] ;
   wire \CARRYB[15][5] ;
   wire \CARRYB[15][3] ;
   wire \CARRYB[15][2] ;
   wire \CARRYB[15][1] ;
   wire \CARRYB[14][7] ;
   wire \CARRYB[14][6] ;
   wire \CARRYB[14][5] ;
   wire \CARRYB[14][4] ;
   wire \CARRYB[14][3] ;
   wire \CARRYB[14][2] ;
   wire \CARRYB[14][1] ;
   wire \CARRYB[14][0] ;
   wire \CARRYB[13][7] ;
   wire \CARRYB[13][6] ;
   wire \CARRYB[13][5] ;
   wire \CARRYB[13][4] ;
   wire \CARRYB[13][3] ;
   wire \CARRYB[13][2] ;
   wire \CARRYB[13][1] ;
   wire \CARRYB[13][0] ;
   wire \CARRYB[12][7] ;
   wire \CARRYB[12][6] ;
   wire \CARRYB[12][5] ;
   wire \CARRYB[12][4] ;
   wire \CARRYB[12][3] ;
   wire \CARRYB[12][2] ;
   wire \CARRYB[12][1] ;
   wire \CARRYB[12][0] ;
   wire \CARRYB[11][7] ;
   wire \CARRYB[11][6] ;
   wire \CARRYB[11][5] ;
   wire \CARRYB[11][4] ;
   wire \CARRYB[11][3] ;
   wire \CARRYB[11][2] ;
   wire \CARRYB[11][1] ;
   wire \CARRYB[11][0] ;
   wire \CARRYB[10][7] ;
   wire \CARRYB[10][6] ;
   wire \CARRYB[10][5] ;
   wire \CARRYB[10][4] ;
   wire \CARRYB[10][3] ;
   wire \CARRYB[10][0] ;
   wire \CARRYB[9][7] ;
   wire \CARRYB[9][6] ;
   wire \CARRYB[9][3] ;
   wire \CARRYB[9][2] ;
   wire \CARRYB[9][0] ;
   wire \CARRYB[8][7] ;
   wire \CARRYB[8][6] ;
   wire \CARRYB[8][4] ;
   wire \CARRYB[8][3] ;
   wire \CARRYB[8][2] ;
   wire \CARRYB[8][1] ;
   wire \CARRYB[8][0] ;
   wire \CARRYB[7][7] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][7] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][7] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \CARRYB[1][0] ;
   wire \SUMB[19][7] ;
   wire \SUMB[19][6] ;
   wire \SUMB[19][5] ;
   wire \SUMB[19][4] ;
   wire \SUMB[19][3] ;
   wire \SUMB[19][2] ;
   wire \SUMB[19][1] ;
   wire \SUMB[19][0] ;
   wire \SUMB[18][7] ;
   wire \SUMB[18][6] ;
   wire \SUMB[18][5] ;
   wire \SUMB[18][4] ;
   wire \SUMB[18][3] ;
   wire \SUMB[18][2] ;
   wire \SUMB[18][1] ;
   wire \SUMB[17][7] ;
   wire \SUMB[17][6] ;
   wire \SUMB[17][5] ;
   wire \SUMB[17][4] ;
   wire \SUMB[17][3] ;
   wire \SUMB[17][2] ;
   wire \SUMB[17][1] ;
   wire \SUMB[16][7] ;
   wire \SUMB[16][6] ;
   wire \SUMB[16][5] ;
   wire \SUMB[16][4] ;
   wire \SUMB[16][3] ;
   wire \SUMB[16][2] ;
   wire \SUMB[16][1] ;
   wire \SUMB[15][7] ;
   wire \SUMB[15][6] ;
   wire \SUMB[15][5] ;
   wire \SUMB[15][4] ;
   wire \SUMB[15][3] ;
   wire \SUMB[15][2] ;
   wire \SUMB[15][1] ;
   wire \SUMB[14][7] ;
   wire \SUMB[14][6] ;
   wire \SUMB[14][4] ;
   wire \SUMB[14][3] ;
   wire \SUMB[14][2] ;
   wire \SUMB[14][1] ;
   wire \SUMB[13][7] ;
   wire \SUMB[13][6] ;
   wire \SUMB[13][5] ;
   wire \SUMB[13][4] ;
   wire \SUMB[13][3] ;
   wire \SUMB[13][2] ;
   wire \SUMB[13][1] ;
   wire \SUMB[12][7] ;
   wire \SUMB[12][6] ;
   wire \SUMB[12][5] ;
   wire \SUMB[12][4] ;
   wire \SUMB[12][3] ;
   wire \SUMB[12][2] ;
   wire \SUMB[12][1] ;
   wire \SUMB[11][7] ;
   wire \SUMB[11][6] ;
   wire \SUMB[11][5] ;
   wire \SUMB[11][4] ;
   wire \SUMB[11][3] ;
   wire \SUMB[11][2] ;
   wire \SUMB[11][1] ;
   wire \SUMB[10][7] ;
   wire \SUMB[10][6] ;
   wire \SUMB[10][4] ;
   wire \SUMB[10][2] ;
   wire \SUMB[10][1] ;
   wire \SUMB[9][7] ;
   wire \SUMB[9][6] ;
   wire \SUMB[9][5] ;
   wire \SUMB[9][4] ;
   wire \SUMB[9][3] ;
   wire \SUMB[9][2] ;
   wire \SUMB[9][1] ;
   wire \SUMB[8][7] ;
   wire \SUMB[8][6] ;
   wire \SUMB[8][5] ;
   wire \SUMB[8][4] ;
   wire \SUMB[8][3] ;
   wire \SUMB[8][2] ;
   wire \SUMB[8][1] ;
   wire \SUMB[7][7] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[6][7] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][7] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][7] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][7] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][7] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \PROD1[8] ;
   wire \A1[25] ;
   wire \A1[24] ;
   wire \A1[23] ;
   wire \A1[22] ;
   wire \A1[21] ;
   wire \A1[20] ;
   wire \A1[19] ;
   wire \A1[18] ;
   wire \A1[16] ;
   wire \A1[15] ;
   wire \A1[14] ;
   wire \A1[13] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[5] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;
   wire SYNOPSYS_UNCONNECTED__6;
   wire SYNOPSYS_UNCONNECTED__7;
   wire SYNOPSYS_UNCONNECTED__8;
   wire SYNOPSYS_UNCONNECTED__9;
   wire SYNOPSYS_UNCONNECTED__10;
   wire SYNOPSYS_UNCONNECTED__11;
   wire SYNOPSYS_UNCONNECTED__12;
   wire SYNOPSYS_UNCONNECTED__13;
   wire SYNOPSYS_UNCONNECTED__14;
   wire SYNOPSYS_UNCONNECTED__15;
   wire SYNOPSYS_UNCONNECTED__16;
   wire SYNOPSYS_UNCONNECTED__17;

   INVX2M FE_RC_2238_0 (.Y(FE_RN_2006_0), 
	.A(FE_RN_1989_0));
   INVX2M FE_RC_2237_0 (.Y(FE_RN_2005_0), 
	.A(FE_RN_1997_0));
   CLKNAND2X8M FE_RC_2236_0 (.Y(\SUMB[7][5] ), 
	.B(FE_RN_2006_0), 
	.A(FE_RN_2005_0));
   INVX2M FE_RC_2235_0 (.Y(FE_RN_2004_0), 
	.A(FE_RN_1989_0));
   NOR2BX2M FE_RC_2234_0 (.Y(FE_RN_2003_0), 
	.B(FE_RN_1997_0), 
	.AN(FE_RN_1629_0));
   CLKNAND2X4M FE_RC_2233_0 (.Y(FE_RN_1628_0), 
	.B(FE_RN_2004_0), 
	.A(FE_RN_2003_0));
   CLKNAND2X2M FE_RC_2232_0 (.Y(FE_RN_2002_0), 
	.B(\SUMB[6][6] ), 
	.A(\ab[7][5] ));
   CLKNAND2X2M FE_RC_2231_0 (.Y(FE_RN_2001_0), 
	.B(\CARRYB[6][5] ), 
	.A(FE_RN_1993_0));
   NAND2X4M FE_RC_2230_0 (.Y(\CARRYB[7][5] ), 
	.B(FE_RN_2002_0), 
	.A(FE_RN_2001_0));
   NAND2BX4M FE_RC_2229_0 (.Y(FE_RN_2000_0), 
	.B(\ab[7][5] ), 
	.AN(\SUMB[6][6] ));
   INVX2M FE_RC_2228_0 (.Y(FE_RN_1999_0), 
	.A(\ab[7][5] ));
   CLKNAND2X2M FE_RC_2227_0 (.Y(FE_RN_1998_0), 
	.B(\SUMB[6][6] ), 
	.A(FE_RN_1999_0));
   AOI21X4M FE_RC_2226_0 (.Y(FE_RN_1997_0), 
	.B0(\CARRYB[6][5] ), 
	.A1(FE_RN_1998_0), 
	.A0(FE_RN_2000_0));
   INVX2M FE_RC_2225_0 (.Y(FE_RN_1996_0), 
	.A(FE_RN_1997_0));
   INVX2M FE_RC_2224_0 (.Y(FE_RN_1995_0), 
	.A(FE_RN_1629_0));
   INVX2M FE_RC_2223_0 (.Y(FE_RN_1994_0), 
	.A(\ab[7][5] ));
   NAND2BX4M FE_RC_2222_0 (.Y(FE_RN_1993_0), 
	.B(FE_RN_1994_0), 
	.AN(\SUMB[6][6] ));
   INVX2M FE_RC_2221_0 (.Y(FE_RN_1992_0), 
	.A(\SUMB[6][6] ));
   NOR2BX2M FE_RC_2220_0 (.Y(FE_RN_1991_0), 
	.B(FE_RN_1992_0), 
	.AN(\ab[7][5] ));
   INVX2M FE_RC_2219_0 (.Y(FE_RN_1990_0), 
	.A(\CARRYB[6][5] ));
   AOI2B1X8M FE_RC_2218_0 (.Y(FE_RN_1989_0), 
	.B0(FE_RN_1990_0), 
	.A1N(FE_RN_1991_0), 
	.A0(FE_RN_1993_0));
   NOR2X4M FE_RC_2217_0 (.Y(FE_RN_1988_0), 
	.B(FE_RN_1995_0), 
	.A(FE_RN_1989_0));
   NAND2X2M FE_RC_2216_0 (.Y(FE_RN_1987_0), 
	.B(FE_RN_1996_0), 
	.A(FE_RN_1988_0));
   CLKNAND2X4M FE_RC_2215_0 (.Y(FE_RN_1986_0), 
	.B(\CARRYB[7][4] ), 
	.A(FE_RN_1987_0));
   CLKNAND2X4M FE_RC_2214_0 (.Y(\CARRYB[8][4] ), 
	.B(FE_RN_1626_0), 
	.A(FE_RN_1986_0));
   INVX2M FE_RC_2153_0 (.Y(FE_RN_1930_0), 
	.A(\SUMB[5][4] ));
   INVX2M FE_RC_2152_0 (.Y(FE_RN_1929_0), 
	.A(FE_RN_1899_0));
   NAND2X2M FE_RC_2151_0 (.Y(FE_RN_1928_0), 
	.B(FE_RN_1930_0), 
	.A(FE_RN_1929_0));
   INVX2M FE_RC_2150_0 (.Y(FE_RN_1927_0), 
	.A(FE_RN_1900_0));
   NOR2X4M FE_RC_2149_0 (.Y(FE_RN_1926_0), 
	.B(\ab[7][3] ), 
	.A(FE_RN_1896_0));
   AOI21X4M FE_RC_2148_0 (.Y(FE_RN_1925_0), 
	.B0(FE_RN_1926_0), 
	.A1(\ab[7][3] ), 
	.A0(FE_RN_1927_0));
   CLKNAND2X4M FE_RC_2147_0 (.Y(FE_RN_1924_0), 
	.B(\ab[7][3] ), 
	.A(FE_RN_1895_0));
   NAND3X4M FE_RC_2146_0 (.Y(FE_RN_1923_0), 
	.C(FE_RN_1928_0), 
	.B(FE_RN_1925_0), 
	.A(FE_RN_1924_0));
   NAND2X2M FE_RC_2145_0 (.Y(FE_RN_1922_0), 
	.B(\SUMB[6][4] ), 
	.A(FE_RN_1923_0));
   INVX2M FE_RC_2144_0 (.Y(FE_RN_1921_0), 
	.A(\SUMB[6][4] ));
   INVX2M FE_RC_2143_0 (.Y(FE_RN_1920_0), 
	.A(\SUMB[5][4] ));
   NAND3X4M FE_RC_2142_0 (.Y(FE_RN_1919_0), 
	.C(FE_RN_1920_0), 
	.B(\ab[7][3] ), 
	.A(FE_RN_1900_0));
   INVX2M FE_RC_2141_0 (.Y(FE_RN_1918_0), 
	.A(FE_RN_1900_0));
   INVX2M FE_RC_2140_0 (.Y(FE_RN_1917_0), 
	.A(\ab[7][3] ));
   NOR2X4M FE_RC_2139_0 (.Y(FE_RN_1916_0), 
	.B(FE_RN_1917_0), 
	.A(FE_RN_1896_0));
   AOI2B1X4M FE_RC_2138_0 (.Y(FE_RN_1915_0), 
	.B0(FE_RN_1916_0), 
	.A1N(\ab[7][3] ), 
	.A0(FE_RN_1918_0));
   INVX2M FE_RC_2137_0 (.Y(FE_RN_1914_0), 
	.A(\ab[7][3] ));
   CLKNAND2X4M FE_RC_2136_0 (.Y(FE_RN_1913_0), 
	.B(FE_RN_1914_0), 
	.A(FE_RN_1895_0));
   NAND3X4M FE_RC_2135_0 (.Y(FE_RN_1912_0), 
	.C(FE_RN_1919_0), 
	.B(FE_RN_1915_0), 
	.A(FE_RN_1913_0));
   NAND2X2M FE_RC_2134_0 (.Y(FE_RN_1911_0), 
	.B(FE_RN_1921_0), 
	.A(FE_RN_1912_0));
   CLKNAND2X2M FE_RC_2133_0 (.Y(\SUMB[7][3] ), 
	.B(FE_RN_1922_0), 
	.A(FE_RN_1911_0));
   INVX2M FE_RC_2132_0 (.Y(FE_RN_1910_0), 
	.A(\SUMB[5][4] ));
   INVX2M FE_RC_2131_0 (.Y(FE_RN_1909_0), 
	.A(\ab[6][3] ));
   NAND2X2M FE_RC_2130_0 (.Y(FE_RN_1908_0), 
	.B(\CARRYB[5][3] ), 
	.A(FE_RN_1909_0));
   OAI2B1X4M FE_RC_2129_0 (.Y(FE_RN_1907_0), 
	.B0(FE_RN_1908_0), 
	.A1N(\ab[6][3] ), 
	.A0(\CARRYB[5][3] ));
   NAND2X2M FE_RC_2128_0 (.Y(FE_RN_1906_0), 
	.B(FE_RN_1910_0), 
	.A(FE_RN_1907_0));
   NAND2X4M FE_RC_2127_0 (.Y(FE_RN_1905_0), 
	.B(FE_RN_1900_0), 
	.A(FE_RN_1896_0));
   NAND2X4M FE_RC_2126_0 (.Y(FE_RN_1904_0), 
	.B(\SUMB[5][4] ), 
	.A(FE_RN_1905_0));
   NAND2X4M FE_RC_2125_0 (.Y(\SUMB[6][3] ), 
	.B(FE_RN_1906_0), 
	.A(FE_RN_1904_0));
   INVX2M FE_RC_2124_0 (.Y(FE_RN_1903_0), 
	.A(FE_RN_1900_0));
   OAI21X8M FE_RC_2123_0 (.Y(FE_RN_1902_0), 
	.B0(\ab[7][3] ), 
	.A1(FE_RN_1903_0), 
	.A0(FE_RN_1895_0));
   INVX2M FE_RC_2122_0 (.Y(FE_RN_1901_0), 
	.A(\ab[7][3] ));
   NAND2X6M FE_RC_2121_0 (.Y(FE_RN_1900_0), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   CLKNAND2X8M FE_RC_2120_0 (.Y(FE_RN_1899_0), 
	.B(FE_RN_1901_0), 
	.A(FE_RN_1900_0));
   INVX2M FE_RC_2119_0 (.Y(FE_RN_1898_0), 
	.A(FE_RN_1899_0));
   INVX2M FE_RC_2118_0 (.Y(FE_RN_1897_0), 
	.A(\ab[6][3] ));
   NAND2BX8M FE_RC_2117_0 (.Y(FE_RN_1896_0), 
	.B(FE_RN_1897_0), 
	.AN(\CARRYB[5][3] ));
   AND2X12M FE_RC_2116_0 (.Y(FE_RN_1895_0), 
	.B(\SUMB[5][4] ), 
	.A(FE_RN_1896_0));
   INVX2M FE_RC_2115_0 (.Y(FE_RN_1894_0), 
	.A(FE_RN_1895_0));
   NAND2X2M FE_RC_2114_0 (.Y(FE_RN_1893_0), 
	.B(FE_RN_1898_0), 
	.A(FE_RN_1894_0));
   CLKNAND2X2M FE_RC_2113_0 (.Y(FE_RN_1892_0), 
	.B(\SUMB[6][4] ), 
	.A(FE_RN_1893_0));
   NAND2X3M FE_RC_2112_0 (.Y(\CARRYB[7][3] ), 
	.B(FE_RN_1902_0), 
	.A(FE_RN_1892_0));
   NAND2X2M FE_RC_2057_0 (.Y(FE_RN_1842_0), 
	.B(\SUMB[2][3] ), 
	.A(FE_RN_1830_0));
   CLKNAND2X4M FE_RC_2056_0 (.Y(\CARRYB[3][2] ), 
	.B(FE_RN_1832_0), 
	.A(FE_RN_1842_0));
   INVX2M FE_RC_2055_0 (.Y(FE_RN_1841_0), 
	.A(FE_RN_1832_0));
   OAI211X8M FE_RC_2054_0 (.Y(FE_RN_84_0), 
	.C0(FE_RN_1830_0), 
	.B0(\ab[4][2] ), 
	.A1(\SUMB[2][3] ), 
	.A0(FE_RN_1841_0));
   INVX2M FE_RC_2053_0 (.Y(FE_RN_1840_0), 
	.A(\SUMB[2][3] ));
   INVX2M FE_RC_2052_0 (.Y(FE_RN_1839_0), 
	.A(\ab[3][2] ));
   INVX2M FE_RC_2051_0 (.Y(FE_RN_1838_0), 
	.A(\ab[3][2] ));
   NAND2X4M FE_RC_2050_0 (.Y(FE_RN_1837_0), 
	.B(\CARRYB[2][2] ), 
	.A(FE_RN_1838_0));
   OAI21X4M FE_RC_2049_0 (.Y(FE_RN_1836_0), 
	.B0(FE_RN_1837_0), 
	.A1(\CARRYB[2][2] ), 
	.A0(FE_RN_1839_0));
   CLKNAND2X4M FE_RC_2048_0 (.Y(FE_RN_1835_0), 
	.B(FE_RN_1840_0), 
	.A(FE_RN_1836_0));
   NAND2X4M FE_RC_2047_0 (.Y(FE_RN_1834_0), 
	.B(FE_RN_1832_0), 
	.A(FE_RN_1830_0));
   NAND2X3M FE_RC_2046_0 (.Y(FE_RN_1833_0), 
	.B(\SUMB[2][3] ), 
	.A(FE_RN_1834_0));
   NAND2X3M FE_RC_2045_0 (.Y(\SUMB[3][2] ), 
	.B(FE_RN_1835_0), 
	.A(FE_RN_1833_0));
   NAND2X6M FE_RC_2044_0 (.Y(FE_RN_1832_0), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   INVX2M FE_RC_2043_0 (.Y(FE_RN_1831_0), 
	.A(\ab[3][2] ));
   NAND2BX8M FE_RC_2042_0 (.Y(FE_RN_1830_0), 
	.B(FE_RN_1831_0), 
	.AN(\CARRYB[2][2] ));
   NAND2X2M FE_RC_2041_0 (.Y(FE_RN_1829_0), 
	.B(\SUMB[2][3] ), 
	.A(FE_RN_1830_0));
   CLKNAND2X4M FE_RC_2040_0 (.Y(FE_RN_1828_0), 
	.B(FE_RN_1832_0), 
	.A(FE_RN_1829_0));
   NAND2X3M FE_RC_2039_0 (.Y(FE_RN_1827_0), 
	.B(\ab[4][2] ), 
	.A(FE_RN_1828_0));
   CLKNAND2X4M FE_RC_2038_0 (.Y(FE_RN_90_0), 
	.B(FE_RN_81_0), 
	.A(FE_RN_1827_0));
   NAND2X4M FE_RC_2037_0 (.Y(FE_RN_1242_0), 
	.B(FE_RN_1243_0), 
	.A(FE_RN_1244_0));
   NAND2X5M FE_RC_2036_0 (.Y(FE_RN_1235_0), 
	.B(FE_RN_1825_0), 
	.A(FE_RN_1245_0));
   NAND2X2M FE_RC_2035_0 (.Y(FE_RN_1826_0), 
	.B(FE_RN_1244_0), 
	.A(FE_RN_1243_0));
   CLKNAND2X4M FE_RC_2034_0 (.Y(FE_RN_1825_0), 
	.B(FE_RN_1237_0), 
	.A(FE_RN_1826_0));
   INVX2M FE_RC_2033_0 (.Y(FE_RN_1824_0), 
	.A(\ab[4][3] ));
   AOI21X4M FE_RC_2032_0 (.Y(FE_RN_1823_0), 
	.B0(FE_RN_1824_0), 
	.A1(FE_RN_1245_0), 
	.A0(FE_RN_1825_0));
   AOI221X4M FE_RC_2031_0 (.Y(FE_RN_1270_0), 
	.C0(FE_RN_1823_0), 
	.B1(FE_RN_1272_0), 
	.B0(FE_RN_1271_0), 
	.A1(FE_RN_1275_0), 
	.A0(FE_RN_1276_0));
   INVX2M FE_RC_1922_0 (.Y(FE_RN_1735_0), 
	.A(FE_RN_1696_0));
   INVX2M FE_RC_1921_0 (.Y(FE_RN_1734_0), 
	.A(\SUMB[9][2] ));
   INVX2M FE_RC_1920_0 (.Y(FE_RN_1733_0), 
	.A(\ab[10][1] ));
   NAND2X2M FE_RC_1919_0 (.Y(FE_RN_1732_0), 
	.B(FE_RN_1733_0), 
	.A(FE_RN_1712_0));
   INVX2M FE_RC_1918_0 (.Y(FE_RN_1731_0), 
	.A(\ab[10][1] ));
   NAND2X2M FE_RC_1917_0 (.Y(FE_RN_1730_0), 
	.B(FE_RN_1731_0), 
	.A(FE_RN_1703_0));
   INVX2M FE_RC_1916_0 (.Y(FE_RN_1729_0), 
	.A(\ab[10][1] ));
   INVX2M FE_RC_1915_0 (.Y(FE_RN_1728_0), 
	.A(FE_RN_1689_0));
   NAND2X2M FE_RC_1914_0 (.Y(FE_RN_1727_0), 
	.B(FE_RN_1729_0), 
	.A(FE_RN_1728_0));
   NAND4X2M FE_RC_1913_0 (.Y(FE_RN_1726_0), 
	.D(FE_RN_1732_0), 
	.C(FE_RN_1730_0), 
	.B(FE_RN_1727_0), 
	.A(FE_RN_1690_0));
   AOI21X2M FE_RC_1912_0 (.Y(FE_RN_1725_0), 
	.B0(FE_RN_1726_0), 
	.A1(FE_RN_1734_0), 
	.A0(FE_RN_1710_0));
   NAND2BX4M FE_RC_1911_0 (.Y(FE_RN_1724_0), 
	.B(\SUMB[10][2] ), 
	.AN(\ab[11][1] ));
   OAI2B1X8M FE_RC_1910_0 (.Y(FE_RN_1723_0), 
	.B0(FE_RN_1724_0), 
	.A1N(\ab[11][1] ), 
	.A0(\SUMB[10][2] ));
   MXI2X6M FE_RC_1909_0 (.Y(\SUMB[11][1] ), 
	.S0(FE_RN_1723_0), 
	.B(FE_RN_1725_0), 
	.A(FE_RN_1735_0));
   NAND2X2M FE_RC_1908_0 (.Y(FE_RN_1722_0), 
	.B(\ab[10][1] ), 
	.A(FE_RN_1692_0));
   INVX2M FE_RC_1907_0 (.Y(FE_RN_1721_0), 
	.A(\ab[10][1] ));
   NAND2X2M FE_RC_1906_0 (.Y(FE_RN_1720_0), 
	.B(FE_RN_1721_0), 
	.A(FE_RN_1703_0));
   INVX2M FE_RC_1905_0 (.Y(FE_RN_1719_0), 
	.A(FE_RN_1689_0));
   INVX2M FE_RC_1904_0 (.Y(FE_RN_1718_0), 
	.A(\ab[10][1] ));
   INVX2M FE_RC_1903_0 (.Y(FE_RN_1717_0), 
	.A(\ab[10][1] ));
   AOI222X2M FE_RC_1902_0 (.Y(FE_RN_1716_0), 
	.C1(FE_RN_1717_0), 
	.C0(FE_RN_1712_0), 
	.B1(FE_RN_1718_0), 
	.B0(FE_RN_1719_0), 
	.A1(\ab[10][1] ), 
	.A0(FE_RN_1688_0));
   NAND3X2M FE_RC_1901_0 (.Y(FE_RN_1715_0), 
	.C(FE_RN_1722_0), 
	.B(FE_RN_1720_0), 
	.A(FE_RN_1716_0));
   CLKNAND2X2M FE_RC_1900_0 (.Y(FE_RN_1714_0), 
	.B(\SUMB[9][2] ), 
	.A(FE_RN_1715_0));
   INVX2M FE_RC_1899_0 (.Y(FE_RN_1713_0), 
	.A(\SUMB[9][2] ));
   NOR2X2M FE_RC_1898_0 (.Y(FE_RN_1712_0), 
	.B(\SUMB[8][2] ), 
	.A(\ab[9][1] ));
   INVX2M FE_RC_1897_0 (.Y(FE_RN_1711_0), 
	.A(FE_RN_1703_0));
   NAND3BX2M FE_RC_1896_0 (.Y(FE_RN_1710_0), 
	.C(FE_RN_1689_0), 
	.B(FE_RN_1711_0), 
	.AN(FE_RN_1712_0));
   NAND3X3M FE_RC_1895_0 (.Y(FE_RN_1709_0), 
	.C(FE_RN_1713_0), 
	.B(\ab[10][1] ), 
	.A(FE_RN_1710_0));
   OAI2B11X4M FE_RC_1894_0 (.Y(\SUMB[10][1] ), 
	.C0(FE_RN_1709_0), 
	.B0(FE_RN_1714_0), 
	.A1N(FE_RN_1698_0), 
	.A0(FE_RN_1690_0));
   INVX2M FE_RC_1893_0 (.Y(FE_RN_1708_0), 
	.A(\SUMB[8][2] ));
   INVX2M FE_RC_1892_0 (.Y(FE_RN_1707_0), 
	.A(\ab[9][1] ));
   INVX2M FE_RC_1891_0 (.Y(FE_RN_1706_0), 
	.A(\SUMB[8][2] ));
   OAI22X1M FE_RC_1890_0 (.Y(FE_RN_1705_0), 
	.B1(\ab[9][1] ), 
	.B0(FE_RN_1706_0), 
	.A1(\SUMB[8][2] ), 
	.A0(FE_RN_1707_0));
   INVX2M FE_RC_1889_0 (.Y(FE_RN_1704_0), 
	.A(\CARRYB[8][1] ));
   NOR2X2M FE_RC_1888_0 (.Y(FE_RN_1703_0), 
	.B(\SUMB[8][2] ), 
	.A(\CARRYB[8][1] ));
   INVX2M FE_RC_1887_0 (.Y(FE_RN_1702_0), 
	.A(FE_RN_1703_0));
   INVX2M FE_RC_1886_0 (.Y(FE_RN_1701_0), 
	.A(\ab[9][1] ));
   OAI222X1M FE_RC_1885_0 (.Y(\SUMB[9][1] ), 
	.C1(FE_RN_1701_0), 
	.C0(FE_RN_1702_0), 
	.B1(FE_RN_1704_0), 
	.B0(FE_RN_1705_0), 
	.A1(FE_RN_1708_0), 
	.A0(FE_RN_1689_0));
   CLKNAND2X2M FE_RC_1884_0 (.Y(FE_RN_1700_0), 
	.B(\SUMB[9][2] ), 
	.A(\ab[10][1] ));
   INVX2M FE_RC_1883_0 (.Y(FE_RN_1699_0), 
	.A(FE_RN_1688_0));
   NAND2BX2M FE_RC_1882_0 (.Y(FE_RN_1698_0), 
	.B(FE_RN_1699_0), 
	.AN(FE_RN_1692_0));
   CLKNAND2X4M FE_RC_1881_0 (.Y(FE_RN_1697_0), 
	.B(FE_RN_1690_0), 
	.A(FE_RN_1698_0));
   NAND2X4M FE_RC_1880_0 (.Y(FE_RN_1696_0), 
	.B(FE_RN_1700_0), 
	.A(FE_RN_1697_0));
   NAND2X3M FE_RC_1879_0 (.Y(FE_RN_1695_0), 
	.B(\ab[11][1] ), 
	.A(FE_RN_1696_0));
   CLKNAND2X2M FE_RC_1878_0 (.Y(FE_RN_1694_0), 
	.B(\SUMB[9][2] ), 
	.A(\ab[10][1] ));
   INVX2M FE_RC_1877_0 (.Y(FE_RN_1693_0), 
	.A(\ab[11][1] ));
   AND2X2M FE_RC_1876_0 (.Y(FE_RN_1692_0), 
	.B(\CARRYB[8][1] ), 
	.A(\ab[9][1] ));
   CLKNAND2X4M FE_RC_1875_0 (.Y(FE_RN_1691_0), 
	.B(FE_RN_1690_0), 
	.A(FE_RN_1692_0));
   OR2X2M FE_RC_1874_0 (.Y(FE_RN_1690_0), 
	.B(\SUMB[9][2] ), 
	.A(\ab[10][1] ));
   OR2X2M FE_RC_1873_0 (.Y(FE_RN_1689_0), 
	.B(\CARRYB[8][1] ), 
	.A(\ab[9][1] ));
   AND2X2M FE_RC_1872_0 (.Y(FE_RN_1688_0), 
	.B(\SUMB[8][2] ), 
	.A(FE_RN_1689_0));
   CLKNAND2X4M FE_RC_1871_0 (.Y(FE_RN_1687_0), 
	.B(FE_RN_1690_0), 
	.A(FE_RN_1688_0));
   NAND4X4M FE_RC_1870_0 (.Y(FE_RN_1686_0), 
	.D(FE_RN_1694_0), 
	.C(FE_RN_1693_0), 
	.B(FE_RN_1691_0), 
	.A(FE_RN_1687_0));
   CLKNAND2X2M FE_RC_1869_0 (.Y(FE_RN_1685_0), 
	.B(\SUMB[10][2] ), 
	.A(FE_RN_1686_0));
   NAND2X3M FE_RC_1868_0 (.Y(\CARRYB[11][1] ), 
	.B(FE_RN_1695_0), 
	.A(FE_RN_1685_0));
   INVX2M FE_RC_1867_0 (.Y(FE_RN_1684_0), 
	.A(FE_RN_1641_0));
   AOI22X4M FE_RC_1866_0 (.Y(FE_RN_1683_0), 
	.B1(FE_RN_1643_0), 
	.B0(FE_RN_1641_0), 
	.A1(FE_RN_1684_0), 
	.A0(FE_RN_1655_0));
   INVX2M FE_RC_1865_0 (.Y(FE_RN_1682_0), 
	.A(\ab[11][4] ));
   AOI2B1X8M FE_RC_1864_0 (.Y(FE_RN_1681_0), 
	.B0(\ab[11][4] ), 
	.A1N(FE_RN_1644_0), 
	.A0(FE_RN_1641_0));
   INVX2M FE_RC_1863_0 (.Y(FE_RN_1680_0), 
	.A(FE_RN_1641_0));
   AOI22X4M FE_RC_1862_0 (.Y(FE_RN_1679_0), 
	.B1(FE_RN_1645_0), 
	.B0(FE_RN_1641_0), 
	.A1(FE_RN_1680_0), 
	.A0(FE_RN_1655_0));
   OAI2BB1X2M FE_RC_1861_0 (.Y(FE_RN_1678_0), 
	.B0(\CARRYB[10][4] ), 
	.A1N(FE_RN_1679_0), 
	.A0N(FE_RN_1681_0));
   OAI21X4M FE_RC_1860_0 (.Y(\CARRYB[11][4] ), 
	.B0(FE_RN_1678_0), 
	.A1(FE_RN_1682_0), 
	.A0(FE_RN_1683_0));
   INVX2M FE_RC_1859_0 (.Y(FE_RN_1677_0), 
	.A(FE_RN_1644_0));
   NOR3X8M FE_RC_1858_0 (.Y(FE_RN_1676_0), 
	.C(FE_RN_1677_0), 
	.B(\ab[10][5] ), 
	.A(FE_RN_1645_0));
   INVX2M FE_RC_1857_0 (.Y(FE_RN_1675_0), 
	.A(\SUMB[9][6] ));
   CLKNAND2X8M FE_RC_1856_0 (.Y(FE_RN_1674_0), 
	.B(\ab[10][5] ), 
	.A(FE_RN_1643_0));
   OAI21X4M FE_RC_1855_0 (.Y(\CARRYB[10][5] ), 
	.B0(FE_RN_1674_0), 
	.A1(FE_RN_1675_0), 
	.A0(FE_RN_1676_0));
   INVX2M FE_RC_1854_0 (.Y(FE_RN_1673_0), 
	.A(\SUMB[8][6] ));
   INVX2M FE_RC_1853_0 (.Y(FE_RN_1672_0), 
	.A(\ab[9][5] ));
   MXI2X2M FE_RC_1852_0 (.Y(FE_RN_1671_0), 
	.S0(FE_RN_1672_0), 
	.B(FE_RN_1673_0), 
	.A(\SUMB[8][6] ));
   NAND2X2M FE_RC_1851_0 (.Y(FE_RN_1670_0), 
	.B(FE_RN_1657_0), 
	.A(FE_RN_1671_0));
   CLKNAND2X4M FE_RC_1850_0 (.Y(FE_RN_1669_0), 
	.B(FE_RN_1647_0), 
	.A(FE_RN_1644_0));
   NAND2X3M FE_RC_1849_0 (.Y(FE_RN_1668_0), 
	.B(FE_RN_1649_0), 
	.A(FE_RN_1669_0));
   NAND2X4M FE_RC_1848_0 (.Y(\SUMB[9][5] ), 
	.B(FE_RN_1670_0), 
	.A(FE_RN_1668_0));
   INVX2M FE_RC_1847_0 (.Y(FE_RN_1667_0), 
	.A(\SUMB[7][6] ));
   INVX2M FE_RC_1846_0 (.Y(FE_RN_1666_0), 
	.A(\CARRYB[7][5] ));
   INVX2M FE_RC_1845_0 (.Y(FE_RN_1665_0), 
	.A(\ab[8][5] ));
   MXI2X2M FE_RC_1844_0 (.Y(FE_RN_1664_0), 
	.S0(FE_RN_1665_0), 
	.B(FE_RN_1666_0), 
	.A(\CARRYB[7][5] ));
   NAND2X3M FE_RC_1843_0 (.Y(FE_RN_1663_0), 
	.B(FE_RN_1667_0), 
	.A(FE_RN_1664_0));
   CLKNAND2X4M FE_RC_1842_0 (.Y(FE_RN_1662_0), 
	.B(FE_RN_1651_0), 
	.A(FE_RN_1654_0));
   NAND2X4M FE_RC_1841_0 (.Y(FE_RN_1661_0), 
	.B(\SUMB[7][6] ), 
	.A(FE_RN_1662_0));
   CLKNAND2X12M FE_RC_1840_0 (.Y(\SUMB[8][5] ), 
	.B(FE_RN_1663_0), 
	.A(FE_RN_1661_0));
   MXI2X6M FE_RC_1839_0 (.Y(FE_RN_1660_0), 
	.S0(FE_RN_1640_0), 
	.B(FE_RN_1655_0), 
	.A(FE_RN_1643_0));
   INVX2M FE_RC_1838_0 (.Y(FE_RN_1659_0), 
	.A(\SUMB[7][6] ));
   CLKNAND2X2M FE_RC_1837_0 (.Y(FE_RN_1658_0), 
	.B(FE_RN_1659_0), 
	.A(FE_RN_1654_0));
   NAND2X3M FE_RC_1836_0 (.Y(FE_RN_1657_0), 
	.B(FE_RN_1651_0), 
	.A(FE_RN_1658_0));
   CLKNAND2X4M FE_RC_1835_0 (.Y(FE_RN_1656_0), 
	.B(FE_RN_1644_0), 
	.A(FE_RN_1657_0));
   NAND2X4M FE_RC_1834_0 (.Y(FE_RN_1655_0), 
	.B(FE_RN_1647_0), 
	.A(FE_RN_1656_0));
   CLKNAND2X4M FE_RC_1833_0 (.Y(FE_RN_1654_0), 
	.B(\CARRYB[7][5] ), 
	.A(\ab[8][5] ));
   INVX2M FE_RC_1832_0 (.Y(FE_RN_1653_0), 
	.A(\CARRYB[7][5] ));
   INVX2M FE_RC_1831_0 (.Y(FE_RN_1652_0), 
	.A(\ab[8][5] ));
   NAND2X4M FE_RC_1830_0 (.Y(FE_RN_1651_0), 
	.B(FE_RN_1653_0), 
	.A(FE_RN_1652_0));
   CLKNAND2X4M FE_RC_1829_0 (.Y(FE_RN_1650_0), 
	.B(\SUMB[7][6] ), 
	.A(FE_RN_1651_0));
   NAND2X4M FE_RC_1828_0 (.Y(FE_RN_1649_0), 
	.B(FE_RN_1654_0), 
	.A(FE_RN_1650_0));
   INVX2M FE_RC_1827_0 (.Y(FE_RN_1648_0), 
	.A(\ab[9][5] ));
   NAND2BX4M FE_RC_1826_0 (.Y(FE_RN_1647_0), 
	.B(FE_RN_1648_0), 
	.AN(\SUMB[8][6] ));
   INVX2M FE_RC_1825_0 (.Y(FE_RN_1646_0), 
	.A(FE_RN_1647_0));
   NOR2BX4M FE_RC_1824_0 (.Y(FE_RN_1645_0), 
	.B(FE_RN_1646_0), 
	.AN(FE_RN_1649_0));
   CLKNAND2X4M FE_RC_1823_0 (.Y(FE_RN_1644_0), 
	.B(\SUMB[8][6] ), 
	.A(\ab[9][5] ));
   NAND2BX8M FE_RC_1822_0 (.Y(FE_RN_1643_0), 
	.B(FE_RN_1644_0), 
	.AN(FE_RN_1645_0));
   INVX2M FE_RC_1821_0 (.Y(FE_RN_1642_0), 
	.A(\SUMB[9][6] ));
   MXI2X6M FE_RC_1820_0 (.Y(FE_RN_1641_0), 
	.S0(\ab[10][5] ), 
	.B(FE_RN_1642_0), 
	.A(\SUMB[9][6] ));
   XNOR2X8M FE_RC_1819_0 (.Y(FE_RN_1640_0), 
	.B(\ab[11][4] ), 
	.A(FE_RN_1641_0));
   MXI2X6M FE_RC_1818_0 (.Y(FE_RN_1639_0), 
	.S0(FE_RN_1640_0), 
	.B(FE_RN_1643_0), 
	.A(FE_RN_1655_0));
   MXI2X4M FE_RC_1817_0 (.Y(\SUMB[11][4] ), 
	.S0(\CARRYB[10][4] ), 
	.B(FE_RN_1639_0), 
	.A(FE_RN_1660_0));
   CLKNAND2X4M FE_RC_1814_0 (.Y(FE_RN_1637_0), 
	.B(\CARRYB[7][4] ), 
	.A(FE_RN_1628_0));
   NAND3X6M FE_RC_1813_0 (.Y(FE_RN_726_0), 
	.C(FE_RN_1626_0), 
	.B(FE_RN_727_0), 
	.A(FE_RN_1637_0));
   INVX2M FE_RC_1812_0 (.Y(FE_RN_1636_0), 
	.A(\CARRYB[7][4] ));
   INVX2M FE_RC_1811_0 (.Y(FE_RN_1635_0), 
	.A(\SUMB[7][5] ));
   INVX2M FE_RC_1810_0 (.Y(FE_RN_1634_0), 
	.A(\ab[8][4] ));
   MXI2X2M FE_RC_1809_0 (.Y(FE_RN_1633_0), 
	.S0(FE_RN_1634_0), 
	.B(FE_RN_1635_0), 
	.A(\SUMB[7][5] ));
   NAND2X3M FE_RC_1808_0 (.Y(FE_RN_1632_0), 
	.B(FE_RN_1636_0), 
	.A(FE_RN_1633_0));
   CLKNAND2X4M FE_RC_1807_0 (.Y(FE_RN_1631_0), 
	.B(FE_RN_1628_0), 
	.A(FE_RN_1626_0));
   NAND2X3M FE_RC_1806_0 (.Y(FE_RN_1630_0), 
	.B(\CARRYB[7][4] ), 
	.A(FE_RN_1631_0));
   NAND2X3M FE_RC_1805_0 (.Y(\SUMB[8][4] ), 
	.B(FE_RN_1632_0), 
	.A(FE_RN_1630_0));
   INVX2M FE_RC_1804_0 (.Y(FE_RN_1629_0), 
	.A(\ab[8][4] ));
   INVX2M FE_RC_1802_0 (.Y(FE_RN_1627_0), 
	.A(\CARRYB[7][4] ));
   CLKNAND2X4M FE_RC_1801_0 (.Y(FE_RN_1626_0), 
	.B(\SUMB[7][5] ), 
	.A(\ab[8][4] ));
   NAND2X3M FE_RC_1800_0 (.Y(FE_RN_1625_0), 
	.B(FE_RN_1627_0), 
	.A(FE_RN_1626_0));
   OAI2BB1X4M FE_RC_1799_0 (.Y(FE_RN_1624_0), 
	.B0(FE_RN_727_0), 
	.A1N(FE_RN_1625_0), 
	.A0N(FE_RN_1628_0));
   CLKNAND2X4M FE_RC_1798_0 (.Y(FE_RN_735_0), 
	.B(FE_RN_729_0), 
	.A(FE_RN_1624_0));
   INVX2M FE_RC_1499_0 (.Y(FE_RN_1348_0), 
	.A(FE_RN_1320_0));
   NAND2X4M FE_RC_1498_0 (.Y(FE_RN_1347_0), 
	.B(FE_RN_1348_0), 
	.A(FE_RN_1324_0));
   NAND3BX4M FE_RC_1497_0 (.Y(FE_RN_1346_0), 
	.C(FE_RN_1319_0), 
	.B(FE_RN_1324_0), 
	.AN(\SUMB[1][7] ));
   NAND3X4M FE_RC_1496_0 (.Y(FE_RN_1345_0), 
	.C(FE_RN_1321_0), 
	.B(FE_RN_1347_0), 
	.A(FE_RN_1346_0));
   NAND2X2M FE_RC_1495_0 (.Y(FE_RN_1344_0), 
	.B(FE_RN_1341_0), 
	.A(FE_RN_1345_0));
   INVX2M FE_RC_1494_0 (.Y(FE_RN_1343_0), 
	.A(\ab[4][6] ));
   NAND2X4M FE_RC_1493_0 (.Y(FE_RN_1342_0), 
	.B(\SUMB[3][7] ), 
	.A(FE_RN_1343_0));
   OAI2B1X4M FE_RC_1492_0 (.Y(FE_RN_1341_0), 
	.B0(FE_RN_1342_0), 
	.A1N(\ab[4][6] ), 
	.A0(\SUMB[3][7] ));
   NAND2BX4M FE_RC_1491_0 (.Y(FE_RN_1340_0), 
	.B(FE_RN_1316_0), 
	.AN(FE_RN_1341_0));
   NAND2X4M FE_RC_1490_0 (.Y(\SUMB[4][6] ), 
	.B(FE_RN_1344_0), 
	.A(FE_RN_1340_0));
   INVX2M FE_RC_1489_0 (.Y(FE_RN_1339_0), 
	.A(\SUMB[1][7] ));
   INVX2M FE_RC_1488_0 (.Y(FE_RN_1338_0), 
	.A(FE_RN_1320_0));
   AOI21X2M FE_RC_1487_0 (.Y(FE_RN_1337_0), 
	.B0(FE_RN_1338_0), 
	.A1(FE_RN_1339_0), 
	.A0(FE_RN_1319_0));
   XNOR2X4M FE_RC_1486_0 (.Y(FE_RN_1336_0), 
	.B(\ab[3][6] ), 
	.A(FE_RN_1323_0));
   CLKNAND2X8M FE_RC_1485_0 (.Y(FE_RN_1335_0), 
	.B(FE_RN_1321_0), 
	.A(FE_RN_1324_0));
   NAND2X3M FE_RC_1484_0 (.Y(FE_RN_1334_0), 
	.B(FE_RN_1318_0), 
	.A(FE_RN_1335_0));
   OAI21X4M FE_RC_1483_0 (.Y(\SUMB[3][6] ), 
	.B0(FE_RN_1334_0), 
	.A1(FE_RN_1336_0), 
	.A0(FE_RN_1337_0));
   XOR2X2M FE_RC_1482_0 (.Y(FE_RN_1333_0), 
	.B(n9), 
	.A(\ab[2][6] ));
   NAND2BX2M FE_RC_1481_0 (.Y(FE_RN_1332_0), 
	.B(FE_RN_1333_0), 
	.AN(\SUMB[1][7] ));
   NAND2X2M FE_RC_1480_0 (.Y(FE_RN_1331_0), 
	.B(FE_RN_1320_0), 
	.A(FE_RN_1319_0));
   NAND2X2M FE_RC_1479_0 (.Y(FE_RN_1330_0), 
	.B(\SUMB[1][7] ), 
	.A(FE_RN_1331_0));
   NAND2X4M FE_RC_1478_0 (.Y(\SUMB[2][6] ), 
	.B(FE_RN_1332_0), 
	.A(FE_RN_1330_0));
   INVX2M FE_RC_1477_0 (.Y(FE_RN_1329_0), 
	.A(FE_RN_1318_0));
   INVX2M FE_RC_1476_0 (.Y(FE_RN_1328_0), 
	.A(\ab[4][6] ));
   NAND2X4M FE_RC_1475_0 (.Y(FE_RN_1327_0), 
	.B(FE_RN_1328_0), 
	.A(FE_RN_1324_0));
   AOI2B1X4M FE_RC_1474_0 (.Y(FE_RN_1326_0), 
	.B0(FE_RN_1327_0), 
	.A1N(FE_RN_1329_0), 
	.A0(FE_RN_1321_0));
   INVX2M FE_RC_1473_0 (.Y(FE_RN_1325_0), 
	.A(\SUMB[3][7] ));
   NAND2X6M FE_RC_1472_0 (.Y(FE_RN_1324_0), 
	.B(\ab[3][6] ), 
	.A(FE_RN_1323_0));
   NAND2X4M FE_RC_1471_0 (.Y(FE_RN_1323_0), 
	.B(FE_RN_133_0), 
	.A(FE_RN_131_0));
   INVX2M FE_RC_1470_0 (.Y(FE_RN_1322_0), 
	.A(\ab[3][6] ));
   NAND2BX8M FE_RC_1469_0 (.Y(FE_RN_1321_0), 
	.B(FE_RN_1322_0), 
	.AN(FE_RN_1323_0));
   OR2X2M FE_RC_1468_0 (.Y(FE_RN_1320_0), 
	.B(n9), 
	.A(\ab[2][6] ));
   NAND2X2M FE_RC_1467_0 (.Y(FE_RN_1319_0), 
	.B(n9), 
	.A(\ab[2][6] ));
   OAI2BB1X4M FE_RC_1466_0 (.Y(FE_RN_1318_0), 
	.B0(FE_RN_1319_0), 
	.A1N(FE_RN_1320_0), 
	.A0N(\SUMB[1][7] ));
   CLKNAND2X8M FE_RC_1465_0 (.Y(FE_RN_1317_0), 
	.B(FE_RN_1321_0), 
	.A(FE_RN_1318_0));
   NAND2X4M FE_RC_1464_0 (.Y(FE_RN_1316_0), 
	.B(FE_RN_1324_0), 
	.A(FE_RN_1317_0));
   NAND2X4M FE_RC_1463_0 (.Y(FE_RN_1315_0), 
	.B(\ab[4][6] ), 
	.A(FE_RN_1316_0));
   OAI21X8M FE_RC_1462_0 (.Y(\CARRYB[4][6] ), 
	.B0(FE_RN_1315_0), 
	.A1(FE_RN_1325_0), 
	.A0(FE_RN_1326_0));
   INVX2M FE_RC_1435_0 (.Y(FE_RN_1291_0), 
	.A(\SUMB[4][4] ));
   MXI2X4M FE_RC_1434_0 (.Y(FE_RN_1290_0), 
	.S0(\ab[5][3] ), 
	.B(\SUMB[4][4] ), 
	.A(FE_RN_1291_0));
   INVX2M FE_RC_1433_0 (.Y(FE_RN_1289_0), 
	.A(FE_RN_1276_0));
   NOR2X4M FE_RC_1432_0 (.Y(FE_RN_1288_0), 
	.B(\ab[4][3] ), 
	.A(FE_RN_1289_0));
   INVX2M FE_RC_1431_0 (.Y(FE_RN_1287_0), 
	.A(\ab[4][3] ));
   NAND2X4M FE_RC_1430_0 (.Y(FE_RN_1286_0), 
	.B(FE_RN_1287_0), 
	.A(FE_RN_1272_0));
   INVX2M FE_RC_1429_0 (.Y(FE_RN_1285_0), 
	.A(\SUMB[3][4] ));
   CLKNAND2X4M FE_RC_1428_0 (.Y(FE_RN_1284_0), 
	.B(FE_RN_1285_0), 
	.A(FE_RN_1279_0));
   NAND4BX4M FE_RC_1427_0 (.Y(FE_RN_1283_0), 
	.D(FE_RN_1284_0), 
	.C(FE_RN_1286_0), 
	.B(FE_RN_1246_0), 
	.AN(FE_RN_1288_0));
   NAND2X4M FE_RC_1426_0 (.Y(FE_RN_1282_0), 
	.B(FE_RN_1290_0), 
	.A(FE_RN_1283_0));
   OAI2B1X4M FE_RC_1425_0 (.Y(\SUMB[5][3] ), 
	.B0(FE_RN_1282_0), 
	.A1N(FE_RN_1252_0), 
	.A0(FE_RN_1290_0));
   INVX2M FE_RC_1424_0 (.Y(FE_RN_1281_0), 
	.A(FE_RN_1272_0));
   INVX2M FE_RC_1423_0 (.Y(FE_RN_1280_0), 
	.A(FE_RN_1276_0));
   NAND2X4M FE_RC_1422_0 (.Y(FE_RN_1279_0), 
	.B(FE_RN_1281_0), 
	.A(FE_RN_1280_0));
   CLKNAND2X4M FE_RC_1421_0 (.Y(FE_RN_1278_0), 
	.B(\ab[4][3] ), 
	.A(FE_RN_1279_0));
   INVX2M FE_RC_1420_0 (.Y(FE_RN_1277_0), 
	.A(\SUMB[1][4] ));
   AND3X4M FE_RC_1419_0 (.Y(FE_RN_1276_0), 
	.C(FE_RN_1277_0), 
	.B(FE_RN_1245_0), 
	.A(FE_RN_1241_0));
   INVX2M FE_RC_1418_0 (.Y(FE_RN_1275_0), 
	.A(\ab[4][3] ));
   INVX2M FE_RC_1417_0 (.Y(FE_RN_1274_0), 
	.A(FE_RN_1239_0));
   CLKNAND2X4M FE_RC_1416_0 (.Y(FE_RN_1273_0), 
	.B(FE_RN_1245_0), 
	.A(FE_RN_1274_0));
   NAND2X4M FE_RC_1415_0 (.Y(FE_RN_1272_0), 
	.B(FE_RN_1242_0), 
	.A(FE_RN_1273_0));
   INVX2M FE_RC_1414_0 (.Y(FE_RN_1271_0), 
	.A(\ab[4][3] ));
   INVX2M FE_RC_1412_0 (.Y(FE_RN_1269_0), 
	.A(\SUMB[3][4] ));
   INVX2M FE_RC_1411_0 (.Y(FE_RN_1268_0), 
	.A(FE_RN_1235_0));
   OAI222X4M FE_RC_1410_0 (.Y(\SUMB[4][3] ), 
	.C1(FE_RN_1246_0), 
	.C0(FE_RN_1268_0), 
	.B1(FE_RN_1269_0), 
	.B0(FE_RN_1270_0), 
	.A1(\SUMB[3][4] ), 
	.A0(FE_RN_1278_0));
   NAND2X4M FE_RC_1409_0 (.Y(FE_RN_1267_0), 
	.B(FE_RN_1242_0), 
	.A(FE_RN_1245_0));
   INVX2M FE_RC_1408_0 (.Y(FE_RN_1266_0), 
	.A(\SUMB[2][4] ));
   INVX2M FE_RC_1407_0 (.Y(FE_RN_1265_0), 
	.A(\ab[3][3] ));
   MXI2X4M FE_RC_1406_0 (.Y(FE_RN_1264_0), 
	.S0(FE_RN_1265_0), 
	.B(FE_RN_1266_0), 
	.A(\SUMB[2][4] ));
   INVX2M FE_RC_1405_0 (.Y(FE_RN_1263_0), 
	.A(\SUMB[1][4] ));
   CLKNAND2X4M FE_RC_1404_0 (.Y(FE_RN_1262_0), 
	.B(FE_RN_1263_0), 
	.A(FE_RN_1241_0));
   NAND2X4M FE_RC_1403_0 (.Y(FE_RN_1261_0), 
	.B(FE_RN_1239_0), 
	.A(FE_RN_1262_0));
   AO22X8M FE_RC_1402_0 (.Y(\SUMB[3][3] ), 
	.B1(FE_RN_1261_0), 
	.B0(FE_RN_1264_0), 
	.A1(FE_RN_1237_0), 
	.A0(FE_RN_1267_0));
   INVX2M FE_RC_1401_0 (.Y(FE_RN_1260_0), 
	.A(\SUMB[1][4] ));
   NAND2BX2M FE_RC_1400_0 (.Y(FE_RN_1259_0), 
	.B(n7), 
	.AN(\ab[2][3] ));
   OAI2B1X4M FE_RC_1399_0 (.Y(FE_RN_1258_0), 
	.B0(FE_RN_1259_0), 
	.A1N(\ab[2][3] ), 
	.A0(n7));
   NAND2X2M FE_RC_1398_0 (.Y(FE_RN_1257_0), 
	.B(FE_RN_1260_0), 
	.A(FE_RN_1258_0));
   NAND2X4M FE_RC_1397_0 (.Y(FE_RN_1256_0), 
	.B(FE_RN_1239_0), 
	.A(FE_RN_1241_0));
   CLKNAND2X4M FE_RC_1396_0 (.Y(FE_RN_1255_0), 
	.B(\SUMB[1][4] ), 
	.A(FE_RN_1256_0));
   NAND2X2M FE_RC_1395_0 (.Y(\SUMB[2][3] ), 
	.B(FE_RN_1257_0), 
	.A(FE_RN_1255_0));
   CLKNAND2X2M FE_RC_1394_0 (.Y(FE_RN_1254_0), 
	.B(\SUMB[3][4] ), 
	.A(\ab[4][3] ));
   CLKNAND2X4M FE_RC_1393_0 (.Y(FE_RN_1253_0), 
	.B(FE_RN_1246_0), 
	.A(FE_RN_1235_0));
   NAND2X4M FE_RC_1392_0 (.Y(FE_RN_1252_0), 
	.B(FE_RN_1254_0), 
	.A(FE_RN_1253_0));
   CLKNAND2X4M FE_RC_1391_0 (.Y(FE_RN_1251_0), 
	.B(\ab[5][3] ), 
	.A(FE_RN_1252_0));
   INVX2M FE_RC_1390_0 (.Y(FE_RN_1250_0), 
	.A(\ab[5][3] ));
   CLKNAND2X2M FE_RC_1389_0 (.Y(FE_RN_1249_0), 
	.B(\SUMB[3][4] ), 
	.A(\ab[4][3] ));
   INVX2M FE_RC_1388_0 (.Y(FE_RN_1248_0), 
	.A(\SUMB[3][4] ));
   INVX2M FE_RC_1387_0 (.Y(FE_RN_1247_0), 
	.A(\ab[4][3] ));
   NAND2X4M FE_RC_1386_0 (.Y(FE_RN_1246_0), 
	.B(FE_RN_1248_0), 
	.A(FE_RN_1247_0));
   NAND2X3M FE_RC_1385_0 (.Y(FE_RN_1245_0), 
	.B(\SUMB[2][4] ), 
	.A(\ab[3][3] ));
   INVX2M FE_RC_1384_0 (.Y(FE_RN_1244_0), 
	.A(\SUMB[2][4] ));
   INVX2M FE_RC_1383_0 (.Y(FE_RN_1243_0), 
	.A(\ab[3][3] ));
   NAND2X4M FE_RC_1381_0 (.Y(FE_RN_1241_0), 
	.B(n7), 
	.A(\ab[2][3] ));
   INVX2M FE_RC_1380_0 (.Y(FE_RN_1240_0), 
	.A(\ab[2][3] ));
   NAND2BX8M FE_RC_1379_0 (.Y(FE_RN_1239_0), 
	.B(FE_RN_1240_0), 
	.AN(n7));
   NAND2X4M FE_RC_1378_0 (.Y(FE_RN_1238_0), 
	.B(\SUMB[1][4] ), 
	.A(FE_RN_1239_0));
   CLKNAND2X4M FE_RC_1377_0 (.Y(FE_RN_1237_0), 
	.B(FE_RN_1241_0), 
	.A(FE_RN_1238_0));
   CLKNAND2X4M FE_RC_1374_0 (.Y(FE_RN_1234_0), 
	.B(FE_RN_1246_0), 
	.A(FE_RN_1235_0));
   NAND3X3M FE_RC_1373_0 (.Y(FE_RN_1233_0), 
	.C(FE_RN_1250_0), 
	.B(FE_RN_1249_0), 
	.A(FE_RN_1234_0));
   CLKNAND2X2M FE_RC_1372_0 (.Y(FE_RN_1232_0), 
	.B(\SUMB[4][4] ), 
	.A(FE_RN_1233_0));
   NAND2X4M FE_RC_1371_0 (.Y(\CARRYB[5][3] ), 
	.B(FE_RN_1251_0), 
	.A(FE_RN_1232_0));
   INVX2M FE_RC_1370_0 (.Y(FE_RN_1231_0), 
	.A(\SUMB[2][6] ));
   INVX2M FE_RC_1369_0 (.Y(FE_RN_1230_0), 
	.A(\ab[3][5] ));
   MXI2X4M FE_RC_1368_0 (.Y(FE_RN_1229_0), 
	.S0(FE_RN_1230_0), 
	.B(FE_RN_1231_0), 
	.A(\SUMB[2][6] ));
   INVX2M FE_RC_1367_0 (.Y(FE_RN_1228_0), 
	.A(n4));
   CLKNAND2X4M FE_RC_1366_0 (.Y(FE_RN_1227_0), 
	.B(FE_RN_1228_0), 
	.A(FE_RN_1214_0));
   NAND2X4M FE_RC_1365_0 (.Y(FE_RN_1226_0), 
	.B(FE_RN_1209_0), 
	.A(FE_RN_1227_0));
   NAND2X4M FE_RC_1364_0 (.Y(FE_RN_1225_0), 
	.B(FE_RN_1229_0), 
	.A(FE_RN_1226_0));
   OAI2B1X4M FE_RC_1363_0 (.Y(\SUMB[3][5] ), 
	.B0(FE_RN_1225_0), 
	.A1N(FE_RN_1207_0), 
	.A0(FE_RN_1229_0));
   INVX2M FE_RC_1362_0 (.Y(FE_RN_1224_0), 
	.A(n4));
   XNOR2X2M FE_RC_1361_0 (.Y(FE_RN_1223_0), 
	.B(\ab[2][5] ), 
	.A(FE_RN_1211_0));
   INVX2M FE_RC_1360_0 (.Y(FE_RN_1222_0), 
	.A(FE_RN_1223_0));
   NAND2X2M FE_RC_1359_0 (.Y(FE_RN_1221_0), 
	.B(FE_RN_1224_0), 
	.A(FE_RN_1222_0));
   NAND2X4M FE_RC_1358_0 (.Y(FE_RN_1220_0), 
	.B(FE_RN_1214_0), 
	.A(FE_RN_1209_0));
   NAND2X4M FE_RC_1357_0 (.Y(FE_RN_1219_0), 
	.B(n4), 
	.A(FE_RN_1220_0));
   NAND2X4M FE_RC_1356_0 (.Y(\SUMB[2][5] ), 
	.B(FE_RN_1221_0), 
	.A(FE_RN_1219_0));
   INVX2M FE_RC_1355_0 (.Y(FE_RN_1218_0), 
	.A(\ab[3][5] ));
   CLKNAND2X4M FE_RC_1354_0 (.Y(FE_RN_1217_0), 
	.B(FE_RN_1218_0), 
	.A(FE_RN_1214_0));
   AOI21X4M FE_RC_1353_0 (.Y(FE_RN_1216_0), 
	.B0(FE_RN_1217_0), 
	.A1(n4), 
	.A0(FE_RN_1209_0));
   INVX2M FE_RC_1352_0 (.Y(FE_RN_1215_0), 
	.A(\SUMB[2][6] ));
   CLKNAND2X8M FE_RC_1351_0 (.Y(FE_RN_1214_0), 
	.B(\ab[2][5] ), 
	.A(FE_RN_1211_0));
   INVX2M FE_RC_1350_0 (.Y(FE_RN_1213_0), 
	.A(\ab[1][6] ));
   NAND2BX2M FE_RC_1349_0 (.Y(FE_RN_1212_0), 
	.B(\ab[1][6] ), 
	.AN(\ab[0][7] ));
   OAI2BB1X4M FE_RC_1348_0 (.Y(FE_RN_1211_0), 
	.B0(FE_RN_1212_0), 
	.A1N(FE_RN_1213_0), 
	.A0N(\ab[0][7] ));
   INVX2M FE_RC_1347_0 (.Y(FE_RN_1210_0), 
	.A(\ab[2][5] ));
   NAND2BX8M FE_RC_1346_0 (.Y(FE_RN_1209_0), 
	.B(FE_RN_1210_0), 
	.AN(FE_RN_1211_0));
   NAND2X4M FE_RC_1345_0 (.Y(FE_RN_1208_0), 
	.B(n4), 
	.A(FE_RN_1209_0));
   CLKNAND2X4M FE_RC_1344_0 (.Y(FE_RN_1207_0), 
	.B(FE_RN_1214_0), 
	.A(FE_RN_1208_0));
   NAND2X4M FE_RC_1343_0 (.Y(FE_RN_1206_0), 
	.B(\ab[3][5] ), 
	.A(FE_RN_1207_0));
   OAI21X4M FE_RC_1342_0 (.Y(\CARRYB[3][5] ), 
	.B0(FE_RN_1206_0), 
	.A1(FE_RN_1215_0), 
	.A0(FE_RN_1216_0));
   NOR2X8M FE_RC_1327_0 (.Y(\ab[0][6] ), 
	.B(n33), 
	.A(n27));
   NOR2X6M FE_RC_1326_0 (.Y(FE_RN_1193_0), 
	.B(n33), 
	.A(n27));
   AND2X4M FE_RC_1325_0 (.Y(n4), 
	.B(\ab[1][5] ), 
	.A(FE_RN_1193_0));
   AOI221XLM FE_RC_1121_0 (.Y(FE_RN_1019_0), 
	.C0(\ab[17][0] ), 
	.B1(FE_RN_1016_0), 
	.B0(\ab[16][0] ), 
	.A1(\ab[16][0] ), 
	.A0(FE_RN_1015_0));
   OAI2BB1X2M FE_RC_1120_0 (.Y(FE_RN_1018_0), 
	.B0(FE_RN_1019_0), 
	.A1N(FE_RN_1014_0), 
	.A0N(\SUMB[15][1] ));
   OAI21X2M FE_RC_1119_0 (.Y(FE_RN_1017_0), 
	.B0(\ab[16][0] ), 
	.A1(FE_RN_1015_0), 
	.A0(FE_RN_1016_0));
   AND2X2M FE_RC_1118_0 (.Y(FE_RN_1016_0), 
	.B(\CARRYB[14][0] ), 
	.A(\ab[15][0] ));
   OA21X2M FE_RC_1117_0 (.Y(FE_RN_1015_0), 
	.B0(\SUMB[14][1] ), 
	.A1(\CARRYB[14][0] ), 
	.A0(\ab[15][0] ));
   OR3X2M FE_RC_1116_0 (.Y(FE_RN_1014_0), 
	.C(\ab[16][0] ), 
	.B(FE_RN_1016_0), 
	.A(FE_RN_1015_0));
   CLKNAND2X2M FE_RC_1115_0 (.Y(FE_RN_1013_0), 
	.B(\SUMB[15][1] ), 
	.A(FE_RN_1014_0));
   OAI2BB1X2M FE_RC_1114_0 (.Y(FE_RN_1012_0), 
	.B0(\ab[17][0] ), 
	.A1N(FE_RN_1013_0), 
	.A0N(FE_RN_1017_0));
   OAI2BB1X4M FE_RC_1113_0 (.Y(\CARRYB[17][0] ), 
	.B0(FE_RN_1012_0), 
	.A1N(\SUMB[16][1] ), 
	.A0N(FE_RN_1018_0));
   INVX2M FE_RC_1112_0 (.Y(FE_RN_1011_0), 
	.A(\SUMB[15][5] ));
   INVX2M FE_RC_1111_0 (.Y(FE_RN_1010_0), 
	.A(\ab[16][4] ));
   MXI2X2M FE_RC_1110_0 (.Y(FE_RN_1009_0), 
	.S0(FE_RN_1010_0), 
	.B(FE_RN_1011_0), 
	.A(\SUMB[15][5] ));
   INVX2M FE_RC_1109_0 (.Y(FE_RN_1008_0), 
	.A(\CARRYB[14][4] ));
   CLKNAND2X4M FE_RC_1108_0 (.Y(FE_RN_1007_0), 
	.B(FE_RN_1008_0), 
	.A(FE_RN_989_0));
   NAND2X4M FE_RC_1107_0 (.Y(FE_RN_1006_0), 
	.B(FE_RN_985_0), 
	.A(FE_RN_1007_0));
   NAND2X2M FE_RC_1106_0 (.Y(FE_RN_1005_0), 
	.B(FE_RN_1009_0), 
	.A(FE_RN_1006_0));
   OAI2B1X4M FE_RC_1105_0 (.Y(\SUMB[16][4] ), 
	.B0(FE_RN_1005_0), 
	.A1N(FE_RN_992_0), 
	.A0(FE_RN_1009_0));
   INVX2M FE_RC_1104_0 (.Y(FE_RN_1004_0), 
	.A(\CARRYB[14][4] ));
   INVX2M FE_RC_1103_0 (.Y(FE_RN_1003_0), 
	.A(\ab[15][4] ));
   INVX2M FE_RC_1102_0 (.Y(FE_RN_1002_0), 
	.A(\ab[15][4] ));
   NAND2X4M FE_RC_1101_0 (.Y(FE_RN_1001_0), 
	.B(FE_RN_1002_0), 
	.A(FE_RN_987_0));
   OAI21X2M FE_RC_1100_0 (.Y(FE_RN_1000_0), 
	.B0(FE_RN_1001_0), 
	.A1(FE_RN_1003_0), 
	.A0(FE_RN_987_0));
   NAND2X3M FE_RC_1099_0 (.Y(FE_RN_999_0), 
	.B(FE_RN_1004_0), 
	.A(FE_RN_1000_0));
   NAND2X4M FE_RC_1098_0 (.Y(FE_RN_998_0), 
	.B(FE_RN_989_0), 
	.A(FE_RN_985_0));
   NAND2X3M FE_RC_1097_0 (.Y(FE_RN_997_0), 
	.B(\CARRYB[14][4] ), 
	.A(FE_RN_998_0));
   NAND2X4M FE_RC_1096_0 (.Y(\SUMB[15][4] ), 
	.B(FE_RN_999_0), 
	.A(FE_RN_997_0));
   NOR2X2M FE_RC_1095_0 (.Y(FE_RN_996_0), 
	.B(\SUMB[13][6] ), 
	.A(\ab[14][5] ));
   INVX2M FE_RC_1094_0 (.Y(FE_RN_995_0), 
	.A(\CARRYB[13][5] ));
   CLKNAND2X2M FE_RC_1093_0 (.Y(FE_RN_994_0), 
	.B(\SUMB[13][6] ), 
	.A(\ab[14][5] ));
   OAI21X4M FE_RC_1092_0 (.Y(\CARRYB[14][5] ), 
	.B0(FE_RN_994_0), 
	.A1(FE_RN_995_0), 
	.A0(FE_RN_996_0));
   NAND2X4M FE_RC_1091_0 (.Y(FE_RN_993_0), 
	.B(\CARRYB[14][4] ), 
	.A(FE_RN_985_0));
   NAND2X4M FE_RC_1090_0 (.Y(FE_RN_992_0), 
	.B(FE_RN_989_0), 
	.A(FE_RN_993_0));
   NAND2X4M FE_RC_1089_0 (.Y(FE_RN_991_0), 
	.B(\ab[16][4] ), 
	.A(FE_RN_992_0));
   INVX2M FE_RC_1088_0 (.Y(FE_RN_990_0), 
	.A(\ab[16][4] ));
   NAND2X5M FE_RC_1087_0 (.Y(FE_RN_989_0), 
	.B(\ab[15][4] ), 
	.A(FE_RN_987_0));
   XNOR2X2M FE_RC_1086_0 (.Y(FE_RN_988_0), 
	.B(\SUMB[13][6] ), 
	.A(\CARRYB[13][5] ));
   XNOR2X4M FE_RC_1085_0 (.Y(FE_RN_987_0), 
	.B(\ab[14][5] ), 
	.A(FE_RN_988_0));
   INVX2M FE_RC_1084_0 (.Y(FE_RN_986_0), 
	.A(\ab[15][4] ));
   NAND2BX8M FE_RC_1083_0 (.Y(FE_RN_985_0), 
	.B(FE_RN_986_0), 
	.AN(FE_RN_987_0));
   NAND2X5M FE_RC_1082_0 (.Y(FE_RN_984_0), 
	.B(\CARRYB[14][4] ), 
	.A(FE_RN_985_0));
   NAND3X4M FE_RC_1081_0 (.Y(FE_RN_983_0), 
	.C(FE_RN_990_0), 
	.B(FE_RN_989_0), 
	.A(FE_RN_984_0));
   CLKNAND2X4M FE_RC_1080_0 (.Y(FE_RN_982_0), 
	.B(\SUMB[15][5] ), 
	.A(FE_RN_983_0));
   NAND2X3M FE_RC_1079_0 (.Y(\CARRYB[16][4] ), 
	.B(FE_RN_991_0), 
	.A(FE_RN_982_0));
   INVX2M FE_RC_855_0 (.Y(FE_RN_775_0), 
	.A(FE_RN_748_0));
   INVX2M FE_RC_854_0 (.Y(FE_RN_774_0), 
	.A(\ab[11][2] ));
   INVX2M FE_RC_853_0 (.Y(FE_RN_773_0), 
	.A(\ab[11][2] ));
   NAND2X4M FE_RC_852_0 (.Y(FE_RN_772_0), 
	.B(FE_RN_773_0), 
	.A(FE_RN_753_0));
   OAI21X4M FE_RC_851_0 (.Y(FE_RN_771_0), 
	.B0(FE_RN_772_0), 
	.A1(FE_RN_774_0), 
	.A0(FE_RN_753_0));
   INVX2M FE_RC_850_0 (.Y(FE_RN_770_0), 
	.A(\SUMB[9][3] ));
   CLKNAND2X4M FE_RC_849_0 (.Y(FE_RN_769_0), 
	.B(FE_RN_770_0), 
	.A(FE_RN_752_0));
   NAND2X3M FE_RC_848_0 (.Y(FE_RN_768_0), 
	.B(FE_RN_750_0), 
	.A(FE_RN_769_0));
   NAND2X4M FE_RC_847_0 (.Y(FE_RN_767_0), 
	.B(FE_RN_771_0), 
	.A(FE_RN_768_0));
   OAI21X4M FE_RC_846_0 (.Y(\SUMB[11][2] ), 
	.B0(FE_RN_767_0), 
	.A1(FE_RN_771_0), 
	.A0(FE_RN_775_0));
   INVX2M FE_RC_845_0 (.Y(FE_RN_766_0), 
	.A(\ab[10][2] ));
   CLKNAND2X2M FE_RC_844_0 (.Y(FE_RN_765_0), 
	.B(\CARRYB[9][2] ), 
	.A(FE_RN_766_0));
   INVX2M FE_RC_843_0 (.Y(FE_RN_764_0), 
	.A(\CARRYB[9][2] ));
   NAND2X2M FE_RC_842_0 (.Y(FE_RN_763_0), 
	.B(FE_RN_764_0), 
	.A(\ab[10][2] ));
   INVX2M FE_RC_841_0 (.Y(FE_RN_762_0), 
	.A(\SUMB[9][3] ));
   OAI2BB1X2M FE_RC_840_0 (.Y(FE_RN_761_0), 
	.B0(FE_RN_762_0), 
	.A1N(FE_RN_763_0), 
	.A0N(FE_RN_765_0));
   CLKNAND2X4M FE_RC_839_0 (.Y(FE_RN_760_0), 
	.B(FE_RN_750_0), 
	.A(FE_RN_752_0));
   NAND2X4M FE_RC_838_0 (.Y(FE_RN_759_0), 
	.B(\SUMB[9][3] ), 
	.A(FE_RN_760_0));
   NAND2X4M FE_RC_837_0 (.Y(\SUMB[10][2] ), 
	.B(FE_RN_761_0), 
	.A(FE_RN_759_0));
   NOR2X4M FE_RC_836_0 (.Y(FE_RN_758_0), 
	.B(\CARRYB[9][3] ), 
	.A(\ab[10][3] ));
   INVX2M FE_RC_835_0 (.Y(FE_RN_757_0), 
	.A(\SUMB[9][4] ));
   CLKNAND2X2M FE_RC_834_0 (.Y(FE_RN_756_0), 
	.B(\CARRYB[9][3] ), 
	.A(\ab[10][3] ));
   OAI21X4M FE_RC_833_0 (.Y(\CARRYB[10][3] ), 
	.B0(FE_RN_756_0), 
	.A1(FE_RN_757_0), 
	.A0(FE_RN_758_0));
   NAND2X4M FE_RC_832_0 (.Y(FE_RN_755_0), 
	.B(\ab[11][2] ), 
	.A(FE_RN_753_0));
   XNOR2X4M FE_RC_831_0 (.Y(FE_RN_754_0), 
	.B(\SUMB[9][4] ), 
	.A(\CARRYB[9][3] ));
   XNOR2X8M FE_RC_830_0 (.Y(FE_RN_753_0), 
	.B(\ab[10][3] ), 
	.A(FE_RN_754_0));
   CLKNAND2X4M FE_RC_829_0 (.Y(FE_RN_752_0), 
	.B(\CARRYB[9][2] ), 
	.A(\ab[10][2] ));
   INVX2M FE_RC_828_0 (.Y(FE_RN_751_0), 
	.A(\ab[10][2] ));
   NAND2BX8M FE_RC_827_0 (.Y(FE_RN_750_0), 
	.B(FE_RN_751_0), 
	.AN(\CARRYB[9][2] ));
   CLKNAND2X4M FE_RC_826_0 (.Y(FE_RN_749_0), 
	.B(\SUMB[9][3] ), 
	.A(FE_RN_750_0));
   NAND2X4M FE_RC_825_0 (.Y(FE_RN_748_0), 
	.B(FE_RN_752_0), 
	.A(FE_RN_749_0));
   OAI21X8M FE_RC_824_0 (.Y(FE_RN_747_0), 
	.B0(FE_RN_748_0), 
	.A1(\ab[11][2] ), 
	.A0(FE_RN_753_0));
   NAND2X4M FE_RC_823_0 (.Y(\CARRYB[11][2] ), 
	.B(FE_RN_755_0), 
	.A(FE_RN_747_0));
   MXI2X4M FE_RC_822_0 (.Y(FE_RN_746_0), 
	.S0(\ab[10][4] ), 
	.B(FE_RN_743_0), 
	.A(FE_RN_732_0));
   INVX2M FE_RC_821_0 (.Y(FE_RN_745_0), 
	.A(\SUMB[8][5] ));
   NAND2X3M FE_RC_820_0 (.Y(FE_RN_744_0), 
	.B(FE_RN_745_0), 
	.A(FE_RN_729_0));
   NAND2X4M FE_RC_819_0 (.Y(FE_RN_743_0), 
	.B(FE_RN_726_0), 
	.A(FE_RN_744_0));
   INVX2M FE_RC_818_0 (.Y(FE_RN_742_0), 
	.A(\ab[10][4] ));
   MXI2X4M FE_RC_817_0 (.Y(FE_RN_741_0), 
	.S0(FE_RN_742_0), 
	.B(FE_RN_743_0), 
	.A(FE_RN_732_0));
   MXI2X2M FE_RC_816_0 (.Y(\SUMB[10][4] ), 
	.S0(\SUMB[9][5] ), 
	.B(FE_RN_741_0), 
	.A(FE_RN_746_0));
   INVX2M FE_RC_815_0 (.Y(FE_RN_740_0), 
	.A(\SUMB[8][5] ));
   INVX2M FE_RC_814_0 (.Y(FE_RN_739_0), 
	.A(\CARRYB[8][4] ));
   INVX2M FE_RC_813_0 (.Y(FE_RN_738_0), 
	.A(\ab[9][4] ));
   MXI2X2M FE_RC_812_0 (.Y(FE_RN_737_0), 
	.S0(FE_RN_738_0), 
	.B(FE_RN_739_0), 
	.A(\CARRYB[8][4] ));
   NAND2X3M FE_RC_811_0 (.Y(FE_RN_736_0), 
	.B(FE_RN_740_0), 
	.A(FE_RN_737_0));
   NAND2X4M FE_RC_809_0 (.Y(FE_RN_734_0), 
	.B(\SUMB[8][5] ), 
	.A(FE_RN_735_0));
   CLKNAND2X4M FE_RC_808_0 (.Y(\SUMB[9][4] ), 
	.B(FE_RN_736_0), 
	.A(FE_RN_734_0));
   CLKNAND2X4M FE_RC_807_0 (.Y(FE_RN_733_0), 
	.B(\SUMB[8][5] ), 
	.A(FE_RN_726_0));
   NAND2X4M FE_RC_806_0 (.Y(FE_RN_732_0), 
	.B(FE_RN_729_0), 
	.A(FE_RN_733_0));
   CLKNAND2X4M FE_RC_805_0 (.Y(FE_RN_731_0), 
	.B(\ab[10][4] ), 
	.A(FE_RN_732_0));
   INVX2M FE_RC_804_0 (.Y(FE_RN_730_0), 
	.A(\ab[10][4] ));
   CLKNAND2X4M FE_RC_803_0 (.Y(FE_RN_729_0), 
	.B(\CARRYB[8][4] ), 
	.A(\ab[9][4] ));
   NAND2X3M FE_RC_802_0 (.Y(FE_RN_728_0), 
	.B(FE_RN_730_0), 
	.A(FE_RN_729_0));
   INVX2M FE_RC_801_0 (.Y(FE_RN_727_0), 
	.A(\ab[9][4] ));
   CLKNAND2X4M FE_RC_799_0 (.Y(FE_RN_725_0), 
	.B(\SUMB[8][5] ), 
	.A(FE_RN_726_0));
   NAND2BX4M FE_RC_798_0 (.Y(FE_RN_724_0), 
	.B(FE_RN_725_0), 
	.AN(FE_RN_728_0));
   CLKNAND2X2M FE_RC_797_0 (.Y(FE_RN_723_0), 
	.B(\SUMB[9][5] ), 
	.A(FE_RN_724_0));
   NAND2X4M FE_RC_796_0 (.Y(\CARRYB[10][4] ), 
	.B(FE_RN_731_0), 
	.A(FE_RN_723_0));
   INVX2M FE_RC_191_0 (.Y(FE_RN_164_0), 
	.A(FE_RN_128_0));
   INVX2M FE_RC_190_0 (.Y(FE_RN_163_0), 
	.A(FE_RN_121_0));
   AOI2B1X4M FE_RC_189_0 (.Y(FE_RN_162_0), 
	.B0(FE_RN_163_0), 
	.A1N(FE_RN_164_0), 
	.A0(FE_RN_151_0));
   INVX2M FE_RC_188_0 (.Y(FE_RN_161_0), 
	.A(FE_RN_158_0));
   NAND2BX2M FE_RC_187_0 (.Y(FE_RN_160_0), 
	.B(\ab[4][8] ), 
	.AN(\ab[5][7] ));
   NAND2BX2M FE_RC_186_0 (.Y(FE_RN_159_0), 
	.B(\ab[5][7] ), 
	.AN(\ab[4][8] ));
   NAND2X3M FE_RC_185_0 (.Y(FE_RN_158_0), 
	.B(FE_RN_160_0), 
	.A(FE_RN_159_0));
   INVX2M FE_RC_184_0 (.Y(FE_RN_157_0), 
	.A(FE_RN_158_0));
   NAND2X4M FE_RC_183_0 (.Y(FE_RN_156_0), 
	.B(FE_RN_157_0), 
	.A(FE_RN_111_0));
   OAI21X2M FE_RC_182_0 (.Y(\SUMB[5][7] ), 
	.B0(FE_RN_156_0), 
	.A1(FE_RN_161_0), 
	.A0(FE_RN_162_0));
   INVX2M FE_RC_181_0 (.Y(FE_RN_155_0), 
	.A(FE_RN_124_0));
   NAND2X3M FE_RC_180_0 (.Y(FE_RN_154_0), 
	.B(FE_RN_121_0), 
	.A(FE_RN_128_0));
   OAI2B1X4M FE_RC_179_0 (.Y(FE_RN_153_0), 
	.B0(FE_RN_154_0), 
	.A1N(FE_RN_155_0), 
	.A0(FE_RN_113_0));
   CLKNAND2X2M FE_RC_178_0 (.Y(FE_RN_152_0), 
	.B(FE_RN_115_0), 
	.A(FE_RN_141_0));
   NAND2X4M FE_RC_177_0 (.Y(FE_RN_151_0), 
	.B(FE_RN_117_0), 
	.A(FE_RN_152_0));
   NAND2BX1M FE_RC_176_0 (.Y(FE_RN_150_0), 
	.B(\ab[3][8] ), 
	.AN(\ab[4][7] ));
   NAND2BX2M FE_RC_175_0 (.Y(FE_RN_149_0), 
	.B(\ab[4][7] ), 
	.AN(\ab[3][8] ));
   NAND2X3M FE_RC_174_0 (.Y(FE_RN_148_0), 
	.B(FE_RN_150_0), 
	.A(FE_RN_149_0));
   CLKNAND2X4M FE_RC_173_0 (.Y(FE_RN_147_0), 
	.B(FE_RN_151_0), 
	.A(FE_RN_148_0));
   NAND2X4M FE_RC_172_0 (.Y(\SUMB[4][7] ), 
	.B(FE_RN_153_0), 
	.A(FE_RN_147_0));
   NAND2X4M FE_RC_171_0 (.Y(FE_RN_146_0), 
	.B(n8), 
	.A(FE_RN_125_0));
   CLKNAND2X4M FE_RC_170_0 (.Y(FE_RN_145_0), 
	.B(FE_RN_120_0), 
	.A(FE_RN_146_0));
   OAI2BB1X2M FE_RC_169_0 (.Y(FE_RN_144_0), 
	.B0(FE_RN_145_0), 
	.A1N(FE_RN_115_0), 
	.A0N(FE_RN_117_0));
   INVX2M FE_RC_168_0 (.Y(FE_RN_143_0), 
	.A(n8));
   CLKNAND2X4M FE_RC_167_0 (.Y(FE_RN_142_0), 
	.B(FE_RN_143_0), 
	.A(FE_RN_120_0));
   NAND2X4M FE_RC_166_0 (.Y(FE_RN_141_0), 
	.B(FE_RN_125_0), 
	.A(FE_RN_142_0));
   NAND2BX2M FE_RC_165_0 (.Y(FE_RN_140_0), 
	.B(\ab[2][8] ), 
	.AN(\ab[3][7] ));
   NAND2BX2M FE_RC_164_0 (.Y(FE_RN_139_0), 
	.B(\ab[3][7] ), 
	.AN(\ab[2][8] ));
   NAND2X2M FE_RC_163_0 (.Y(FE_RN_138_0), 
	.B(FE_RN_140_0), 
	.A(FE_RN_139_0));
   CLKNAND2X4M FE_RC_162_0 (.Y(FE_RN_137_0), 
	.B(FE_RN_141_0), 
	.A(FE_RN_138_0));
   NAND2X4M FE_RC_161_0 (.Y(\SUMB[3][7] ), 
	.B(FE_RN_144_0), 
	.A(FE_RN_137_0));
   NAND2BX1M FE_RC_160_0 (.Y(FE_RN_136_0), 
	.B(\ab[1][8] ), 
	.AN(\ab[2][7] ));
   NAND2BX2M FE_RC_159_0 (.Y(FE_RN_135_0), 
	.B(\ab[2][7] ), 
	.AN(\ab[1][8] ));
   NAND2X2M FE_RC_158_0 (.Y(FE_RN_134_0), 
	.B(FE_RN_136_0), 
	.A(FE_RN_135_0));
   NAND2BX2M FE_RC_157_0 (.Y(FE_RN_133_0), 
	.B(FE_RN_134_0), 
	.AN(n8));
   CLKNAND2X4M FE_RC_156_0 (.Y(FE_RN_132_0), 
	.B(FE_RN_125_0), 
	.A(FE_RN_120_0));
   NAND2X3M FE_RC_155_0 (.Y(FE_RN_131_0), 
	.B(n8), 
	.A(FE_RN_132_0));
   INVX2M FE_RC_153_0 (.Y(FE_RN_130_0), 
	.A(\ab[5][7] ));
   NAND2BX2M FE_RC_152_0 (.Y(FE_RN_129_0), 
	.B(FE_RN_130_0), 
	.AN(\ab[4][8] ));
   NAND2X2M FE_RC_151_0 (.Y(FE_RN_128_0), 
	.B(\ab[3][8] ), 
	.A(\ab[4][7] ));
   INVX2M FE_RC_150_0 (.Y(FE_RN_127_0), 
	.A(\ab[1][8] ));
   INVX2M FE_RC_149_0 (.Y(FE_RN_126_0), 
	.A(\ab[2][7] ));
   CLKNAND2X4M FE_RC_148_0 (.Y(FE_RN_125_0), 
	.B(FE_RN_127_0), 
	.A(FE_RN_126_0));
   AND3X6M FE_RC_147_0 (.Y(FE_RN_124_0), 
	.C(n8), 
	.B(FE_RN_117_0), 
	.A(FE_RN_125_0));
   NAND2X4M FE_RC_146_0 (.Y(FE_RN_123_0), 
	.B(FE_RN_121_0), 
	.A(FE_RN_124_0));
   INVX2M FE_RC_145_0 (.Y(FE_RN_122_0), 
	.A(\ab[4][7] ));
   NAND2BX4M FE_RC_144_0 (.Y(FE_RN_121_0), 
	.B(FE_RN_122_0), 
	.AN(\ab[3][8] ));
   NAND2X2M FE_RC_143_0 (.Y(FE_RN_120_0), 
	.B(\ab[1][8] ), 
	.A(\ab[2][7] ));
   INVX2M FE_RC_142_0 (.Y(FE_RN_119_0), 
	.A(\ab[2][8] ));
   INVX2M FE_RC_141_0 (.Y(FE_RN_118_0), 
	.A(\ab[3][7] ));
   CLKNAND2X4M FE_RC_140_0 (.Y(FE_RN_117_0), 
	.B(FE_RN_119_0), 
	.A(FE_RN_118_0));
   INVX2M FE_RC_139_0 (.Y(FE_RN_116_0), 
	.A(FE_RN_117_0));
   NAND2X2M FE_RC_138_0 (.Y(FE_RN_115_0), 
	.B(\ab[2][8] ), 
	.A(\ab[3][7] ));
   INVX2M FE_RC_137_0 (.Y(FE_RN_114_0), 
	.A(FE_RN_115_0));
   OAI21BX4M FE_RC_136_0 (.Y(FE_RN_113_0), 
	.B0N(FE_RN_114_0), 
	.A1(FE_RN_116_0), 
	.A0(FE_RN_120_0));
   NAND2X4M FE_RC_135_0 (.Y(FE_RN_112_0), 
	.B(FE_RN_121_0), 
	.A(FE_RN_113_0));
   NAND3X4M FE_RC_134_0 (.Y(FE_RN_111_0), 
	.C(FE_RN_128_0), 
	.B(FE_RN_123_0), 
	.A(FE_RN_112_0));
   AO22X8M FE_RC_133_0 (.Y(\CARRYB[5][7] ), 
	.B1(\ab[5][7] ), 
	.B0(\ab[4][8] ), 
	.A1(FE_RN_111_0), 
	.A0(FE_RN_129_0));
   INVX2M FE_RC_132_0 (.Y(FE_RN_110_0), 
	.A(\ab[5][2] ));
   INVX2M FE_RC_131_0 (.Y(FE_RN_109_0), 
	.A(\ab[5][2] ));
   INVX2M FE_RC_130_0 (.Y(FE_RN_108_0), 
	.A(FE_RN_84_0));
   NOR2X3M FE_RC_129_0 (.Y(FE_RN_107_0), 
	.B(FE_RN_109_0), 
	.A(FE_RN_108_0));
   INVX2M FE_RC_128_0 (.Y(FE_RN_106_0), 
	.A(\SUMB[3][3] ));
   INVX2M FE_RC_127_0 (.Y(FE_RN_105_0), 
	.A(FE_RN_81_0));
   AOI222X4M FE_RC_126_0 (.Y(FE_RN_104_0), 
	.C1(\ab[5][2] ), 
	.C0(FE_RN_105_0), 
	.B1(FE_RN_106_0), 
	.B0(FE_RN_107_0), 
	.A1(FE_RN_110_0), 
	.A0(FE_RN_87_0));
   INVX2M FE_RC_125_0 (.Y(FE_RN_103_0), 
	.A(\SUMB[3][3] ));
   INVX2M FE_RC_124_0 (.Y(FE_RN_102_0), 
	.A(\ab[5][2] ));
   NAND3X3M FE_RC_123_0 (.Y(FE_RN_101_0), 
	.C(FE_RN_103_0), 
	.B(FE_RN_102_0), 
	.A(FE_RN_84_0));
   INVX2M FE_RC_122_0 (.Y(FE_RN_100_0), 
	.A(\ab[5][2] ));
   INVX2M FE_RC_121_0 (.Y(FE_RN_99_0), 
	.A(FE_RN_81_0));
   NAND2X2M FE_RC_120_0 (.Y(FE_RN_98_0), 
	.B(FE_RN_100_0), 
	.A(FE_RN_99_0));
   NAND2X4M FE_RC_119_0 (.Y(FE_RN_97_0), 
	.B(\ab[5][2] ), 
	.A(FE_RN_87_0));
   NAND3X4M FE_RC_118_0 (.Y(FE_RN_96_0), 
	.C(FE_RN_101_0), 
	.B(FE_RN_98_0), 
	.A(FE_RN_97_0));
   NAND2X3M FE_RC_117_0 (.Y(FE_RN_95_0), 
	.B(\SUMB[4][3] ), 
	.A(FE_RN_96_0));
   OAI21X4M FE_RC_116_0 (.Y(\SUMB[5][2] ), 
	.B0(FE_RN_95_0), 
	.A1(\SUMB[4][3] ), 
	.A0(FE_RN_104_0));
   INVX2M FE_RC_115_0 (.Y(FE_RN_94_0), 
	.A(\CARRYB[3][2] ));
   INVX2M FE_RC_114_0 (.Y(FE_RN_93_0), 
	.A(\ab[4][2] ));
   MXI2X2M FE_RC_113_0 (.Y(FE_RN_92_0), 
	.S0(FE_RN_93_0), 
	.B(FE_RN_94_0), 
	.A(\CARRYB[3][2] ));
   NAND2BX2M FE_RC_112_0 (.Y(FE_RN_91_0), 
	.B(FE_RN_92_0), 
	.AN(\SUMB[3][3] ));
   NAND2X3M FE_RC_110_0 (.Y(FE_RN_89_0), 
	.B(\SUMB[3][3] ), 
	.A(FE_RN_90_0));
   NAND2X3M FE_RC_109_0 (.Y(\SUMB[4][2] ), 
	.B(FE_RN_91_0), 
	.A(FE_RN_89_0));
   CLKNAND2X4M FE_RC_108_0 (.Y(FE_RN_88_0), 
	.B(\SUMB[3][3] ), 
	.A(FE_RN_81_0));
   NAND2X5M FE_RC_107_0 (.Y(FE_RN_87_0), 
	.B(FE_RN_84_0), 
	.A(FE_RN_88_0));
   NAND2X4M FE_RC_106_0 (.Y(FE_RN_86_0), 
	.B(\ab[5][2] ), 
	.A(FE_RN_87_0));
   INVX2M FE_RC_105_0 (.Y(FE_RN_85_0), 
	.A(\ab[5][2] ));
   INVX2M FE_RC_103_0 (.Y(FE_RN_83_0), 
	.A(\CARRYB[3][2] ));
   INVX2M FE_RC_102_0 (.Y(FE_RN_82_0), 
	.A(\ab[4][2] ));
   NAND2X6M FE_RC_101_0 (.Y(FE_RN_81_0), 
	.B(FE_RN_83_0), 
	.A(FE_RN_82_0));
   CLKNAND2X4M FE_RC_100_0 (.Y(FE_RN_80_0), 
	.B(\SUMB[3][3] ), 
	.A(FE_RN_81_0));
   NAND3X4M FE_RC_99_0 (.Y(FE_RN_79_0), 
	.C(FE_RN_85_0), 
	.B(FE_RN_84_0), 
	.A(FE_RN_80_0));
   NAND2X3M FE_RC_98_0 (.Y(FE_RN_78_0), 
	.B(\SUMB[4][3] ), 
	.A(FE_RN_79_0));
   NAND2X4M FE_RC_97_0 (.Y(\CARRYB[5][2] ), 
	.B(FE_RN_86_0), 
	.A(FE_RN_78_0));
   INVX2M FE_RC_23_0 (.Y(FE_RN_12_0), 
	.A(FE_RN_5_0));
   INVX2M FE_RC_22_0 (.Y(FE_RN_11_0), 
	.A(\ab[2][2] ));
   CLKNAND2X2M FE_RC_21_0 (.Y(FE_RN_10_0), 
	.B(FE_RN_11_0), 
	.A(FE_RN_2_0));
   CLKNAND2X2M FE_RC_20_0 (.Y(FE_RN_9_0), 
	.B(FE_RN_12_0), 
	.A(FE_RN_10_0));
   INVX2M FE_RC_19_0 (.Y(FE_RN_8_0), 
	.A(FE_RN_1_0));
   OAI21X2M FE_RC_18_0 (.Y(FE_RN_7_0), 
	.B0(\SUMB[1][3] ), 
	.A1(FE_RN_8_0), 
	.A0(FE_RN_5_0));
   OAI21X2M FE_RC_17_0 (.Y(\SUMB[2][2] ), 
	.B0(FE_RN_7_0), 
	.A1(\SUMB[1][3] ), 
	.A0(FE_RN_9_0));
   INVX2M FE_RC_16_0 (.Y(FE_RN_6_0), 
	.A(\ab[2][2] ));
   NOR2X4M FE_RC_15_0 (.Y(FE_RN_5_0), 
	.B(FE_RN_6_0), 
	.A(FE_RN_2_0));
   INVX2M FE_RC_14_0 (.Y(FE_RN_4_0), 
	.A(FE_RN_5_0));
   INVX2M FE_RC_13_0 (.Y(FE_RN_3_0), 
	.A(\ab[2][2] ));
   NAND2X2M FE_RC_12_0 (.Y(FE_RN_2_0), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   CLKNAND2X4M FE_RC_11_0 (.Y(FE_RN_1_0), 
	.B(FE_RN_3_0), 
	.A(FE_RN_2_0));
   NAND2X4M FE_RC_10_0 (.Y(FE_RN_0_0), 
	.B(\SUMB[1][3] ), 
	.A(FE_RN_1_0));
   CLKNAND2X4M FE_RC_9_0 (.Y(\CARRYB[2][2] ), 
	.B(FE_RN_4_0), 
	.A(FE_RN_0_0));
   NAND2BX8M FE_RC_0_0 (.Y(n14), 
	.B(\CARRYB[19][2] ), 
	.AN(\SUMB[19][3] ));
   ADDFX2M S5_7 (.S(\SUMB[19][7] ), 
	.CO(\CARRYB[19][7] ), 
	.CI(\ab[18][8] ), 
	.B(\CARRYB[18][7] ), 
	.A(\ab[19][7] ));
   ADDFX2M S3_18_7 (.S(\SUMB[18][7] ), 
	.CO(\CARRYB[18][7] ), 
	.CI(\ab[17][8] ), 
	.B(\CARRYB[17][7] ), 
	.A(\ab[18][7] ));
   ADDFX2M S3_17_7 (.S(\SUMB[17][7] ), 
	.CO(\CARRYB[17][7] ), 
	.CI(\ab[16][8] ), 
	.B(\CARRYB[16][7] ), 
	.A(\ab[17][7] ));
   ADDFHX1M S3_16_7 (.S(\SUMB[16][7] ), 
	.CO(\CARRYB[16][7] ), 
	.CI(\ab[15][8] ), 
	.B(\CARRYB[15][7] ), 
	.A(\ab[16][7] ));
   ADDFHX2M S4_6 (.S(\SUMB[19][6] ), 
	.CO(\CARRYB[19][6] ), 
	.CI(\SUMB[18][7] ), 
	.B(\CARRYB[18][6] ), 
	.A(\ab[19][6] ));
   ADDFHXLM S3_14_7 (.S(\SUMB[14][7] ), 
	.CO(\CARRYB[14][7] ), 
	.CI(\ab[13][8] ), 
	.B(\CARRYB[13][7] ), 
	.A(\ab[14][7] ));
   ADDFHX2M S2_18_6 (.S(\SUMB[18][6] ), 
	.CO(\CARRYB[18][6] ), 
	.CI(\SUMB[17][7] ), 
	.B(\CARRYB[17][6] ), 
	.A(\ab[18][6] ));
   ADDFHX2M S2_18_5 (.S(\SUMB[18][5] ), 
	.CO(\CARRYB[18][5] ), 
	.CI(\SUMB[17][6] ), 
	.B(\CARRYB[17][5] ), 
	.A(\ab[18][5] ));
   ADDFHX1M S2_17_6 (.S(\SUMB[17][6] ), 
	.CO(\CARRYB[17][6] ), 
	.CI(\SUMB[16][7] ), 
	.B(\CARRYB[16][6] ), 
	.A(\ab[17][6] ));
   ADDFX2M S3_15_7 (.S(\SUMB[15][7] ), 
	.CO(\CARRYB[15][7] ), 
	.CI(\ab[14][8] ), 
	.B(\CARRYB[14][7] ), 
	.A(\ab[15][7] ));
   ADDFHXLM S3_13_7 (.S(\SUMB[13][7] ), 
	.CO(\CARRYB[13][7] ), 
	.CI(\ab[12][8] ), 
	.B(\CARRYB[12][7] ), 
	.A(\ab[13][7] ));
   ADDFHX2M S4_5 (.S(\SUMB[19][5] ), 
	.CO(\CARRYB[19][5] ), 
	.CI(\SUMB[18][6] ), 
	.B(\CARRYB[18][5] ), 
	.A(\ab[19][5] ));
   ADDFHX2M S4_4 (.S(\SUMB[19][4] ), 
	.CO(\CARRYB[19][4] ), 
	.CI(\SUMB[18][5] ), 
	.B(\CARRYB[18][4] ), 
	.A(\ab[19][4] ));
   ADDFHX2M S2_16_5 (.S(\SUMB[16][5] ), 
	.CO(\CARRYB[16][5] ), 
	.CI(\SUMB[15][6] ), 
	.B(\CARRYB[15][5] ), 
	.A(\ab[16][5] ));
   ADDFHX2M S2_17_3 (.S(\SUMB[17][3] ), 
	.CO(\CARRYB[17][3] ), 
	.CI(\SUMB[16][4] ), 
	.B(\CARRYB[16][3] ), 
	.A(\ab[17][3] ));
   ADDFHX2M S2_18_1 (.S(\SUMB[18][1] ), 
	.CO(\CARRYB[18][1] ), 
	.CI(\SUMB[17][2] ), 
	.B(\CARRYB[17][1] ), 
	.A(\ab[18][1] ));
   ADDFHX2M S2_15_5 (.S(\SUMB[15][5] ), 
	.CO(\CARRYB[15][5] ), 
	.CI(\SUMB[14][6] ), 
	.B(\CARRYB[14][5] ), 
	.A(\ab[15][5] ));
   ADDFHX2M S2_16_2 (.S(\SUMB[16][2] ), 
	.CO(\CARRYB[16][2] ), 
	.CI(\SUMB[15][3] ), 
	.B(\CARRYB[15][2] ), 
	.A(\ab[16][2] ));
   ADDFHXLM S2_16_1 (.S(\SUMB[16][1] ), 
	.CO(\CARRYB[16][1] ), 
	.CI(\SUMB[15][2] ), 
	.B(\CARRYB[15][1] ), 
	.A(\ab[16][1] ));
   ADDFHXLM S2_14_6 (.S(\SUMB[14][6] ), 
	.CO(\CARRYB[14][6] ), 
	.CI(\SUMB[13][7] ), 
	.B(\CARRYB[13][6] ), 
	.A(\ab[14][6] ));
   ADDFHX1M S2_15_3 (.S(\SUMB[15][3] ), 
	.CO(\CARRYB[15][3] ), 
	.CI(\SUMB[14][4] ), 
	.B(\CARRYB[14][3] ), 
	.A(\ab[15][3] ));
   ADDFHX2M S2_15_2 (.S(\SUMB[15][2] ), 
	.CO(\CARRYB[15][2] ), 
	.CI(\SUMB[14][3] ), 
	.B(\CARRYB[14][2] ), 
	.A(\ab[15][2] ));
   ADDFHX1M S1_14_0 (.S(\A1[12] ), 
	.CO(\CARRYB[14][0] ), 
	.CI(\SUMB[13][1] ), 
	.B(\CARRYB[13][0] ), 
	.A(\ab[14][0] ));
   ADDFX1M S2_14_2 (.S(\SUMB[14][2] ), 
	.CO(\CARRYB[14][2] ), 
	.CI(\SUMB[13][3] ), 
	.B(\CARRYB[13][2] ), 
	.A(\ab[14][2] ));
   ADDFHX2M S2_14_1 (.S(\SUMB[14][1] ), 
	.CO(\CARRYB[14][1] ), 
	.CI(\SUMB[13][2] ), 
	.B(\CARRYB[13][1] ), 
	.A(\ab[14][1] ));
   ADDFX1M S2_13_6 (.S(\SUMB[13][6] ), 
	.CO(\CARRYB[13][6] ), 
	.CI(\SUMB[12][7] ), 
	.B(\CARRYB[12][6] ), 
	.A(\ab[13][6] ));
   ADDFHXLM S2_13_5 (.S(\SUMB[13][5] ), 
	.CO(\CARRYB[13][5] ), 
	.CI(\SUMB[12][6] ), 
	.B(\CARRYB[12][5] ), 
	.A(\ab[13][5] ));
   ADDFX2M S2_13_4 (.S(\SUMB[13][4] ), 
	.CO(\CARRYB[13][4] ), 
	.CI(\SUMB[12][5] ), 
	.B(\CARRYB[12][4] ), 
	.A(\ab[13][4] ));
   ADDFX2M S2_13_3 (.S(\SUMB[13][3] ), 
	.CO(\CARRYB[13][3] ), 
	.CI(\SUMB[12][4] ), 
	.B(\CARRYB[12][3] ), 
	.A(\ab[13][3] ));
   ADDFHXLM S2_13_2 (.S(\SUMB[13][2] ), 
	.CO(\CARRYB[13][2] ), 
	.CI(\SUMB[12][3] ), 
	.B(\CARRYB[12][2] ), 
	.A(\ab[13][2] ));
   ADDFHX2M S1_12_0 (.S(\A1[10] ), 
	.CO(\CARRYB[12][0] ), 
	.CI(\SUMB[11][1] ), 
	.B(\CARRYB[11][0] ), 
	.A(\ab[12][0] ));
   ADDFHX2M S1_13_0 (.S(\A1[11] ), 
	.CO(\CARRYB[13][0] ), 
	.CI(\SUMB[12][1] ), 
	.B(\CARRYB[12][0] ), 
	.A(\ab[13][0] ));
   ADDFX1M S2_12_6 (.S(\SUMB[12][6] ), 
	.CO(\CARRYB[12][6] ), 
	.CI(\SUMB[11][7] ), 
	.B(\CARRYB[11][6] ), 
	.A(\ab[12][6] ));
   ADDFHX1M S2_12_2 (.S(\SUMB[12][2] ), 
	.CO(\CARRYB[12][2] ), 
	.CI(\SUMB[11][3] ), 
	.B(\CARRYB[11][2] ), 
	.A(\ab[12][2] ));
   ADDFHX2M S2_12_1 (.S(\SUMB[12][1] ), 
	.CO(\CARRYB[12][1] ), 
	.CI(\SUMB[11][2] ), 
	.B(\CARRYB[11][1] ), 
	.A(\ab[12][1] ));
   ADDFHX1M S2_11_6 (.S(\SUMB[11][6] ), 
	.CO(\CARRYB[11][6] ), 
	.CI(\SUMB[10][7] ), 
	.B(\CARRYB[10][6] ), 
	.A(\ab[11][6] ));
   ADDFHXLM S2_11_5 (.S(\SUMB[11][5] ), 
	.CO(\CARRYB[11][5] ), 
	.CI(\SUMB[10][6] ), 
	.B(\CARRYB[10][5] ), 
	.A(\ab[11][5] ));
   ADDFHX2M S2_11_3 (.S(\SUMB[11][3] ), 
	.CO(\CARRYB[11][3] ), 
	.CI(\SUMB[10][4] ), 
	.B(\CARRYB[10][3] ), 
	.A(\ab[11][3] ));
   ADDFHX1M S1_10_0 (.S(\A1[8] ), 
	.CO(\CARRYB[10][0] ), 
	.CI(\SUMB[9][1] ), 
	.B(\CARRYB[9][0] ), 
	.A(\ab[10][0] ));
   ADDFHX2M S1_11_0 (.S(\A1[9] ), 
	.CO(\CARRYB[11][0] ), 
	.CI(\SUMB[10][1] ), 
	.B(\CARRYB[10][0] ), 
	.A(\ab[11][0] ));
   ADDFHX1M S2_10_6 (.S(\SUMB[10][6] ), 
	.CO(\CARRYB[10][6] ), 
	.CI(\SUMB[9][7] ), 
	.B(\CARRYB[9][6] ), 
	.A(\ab[10][6] ));
   ADDFHX2M S2_9_6 (.S(\SUMB[9][6] ), 
	.CO(\CARRYB[9][6] ), 
	.CI(\SUMB[8][7] ), 
	.B(\CARRYB[8][6] ), 
	.A(\ab[9][6] ));
   ADDFX2M S2_9_3 (.S(\SUMB[9][3] ), 
	.CO(\CARRYB[9][3] ), 
	.CI(\SUMB[8][4] ), 
	.B(\CARRYB[8][3] ), 
	.A(\ab[9][3] ));
   ADDFHX1M S2_9_2 (.S(\SUMB[9][2] ), 
	.CO(\CARRYB[9][2] ), 
	.CI(\SUMB[8][3] ), 
	.B(\CARRYB[8][2] ), 
	.A(\ab[9][2] ));
   ADDFHX1M S1_8_0 (.S(\PROD1[8] ), 
	.CO(\CARRYB[8][0] ), 
	.CI(\SUMB[7][1] ), 
	.B(\CARRYB[7][0] ), 
	.A(\ab[8][0] ));
   ADDFHX2M S1_9_0 (.S(\A1[7] ), 
	.CO(\CARRYB[9][0] ), 
	.CI(\SUMB[8][1] ), 
	.B(\CARRYB[8][0] ), 
	.A(\ab[9][0] ));
   ADDFHX1M S2_8_6 (.S(\SUMB[8][6] ), 
	.CO(\CARRYB[8][6] ), 
	.CI(\SUMB[7][7] ), 
	.B(\CARRYB[7][6] ), 
	.A(\ab[8][6] ));
   ADDFHXLM S2_8_2 (.S(\SUMB[8][2] ), 
	.CO(\CARRYB[8][2] ), 
	.CI(\SUMB[7][3] ), 
	.B(\CARRYB[7][2] ), 
	.A(\ab[8][2] ));
   ADDFHX2M S2_8_1 (.S(\SUMB[8][1] ), 
	.CO(\CARRYB[8][1] ), 
	.CI(\SUMB[7][2] ), 
	.B(\CARRYB[7][1] ), 
	.A(\ab[8][1] ));
   ADDFHX2M S2_7_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\SUMB[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFHX1M S2_7_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFHX2M S2_7_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX1M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFHXLM S1_7_0 (.S(\A1[5] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX1M S2_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\SUMB[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFHX1M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFXLM S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFHX1M S2_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\SUMB[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFHX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFHX1M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFHXLM S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFHXLM S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFHX1M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(\CARRYB[1][0] ), 
	.A(\ab[2][0] ));
   ADDFHX1M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFHX2M S2_18_4 (.S(\SUMB[18][4] ), 
	.CO(\CARRYB[18][4] ), 
	.CI(\SUMB[17][5] ), 
	.B(\CARRYB[17][4] ), 
	.A(\ab[18][4] ));
   ADDFHXLM S2_16_6 (.S(\SUMB[16][6] ), 
	.CO(\CARRYB[16][6] ), 
	.CI(\SUMB[15][7] ), 
	.B(\CARRYB[15][6] ), 
	.A(\ab[16][6] ));
   ADDFHX1M S2_15_6 (.S(\SUMB[15][6] ), 
	.CO(\CARRYB[15][6] ), 
	.CI(\SUMB[14][7] ), 
	.B(\CARRYB[14][6] ), 
	.A(\ab[15][6] ));
   ADDFHX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFHX2M S3_12_7 (.S(\SUMB[12][7] ), 
	.CO(\CARRYB[12][7] ), 
	.CI(\ab[11][8] ), 
	.B(\CARRYB[11][7] ), 
	.A(\ab[12][7] ));
   ADDFHX1M S3_11_7 (.S(\SUMB[11][7] ), 
	.CO(\CARRYB[11][7] ), 
	.CI(\ab[10][8] ), 
	.B(\CARRYB[10][7] ), 
	.A(\ab[11][7] ));
   ADDFHX1M S3_10_7 (.S(\SUMB[10][7] ), 
	.CO(\CARRYB[10][7] ), 
	.CI(\ab[9][8] ), 
	.B(\CARRYB[9][7] ), 
	.A(\ab[10][7] ));
   ADDFHX2M S3_9_7 (.S(\SUMB[9][7] ), 
	.CO(\CARRYB[9][7] ), 
	.CI(\ab[8][8] ), 
	.B(\CARRYB[8][7] ), 
	.A(\ab[9][7] ));
   ADDFHXLM S3_8_7 (.S(\SUMB[8][7] ), 
	.CO(\CARRYB[8][7] ), 
	.CI(\ab[7][8] ), 
	.B(\CARRYB[7][7] ), 
	.A(\ab[8][7] ));
   ADDFHX2M S3_7_7 (.S(\SUMB[7][7] ), 
	.CO(\CARRYB[7][7] ), 
	.CI(\ab[6][8] ), 
	.B(\CARRYB[6][7] ), 
	.A(\ab[7][7] ));
   ADDFHX2M S3_6_7 (.S(\SUMB[6][7] ), 
	.CO(\CARRYB[6][7] ), 
	.CI(\ab[5][8] ), 
	.B(\CARRYB[5][7] ), 
	.A(\ab[6][7] ));
   ADDFHX1M S1_18_0 (.S(\A1[16] ), 
	.CO(\CARRYB[18][0] ), 
	.CI(\SUMB[17][1] ), 
	.B(\CARRYB[17][0] ), 
	.A(\ab[18][0] ));
   ADDFHX2M S4_0 (.S(\SUMB[19][0] ), 
	.CO(\CARRYB[19][0] ), 
	.CI(\SUMB[18][1] ), 
	.B(\CARRYB[18][0] ), 
	.A(\ab[19][0] ));
   ADDFHX1M S2_14_4 (.S(\SUMB[14][4] ), 
	.CO(\CARRYB[14][4] ), 
	.CI(\SUMB[13][5] ), 
	.B(\CARRYB[13][4] ), 
	.A(\ab[14][4] ));
   ADDFHX1M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFHX1M S2_14_3 (.S(\SUMB[14][3] ), 
	.CO(\CARRYB[14][3] ), 
	.CI(\SUMB[13][4] ), 
	.B(\CARRYB[13][3] ), 
	.A(\ab[14][3] ));
   ADDFHX1M S2_17_2 (.S(\SUMB[17][2] ), 
	.CO(\CARRYB[17][2] ), 
	.CI(\SUMB[16][3] ), 
	.B(\CARRYB[16][2] ), 
	.A(\ab[17][2] ));
   ADDFHX1M S2_18_3 (.S(\SUMB[18][3] ), 
	.CO(\CARRYB[18][3] ), 
	.CI(\SUMB[17][4] ), 
	.B(\CARRYB[17][3] ), 
	.A(\ab[18][3] ));
   ADDFHX1M S2_18_2 (.S(\SUMB[18][2] ), 
	.CO(\CARRYB[18][2] ), 
	.CI(\SUMB[17][3] ), 
	.B(\CARRYB[17][2] ), 
	.A(\ab[18][2] ));
   ADDFHX1M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n10), 
	.A(\ab[2][4] ));
   ADDFHX2M S2_17_5 (.S(\SUMB[17][5] ), 
	.CO(\CARRYB[17][5] ), 
	.CI(\SUMB[16][6] ), 
	.B(\CARRYB[16][5] ), 
	.A(\ab[17][5] ));
   ADDFHX2M S2_8_3 (.S(\SUMB[8][3] ), 
	.CO(\CARRYB[8][3] ), 
	.CI(\SUMB[7][4] ), 
	.B(\CARRYB[7][3] ), 
	.A(\ab[8][3] ));
   ADDFX2M S2_17_4 (.S(\SUMB[17][4] ), 
	.CO(\CARRYB[17][4] ), 
	.CI(\SUMB[16][5] ), 
	.B(\CARRYB[16][4] ), 
	.A(\ab[17][4] ));
   ADDFHX1M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFHX1M S2_12_5 (.S(\SUMB[12][5] ), 
	.CO(\CARRYB[12][5] ), 
	.CI(\SUMB[11][6] ), 
	.B(\CARRYB[11][5] ), 
	.A(\ab[12][5] ));
   ADDFHX2M S4_2 (.S(\SUMB[19][2] ), 
	.CO(\CARRYB[19][2] ), 
	.CI(\SUMB[18][3] ), 
	.B(\CARRYB[18][2] ), 
	.A(\ab[19][2] ));
   ADDFHX2M S4_1 (.S(\SUMB[19][1] ), 
	.CO(\CARRYB[19][1] ), 
	.CI(\SUMB[18][2] ), 
	.B(\CARRYB[18][1] ), 
	.A(\ab[19][1] ));
   ADDFHX2M S4_3 (.S(\SUMB[19][3] ), 
	.CO(\CARRYB[19][3] ), 
	.CI(\SUMB[18][4] ), 
	.B(\CARRYB[18][3] ), 
	.A(\ab[19][3] ));
   ADDFHX2M S2_15_1 (.S(\SUMB[15][1] ), 
	.CO(\CARRYB[15][1] ), 
	.CI(\SUMB[14][2] ), 
	.B(\CARRYB[14][1] ), 
	.A(\ab[15][1] ));
   ADDFHX2M S2_16_3 (.S(\SUMB[16][3] ), 
	.CO(\CARRYB[16][3] ), 
	.CI(\SUMB[15][4] ), 
	.B(\CARRYB[15][3] ), 
	.A(\ab[16][3] ));
   ADDFHXLM S2_12_3 (.S(\SUMB[12][3] ), 
	.CO(\CARRYB[12][3] ), 
	.CI(\SUMB[11][4] ), 
	.B(\CARRYB[11][3] ), 
	.A(\ab[12][3] ));
   ADDFHX1M S2_12_4 (.S(\SUMB[12][4] ), 
	.CO(\CARRYB[12][4] ), 
	.CI(\SUMB[11][5] ), 
	.B(\CARRYB[11][4] ), 
	.A(\ab[12][4] ));
   ADDFHX1M S2_7_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFHX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFHX1M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFHXLM S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFHX1M S2_17_1 (.S(\SUMB[17][1] ), 
	.CO(\CARRYB[17][1] ), 
	.CI(\SUMB[16][2] ), 
	.B(\CARRYB[16][1] ), 
	.A(\ab[17][1] ));
   ADDFHX2M S2_13_1 (.S(\SUMB[13][1] ), 
	.CO(\CARRYB[13][1] ), 
	.CI(\SUMB[12][2] ), 
	.B(\CARRYB[12][1] ), 
	.A(\ab[13][1] ));
   ADDFX1M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFHX8M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n5), 
	.A(\ab[2][1] ));
   INVX4M U2 (.Y(n33), 
	.A(A[0]));
   INVX8M U3 (.Y(n26), 
	.A(B[7]));
   INVX12M U4 (.Y(n28), 
	.A(B[5]));
   INVX8M U5 (.Y(n29), 
	.A(B[4]));
   NOR2X2M U7 (.Y(\ab[1][7] ), 
	.B(n34), 
	.A(n26));
   XOR2X2M U8 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   CLKAND2X2M U9 (.Y(n10), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   NOR2X2M U10 (.Y(\ab[1][4] ), 
	.B(n34), 
	.A(n29));
   XOR2X4M U11 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   NOR2X2M U13 (.Y(\ab[1][5] ), 
	.B(n34), 
	.A(n28));
   XOR2X1M U14 (.Y(\SUMB[1][7] ), 
	.B(\ab[0][8] ), 
	.A(\ab[1][7] ));
   AND2X2M U15 (.Y(n8), 
	.B(\ab[1][7] ), 
	.A(\ab[0][8] ));
   NOR2X2M U16 (.Y(\ab[0][8] ), 
	.B(n33), 
	.A(n25));
   XOR2X2M U17 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   NOR2X4M U18 (.Y(\ab[1][1] ), 
	.B(n31), 
	.A(n34));
   NOR2X2M U19 (.Y(\ab[2][1] ), 
	.B(n35), 
	.A(n31));
   NOR2XLM U20 (.Y(\ab[3][1] ), 
	.B(n36), 
	.A(n31));
   NOR2XLM U21 (.Y(\ab[4][1] ), 
	.B(n37), 
	.A(n31));
   NOR2XLM U22 (.Y(\ab[5][1] ), 
	.B(n38), 
	.A(n31));
   NOR2XLM U23 (.Y(\ab[6][1] ), 
	.B(n39), 
	.A(n31));
   INVX14M U24 (.Y(n31), 
	.A(B[1]));
   INVX8M U25 (.Y(n34), 
	.A(A[1]));
   INVX14M U26 (.Y(n24), 
	.A(B[3]));
   INVX2M U27 (.Y(\ab[0][2] ), 
	.A(n16));
   INVX12M U28 (.Y(n30), 
	.A(B[2]));
   INVX8M U29 (.Y(n27), 
	.A(B[6]));
   AND2X2M U30 (.Y(n17), 
	.B(\SUMB[19][1] ), 
	.A(\CARRYB[19][0] ));
   AND2X1M U31 (.Y(n5), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U33 (.Y(n7), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U34 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   CLKAND2X2M U35 (.Y(n11), 
	.B(\ab[19][8] ), 
	.A(\CARRYB[19][7] ));
   CLKNAND2X4M U36 (.Y(n15), 
	.B(\SUMB[19][3] ), 
	.A(n12));
   NAND2X4M U37 (.Y(\A1[20] ), 
	.B(n15), 
	.A(n14));
   XOR2X2M U39 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   NOR2X2M U40 (.Y(\ab[1][2] ), 
	.B(n34), 
	.A(n30));
   INVX12M U41 (.Y(n32), 
	.A(B[0]));
   NOR2X2M U42 (.Y(\ab[0][4] ), 
	.B(n33), 
	.A(n29));
   INVX2M U43 (.Y(n12), 
	.A(\CARRYB[19][2] ));
   NOR2X2M U45 (.Y(\ab[1][3] ), 
	.B(n34), 
	.A(n24));
   NOR2X2M U46 (.Y(\ab[0][5] ), 
	.B(n33), 
	.A(n28));
   NOR2X2M U48 (.Y(\ab[1][6] ), 
	.B(n34), 
	.A(n27));
   AND3X2M U50 (.Y(\CARRYB[1][0] ), 
	.C(A[0]), 
	.B(B[0]), 
	.A(\ab[1][1] ));
   INVX4M U51 (.Y(n35), 
	.A(A[2]));
   NAND2BX2M U52 (.Y(n16), 
	.B(A[0]), 
	.AN(n30));
   CLKAND2X2M U53 (.Y(n20), 
	.B(\SUMB[19][4] ), 
	.A(\CARRYB[19][3] ));
   XOR2X2M U54 (.Y(\A1[21] ), 
	.B(\SUMB[19][4] ), 
	.A(\CARRYB[19][3] ));
   INVX8M U55 (.Y(n37), 
	.A(A[4]));
   INVX8M U56 (.Y(n36), 
	.A(A[3]));
   INVX4M U57 (.Y(n38), 
	.A(A[5]));
   AND2X1M U58 (.Y(n19), 
	.B(\SUMB[19][3] ), 
	.A(\CARRYB[19][2] ));
   AND2X1M U59 (.Y(n21), 
	.B(\SUMB[19][5] ), 
	.A(\CARRYB[19][4] ));
   AND2X1M U60 (.Y(n22), 
	.B(\SUMB[19][6] ), 
	.A(\CARRYB[19][5] ));
   XOR2XLM U61 (.Y(\A1[18] ), 
	.B(\SUMB[19][1] ), 
	.A(\CARRYB[19][0] ));
   NOR2X1M U62 (.Y(\ab[0][7] ), 
	.B(n33), 
	.A(n26));
   NOR2X2M U63 (.Y(\ab[0][3] ), 
	.B(n33), 
	.A(n24));
   XOR2X1M U64 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   XOR2X2M U65 (.Y(\A1[19] ), 
	.B(\SUMB[19][2] ), 
	.A(\CARRYB[19][1] ));
   AND2X2M U66 (.Y(n18), 
	.B(\SUMB[19][2] ), 
	.A(\CARRYB[19][1] ));
   XOR2X2M U67 (.Y(\A1[22] ), 
	.B(\SUMB[19][5] ), 
	.A(\CARRYB[19][4] ));
   XOR2X2M U68 (.Y(\A1[23] ), 
	.B(\SUMB[19][6] ), 
	.A(\CARRYB[19][5] ));
   XOR2X2M U69 (.Y(\A1[24] ), 
	.B(\SUMB[19][7] ), 
	.A(\CARRYB[19][6] ));
   XOR2X2M U70 (.Y(\A1[25] ), 
	.B(\ab[19][8] ), 
	.A(\CARRYB[19][7] ));
   AND2X2M U71 (.Y(n23), 
	.B(\SUMB[19][7] ), 
	.A(\CARRYB[19][6] ));
   INVX8M U72 (.Y(n25), 
	.A(B[8]));
   INVX12M U73 (.Y(n39), 
	.A(A[6]));
   CLKINVX2M U74 (.Y(n42), 
	.A(A[9]));
   INVX4M U75 (.Y(n40), 
	.A(A[7]));
   INVX2M U76 (.Y(n41), 
	.A(A[8]));
   CLKINVX2M U77 (.Y(n43), 
	.A(A[10]));
   CLKINVX2M U78 (.Y(n44), 
	.A(A[11]));
   CLKINVX2M U79 (.Y(n45), 
	.A(A[12]));
   CLKINVX2M U80 (.Y(n46), 
	.A(A[13]));
   CLKINVX2M U81 (.Y(n47), 
	.A(A[14]));
   CLKINVX2M U82 (.Y(n48), 
	.A(A[15]));
   CLKINVX2M U83 (.Y(n49), 
	.A(A[16]));
   CLKINVX2M U84 (.Y(n50), 
	.A(A[17]));
   CLKINVX2M U85 (.Y(n51), 
	.A(A[18]));
   CLKINVX2M U86 (.Y(n52), 
	.A(A[19]));
   NOR2X1M U88 (.Y(\ab[9][8] ), 
	.B(n25), 
	.A(n42));
   NOR2X1M U89 (.Y(\ab[9][7] ), 
	.B(n26), 
	.A(n42));
   NOR2X1M U90 (.Y(\ab[9][6] ), 
	.B(n27), 
	.A(n42));
   NOR2X1M U91 (.Y(\ab[9][5] ), 
	.B(n28), 
	.A(n42));
   NOR2X1M U92 (.Y(\ab[9][4] ), 
	.B(n29), 
	.A(n42));
   NOR2X1M U93 (.Y(\ab[9][3] ), 
	.B(n24), 
	.A(n42));
   NOR2X1M U94 (.Y(\ab[9][2] ), 
	.B(n30), 
	.A(n42));
   NOR2X1M U95 (.Y(\ab[9][1] ), 
	.B(n31), 
	.A(n42));
   NOR2X1M U96 (.Y(\ab[9][0] ), 
	.B(n32), 
	.A(n42));
   NOR2X1M U97 (.Y(\ab[8][8] ), 
	.B(n41), 
	.A(n25));
   NOR2X1M U98 (.Y(\ab[8][7] ), 
	.B(n41), 
	.A(n26));
   NOR2X1M U99 (.Y(\ab[8][6] ), 
	.B(n41), 
	.A(n27));
   NOR2X1M U100 (.Y(\ab[8][5] ), 
	.B(n41), 
	.A(n28));
   NOR2X1M U101 (.Y(\ab[8][4] ), 
	.B(n41), 
	.A(n29));
   NOR2X1M U102 (.Y(\ab[8][3] ), 
	.B(n41), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[8][2] ), 
	.B(n41), 
	.A(n30));
   NOR2X1M U104 (.Y(\ab[8][1] ), 
	.B(n41), 
	.A(n31));
   NOR2X1M U105 (.Y(\ab[8][0] ), 
	.B(n41), 
	.A(n32));
   NOR2X1M U106 (.Y(\ab[7][8] ), 
	.B(n40), 
	.A(n25));
   NOR2X1M U107 (.Y(\ab[7][7] ), 
	.B(n40), 
	.A(n26));
   NOR2X1M U108 (.Y(\ab[7][6] ), 
	.B(n40), 
	.A(n27));
   NOR2X1M U109 (.Y(\ab[7][5] ), 
	.B(n40), 
	.A(n28));
   NOR2X1M U110 (.Y(\ab[7][4] ), 
	.B(n40), 
	.A(n29));
   NOR2X1M U111 (.Y(\ab[7][3] ), 
	.B(n40), 
	.A(n24));
   NOR2X1M U112 (.Y(\ab[7][2] ), 
	.B(n40), 
	.A(n30));
   NOR2X1M U113 (.Y(\ab[7][1] ), 
	.B(n40), 
	.A(n31));
   NOR2X1M U114 (.Y(\ab[7][0] ), 
	.B(n40), 
	.A(n32));
   NOR2X1M U115 (.Y(\ab[6][8] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U116 (.Y(\ab[6][7] ), 
	.B(n39), 
	.A(n26));
   NOR2X1M U117 (.Y(\ab[6][6] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U118 (.Y(\ab[6][5] ), 
	.B(n39), 
	.A(n28));
   NOR2X1M U119 (.Y(\ab[6][4] ), 
	.B(n39), 
	.A(n29));
   NOR2X1M U120 (.Y(\ab[6][3] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U121 (.Y(\ab[6][2] ), 
	.B(n39), 
	.A(n30));
   NOR2X1M U122 (.Y(\ab[6][0] ), 
	.B(n39), 
	.A(n32));
   NOR2X1M U123 (.Y(\ab[5][8] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U124 (.Y(\ab[5][7] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U125 (.Y(\ab[5][6] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U126 (.Y(\ab[5][5] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U127 (.Y(\ab[5][4] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U128 (.Y(\ab[5][3] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U129 (.Y(\ab[5][2] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U130 (.Y(\ab[5][0] ), 
	.B(n38), 
	.A(n32));
   NOR2X1M U131 (.Y(\ab[4][8] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U132 (.Y(\ab[4][7] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U133 (.Y(\ab[4][6] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U134 (.Y(\ab[4][5] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U135 (.Y(\ab[4][4] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U136 (.Y(\ab[4][3] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U137 (.Y(\ab[4][2] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U138 (.Y(\ab[4][0] ), 
	.B(n37), 
	.A(n32));
   NOR2X1M U139 (.Y(\ab[3][8] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U140 (.Y(\ab[3][7] ), 
	.B(n36), 
	.A(n26));
   NOR2X1M U141 (.Y(\ab[3][6] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U142 (.Y(\ab[3][5] ), 
	.B(n36), 
	.A(n28));
   NOR2X1M U143 (.Y(\ab[3][4] ), 
	.B(n36), 
	.A(n29));
   NOR2X1M U144 (.Y(\ab[3][3] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U145 (.Y(\ab[3][2] ), 
	.B(n36), 
	.A(n30));
   NOR2X1M U146 (.Y(\ab[3][0] ), 
	.B(n36), 
	.A(n32));
   NOR2X1M U147 (.Y(\ab[2][8] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U148 (.Y(\ab[2][7] ), 
	.B(n35), 
	.A(n26));
   NOR2X1M U149 (.Y(\ab[2][6] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U150 (.Y(\ab[2][5] ), 
	.B(n35), 
	.A(n28));
   NOR2X1M U151 (.Y(\ab[2][4] ), 
	.B(n35), 
	.A(n29));
   NOR2X1M U152 (.Y(\ab[2][3] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U153 (.Y(\ab[2][2] ), 
	.B(n35), 
	.A(n30));
   NOR2X1M U154 (.Y(\ab[2][0] ), 
	.B(n35), 
	.A(n32));
   NOR2X1M U155 (.Y(\ab[1][8] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U156 (.Y(\ab[19][8] ), 
	.B(n52), 
	.A(n25));
   NOR2X1M U157 (.Y(\ab[19][7] ), 
	.B(n52), 
	.A(n26));
   NOR2X1M U158 (.Y(\ab[19][6] ), 
	.B(n52), 
	.A(n27));
   NOR2X1M U159 (.Y(\ab[19][5] ), 
	.B(n52), 
	.A(n28));
   NOR2X1M U160 (.Y(\ab[19][4] ), 
	.B(n52), 
	.A(n29));
   NOR2X1M U161 (.Y(\ab[19][3] ), 
	.B(n52), 
	.A(n24));
   NOR2X1M U162 (.Y(\ab[19][2] ), 
	.B(n52), 
	.A(n30));
   NOR2X1M U163 (.Y(\ab[19][1] ), 
	.B(n52), 
	.A(n31));
   NOR2X1M U164 (.Y(\ab[19][0] ), 
	.B(n52), 
	.A(n32));
   NOR2X1M U165 (.Y(\ab[18][8] ), 
	.B(n51), 
	.A(n25));
   NOR2X1M U166 (.Y(\ab[18][7] ), 
	.B(n51), 
	.A(n26));
   NOR2X1M U167 (.Y(\ab[18][6] ), 
	.B(n51), 
	.A(n27));
   NOR2X1M U168 (.Y(\ab[18][5] ), 
	.B(n51), 
	.A(n28));
   NOR2X1M U169 (.Y(\ab[18][4] ), 
	.B(n51), 
	.A(n29));
   NOR2X1M U170 (.Y(\ab[18][3] ), 
	.B(n51), 
	.A(n24));
   NOR2X1M U171 (.Y(\ab[18][2] ), 
	.B(n51), 
	.A(n30));
   NOR2X1M U172 (.Y(\ab[18][1] ), 
	.B(n51), 
	.A(n31));
   NOR2X1M U173 (.Y(\ab[18][0] ), 
	.B(n51), 
	.A(n32));
   NOR2X1M U174 (.Y(\ab[17][8] ), 
	.B(n50), 
	.A(n25));
   NOR2X1M U175 (.Y(\ab[17][7] ), 
	.B(n50), 
	.A(n26));
   NOR2X1M U176 (.Y(\ab[17][6] ), 
	.B(n50), 
	.A(n27));
   NOR2X1M U177 (.Y(\ab[17][5] ), 
	.B(n50), 
	.A(n28));
   NOR2X1M U178 (.Y(\ab[17][4] ), 
	.B(n50), 
	.A(n29));
   NOR2X1M U179 (.Y(\ab[17][3] ), 
	.B(n50), 
	.A(n24));
   NOR2X1M U180 (.Y(\ab[17][2] ), 
	.B(n50), 
	.A(n30));
   NOR2X1M U181 (.Y(\ab[17][1] ), 
	.B(n50), 
	.A(n31));
   NOR2X1M U182 (.Y(\ab[17][0] ), 
	.B(n50), 
	.A(n32));
   NOR2X1M U183 (.Y(\ab[16][8] ), 
	.B(n49), 
	.A(n25));
   NOR2X1M U184 (.Y(\ab[16][7] ), 
	.B(n49), 
	.A(n26));
   NOR2X1M U185 (.Y(\ab[16][6] ), 
	.B(n49), 
	.A(n27));
   NOR2X1M U186 (.Y(\ab[16][5] ), 
	.B(n49), 
	.A(n28));
   NOR2X1M U187 (.Y(\ab[16][4] ), 
	.B(n49), 
	.A(n29));
   NOR2X1M U188 (.Y(\ab[16][3] ), 
	.B(n49), 
	.A(n24));
   NOR2X1M U189 (.Y(\ab[16][2] ), 
	.B(n49), 
	.A(n30));
   NOR2X1M U190 (.Y(\ab[16][1] ), 
	.B(n49), 
	.A(n31));
   NOR2X1M U191 (.Y(\ab[16][0] ), 
	.B(n49), 
	.A(n32));
   NOR2X1M U192 (.Y(\ab[15][8] ), 
	.B(n48), 
	.A(n25));
   NOR2X1M U193 (.Y(\ab[15][7] ), 
	.B(n48), 
	.A(n26));
   NOR2X1M U194 (.Y(\ab[15][6] ), 
	.B(n48), 
	.A(n27));
   NOR2X1M U195 (.Y(\ab[15][5] ), 
	.B(n48), 
	.A(n28));
   NOR2X1M U196 (.Y(\ab[15][4] ), 
	.B(n48), 
	.A(n29));
   NOR2X1M U197 (.Y(\ab[15][3] ), 
	.B(n48), 
	.A(n24));
   NOR2X1M U198 (.Y(\ab[15][2] ), 
	.B(n48), 
	.A(n30));
   NOR2X1M U199 (.Y(\ab[15][1] ), 
	.B(n48), 
	.A(n31));
   NOR2X1M U200 (.Y(\ab[15][0] ), 
	.B(n48), 
	.A(n32));
   NOR2X1M U201 (.Y(\ab[14][8] ), 
	.B(n47), 
	.A(n25));
   NOR2X1M U202 (.Y(\ab[14][7] ), 
	.B(n47), 
	.A(n26));
   NOR2X1M U203 (.Y(\ab[14][6] ), 
	.B(n47), 
	.A(n27));
   NOR2X1M U204 (.Y(\ab[14][5] ), 
	.B(n47), 
	.A(n28));
   NOR2X1M U205 (.Y(\ab[14][4] ), 
	.B(n47), 
	.A(n29));
   NOR2X1M U206 (.Y(\ab[14][3] ), 
	.B(n47), 
	.A(n24));
   NOR2X1M U207 (.Y(\ab[14][2] ), 
	.B(n47), 
	.A(n30));
   NOR2X1M U208 (.Y(\ab[14][1] ), 
	.B(n47), 
	.A(n31));
   NOR2X1M U209 (.Y(\ab[14][0] ), 
	.B(n47), 
	.A(n32));
   NOR2X1M U210 (.Y(\ab[13][8] ), 
	.B(n46), 
	.A(n25));
   NOR2X1M U211 (.Y(\ab[13][7] ), 
	.B(n46), 
	.A(n26));
   NOR2X1M U212 (.Y(\ab[13][6] ), 
	.B(n46), 
	.A(n27));
   NOR2X1M U213 (.Y(\ab[13][5] ), 
	.B(n46), 
	.A(n28));
   NOR2X1M U214 (.Y(\ab[13][4] ), 
	.B(n46), 
	.A(n29));
   NOR2X1M U215 (.Y(\ab[13][3] ), 
	.B(n46), 
	.A(n24));
   NOR2X1M U216 (.Y(\ab[13][2] ), 
	.B(n46), 
	.A(n30));
   NOR2X1M U217 (.Y(\ab[13][1] ), 
	.B(n46), 
	.A(n31));
   NOR2X1M U218 (.Y(\ab[13][0] ), 
	.B(n46), 
	.A(n32));
   NOR2X1M U219 (.Y(\ab[12][8] ), 
	.B(n45), 
	.A(n25));
   NOR2X1M U220 (.Y(\ab[12][7] ), 
	.B(n45), 
	.A(n26));
   NOR2X1M U221 (.Y(\ab[12][6] ), 
	.B(n45), 
	.A(n27));
   NOR2X1M U222 (.Y(\ab[12][5] ), 
	.B(n45), 
	.A(n28));
   NOR2X1M U223 (.Y(\ab[12][4] ), 
	.B(n45), 
	.A(n29));
   NOR2X1M U224 (.Y(\ab[12][3] ), 
	.B(n45), 
	.A(n24));
   NOR2X1M U225 (.Y(\ab[12][2] ), 
	.B(n45), 
	.A(n30));
   NOR2X1M U226 (.Y(\ab[12][1] ), 
	.B(n45), 
	.A(n31));
   NOR2X1M U227 (.Y(\ab[12][0] ), 
	.B(n45), 
	.A(n32));
   NOR2X1M U228 (.Y(\ab[11][8] ), 
	.B(n44), 
	.A(n25));
   NOR2X1M U229 (.Y(\ab[11][7] ), 
	.B(n44), 
	.A(n26));
   NOR2X1M U230 (.Y(\ab[11][6] ), 
	.B(n44), 
	.A(n27));
   NOR2X1M U231 (.Y(\ab[11][5] ), 
	.B(n44), 
	.A(n28));
   NOR2X1M U232 (.Y(\ab[11][4] ), 
	.B(n44), 
	.A(n29));
   NOR2X1M U233 (.Y(\ab[11][3] ), 
	.B(n44), 
	.A(n24));
   NOR2X1M U234 (.Y(\ab[11][2] ), 
	.B(n44), 
	.A(n30));
   NOR2X1M U235 (.Y(\ab[11][1] ), 
	.B(n44), 
	.A(n31));
   NOR2X1M U236 (.Y(\ab[11][0] ), 
	.B(n44), 
	.A(n32));
   NOR2X1M U237 (.Y(\ab[10][8] ), 
	.B(n43), 
	.A(n25));
   NOR2X1M U238 (.Y(\ab[10][7] ), 
	.B(n43), 
	.A(n26));
   NOR2X1M U239 (.Y(\ab[10][6] ), 
	.B(n43), 
	.A(n27));
   NOR2X1M U240 (.Y(\ab[10][5] ), 
	.B(n43), 
	.A(n28));
   NOR2X1M U241 (.Y(\ab[10][4] ), 
	.B(n43), 
	.A(n29));
   NOR2X1M U242 (.Y(\ab[10][3] ), 
	.B(n43), 
	.A(n24));
   NOR2X1M U243 (.Y(\ab[10][2] ), 
	.B(n43), 
	.A(n30));
   NOR2X1M U244 (.Y(\ab[10][1] ), 
	.B(n43), 
	.A(n31));
   NOR2X1M U245 (.Y(\ab[10][0] ), 
	.B(n43), 
	.A(n32));
   CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW01_add_0 FS_1 (.A({ 1'b0,
		\A1[25] ,
		\A1[24] ,
		\A1[23] ,
		\A1[22] ,
		\A1[21] ,
		\A1[20] ,
		\A1[19] ,
		\A1[18] ,
		\SUMB[19][0] ,
		\A1[16] ,
		\A1[15] ,
		\A1[14] ,
		\A1[13] ,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\PROD1[8] ,
		\A1[5] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n11,
		n23,
		n22,
		n21,
		n20,
		n19,
		n18,
		n17,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[28],
		PRODUCT[27],
		PRODUCT[26],
		PRODUCT[25],
		PRODUCT[24],
		PRODUCT[23],
		PRODUCT[22],
		PRODUCT[21],
		PRODUCT[20],
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		SYNOPSYS_UNCONNECTED__5,
		SYNOPSYS_UNCONNECTED__6,
		SYNOPSYS_UNCONNECTED__7,
		SYNOPSYS_UNCONNECTED__8,
		SYNOPSYS_UNCONNECTED__9,
		SYNOPSYS_UNCONNECTED__10,
		SYNOPSYS_UNCONNECTED__11,
		SYNOPSYS_UNCONNECTED__12,
		SYNOPSYS_UNCONNECTED__13,
		SYNOPSYS_UNCONNECTED__14,
		SYNOPSYS_UNCONNECTED__15,
		SYNOPSYS_UNCONNECTED__16,
		SYNOPSYS_UNCONNECTED__17 }));
endmodule

module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 (
	CLK, 
	RST, 
	Q_ERR, 
	Kcal, 
	DCW, 
	test_si2, 
	test_si1, 
	test_se);
   input CLK;
   input RST;
   input [19:0] Q_ERR;
   input [8:0] Kcal;
   output [8:0] DCW;
   input test_si2;
   input test_si1;
   input test_se;

   // Internal wires
   wire FE_OFN15_DCW_7_;
   wire FE_OFN14_DCW_6_;
   wire FE_OFN13_DCW_5_;
   wire FE_OFN12_DCW_4_;
   wire FE_OFN11_DCW_3_;
   wire FE_OFN10_DCW_2_;
   wire FE_OFN9_DCW_1_;
   wire FE_OFN8_DCW_0_;
   wire n3;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n1;
   wire [28:20] DCW_MUL;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;
   wire SYNOPSYS_UNCONNECTED__6;
   wire SYNOPSYS_UNCONNECTED__7;
   wire SYNOPSYS_UNCONNECTED__8;
   wire SYNOPSYS_UNCONNECTED__9;
   wire SYNOPSYS_UNCONNECTED__10;
   wire SYNOPSYS_UNCONNECTED__11;
   wire SYNOPSYS_UNCONNECTED__12;
   wire SYNOPSYS_UNCONNECTED__13;
   wire SYNOPSYS_UNCONNECTED__14;
   wire SYNOPSYS_UNCONNECTED__15;
   wire SYNOPSYS_UNCONNECTED__16;
   wire SYNOPSYS_UNCONNECTED__17;
   wire SYNOPSYS_UNCONNECTED__18;
   wire SYNOPSYS_UNCONNECTED__19;

   CLKBUFX12M FE_OFC15_DCW_7_ (.Y(DCW[7]), 
	.A(FE_OFN15_DCW_7_));
   CLKBUFX12M FE_OFC14_DCW_6_ (.Y(DCW[6]), 
	.A(FE_OFN14_DCW_6_));
   CLKBUFX12M FE_OFC13_DCW_5_ (.Y(DCW[5]), 
	.A(FE_OFN13_DCW_5_));
   CLKBUFX12M FE_OFC12_DCW_4_ (.Y(DCW[4]), 
	.A(FE_OFN12_DCW_4_));
   CLKBUFX12M FE_OFC11_DCW_3_ (.Y(DCW[3]), 
	.A(FE_OFN11_DCW_3_));
   CLKBUFX12M FE_OFC10_DCW_2_ (.Y(DCW[2]), 
	.A(FE_OFN10_DCW_2_));
   CLKBUFX12M FE_OFC9_DCW_1_ (.Y(DCW[1]), 
	.A(FE_OFN9_DCW_1_));
   CLKBUFX12M FE_OFC8_DCW_0_ (.Y(DCW[0]), 
	.A(FE_OFN8_DCW_0_));
   SDFFRHQX8M \DCW_reg[7]  (.SI(DCW[6]), 
	.SE(n18), 
	.RN(RST), 
	.Q(FE_OFN15_DCW_7_), 
	.D(DCW_MUL[27]), 
	.CK(CLK));
   SDFFRHQX8M \DCW_reg[6]  (.SI(DCW[5]), 
	.SE(n17), 
	.RN(RST), 
	.Q(FE_OFN14_DCW_6_), 
	.D(DCW_MUL[26]), 
	.CK(CLK));
   SDFFRX4M \DCW_reg[5]  (.SI(DCW[4]), 
	.SE(n19), 
	.RN(RST), 
	.Q(FE_OFN13_DCW_5_), 
	.D(DCW_MUL[25]), 
	.CK(CLK));
   SDFFRHQX8M \DCW_reg[4]  (.SI(DCW[3]), 
	.SE(n18), 
	.RN(RST), 
	.Q(FE_OFN12_DCW_4_), 
	.D(DCW_MUL[24]), 
	.CK(CLK));
   SDFFRX4M \DCW_reg[3]  (.SI(DCW[2]), 
	.SE(n17), 
	.RN(RST), 
	.Q(FE_OFN11_DCW_3_), 
	.D(DCW_MUL[23]), 
	.CK(CLK));
   SDFFRHQX4M \DCW_reg[2]  (.SI(DCW[1]), 
	.SE(n19), 
	.RN(RST), 
	.Q(FE_OFN10_DCW_2_), 
	.D(DCW_MUL[22]), 
	.CK(CLK));
   SDFFRHQX8M \DCW_reg[1]  (.SI(DCW[0]), 
	.SE(n18), 
	.RN(RST), 
	.Q(FE_OFN9_DCW_1_), 
	.D(DCW_MUL[21]), 
	.CK(CLK));
   SDFFRQX4M \DCW_reg[0]  (.SI(test_si1), 
	.SE(n17), 
	.RN(RST), 
	.Q(FE_OFN8_DCW_0_), 
	.D(DCW_MUL[20]), 
	.CK(CLK));
   DLY1X1M U15 (.Y(n16), 
	.A(test_se));
   DLY1X1M U16 (.Y(n17), 
	.A(n16));
   DLY1X1M U17 (.Y(n18), 
	.A(n16));
   DLY1X1M U18 (.Y(n19), 
	.A(n16));
   CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW02_mult_0 mult_15 (.A({ Q_ERR[19],
		Q_ERR[18],
		Q_ERR[17],
		Q_ERR[16],
		Q_ERR[15],
		Q_ERR[14],
		Q_ERR[13],
		Q_ERR[12],
		Q_ERR[11],
		Q_ERR[10],
		Q_ERR[9],
		Q_ERR[8],
		Q_ERR[7],
		Q_ERR[6],
		Q_ERR[5],
		Q_ERR[4],
		Q_ERR[3],
		Q_ERR[2],
		Q_ERR[1],
		Q_ERR[0] }), 
	.B({ Kcal[8],
		Kcal[7],
		Kcal[6],
		Kcal[5],
		Kcal[4],
		Kcal[3],
		Kcal[2],
		Kcal[1],
		Kcal[0] }), 
	.TC(1'b0), 
	.PRODUCT({ DCW_MUL[28],
		DCW_MUL[27],
		DCW_MUL[26],
		DCW_MUL[25],
		DCW_MUL[24],
		DCW_MUL[23],
		DCW_MUL[22],
		DCW_MUL[21],
		DCW_MUL[20],
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		SYNOPSYS_UNCONNECTED__5,
		SYNOPSYS_UNCONNECTED__6,
		SYNOPSYS_UNCONNECTED__7,
		SYNOPSYS_UNCONNECTED__8,
		SYNOPSYS_UNCONNECTED__9,
		SYNOPSYS_UNCONNECTED__10,
		SYNOPSYS_UNCONNECTED__11,
		SYNOPSYS_UNCONNECTED__12,
		SYNOPSYS_UNCONNECTED__13,
		SYNOPSYS_UNCONNECTED__14,
		SYNOPSYS_UNCONNECTED__15,
		SYNOPSYS_UNCONNECTED__16,
		SYNOPSYS_UNCONNECTED__17,
		SYNOPSYS_UNCONNECTED__18,
		SYNOPSYS_UNCONNECTED__19 }));
   SDFFRHQX4M \DCW_reg[8]  (.SI(test_si2), 
	.SE(n19), 
	.RN(RST), 
	.Q(n3), 
	.D(DCW_MUL[28]), 
	.CK(CLK));
   INVXLM U3 (.Y(n1), 
	.A(n3));
   CLKINVX12M U4 (.Y(DCW[8]), 
	.A(n1));
endmodule

module CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 (
	CLK, 
	RST, 
	DSM_out, 
	FCW, 
	FRAC_IN, 
	INTEGER_IN, 
	MMD_CNTRL, 
	test_si, 
	test_se, 
	FE_OFN0_RST_M);
   input CLK;
   input RST;
   input DSM_out;
   input [26:0] FCW;
   output [19:0] FRAC_IN;
   output [6:0] INTEGER_IN;
   output [7:0] MMD_CNTRL;
   input test_si;
   input test_se;
   input FE_OFN0_RST_M;

   // Internal wires
   wire FE_OFN7_MMD_CNTRL_7_;
   wire FE_OFN6_MMD_CNTRL_6_;
   wire FE_OFN5_MMD_CNTRL_5_;
   wire FE_OFN4_MMD_CNTRL_4_;
   wire FE_OFN3_MMD_CNTRL_3_;
   wire FE_OFN2_MMD_CNTRL_2_;
   wire FE_OFN1_MMD_CNTRL_1_;
   wire N1;
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire \add_38/carry[6] ;
   wire \add_38/carry[5] ;
   wire \add_38/carry[4] ;
   wire \add_38/carry[3] ;
   wire \add_38/carry[2] ;
   wire \add_38/carry[1] ;
   wire n36;
   wire n44;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;

   CLKBUFX12M FE_OFC7_MMD_CNTRL_7_ (.Y(MMD_CNTRL[7]), 
	.A(FE_OFN7_MMD_CNTRL_7_));
   CLKBUFX12M FE_OFC6_MMD_CNTRL_6_ (.Y(MMD_CNTRL[6]), 
	.A(FE_OFN6_MMD_CNTRL_6_));
   CLKBUFX12M FE_OFC5_MMD_CNTRL_5_ (.Y(MMD_CNTRL[5]), 
	.A(FE_OFN5_MMD_CNTRL_5_));
   CLKBUFX12M FE_OFC4_MMD_CNTRL_4_ (.Y(MMD_CNTRL[4]), 
	.A(FE_OFN4_MMD_CNTRL_4_));
   CLKBUFX12M FE_OFC3_MMD_CNTRL_3_ (.Y(MMD_CNTRL[3]), 
	.A(FE_OFN3_MMD_CNTRL_3_));
   CLKBUFX12M FE_OFC2_MMD_CNTRL_2_ (.Y(MMD_CNTRL[2]), 
	.A(FE_OFN2_MMD_CNTRL_2_));
   CLKBUFX12M FE_OFC1_MMD_CNTRL_1_ (.Y(MMD_CNTRL[1]), 
	.A(FE_OFN1_MMD_CNTRL_1_));
   SDFFRQX4M \MMD_CNTRL_reg[7]  (.SI(MMD_CNTRL[6]), 
	.SE(n59), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN7_MMD_CNTRL_7_), 
	.D(N8), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[6]  (.SI(MMD_CNTRL[5]), 
	.SE(n58), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN6_MMD_CNTRL_6_), 
	.D(N7), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[5]  (.SI(MMD_CNTRL[4]), 
	.SE(n55), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN5_MMD_CNTRL_5_), 
	.D(N6), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[4]  (.SI(MMD_CNTRL[3]), 
	.SE(n58), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN4_MMD_CNTRL_4_), 
	.D(N5), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[3]  (.SI(MMD_CNTRL[2]), 
	.SE(n58), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN3_MMD_CNTRL_3_), 
	.D(N4), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[2]  (.SI(MMD_CNTRL[1]), 
	.SE(n57), 
	.RN(FE_OFN0_RST_M), 
	.Q(FE_OFN2_MMD_CNTRL_2_), 
	.D(N3), 
	.CK(CLK));
   SDFFRQX4M \MMD_CNTRL_reg[1]  (.SI(MMD_CNTRL[0]), 
	.SE(n54), 
	.RN(RST), 
	.Q(FE_OFN1_MMD_CNTRL_1_), 
	.D(N2), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[19]  (.SI(FRAC_IN[18]), 
	.SE(n61), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[19]), 
	.D(FCW[19]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[18]  (.SI(FRAC_IN[17]), 
	.SE(n61), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[18]), 
	.D(FCW[18]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[17]  (.SI(FRAC_IN[16]), 
	.SE(n62), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[17]), 
	.D(FCW[17]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[5]  (.SI(INTEGER_IN[4]), 
	.SE(n62), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[5]), 
	.D(FCW[25]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[16]  (.SI(FRAC_IN[15]), 
	.SE(n59), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[16]), 
	.D(FCW[16]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[15]  (.SI(FRAC_IN[14]), 
	.SE(n49), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[15]), 
	.D(FCW[15]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[14]  (.SI(FRAC_IN[13]), 
	.SE(n48), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[14]), 
	.D(FCW[14]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[4]  (.SI(INTEGER_IN[3]), 
	.SE(n48), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[4]), 
	.D(FCW[24]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[13]  (.SI(FRAC_IN[12]), 
	.SE(n55), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[13]), 
	.D(FCW[13]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[12]  (.SI(FRAC_IN[11]), 
	.SE(n54), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[12]), 
	.D(FCW[12]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[11]  (.SI(FRAC_IN[10]), 
	.SE(n57), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[11]), 
	.D(FCW[11]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[10]  (.SI(FRAC_IN[9]), 
	.SE(n52), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[10]), 
	.D(FCW[10]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[3]  (.SI(INTEGER_IN[2]), 
	.SE(n55), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[3]), 
	.D(FCW[23]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[2]  (.SI(INTEGER_IN[1]), 
	.SE(n56), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[2]), 
	.D(FCW[22]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[9]  (.SI(FRAC_IN[8]), 
	.SE(n56), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[9]), 
	.D(FCW[9]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[8]  (.SI(FRAC_IN[7]), 
	.SE(n60), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[8]), 
	.D(FCW[8]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[7]  (.SI(FRAC_IN[6]), 
	.SE(n56), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[7]), 
	.D(FCW[7]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[6]  (.SI(FRAC_IN[5]), 
	.SE(n47), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[6]), 
	.D(FCW[6]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[1]  (.SI(INTEGER_IN[0]), 
	.SE(n47), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[1]), 
	.D(FCW[21]), 
	.CK(CLK));
   SDFFRQX2M \INTEGER_IN_reg[0]  (.SI(FRAC_IN[19]), 
	.SE(n52), 
	.RN(FE_OFN0_RST_M), 
	.Q(INTEGER_IN[0]), 
	.D(FCW[20]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[5]  (.SI(FRAC_IN[4]), 
	.SE(n59), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[5]), 
	.D(FCW[5]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[4]  (.SI(FRAC_IN[3]), 
	.SE(n57), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[4]), 
	.D(FCW[4]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[3]  (.SI(FRAC_IN[2]), 
	.SE(n48), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[3]), 
	.D(FCW[3]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[2]  (.SI(FRAC_IN[1]), 
	.SE(n54), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[2]), 
	.D(FCW[2]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[1]  (.SI(FRAC_IN[0]), 
	.SE(n49), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[1]), 
	.D(FCW[1]), 
	.CK(CLK));
   SDFFRQX2M \FRAC_IN_reg[0]  (.SI(test_si), 
	.SE(n60), 
	.RN(FE_OFN0_RST_M), 
	.Q(FRAC_IN[0]), 
	.D(FCW[0]), 
	.CK(CLK));
   SDFFRX1M \INTEGER_IN_reg[6]  (.SI(INTEGER_IN[5]), 
	.SE(n60), 
	.RN(FE_OFN0_RST_M), 
	.QN(n44), 
	.Q(INTEGER_IN[6]), 
	.D(FCW[26]), 
	.CK(CLK));
   CLKINVX12M U40 (.Y(MMD_CNTRL[0]), 
	.A(n36));
   AND2X1M U45 (.Y(N8), 
	.B(INTEGER_IN[6]), 
	.A(\add_38/carry[6] ));
   CLKXOR2X2M U46 (.Y(N7), 
	.B(\add_38/carry[6] ), 
	.A(INTEGER_IN[6]));
   AND2X1M U47 (.Y(\add_38/carry[6] ), 
	.B(INTEGER_IN[5]), 
	.A(\add_38/carry[5] ));
   CLKXOR2X2M U48 (.Y(N6), 
	.B(\add_38/carry[5] ), 
	.A(INTEGER_IN[5]));
   AND2X1M U49 (.Y(\add_38/carry[5] ), 
	.B(INTEGER_IN[4]), 
	.A(\add_38/carry[4] ));
   CLKXOR2X2M U50 (.Y(N5), 
	.B(\add_38/carry[4] ), 
	.A(INTEGER_IN[4]));
   AND2X1M U51 (.Y(\add_38/carry[4] ), 
	.B(INTEGER_IN[3]), 
	.A(\add_38/carry[3] ));
   CLKXOR2X2M U52 (.Y(N4), 
	.B(\add_38/carry[3] ), 
	.A(INTEGER_IN[3]));
   AND2X1M U53 (.Y(\add_38/carry[3] ), 
	.B(INTEGER_IN[2]), 
	.A(\add_38/carry[2] ));
   CLKXOR2X2M U54 (.Y(N3), 
	.B(\add_38/carry[2] ), 
	.A(INTEGER_IN[2]));
   AND2X1M U55 (.Y(\add_38/carry[2] ), 
	.B(INTEGER_IN[1]), 
	.A(\add_38/carry[1] ));
   CLKXOR2X2M U56 (.Y(N2), 
	.B(\add_38/carry[1] ), 
	.A(INTEGER_IN[1]));
   AND2X1M U57 (.Y(\add_38/carry[1] ), 
	.B(INTEGER_IN[0]), 
	.A(DSM_out));
   CLKXOR2X2M U58 (.Y(N1), 
	.B(DSM_out), 
	.A(INTEGER_IN[0]));
   DLY1X1M U59 (.Y(n47), 
	.A(n50));
   DLY1X1M U60 (.Y(n48), 
	.A(n53));
   DLY1X1M U61 (.Y(n49), 
	.A(n51));
   DLY1X1M U62 (.Y(n50), 
	.A(test_se));
   DLY1X1M U63 (.Y(n51), 
	.A(test_se));
   DLY1X1M U64 (.Y(n52), 
	.A(test_se));
   DLY1X1M U65 (.Y(n53), 
	.A(test_se));
   DLY1X1M U66 (.Y(n54), 
	.A(n51));
   DLY1X1M U67 (.Y(n55), 
	.A(n50));
   DLY1X1M U68 (.Y(n56), 
	.A(n53));
   DLY1X1M U69 (.Y(n57), 
	.A(n53));
   DLY1X1M U70 (.Y(n58), 
	.A(n52));
   DLY1X1M U71 (.Y(n59), 
	.A(n51));
   DLY1X1M U72 (.Y(n60), 
	.A(n50));
   DLY1X1M U73 (.Y(n61), 
	.A(n62));
   DLY1X1M U74 (.Y(n62), 
	.A(n49));
   SDFFRX1M \MMD_CNTRL_reg[0]  (.SI(n44), 
	.SE(n61), 
	.RN(FE_OFN0_RST_M), 
	.QN(n36), 
	.D(N1), 
	.CK(CLK));
endmodule

module LMS_in_width4_K_width9_err_width20_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [21:0] A;
   input [21:0] B;
   input CI;
   output [21:0] SUM;
   output CO;

   // Internal wires
   wire FE_OFN18_CORR_IN_23_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;

   BUFX10M FE_OFC18_CORR_IN_23_ (.Y(SUM[21]), 
	.A(FE_OFN18_CORR_IN_23_));
   NAND3X4M U2 (.Y(n25), 
	.C(A[17]), 
	.B(n28), 
	.A(A[16]));
   NOR3BX4M U3 (.Y(n11), 
	.C(n13), 
	.B(n9), 
	.AN(A[7]));
   CLKINVX4M U4 (.Y(n9), 
	.A(A[6]));
   XOR2X2M U5 (.Y(SUM[7]), 
	.B(n12), 
	.A(A[7]));
   NOR2X2M U6 (.Y(n12), 
	.B(n9), 
	.A(n13));
   NOR2X2M U8 (.Y(n31), 
	.B(n7), 
	.A(n30));
   NOR2X2M U9 (.Y(n35), 
	.B(n8), 
	.A(n34));
   AND2X6M U10 (.Y(n22), 
	.B(A[19]), 
	.A(B[19]));
   NOR2X8M U11 (.Y(n20), 
	.B(A[19]), 
	.A(B[19]));
   NOR2X6M U12 (.Y(n24), 
	.B(A[18]), 
	.A(B[18]));
   NAND2X3M U13 (.Y(n26), 
	.B(A[18]), 
	.A(B[18]));
   NAND3X4M U14 (.Y(n13), 
	.C(A[5]), 
	.B(n15), 
	.A(A[4]));
   XNOR2X4M U15 (.Y(SUM[17]), 
	.B(n29), 
	.A(A[17]));
   XNOR2X2M U16 (.Y(SUM[13]), 
	.B(n33), 
	.A(A[13]));
   NAND2X1M U17 (.Y(n33), 
	.B(n32), 
	.A(A[12]));
   XOR2X4M U18 (.Y(SUM[18]), 
	.B(n27), 
	.A(n25));
   INVX3M U19 (.Y(n23), 
	.A(n3));
   OR2X6M U20 (.Y(n3), 
	.B(n20), 
	.A(n22));
   AND2X2M U21 (.Y(n15), 
	.B(n16), 
	.A(A[3]));
   XOR2X2M U22 (.Y(SUM[16]), 
	.B(n28), 
	.A(A[16]));
   CLKINVX2M U23 (.Y(n8), 
	.A(A[10]));
   XOR2X4M U24 (.Y(SUM[12]), 
	.B(n32), 
	.A(A[12]));
   XOR2X4M U25 (.Y(SUM[15]), 
	.B(n31), 
	.A(A[15]));
   CLKNAND2X2M U26 (.Y(n5), 
	.B(n23), 
	.A(n21));
   NOR3BX4M U27 (.Y(n28), 
	.C(n30), 
	.B(n7), 
	.AN(A[15]));
   NAND2X4M U29 (.Y(SUM[19]), 
	.B(n6), 
	.A(n5));
   XOR3X4M U30 (.Y(SUM[20]), 
	.C(n18), 
	.B(A[20]), 
	.A(B[20]));
   OA21X8M U31 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKNAND2X2M U32 (.Y(n6), 
	.B(n3), 
	.A(n4));
   INVX1M U33 (.Y(n4), 
	.A(n21));
   OAI21X2M U34 (.Y(n19), 
	.B0(B[20]), 
	.A1(n18), 
	.A0(A[20]));
   NAND2BX8M U35 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   NAND3X2M U36 (.Y(n34), 
	.C(A[9]), 
	.B(n11), 
	.A(A[8]));
   OAI21BX8M U37 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   NAND3X2M U38 (.Y(n30), 
	.C(A[13]), 
	.B(n32), 
	.A(A[12]));
   CLKAND2X8M U39 (.Y(n16), 
	.B(A[2]), 
	.A(B[2]));
   OAI2BB1X2M U40 (.Y(n17), 
	.B0(n19), 
	.A1N(A[20]), 
	.A0N(n18));
   XOR3X1M U41 (.Y(FE_OFN18_CORR_IN_23_), 
	.C(n17), 
	.B(A[21]), 
	.A(B[21]));
   INVX2M U42 (.Y(n7), 
	.A(A[14]));
   NOR3BX4M U43 (.Y(n32), 
	.C(n34), 
	.B(n8), 
	.AN(A[11]));
   XNOR2X2M U44 (.Y(SUM[9]), 
	.B(n10), 
	.A(A[9]));
   NAND2X1M U45 (.Y(n10), 
	.B(n11), 
	.A(A[8]));
   XOR2X2M U46 (.Y(SUM[8]), 
	.B(n11), 
	.A(A[8]));
   XNOR2X2M U47 (.Y(SUM[6]), 
	.B(n13), 
	.A(A[6]));
   XNOR2X2M U48 (.Y(SUM[5]), 
	.B(n14), 
	.A(A[5]));
   NAND2X1M U49 (.Y(n14), 
	.B(n15), 
	.A(A[4]));
   XOR2X2M U50 (.Y(SUM[4]), 
	.B(n15), 
	.A(A[4]));
   XOR2X2M U51 (.Y(SUM[3]), 
	.B(n16), 
	.A(A[3]));
   AOI2BB1X1M U52 (.Y(SUM[2]), 
	.B0(n16), 
	.A1N(A[2]), 
	.A0N(B[2]));
   NAND2X1M U53 (.Y(n29), 
	.B(n28), 
	.A(A[16]));
   XNOR2X2M U54 (.Y(SUM[14]), 
	.B(n30), 
	.A(A[14]));
   XOR2X2M U55 (.Y(SUM[11]), 
	.B(n35), 
	.A(A[11]));
   XNOR2X2M U56 (.Y(SUM[10]), 
	.B(n34), 
	.A(A[10]));
endmodule

module LMS_in_width4_K_width9_err_width20_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [19:0] A;
   input [3:0] B;
   input TC;
   output [23:0] PRODUCT;

   // Internal wires
   wire FE_RN_1075_0;
   wire FE_RN_1074_0;
   wire FE_RN_1073_0;
   wire FE_RN_1072_0;
   wire FE_RN_1071_0;
   wire FE_RN_1070_0;
   wire FE_RN_1069_0;
   wire FE_RN_1068_0;
   wire FE_RN_1067_0;
   wire FE_RN_1066_0;
   wire FE_RN_1065_0;
   wire FE_RN_1064_0;
   wire FE_RN_1063_0;
   wire FE_RN_1062_0;
   wire FE_RN_1061_0;
   wire FE_RN_1060_0;
   wire FE_RN_1059_0;
   wire FE_RN_1058_0;
   wire FE_RN_1057_0;
   wire FE_RN_1056_0;
   wire FE_RN_1055_0;
   wire FE_RN_1054_0;
   wire FE_RN_1053_0;
   wire FE_RN_1052_0;
   wire FE_RN_1051_0;
   wire FE_RN_1050_0;
   wire FE_RN_1049_0;
   wire FE_RN_842_0;
   wire FE_RN_841_0;
   wire FE_RN_840_0;
   wire FE_RN_839_0;
   wire FE_RN_838_0;
   wire FE_RN_837_0;
   wire FE_RN_836_0;
   wire FE_RN_835_0;
   wire FE_RN_834_0;
   wire FE_RN_833_0;
   wire FE_RN_832_0;
   wire FE_RN_831_0;
   wire FE_RN_830_0;
   wire FE_RN_829_0;
   wire FE_RN_828_0;
   wire FE_RN_827_0;
   wire FE_RN_826_0;
   wire FE_RN_825_0;
   wire FE_RN_824_0;
   wire FE_RN_823_0;
   wire FE_RN_822_0;
   wire FE_RN_821_0;
   wire FE_RN_820_0;
   wire FE_RN_819_0;
   wire FE_RN_818_0;
   wire FE_RN_817_0;
   wire FE_RN_816_0;
   wire FE_RN_815_0;
   wire FE_RN_814_0;
   wire FE_RN_813_0;
   wire FE_RN_812_0;
   wire FE_RN_811_0;
   wire FE_RN_810_0;
   wire FE_RN_809_0;
   wire FE_RN_808_0;
   wire FE_RN_807_0;
   wire FE_RN_806_0;
   wire FE_RN_805_0;
   wire FE_RN_804_0;
   wire FE_RN_803_0;
   wire FE_RN_802_0;
   wire FE_RN_801_0;
   wire FE_RN_800_0;
   wire FE_RN_799_0;
   wire FE_RN_798_0;
   wire FE_RN_797_0;
   wire FE_RN_796_0;
   wire FE_RN_795_0;
   wire FE_RN_794_0;
   wire FE_RN_793_0;
   wire FE_RN_792_0;
   wire FE_RN_791_0;
   wire FE_RN_790_0;
   wire FE_RN_789_0;
   wire FE_RN_788_0;
   wire FE_RN_787_0;
   wire FE_RN_786_0;
   wire FE_RN_785_0;
   wire FE_RN_784_0;
   wire FE_RN_783_0;
   wire FE_RN_782_0;
   wire FE_RN_781_0;
   wire FE_RN_780_0;
   wire FE_RN_779_0;
   wire FE_RN_778_0;
   wire FE_RN_777_0;
   wire FE_RN_776_0;
   wire FE_OFN17_ab_2__1_;
   wire \ab[19][3] ;
   wire \ab[19][2] ;
   wire \ab[19][1] ;
   wire \ab[19][0] ;
   wire \ab[18][3] ;
   wire \ab[18][2] ;
   wire \ab[18][1] ;
   wire \ab[18][0] ;
   wire \ab[17][3] ;
   wire \ab[17][2] ;
   wire \ab[17][1] ;
   wire \ab[17][0] ;
   wire \ab[16][3] ;
   wire \ab[16][2] ;
   wire \ab[16][1] ;
   wire \ab[16][0] ;
   wire \ab[15][3] ;
   wire \ab[15][2] ;
   wire \ab[15][1] ;
   wire \ab[15][0] ;
   wire \ab[14][3] ;
   wire \ab[14][2] ;
   wire \ab[14][1] ;
   wire \ab[14][0] ;
   wire \ab[13][3] ;
   wire \ab[13][2] ;
   wire \ab[13][1] ;
   wire \ab[13][0] ;
   wire \ab[12][3] ;
   wire \ab[12][2] ;
   wire \ab[12][1] ;
   wire \ab[12][0] ;
   wire \ab[11][3] ;
   wire \ab[11][2] ;
   wire \ab[11][1] ;
   wire \ab[11][0] ;
   wire \ab[10][3] ;
   wire \ab[10][2] ;
   wire \ab[10][1] ;
   wire \ab[10][0] ;
   wire \ab[9][3] ;
   wire \ab[9][2] ;
   wire \ab[9][1] ;
   wire \ab[9][0] ;
   wire \ab[8][3] ;
   wire \ab[8][2] ;
   wire \ab[8][1] ;
   wire \ab[8][0] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \CARRYB[19][3] ;
   wire \CARRYB[19][2] ;
   wire \CARRYB[19][1] ;
   wire \CARRYB[19][0] ;
   wire \CARRYB[18][2] ;
   wire \CARRYB[18][1] ;
   wire \CARRYB[18][0] ;
   wire \CARRYB[17][2] ;
   wire \CARRYB[17][1] ;
   wire \CARRYB[17][0] ;
   wire \CARRYB[16][2] ;
   wire \CARRYB[16][1] ;
   wire \CARRYB[16][0] ;
   wire \CARRYB[15][2] ;
   wire \CARRYB[15][1] ;
   wire \CARRYB[14][2] ;
   wire \CARRYB[14][1] ;
   wire \CARRYB[14][0] ;
   wire \CARRYB[13][2] ;
   wire \CARRYB[13][1] ;
   wire \CARRYB[13][0] ;
   wire \CARRYB[12][2] ;
   wire \CARRYB[12][1] ;
   wire \CARRYB[12][0] ;
   wire \CARRYB[11][2] ;
   wire \CARRYB[11][1] ;
   wire \CARRYB[11][0] ;
   wire \CARRYB[10][2] ;
   wire \CARRYB[10][1] ;
   wire \CARRYB[10][0] ;
   wire \CARRYB[9][2] ;
   wire \CARRYB[9][1] ;
   wire \CARRYB[9][0] ;
   wire \CARRYB[8][2] ;
   wire \CARRYB[8][1] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \CARRYB[1][2] ;
   wire \CARRYB[1][1] ;
   wire \CARRYB[1][0] ;
   wire \SUMB[19][3] ;
   wire \SUMB[19][2] ;
   wire \SUMB[19][1] ;
   wire \SUMB[19][0] ;
   wire \SUMB[18][2] ;
   wire \SUMB[18][1] ;
   wire \SUMB[17][2] ;
   wire \SUMB[17][1] ;
   wire \SUMB[16][2] ;
   wire \SUMB[16][1] ;
   wire \SUMB[15][2] ;
   wire \SUMB[15][1] ;
   wire \SUMB[14][2] ;
   wire \SUMB[14][1] ;
   wire \SUMB[13][2] ;
   wire \SUMB[13][1] ;
   wire \SUMB[12][2] ;
   wire \SUMB[12][1] ;
   wire \SUMB[11][2] ;
   wire \SUMB[11][1] ;
   wire \SUMB[10][2] ;
   wire \SUMB[10][1] ;
   wire \SUMB[9][2] ;
   wire \SUMB[9][1] ;
   wire \SUMB[8][2] ;
   wire \SUMB[8][1] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \PROD1[3] ;
   wire ZA;
   wire ZB;
   wire \A1[20] ;
   wire \A1[19] ;
   wire \A1[18] ;
   wire \A1[17] ;
   wire \A1[16] ;
   wire \A1[15] ;
   wire \A1[14] ;
   wire \A1[13] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[5] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;

   assign ZA = A[19] ;
   assign ZB = B[3] ;

   INVX2M FE_RC_1184_0 (.Y(FE_RN_1075_0), 
	.A(\ab[16][0] ));
   INVX2M FE_RC_1183_0 (.Y(FE_RN_1074_0), 
	.A(\SUMB[14][1] ));
   CLKNAND2X4M FE_RC_1182_0 (.Y(FE_RN_1073_0), 
	.B(FE_RN_1074_0), 
	.A(FE_RN_1056_0));
   NAND2X3M FE_RC_1181_0 (.Y(FE_RN_1072_0), 
	.B(FE_RN_1052_0), 
	.A(FE_RN_1073_0));
   AOI22X4M FE_RC_1180_0 (.Y(FE_RN_1071_0), 
	.B1(FE_RN_1072_0), 
	.B0(\ab[16][0] ), 
	.A1(FE_RN_1075_0), 
	.A0(FE_RN_1059_0));
   INVX2M FE_RC_1179_0 (.Y(FE_RN_1070_0), 
	.A(\ab[16][0] ));
   OAI22X8M FE_RC_1178_0 (.Y(FE_RN_1069_0), 
	.B1(FE_RN_1052_0), 
	.B0(\ab[16][0] ), 
	.A1(\SUMB[14][1] ), 
	.A0(FE_RN_1055_0));
   AOI2B1X4M FE_RC_1177_0 (.Y(FE_RN_1068_0), 
	.B0(FE_RN_1069_0), 
	.A1N(FE_RN_1070_0), 
	.A0(FE_RN_1059_0));
   MXI2X4M FE_RC_1176_0 (.Y(\A1[14] ), 
	.S0(\SUMB[15][1] ), 
	.B(FE_RN_1068_0), 
	.A(FE_RN_1071_0));
   INVX2M FE_RC_1175_0 (.Y(FE_RN_1067_0), 
	.A(\SUMB[14][1] ));
   INVX2M FE_RC_1174_0 (.Y(FE_RN_1066_0), 
	.A(\ab[15][0] ));
   CLKNAND2X4M FE_RC_1173_0 (.Y(FE_RN_1065_0), 
	.B(\CARRYB[14][0] ), 
	.A(FE_RN_1066_0));
   OAI2B1X4M FE_RC_1172_0 (.Y(FE_RN_1064_0), 
	.B0(FE_RN_1065_0), 
	.A1N(\ab[15][0] ), 
	.A0(\CARRYB[14][0] ));
   NAND2X3M FE_RC_1171_0 (.Y(FE_RN_1063_0), 
	.B(FE_RN_1067_0), 
	.A(FE_RN_1064_0));
   CLKNAND2X4M FE_RC_1170_0 (.Y(FE_RN_1062_0), 
	.B(FE_RN_1052_0), 
	.A(FE_RN_1056_0));
   NAND2X3M FE_RC_1169_0 (.Y(FE_RN_1061_0), 
	.B(\SUMB[14][1] ), 
	.A(FE_RN_1062_0));
   NAND2X4M FE_RC_1168_0 (.Y(\A1[13] ), 
	.B(FE_RN_1063_0), 
	.A(FE_RN_1061_0));
   CLKNAND2X4M FE_RC_1167_0 (.Y(FE_RN_1060_0), 
	.B(\SUMB[14][1] ), 
	.A(FE_RN_1052_0));
   NAND2X4M FE_RC_1166_0 (.Y(FE_RN_1059_0), 
	.B(FE_RN_1056_0), 
	.A(FE_RN_1060_0));
   NAND2X4M FE_RC_1165_0 (.Y(FE_RN_1058_0), 
	.B(\ab[16][0] ), 
	.A(FE_RN_1059_0));
   INVX2M FE_RC_1164_0 (.Y(FE_RN_1057_0), 
	.A(\ab[16][0] ));
   CLKNAND2X8M FE_RC_1163_0 (.Y(FE_RN_1056_0), 
	.B(\CARRYB[14][0] ), 
	.A(\ab[15][0] ));
   CLKNAND2X8M FE_RC_1162_0 (.Y(FE_RN_1055_0), 
	.B(FE_RN_1057_0), 
	.A(FE_RN_1056_0));
   INVX2M FE_RC_1161_0 (.Y(FE_RN_1054_0), 
	.A(FE_RN_1055_0));
   INVX2M FE_RC_1160_0 (.Y(FE_RN_1053_0), 
	.A(\ab[15][0] ));
   NAND2BX8M FE_RC_1159_0 (.Y(FE_RN_1052_0), 
	.B(FE_RN_1053_0), 
	.AN(\CARRYB[14][0] ));
   CLKNAND2X4M FE_RC_1158_0 (.Y(FE_RN_1051_0), 
	.B(\SUMB[14][1] ), 
	.A(FE_RN_1052_0));
   NAND2X4M FE_RC_1157_0 (.Y(FE_RN_1050_0), 
	.B(FE_RN_1054_0), 
	.A(FE_RN_1051_0));
   CLKNAND2X4M FE_RC_1156_0 (.Y(FE_RN_1049_0), 
	.B(\SUMB[15][1] ), 
	.A(FE_RN_1050_0));
   NAND2X5M FE_RC_1155_0 (.Y(\CARRYB[16][0] ), 
	.B(FE_RN_1058_0), 
	.A(FE_RN_1049_0));
   INVX2M FE_RC_927_0 (.Y(FE_RN_842_0), 
	.A(FE_RN_794_0));
   INVX2M FE_RC_926_0 (.Y(FE_RN_841_0), 
	.A(\ab[9][0] ));
   CLKNAND2X4M FE_RC_925_0 (.Y(FE_RN_840_0), 
	.B(\SUMB[8][1] ), 
	.A(FE_RN_841_0));
   OAI2B1X8M FE_RC_924_0 (.Y(FE_RN_839_0), 
	.B0(FE_RN_840_0), 
	.A1N(\ab[9][0] ), 
	.A0(\SUMB[8][1] ));
   INVX2M FE_RC_923_0 (.Y(FE_RN_838_0), 
	.A(\ab[8][0] ));
   NAND2X4M FE_RC_922_0 (.Y(FE_RN_837_0), 
	.B(FE_RN_838_0), 
	.A(FE_RN_821_0));
   INVX2M FE_RC_921_0 (.Y(FE_RN_836_0), 
	.A(\ab[8][0] ));
   CLKNAND2X4M FE_RC_920_0 (.Y(FE_RN_835_0), 
	.B(FE_RN_836_0), 
	.A(FE_RN_816_0));
   INVX2M FE_RC_919_0 (.Y(FE_RN_834_0), 
	.A(\SUMB[7][1] ));
   CLKNAND2X4M FE_RC_918_0 (.Y(FE_RN_833_0), 
	.B(FE_RN_834_0), 
	.A(FE_RN_826_0));
   NAND4X4M FE_RC_917_0 (.Y(FE_RN_832_0), 
	.D(FE_RN_789_0), 
	.C(FE_RN_837_0), 
	.B(FE_RN_835_0), 
	.A(FE_RN_833_0));
   NAND2X4M FE_RC_916_0 (.Y(FE_RN_831_0), 
	.B(FE_RN_839_0), 
	.A(FE_RN_832_0));
   OAI21X4M FE_RC_915_0 (.Y(\A1[7] ), 
	.B0(FE_RN_831_0), 
	.A1(FE_RN_839_0), 
	.A0(FE_RN_842_0));
   INVX2M FE_RC_914_0 (.Y(FE_RN_830_0), 
	.A(FE_RN_779_0));
   INVX2M FE_RC_913_0 (.Y(FE_RN_829_0), 
	.A(\SUMB[7][1] ));
   INVX2M FE_RC_912_0 (.Y(FE_RN_828_0), 
	.A(FE_RN_821_0));
   INVX2M FE_RC_911_0 (.Y(FE_RN_827_0), 
	.A(FE_RN_816_0));
   NAND2X4M FE_RC_910_0 (.Y(FE_RN_826_0), 
	.B(FE_RN_828_0), 
	.A(FE_RN_827_0));
   NAND3X4M FE_RC_909_0 (.Y(FE_RN_825_0), 
	.C(FE_RN_829_0), 
	.B(\ab[8][0] ), 
	.A(FE_RN_826_0));
   INVX2M FE_RC_908_0 (.Y(FE_RN_824_0), 
	.A(\ab[8][0] ));
   INVX2M FE_RC_907_0 (.Y(FE_RN_823_0), 
	.A(FE_RN_783_0));
   CLKNAND2X4M FE_RC_906_0 (.Y(FE_RN_822_0), 
	.B(FE_RN_788_0), 
	.A(FE_RN_823_0));
   NAND2X4M FE_RC_905_0 (.Y(FE_RN_821_0), 
	.B(FE_RN_786_0), 
	.A(FE_RN_822_0));
   NAND2X3M FE_RC_904_0 (.Y(FE_RN_820_0), 
	.B(FE_RN_824_0), 
	.A(FE_RN_821_0));
   NAND2X4M FE_RC_903_0 (.Y(FE_RN_819_0), 
	.B(\ab[8][0] ), 
	.A(FE_RN_779_0));
   INVX2M FE_RC_902_0 (.Y(FE_RN_818_0), 
	.A(\ab[8][0] ));
   INVX2M FE_RC_901_0 (.Y(FE_RN_817_0), 
	.A(\SUMB[5][1] ));
   AND3X4M FE_RC_900_0 (.Y(FE_RN_816_0), 
	.C(FE_RN_817_0), 
	.B(FE_RN_788_0), 
	.A(FE_RN_785_0));
   CLKNAND2X4M FE_RC_899_0 (.Y(FE_RN_815_0), 
	.B(FE_RN_818_0), 
	.A(FE_RN_816_0));
   NAND3X4M FE_RC_898_0 (.Y(FE_RN_814_0), 
	.C(FE_RN_820_0), 
	.B(FE_RN_819_0), 
	.A(FE_RN_815_0));
   NAND2X4M FE_RC_897_0 (.Y(FE_RN_813_0), 
	.B(\SUMB[7][1] ), 
	.A(FE_RN_814_0));
   OAI211X8M FE_RC_896_0 (.Y(\A1[6] ), 
	.C0(FE_RN_813_0), 
	.B0(FE_RN_825_0), 
	.A1(FE_RN_789_0), 
	.A0(FE_RN_830_0));
   INVX2M FE_RC_895_0 (.Y(FE_RN_812_0), 
	.A(\SUMB[6][1] ));
   INVX2M FE_RC_894_0 (.Y(FE_RN_811_0), 
	.A(\ab[7][0] ));
   MXI2X2M FE_RC_893_0 (.Y(FE_RN_810_0), 
	.S0(FE_RN_811_0), 
	.B(FE_RN_812_0), 
	.A(\SUMB[6][1] ));
   INVX2M FE_RC_892_0 (.Y(FE_RN_809_0), 
	.A(\SUMB[5][1] ));
   CLKNAND2X4M FE_RC_891_0 (.Y(FE_RN_808_0), 
	.B(FE_RN_809_0), 
	.A(FE_RN_785_0));
   NAND2X3M FE_RC_890_0 (.Y(FE_RN_807_0), 
	.B(FE_RN_783_0), 
	.A(FE_RN_808_0));
   NAND2X2M FE_RC_889_0 (.Y(FE_RN_806_0), 
	.B(FE_RN_810_0), 
	.A(FE_RN_807_0));
   CLKNAND2X4M FE_RC_888_0 (.Y(FE_RN_805_0), 
	.B(FE_RN_786_0), 
	.A(FE_RN_788_0));
   NAND2X3M FE_RC_887_0 (.Y(FE_RN_804_0), 
	.B(FE_RN_781_0), 
	.A(FE_RN_805_0));
   NAND2X4M FE_RC_886_0 (.Y(\A1[5] ), 
	.B(FE_RN_806_0), 
	.A(FE_RN_804_0));
   INVX2M FE_RC_885_0 (.Y(FE_RN_803_0), 
	.A(\SUMB[5][1] ));
   INVX2M FE_RC_884_0 (.Y(FE_RN_802_0), 
	.A(\CARRYB[5][0] ));
   INVX2M FE_RC_883_0 (.Y(FE_RN_801_0), 
	.A(\ab[6][0] ));
   MXI2X2M FE_RC_882_0 (.Y(FE_RN_800_0), 
	.S0(FE_RN_801_0), 
	.B(FE_RN_802_0), 
	.A(\CARRYB[5][0] ));
   NAND2X3M FE_RC_881_0 (.Y(FE_RN_799_0), 
	.B(FE_RN_803_0), 
	.A(FE_RN_800_0));
   CLKNAND2X4M FE_RC_880_0 (.Y(FE_RN_798_0), 
	.B(FE_RN_783_0), 
	.A(FE_RN_785_0));
   NAND2X3M FE_RC_879_0 (.Y(FE_RN_797_0), 
	.B(\SUMB[5][1] ), 
	.A(FE_RN_798_0));
   NAND2X6M FE_RC_878_0 (.Y(\A1[4] ), 
	.B(FE_RN_799_0), 
	.A(FE_RN_797_0));
   CLKNAND2X4M FE_RC_877_0 (.Y(FE_RN_796_0), 
	.B(\SUMB[7][1] ), 
	.A(\ab[8][0] ));
   CLKNAND2X4M FE_RC_876_0 (.Y(FE_RN_795_0), 
	.B(FE_RN_789_0), 
	.A(FE_RN_779_0));
   NAND2X4M FE_RC_875_0 (.Y(FE_RN_794_0), 
	.B(FE_RN_796_0), 
	.A(FE_RN_795_0));
   NAND2X4M FE_RC_874_0 (.Y(FE_RN_793_0), 
	.B(\ab[9][0] ), 
	.A(FE_RN_794_0));
   INVX2M FE_RC_873_0 (.Y(FE_RN_792_0), 
	.A(\ab[9][0] ));
   CLKNAND2X4M FE_RC_872_0 (.Y(FE_RN_791_0), 
	.B(\SUMB[7][1] ), 
	.A(\ab[8][0] ));
   INVX2M FE_RC_871_0 (.Y(FE_RN_790_0), 
	.A(\ab[8][0] ));
   NAND2BX8M FE_RC_870_0 (.Y(FE_RN_789_0), 
	.B(FE_RN_790_0), 
	.AN(\SUMB[7][1] ));
   CLKNAND2X8M FE_RC_869_0 (.Y(FE_RN_788_0), 
	.B(\SUMB[6][1] ), 
	.A(\ab[7][0] ));
   INVX2M FE_RC_868_0 (.Y(FE_RN_787_0), 
	.A(\ab[7][0] ));
   NAND2BX8M FE_RC_867_0 (.Y(FE_RN_786_0), 
	.B(FE_RN_787_0), 
	.AN(\SUMB[6][1] ));
   CLKNAND2X8M FE_RC_866_0 (.Y(FE_RN_785_0), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   INVX2M FE_RC_865_0 (.Y(FE_RN_784_0), 
	.A(\ab[6][0] ));
   NAND2BX8M FE_RC_864_0 (.Y(FE_RN_783_0), 
	.B(FE_RN_784_0), 
	.AN(\CARRYB[5][0] ));
   CLKNAND2X4M FE_RC_863_0 (.Y(FE_RN_782_0), 
	.B(\SUMB[5][1] ), 
	.A(FE_RN_783_0));
   NAND2X3M FE_RC_862_0 (.Y(FE_RN_781_0), 
	.B(FE_RN_785_0), 
	.A(FE_RN_782_0));
   CLKNAND2X4M FE_RC_861_0 (.Y(FE_RN_780_0), 
	.B(FE_RN_786_0), 
	.A(FE_RN_781_0));
   NAND2X4M FE_RC_860_0 (.Y(FE_RN_779_0), 
	.B(FE_RN_788_0), 
	.A(FE_RN_780_0));
   CLKNAND2X4M FE_RC_859_0 (.Y(FE_RN_778_0), 
	.B(FE_RN_789_0), 
	.A(FE_RN_779_0));
   NAND3X3M FE_RC_858_0 (.Y(FE_RN_777_0), 
	.C(FE_RN_792_0), 
	.B(FE_RN_791_0), 
	.A(FE_RN_778_0));
   NAND2X3M FE_RC_857_0 (.Y(FE_RN_776_0), 
	.B(\SUMB[8][1] ), 
	.A(FE_RN_777_0));
   NAND2X6M FE_RC_856_0 (.Y(\CARRYB[9][0] ), 
	.B(FE_RN_793_0), 
	.A(FE_RN_776_0));
   BUFX8M FE_OFC17_ab_2__1_ (.Y(FE_OFN17_ab_2__1_), 
	.A(\ab[2][1] ));
   ADDFHX2M S3_18_2 (.S(\SUMB[18][2] ), 
	.CO(\CARRYB[18][2] ), 
	.CI(\ab[17][3] ), 
	.B(\CARRYB[17][2] ), 
	.A(\ab[18][2] ));
   ADDFX2M S14_3 (.S(\SUMB[19][3] ), 
	.CO(\CARRYB[19][3] ), 
	.CI(\ab[19][3] ), 
	.B(n20), 
	.A(n33));
   ADDFHX4M S1_14_0 (.S(\A1[12] ), 
	.CO(\CARRYB[14][0] ), 
	.CI(\SUMB[13][1] ), 
	.B(\CARRYB[13][0] ), 
	.A(\ab[14][0] ));
   ADDFHX4M S3_7_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\ab[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFHX8M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(\CARRYB[1][0] ), 
	.A(\ab[2][0] ));
   ADDFHX4M S4_1 (.S(\SUMB[19][1] ), 
	.CO(\CARRYB[19][1] ), 
	.CI(\SUMB[18][2] ), 
	.B(\CARRYB[18][1] ), 
	.A(\ab[19][1] ));
   ADDFHX4M S1_17_0 (.S(\A1[15] ), 
	.CO(\CARRYB[17][0] ), 
	.CI(\SUMB[16][1] ), 
	.B(\CARRYB[16][0] ), 
	.A(\ab[17][0] ));
   ADDFHX4M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(\CARRYB[1][1] ), 
	.A(FE_OFN17_ab_2__1_));
   ADDFHX8M S5_2 (.S(\SUMB[19][2] ), 
	.CO(\CARRYB[19][2] ), 
	.CI(\ab[18][3] ), 
	.B(\CARRYB[18][2] ), 
	.A(\ab[19][2] ));
   ADDFHX4M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFHX8M S2_17_1 (.S(\SUMB[17][1] ), 
	.CO(\CARRYB[17][1] ), 
	.CI(\SUMB[16][2] ), 
	.B(\CARRYB[16][1] ), 
	.A(\ab[17][1] ));
   ADDFHX4M S2_18_1 (.S(\SUMB[18][1] ), 
	.CO(\CARRYB[18][1] ), 
	.CI(\SUMB[17][2] ), 
	.B(\CARRYB[17][1] ), 
	.A(\ab[18][1] ));
   ADDFHX4M S1_3_0 (.S(\PROD1[3] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFHX8M S3_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\ab[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFHX8M S3_15_2 (.S(\SUMB[15][2] ), 
	.CO(\CARRYB[15][2] ), 
	.CI(\ab[14][3] ), 
	.B(\CARRYB[14][2] ), 
	.A(\ab[15][2] ));
   ADDFHX4M S1_18_0 (.S(\A1[16] ), 
	.CO(\CARRYB[18][0] ), 
	.CI(\SUMB[17][1] ), 
	.B(\CARRYB[17][0] ), 
	.A(\ab[18][0] ));
   ADDFHX4M S3_13_2 (.S(\SUMB[13][2] ), 
	.CO(\CARRYB[13][2] ), 
	.CI(\ab[12][3] ), 
	.B(\CARRYB[12][2] ), 
	.A(\ab[13][2] ));
   ADDFHX4M S3_14_2 (.S(\SUMB[14][2] ), 
	.CO(\CARRYB[14][2] ), 
	.CI(\ab[13][3] ), 
	.B(\CARRYB[13][2] ), 
	.A(\ab[14][2] ));
   ADDFHX4M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFHX4M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFHX4M S2_7_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFHX4M S2_8_1 (.S(\SUMB[8][1] ), 
	.CO(\CARRYB[8][1] ), 
	.CI(\SUMB[7][2] ), 
	.B(\CARRYB[7][1] ), 
	.A(\ab[8][1] ));
   ADDFHX4M S2_9_1 (.S(\SUMB[9][1] ), 
	.CO(\CARRYB[9][1] ), 
	.CI(\SUMB[8][2] ), 
	.B(\CARRYB[8][1] ), 
	.A(\ab[9][1] ));
   ADDFHX4M S2_10_1 (.S(\SUMB[10][1] ), 
	.CO(\CARRYB[10][1] ), 
	.CI(\SUMB[9][2] ), 
	.B(\CARRYB[9][1] ), 
	.A(\ab[10][1] ));
   ADDFHX4M S2_13_1 (.S(\SUMB[13][1] ), 
	.CO(\CARRYB[13][1] ), 
	.CI(\SUMB[12][2] ), 
	.B(\CARRYB[12][1] ), 
	.A(\ab[13][1] ));
   ADDFHX4M S2_14_1 (.S(\SUMB[14][1] ), 
	.CO(\CARRYB[14][1] ), 
	.CI(\SUMB[13][2] ), 
	.B(\CARRYB[13][1] ), 
	.A(\ab[14][1] ));
   ADDFHX4M S1_13_0 (.S(\A1[11] ), 
	.CO(\CARRYB[13][0] ), 
	.CI(\SUMB[12][1] ), 
	.B(\CARRYB[12][0] ), 
	.A(\ab[13][0] ));
   ADDFHX4M S3_10_2 (.S(\SUMB[10][2] ), 
	.CO(\CARRYB[10][2] ), 
	.CI(\ab[9][3] ), 
	.B(\CARRYB[9][2] ), 
	.A(\ab[10][2] ));
   ADDFHX4M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFHX8M S1_12_0 (.S(\A1[10] ), 
	.CO(\CARRYB[12][0] ), 
	.CI(\SUMB[11][1] ), 
	.B(\CARRYB[11][0] ), 
	.A(\ab[12][0] ));
   ADDFHX8M S3_11_2 (.S(\SUMB[11][2] ), 
	.CO(\CARRYB[11][2] ), 
	.CI(\ab[10][3] ), 
	.B(\CARRYB[10][2] ), 
	.A(\ab[11][2] ));
   ADDFHX4M S2_11_1 (.S(\SUMB[11][1] ), 
	.CO(\CARRYB[11][1] ), 
	.CI(\SUMB[10][2] ), 
	.B(\CARRYB[10][1] ), 
	.A(\ab[11][1] ));
   ADDFHX4M S3_17_2 (.S(\SUMB[17][2] ), 
	.CO(\CARRYB[17][2] ), 
	.CI(\ab[16][3] ), 
	.B(\CARRYB[16][2] ), 
	.A(\ab[17][2] ));
   ADDFHX4M S3_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\ab[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFHX4M S2_12_1 (.S(\SUMB[12][1] ), 
	.CO(\CARRYB[12][1] ), 
	.CI(\SUMB[11][2] ), 
	.B(\CARRYB[11][1] ), 
	.A(\ab[12][1] ));
   ADDFHX4M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFHX4M S3_12_2 (.S(\SUMB[12][2] ), 
	.CO(\CARRYB[12][2] ), 
	.CI(\ab[11][3] ), 
	.B(\CARRYB[11][2] ), 
	.A(\ab[12][2] ));
   ADDFHX4M S3_9_2 (.S(\SUMB[9][2] ), 
	.CO(\CARRYB[9][2] ), 
	.CI(\ab[8][3] ), 
	.B(\CARRYB[8][2] ), 
	.A(\ab[9][2] ));
   ADDFHX4M S3_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\ab[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFHX4M S3_16_2 (.S(\SUMB[16][2] ), 
	.CO(\CARRYB[16][2] ), 
	.CI(\ab[15][3] ), 
	.B(\CARRYB[15][2] ), 
	.A(\ab[16][2] ));
   ADDFHX4M S3_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\ab[1][3] ), 
	.B(\CARRYB[1][2] ), 
	.A(\ab[2][2] ));
   ADDFHX4M S2_15_1 (.S(\SUMB[15][1] ), 
	.CO(\CARRYB[15][1] ), 
	.CI(\SUMB[14][2] ), 
	.B(\CARRYB[14][1] ), 
	.A(\ab[15][1] ));
   ADDFHX4M S2_16_1 (.S(\SUMB[16][1] ), 
	.CO(\CARRYB[16][1] ), 
	.CI(\SUMB[15][2] ), 
	.B(\CARRYB[15][1] ), 
	.A(\ab[16][1] ));
   ADDFHX4M S3_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\ab[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFHX4M S1_10_0 (.S(\A1[8] ), 
	.CO(\CARRYB[10][0] ), 
	.CI(\SUMB[9][1] ), 
	.B(\CARRYB[9][0] ), 
	.A(\ab[10][0] ));
   ADDFHX4M S1_11_0 (.S(\A1[9] ), 
	.CO(\CARRYB[11][0] ), 
	.CI(\SUMB[10][1] ), 
	.B(\CARRYB[10][0] ), 
	.A(\ab[11][0] ));
   ADDFHX4M S4_0 (.S(\SUMB[19][0] ), 
	.CO(\CARRYB[19][0] ), 
	.CI(\SUMB[18][1] ), 
	.B(\CARRYB[18][0] ), 
	.A(\ab[19][0] ));
   ADDFHX8M S3_8_2 (.S(\SUMB[8][2] ), 
	.CO(\CARRYB[8][2] ), 
	.CI(\ab[7][3] ), 
	.B(\CARRYB[7][2] ), 
	.A(\ab[8][2] ));
   INVX6M U2 (.Y(\CARRYB[1][1] ), 
	.A(n14));
   XOR2X4M U3 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(n4));
   INVX12M U4 (.Y(n52), 
	.A(B[2]));
   NAND2X6M U5 (.Y(\A1[19] ), 
	.B(n13), 
	.A(n12));
   NOR2X6M U6 (.Y(\ab[3][1] ), 
	.B(n49), 
	.A(n53));
   NOR2X2M U7 (.Y(\ab[8][1] ), 
	.B(n44), 
	.A(n53));
   NOR2X6M U9 (.Y(\ab[0][2] ), 
	.B(n51), 
	.A(n52));
   NOR2X6M U10 (.Y(\ab[2][2] ), 
	.B(n50), 
	.A(n52));
   NOR2X6M U11 (.Y(\ab[3][2] ), 
	.B(n49), 
	.A(n52));
   NOR2X2M U12 (.Y(\ab[5][2] ), 
	.B(n47), 
	.A(n52));
   CLKNAND2X2M U14 (.Y(n17), 
	.B(\CARRYB[2][1] ), 
	.A(\SUMB[2][2] ));
   XOR2X4M U16 (.Y(n15), 
	.B(\SUMB[2][2] ), 
	.A(\ab[3][1] ));
   XOR2X8M U17 (.Y(\A1[17] ), 
	.B(\SUMB[19][0] ), 
	.A(ZA));
   NOR2X4M U18 (.Y(\ab[2][1] ), 
	.B(n50), 
	.A(n53));
   NOR2X2M U19 (.Y(\CARRYB[1][0] ), 
	.B(n19), 
	.A(n3));
   NOR2X2M U20 (.Y(\ab[3][3] ), 
	.B(n20), 
	.A(A[3]));
   CLKNAND2X2M U21 (.Y(n18), 
	.B(\ab[3][1] ), 
	.A(\SUMB[2][2] ));
   NAND2X2M U22 (.Y(n24), 
	.B(\ab[0][3] ), 
	.A(n21));
   NAND2X2M U23 (.Y(n14), 
	.B(n4), 
	.A(\ab[0][2] ));
   CLKINVX8M U24 (.Y(n50), 
	.A(A[2]));
   NOR2X5M U25 (.Y(\ab[3][0] ), 
	.B(n49), 
	.A(n54));
   NOR2X6M U26 (.Y(\ab[2][0] ), 
	.B(n50), 
	.A(n54));
   INVX6M U27 (.Y(n54), 
	.A(B[0]));
   INVX6M U28 (.Y(n20), 
	.A(ZB));
   OR2X4M U29 (.Y(n3), 
	.B(n54), 
	.A(n51));
   CLKAND2X6M U30 (.Y(n4), 
	.B(B[1]), 
	.A(A[1]));
   AND2X2M U32 (.Y(n5), 
	.B(\SUMB[19][3] ), 
	.A(\CARRYB[19][2] ));
   NOR2X2M U33 (.Y(\ab[15][2] ), 
	.B(n37), 
	.A(n52));
   NOR2X2M U34 (.Y(\ab[13][2] ), 
	.B(n39), 
	.A(n52));
   NOR2X2M U35 (.Y(\ab[11][2] ), 
	.B(n41), 
	.A(n52));
   NOR2X2M U36 (.Y(\ab[9][2] ), 
	.B(n52), 
	.A(n43));
   NOR2X2M U38 (.Y(\ab[4][2] ), 
	.B(n48), 
	.A(n52));
   NAND2X2M U39 (.Y(n23), 
	.B(n22), 
	.A(\ab[1][2] ));
   INVX1M U40 (.Y(n22), 
	.A(\ab[0][3] ));
   CLKNAND2X4M U42 (.Y(\SUMB[1][2] ), 
	.B(n24), 
	.A(n23));
   XOR2X4M U43 (.Y(\SUMB[3][1] ), 
	.B(n15), 
	.A(\CARRYB[2][1] ));
   NOR2X2M U44 (.Y(\ab[2][3] ), 
	.B(n20), 
	.A(A[2]));
   INVX2M U45 (.Y(n19), 
	.A(n4));
   NOR2X2M U46 (.Y(\ab[1][3] ), 
	.B(n20), 
	.A(A[1]));
   INVX1M U47 (.Y(n21), 
	.A(\ab[1][2] ));
   INVX2M U48 (.Y(n53), 
	.A(B[1]));
   NAND2X2M U49 (.Y(n12), 
	.B(n11), 
	.A(\CARRYB[19][1] ));
   CLKNAND2X2M U50 (.Y(n13), 
	.B(\SUMB[19][2] ), 
	.A(n10));
   INVX2M U51 (.Y(n10), 
	.A(\CARRYB[19][1] ));
   INVX2M U52 (.Y(n11), 
	.A(\SUMB[19][2] ));
   XOR2X8M U53 (.Y(\A1[18] ), 
	.B(\SUMB[19][1] ), 
	.A(\CARRYB[19][0] ));
   CLKAND2X2M U54 (.Y(n25), 
	.B(\SUMB[19][1] ), 
	.A(\CARRYB[19][0] ));
   INVX2M U55 (.Y(n51), 
	.A(A[0]));
   CLKNAND2X4M U56 (.Y(n16), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   NAND3X4M U57 (.Y(\CARRYB[3][1] ), 
	.C(n16), 
	.B(n18), 
	.A(n17));
   CLKAND2X4M U58 (.Y(\ab[1][2] ), 
	.B(B[2]), 
	.A(A[1]));
   NOR2X6M U59 (.Y(\ab[0][3] ), 
	.B(n20), 
	.A(A[0]));
   CLKAND2X6M U60 (.Y(n28), 
	.B(\SUMB[19][0] ), 
	.A(ZA));
   CLKNAND2X4M U61 (.Y(n29), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   NOR2XLM U62 (.Y(\ab[7][2] ), 
	.B(n45), 
	.A(n52));
   INVX2M U63 (.Y(n49), 
	.A(A[3]));
   INVX2M U64 (.Y(n48), 
	.A(A[4]));
   XOR2XLM U65 (.Y(\A1[1] ), 
	.B(\PROD1[3] ), 
	.A(ZB));
   INVX4M U66 (.Y(\CARRYB[1][2] ), 
	.A(n29));
   NOR2XLM U67 (.Y(\ab[6][2] ), 
	.B(n46), 
	.A(n52));
   INVX2M U68 (.Y(n32), 
	.A(\CARRYB[19][3] ));
   AND2X2M U69 (.Y(n26), 
	.B(\PROD1[3] ), 
	.A(ZB));
   XOR2X2M U70 (.Y(\A1[20] ), 
	.B(\SUMB[19][3] ), 
	.A(\CARRYB[19][2] ));
   AND2X2M U71 (.Y(n27), 
	.B(\SUMB[19][2] ), 
	.A(\CARRYB[19][1] ));
   INVX2M U72 (.Y(n47), 
	.A(A[5]));
   INVX2M U73 (.Y(n46), 
	.A(A[6]));
   INVX2M U74 (.Y(n45), 
	.A(A[7]));
   INVX2M U75 (.Y(n44), 
	.A(A[8]));
   INVX2M U76 (.Y(n43), 
	.A(A[9]));
   INVX2M U77 (.Y(n42), 
	.A(A[10]));
   INVX2M U78 (.Y(n41), 
	.A(A[11]));
   INVX2M U79 (.Y(n40), 
	.A(A[12]));
   INVX2M U80 (.Y(n39), 
	.A(A[13]));
   INVX2M U81 (.Y(n38), 
	.A(A[14]));
   INVX2M U82 (.Y(n37), 
	.A(A[15]));
   INVX2M U83 (.Y(n36), 
	.A(A[16]));
   INVX2M U84 (.Y(n35), 
	.A(A[17]));
   INVX2M U85 (.Y(n33), 
	.A(ZA));
   INVX2M U86 (.Y(n34), 
	.A(A[18]));
   NOR2X1M U87 (.Y(\ab[9][3] ), 
	.B(n20), 
	.A(A[9]));
   NOR2X1M U88 (.Y(\ab[9][1] ), 
	.B(n53), 
	.A(n43));
   NOR2X1M U89 (.Y(\ab[9][0] ), 
	.B(n54), 
	.A(n43));
   NOR2X1M U90 (.Y(\ab[8][3] ), 
	.B(n20), 
	.A(A[8]));
   NOR2X1M U91 (.Y(\ab[8][2] ), 
	.B(n44), 
	.A(n52));
   NOR2X1M U92 (.Y(\ab[8][0] ), 
	.B(n44), 
	.A(n54));
   NOR2X1M U93 (.Y(\ab[7][3] ), 
	.B(n20), 
	.A(A[7]));
   NOR2X1M U94 (.Y(\ab[7][1] ), 
	.B(n45), 
	.A(n53));
   NOR2X1M U95 (.Y(\ab[7][0] ), 
	.B(n45), 
	.A(n54));
   NOR2X1M U96 (.Y(\ab[6][3] ), 
	.B(n20), 
	.A(A[6]));
   NOR2X1M U97 (.Y(\ab[6][1] ), 
	.B(n46), 
	.A(n53));
   NOR2X1M U98 (.Y(\ab[6][0] ), 
	.B(n46), 
	.A(n54));
   NOR2X1M U99 (.Y(\ab[5][3] ), 
	.B(n20), 
	.A(A[5]));
   NOR2X2M U100 (.Y(\ab[5][1] ), 
	.B(n47), 
	.A(n53));
   NOR2X2M U101 (.Y(\ab[5][0] ), 
	.B(n47), 
	.A(n54));
   NOR2X1M U102 (.Y(\ab[4][3] ), 
	.B(n20), 
	.A(A[4]));
   NOR2X1M U103 (.Y(\ab[4][1] ), 
	.B(n48), 
	.A(n53));
   NOR2X3M U104 (.Y(\ab[4][0] ), 
	.B(n48), 
	.A(n54));
   NOR2X1M U105 (.Y(\ab[19][3] ), 
	.B(n33), 
	.A(n20));
   NOR2X1M U106 (.Y(\ab[19][2] ), 
	.B(n33), 
	.A(B[2]));
   NOR2X1M U107 (.Y(\ab[19][1] ), 
	.B(n33), 
	.A(B[1]));
   NOR2X1M U108 (.Y(\ab[19][0] ), 
	.B(n33), 
	.A(B[0]));
   NOR2X1M U109 (.Y(\ab[18][3] ), 
	.B(n20), 
	.A(A[18]));
   NOR2X1M U110 (.Y(\ab[18][2] ), 
	.B(n34), 
	.A(n52));
   NOR2X1M U111 (.Y(\ab[18][1] ), 
	.B(n34), 
	.A(n53));
   NOR2X1M U112 (.Y(\ab[18][0] ), 
	.B(n34), 
	.A(n54));
   NOR2X1M U113 (.Y(\ab[17][3] ), 
	.B(n20), 
	.A(A[17]));
   NOR2X1M U114 (.Y(\ab[17][2] ), 
	.B(n35), 
	.A(n52));
   NOR2X1M U115 (.Y(\ab[17][1] ), 
	.B(n35), 
	.A(n53));
   NOR2X1M U116 (.Y(\ab[17][0] ), 
	.B(n35), 
	.A(n54));
   NOR2X1M U117 (.Y(\ab[16][3] ), 
	.B(n20), 
	.A(A[16]));
   NOR2X1M U118 (.Y(\ab[16][2] ), 
	.B(n36), 
	.A(n52));
   NOR2X1M U119 (.Y(\ab[16][1] ), 
	.B(n36), 
	.A(n53));
   NOR2X1M U120 (.Y(\ab[16][0] ), 
	.B(n36), 
	.A(n54));
   NOR2X1M U121 (.Y(\ab[15][3] ), 
	.B(n20), 
	.A(A[15]));
   NOR2X1M U122 (.Y(\ab[15][1] ), 
	.B(n37), 
	.A(n53));
   NOR2X1M U123 (.Y(\ab[15][0] ), 
	.B(n37), 
	.A(n54));
   NOR2X1M U124 (.Y(\ab[14][3] ), 
	.B(n20), 
	.A(A[14]));
   NOR2X1M U125 (.Y(\ab[14][2] ), 
	.B(n38), 
	.A(n52));
   NOR2X1M U126 (.Y(\ab[14][1] ), 
	.B(n38), 
	.A(n53));
   NOR2X1M U127 (.Y(\ab[14][0] ), 
	.B(n38), 
	.A(n54));
   NOR2X1M U128 (.Y(\ab[13][3] ), 
	.B(n20), 
	.A(A[13]));
   NOR2X1M U129 (.Y(\ab[13][1] ), 
	.B(n39), 
	.A(n53));
   NOR2X1M U130 (.Y(\ab[13][0] ), 
	.B(n39), 
	.A(n54));
   NOR2X1M U131 (.Y(\ab[12][3] ), 
	.B(n20), 
	.A(A[12]));
   NOR2X1M U132 (.Y(\ab[12][2] ), 
	.B(n40), 
	.A(n52));
   NOR2X1M U133 (.Y(\ab[12][1] ), 
	.B(n40), 
	.A(n53));
   NOR2X1M U134 (.Y(\ab[12][0] ), 
	.B(n40), 
	.A(n54));
   NOR2X1M U135 (.Y(\ab[11][3] ), 
	.B(n20), 
	.A(A[11]));
   NOR2X1M U136 (.Y(\ab[11][1] ), 
	.B(n41), 
	.A(n53));
   NOR2X1M U137 (.Y(\ab[11][0] ), 
	.B(n41), 
	.A(n54));
   NOR2X1M U138 (.Y(\ab[10][3] ), 
	.B(n20), 
	.A(A[10]));
   NOR2X1M U139 (.Y(\ab[10][2] ), 
	.B(n42), 
	.A(n52));
   NOR2X1M U140 (.Y(\ab[10][1] ), 
	.B(n42), 
	.A(n53));
   NOR2X1M U141 (.Y(\ab[10][0] ), 
	.B(n42), 
	.A(n54));
   LMS_in_width4_K_width9_err_width20_DW01_add_1 FS_1 (.A({ n32,
		\A1[20] ,
		\A1[19] ,
		\A1[18] ,
		\A1[17] ,
		\A1[16] ,
		\A1[15] ,
		\A1[14] ,
		\A1[13] ,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\A1[5] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n5,
		n27,
		n25,
		n28,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		n26,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[23],
		PRODUCT[22],
		PRODUCT[21],
		PRODUCT[20],
		PRODUCT[19],
		PRODUCT[18],
		PRODUCT[17],
		PRODUCT[16],
		PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1 }));
endmodule

module LMS_in_width4_K_width9_err_width20_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [24:0] A;
   input [24:0] B;
   input CI;
   output [24:0] SUM;
   output CO;

   // Internal wires
   wire FE_RN_1191_0;
   wire FE_RN_1190_0;
   wire FE_RN_1189_0;
   wire FE_RN_1188_0;
   wire FE_RN_1187_0;
   wire FE_RN_1186_0;
   wire FE_RN_1185_0;
   wire FE_RN_1184_0;
   wire FE_RN_1183_0;
   wire FE_RN_1182_0;
   wire FE_RN_1181_0;
   wire FE_RN_1180_0;
   wire FE_RN_1179_0;
   wire FE_RN_1178_0;
   wire FE_RN_1177_0;
   wire FE_RN_1176_0;
   wire FE_RN_1175_0;
   wire FE_RN_1174_0;
   wire FE_RN_1173_0;
   wire FE_RN_1172_0;
   wire FE_RN_1171_0;
   wire FE_RN_1170_0;
   wire FE_RN_1169_0;
   wire FE_RN_1168_0;
   wire FE_RN_1167_0;
   wire FE_RN_1166_0;
   wire FE_RN_1165_0;
   wire FE_RN_1164_0;
   wire FE_RN_1163_0;
   wire FE_RN_1162_0;
   wire FE_RN_1161_0;
   wire FE_RN_1160_0;
   wire FE_RN_1159_0;
   wire FE_RN_1158_0;
   wire FE_RN_1157_0;
   wire FE_RN_1156_0;
   wire FE_RN_1155_0;
   wire FE_RN_1144_0;
   wire FE_RN_1143_0;
   wire FE_RN_1142_0;
   wire FE_RN_1141_0;
   wire FE_RN_1140_0;
   wire FE_RN_1139_0;
   wire FE_RN_1138_0;
   wire FE_RN_1137_0;
   wire FE_RN_1136_0;
   wire FE_RN_1135_0;
   wire FE_RN_1134_0;
   wire FE_RN_1133_0;
   wire FE_RN_1132_0;
   wire FE_RN_1131_0;
   wire FE_RN_1130_0;
   wire FE_RN_1129_0;
   wire FE_RN_1128_0;
   wire FE_RN_1127_0;
   wire FE_RN_1126_0;
   wire FE_RN_1125_0;
   wire FE_RN_1124_0;
   wire FE_RN_1123_0;
   wire FE_RN_1122_0;
   wire FE_RN_1121_0;
   wire FE_RN_1120_0;
   wire FE_RN_1119_0;
   wire FE_RN_1118_0;
   wire FE_RN_1117_0;
   wire FE_RN_1116_0;
   wire FE_RN_1115_0;
   wire FE_RN_1114_0;
   wire FE_RN_1113_0;
   wire FE_RN_1112_0;
   wire FE_RN_1111_0;
   wire FE_RN_1110_0;
   wire FE_RN_1109_0;
   wire n1;
   wire [24:1] carry;

   INVX2M FE_RC_1321_0 (.Y(FE_RN_1191_0), 
	.A(A[20]));
   NAND3BX4M FE_RC_1320_0 (.Y(FE_RN_1190_0), 
	.C(A[19]), 
	.B(FE_RN_1156_0), 
	.AN(B[19]));
   INVX2M FE_RC_1319_0 (.Y(FE_RN_1189_0), 
	.A(A[19]));
   NAND3X3M FE_RC_1318_0 (.Y(FE_RN_1188_0), 
	.C(B[19]), 
	.B(FE_RN_1189_0), 
	.A(FE_RN_1171_0));
   CLKNAND2X4M FE_RC_1317_0 (.Y(FE_RN_1187_0), 
	.B(FE_RN_1190_0), 
	.A(FE_RN_1188_0));
   NAND2X3M FE_RC_1316_0 (.Y(FE_RN_1186_0), 
	.B(FE_RN_1191_0), 
	.A(FE_RN_1187_0));
   INVX2M FE_RC_1315_0 (.Y(FE_RN_1185_0), 
	.A(A[19]));
   NOR2X8M FE_RC_1314_0 (.Y(FE_RN_1184_0), 
	.B(FE_RN_1185_0), 
	.A(FE_RN_1158_0));
   INVX2M FE_RC_1313_0 (.Y(FE_RN_1183_0), 
	.A(A[19]));
   NAND2X4M FE_RC_1312_0 (.Y(FE_RN_1182_0), 
	.B(FE_RN_1183_0), 
	.A(FE_RN_1156_0));
   INVX2M FE_RC_1311_0 (.Y(FE_RN_1181_0), 
	.A(carry[18]));
   NAND3X3M FE_RC_1310_0 (.Y(FE_RN_1180_0), 
	.C(FE_RN_1181_0), 
	.B(A[19]), 
	.A(FE_RN_1160_0));
   NAND4BX4M FE_RC_1309_0 (.Y(FE_RN_1179_0), 
	.D(FE_RN_1180_0), 
	.C(FE_RN_1182_0), 
	.B(FE_RN_1174_0), 
	.AN(FE_RN_1184_0));
   CLKNAND2X4M FE_RC_1308_0 (.Y(FE_RN_1178_0), 
	.B(A[20]), 
	.A(FE_RN_1179_0));
   NAND2X4M FE_RC_1307_0 (.Y(SUM[20]), 
	.B(FE_RN_1186_0), 
	.A(FE_RN_1178_0));
   INVX2M FE_RC_1306_0 (.Y(FE_RN_1177_0), 
	.A(FE_RN_1156_0));
   INVX2M FE_RC_1305_0 (.Y(FE_RN_1176_0), 
	.A(A[19]));
   CLKNAND2X8M FE_RC_1304_0 (.Y(FE_RN_1175_0), 
	.B(B[19]), 
	.A(FE_RN_1176_0));
   OAI2B1X8M FE_RC_1303_0 (.Y(FE_RN_1174_0), 
	.B0(FE_RN_1175_0), 
	.A1N(A[19]), 
	.A0(B[19]));
   INVX2M FE_RC_1302_0 (.Y(FE_RN_1173_0), 
	.A(carry[18]));
   NAND2X4M FE_RC_1301_0 (.Y(FE_RN_1172_0), 
	.B(FE_RN_1173_0), 
	.A(FE_RN_1160_0));
   NAND2X4M FE_RC_1300_0 (.Y(FE_RN_1171_0), 
	.B(FE_RN_1158_0), 
	.A(FE_RN_1172_0));
   NAND2X4M FE_RC_1299_0 (.Y(FE_RN_1170_0), 
	.B(FE_RN_1174_0), 
	.A(FE_RN_1171_0));
   OAI21X4M FE_RC_1298_0 (.Y(SUM[19]), 
	.B0(FE_RN_1170_0), 
	.A1(FE_RN_1174_0), 
	.A0(FE_RN_1177_0));
   INVX2M FE_RC_1297_0 (.Y(FE_RN_1169_0), 
	.A(carry[18]));
   INVX2M FE_RC_1296_0 (.Y(FE_RN_1168_0), 
	.A(A[18]));
   CLKNAND2X4M FE_RC_1295_0 (.Y(FE_RN_1167_0), 
	.B(B[18]), 
	.A(FE_RN_1168_0));
   OAI2B1X4M FE_RC_1294_0 (.Y(FE_RN_1166_0), 
	.B0(FE_RN_1167_0), 
	.A1N(A[18]), 
	.A0(B[18]));
   NAND2X2M FE_RC_1293_0 (.Y(FE_RN_1165_0), 
	.B(FE_RN_1169_0), 
	.A(FE_RN_1166_0));
   CLKNAND2X4M FE_RC_1292_0 (.Y(FE_RN_1164_0), 
	.B(FE_RN_1158_0), 
	.A(FE_RN_1160_0));
   NAND2X3M FE_RC_1291_0 (.Y(FE_RN_1163_0), 
	.B(carry[18]), 
	.A(FE_RN_1164_0));
   NAND2X2M FE_RC_1290_0 (.Y(SUM[18]), 
	.B(FE_RN_1165_0), 
	.A(FE_RN_1163_0));
   NOR3X8M FE_RC_1289_0 (.Y(FE_RN_1162_0), 
	.C(A[19]), 
	.B(A[20]), 
	.A(FE_RN_1156_0));
   INVX2M FE_RC_1288_0 (.Y(FE_RN_1161_0), 
	.A(B[19]));
   CLKNAND2X4M FE_RC_1287_0 (.Y(FE_RN_1160_0), 
	.B(B[18]), 
	.A(A[18]));
   INVX2M FE_RC_1286_0 (.Y(FE_RN_1159_0), 
	.A(A[18]));
   NAND2BX8M FE_RC_1285_0 (.Y(FE_RN_1158_0), 
	.B(FE_RN_1159_0), 
	.AN(B[18]));
   CLKNAND2X4M FE_RC_1284_0 (.Y(FE_RN_1157_0), 
	.B(carry[18]), 
	.A(FE_RN_1158_0));
   NAND2X5M FE_RC_1283_0 (.Y(FE_RN_1156_0), 
	.B(FE_RN_1160_0), 
	.A(FE_RN_1157_0));
   NAND3X4M FE_RC_1282_0 (.Y(FE_RN_1155_0), 
	.C(A[19]), 
	.B(A[20]), 
	.A(FE_RN_1156_0));
   OAI21X4M FE_RC_1281_0 (.Y(carry[21]), 
	.B0(FE_RN_1155_0), 
	.A1(FE_RN_1161_0), 
	.A0(FE_RN_1162_0));
   INVX2M FE_RC_1268_0 (.Y(FE_RN_1144_0), 
	.A(B[17]));
   INVX2M FE_RC_1267_0 (.Y(FE_RN_1143_0), 
	.A(carry[16]));
   NAND3X4M FE_RC_1266_0 (.Y(FE_RN_1142_0), 
	.C(FE_RN_1143_0), 
	.B(A[17]), 
	.A(FE_RN_1111_0));
   INVX2M FE_RC_1265_0 (.Y(FE_RN_1141_0), 
	.A(FE_RN_1111_0));
   INVX2M FE_RC_1264_0 (.Y(FE_RN_1140_0), 
	.A(A[17]));
   INVX2M FE_RC_1263_0 (.Y(FE_RN_1139_0), 
	.A(A[17]));
   NOR2X4M FE_RC_1262_0 (.Y(FE_RN_1138_0), 
	.B(FE_RN_1139_0), 
	.A(FE_RN_1113_0));
   AOI21X4M FE_RC_1261_0 (.Y(FE_RN_1137_0), 
	.B0(FE_RN_1138_0), 
	.A1(FE_RN_1140_0), 
	.A0(FE_RN_1141_0));
   INVX2M FE_RC_1260_0 (.Y(FE_RN_1136_0), 
	.A(A[17]));
   NAND2X4M FE_RC_1259_0 (.Y(FE_RN_1135_0), 
	.B(FE_RN_1136_0), 
	.A(FE_RN_1112_0));
   NAND3X4M FE_RC_1258_0 (.Y(FE_RN_1134_0), 
	.C(FE_RN_1142_0), 
	.B(FE_RN_1137_0), 
	.A(FE_RN_1135_0));
   NAND2X4M FE_RC_1257_0 (.Y(FE_RN_1133_0), 
	.B(FE_RN_1144_0), 
	.A(FE_RN_1134_0));
   INVX2M FE_RC_1256_0 (.Y(FE_RN_1132_0), 
	.A(carry[16]));
   INVX2M FE_RC_1255_0 (.Y(FE_RN_1131_0), 
	.A(FE_RN_1116_0));
   NAND2X2M FE_RC_1254_0 (.Y(FE_RN_1130_0), 
	.B(FE_RN_1132_0), 
	.A(FE_RN_1131_0));
   INVX2M FE_RC_1253_0 (.Y(FE_RN_1129_0), 
	.A(FE_RN_1111_0));
   NOR2X4M FE_RC_1252_0 (.Y(FE_RN_1128_0), 
	.B(A[17]), 
	.A(FE_RN_1113_0));
   AOI21X4M FE_RC_1251_0 (.Y(FE_RN_1127_0), 
	.B0(FE_RN_1128_0), 
	.A1(A[17]), 
	.A0(FE_RN_1129_0));
   NAND2X4M FE_RC_1250_0 (.Y(FE_RN_1126_0), 
	.B(A[17]), 
	.A(FE_RN_1112_0));
   NAND3X4M FE_RC_1249_0 (.Y(FE_RN_1125_0), 
	.C(FE_RN_1130_0), 
	.B(FE_RN_1127_0), 
	.A(FE_RN_1126_0));
   NAND2X4M FE_RC_1248_0 (.Y(FE_RN_1124_0), 
	.B(B[17]), 
	.A(FE_RN_1125_0));
   NAND2X2M FE_RC_1247_0 (.Y(SUM[17]), 
	.B(FE_RN_1133_0), 
	.A(FE_RN_1124_0));
   INVX2M FE_RC_1246_0 (.Y(FE_RN_1123_0), 
	.A(carry[16]));
   NAND2BX4M FE_RC_1245_0 (.Y(FE_RN_1122_0), 
	.B(B[16]), 
	.AN(A[16]));
   OAI2B1X4M FE_RC_1244_0 (.Y(FE_RN_1121_0), 
	.B0(FE_RN_1122_0), 
	.A1N(A[16]), 
	.A0(B[16]));
   NAND2X4M FE_RC_1243_0 (.Y(FE_RN_1120_0), 
	.B(FE_RN_1123_0), 
	.A(FE_RN_1121_0));
   NAND2X4M FE_RC_1242_0 (.Y(FE_RN_1119_0), 
	.B(FE_RN_1111_0), 
	.A(FE_RN_1113_0));
   NAND2X4M FE_RC_1241_0 (.Y(FE_RN_1118_0), 
	.B(carry[16]), 
	.A(FE_RN_1119_0));
   NAND2X4M FE_RC_1240_0 (.Y(SUM[16]), 
	.B(FE_RN_1120_0), 
	.A(FE_RN_1118_0));
   INVX2M FE_RC_1239_0 (.Y(FE_RN_1117_0), 
	.A(A[17]));
   CLKNAND2X8M FE_RC_1238_0 (.Y(FE_RN_1116_0), 
	.B(FE_RN_1117_0), 
	.A(FE_RN_1111_0));
   OAI21X8M FE_RC_1237_0 (.Y(FE_RN_1115_0), 
	.B0(B[17]), 
	.A1(FE_RN_1116_0), 
	.A0(FE_RN_1112_0));
   INVX2M FE_RC_1236_0 (.Y(FE_RN_1114_0), 
	.A(A[16]));
   NAND2BX8M FE_RC_1235_0 (.Y(FE_RN_1113_0), 
	.B(FE_RN_1114_0), 
	.AN(B[16]));
   AND2X12M FE_RC_1234_0 (.Y(FE_RN_1112_0), 
	.B(carry[16]), 
	.A(FE_RN_1113_0));
   NAND2X6M FE_RC_1233_0 (.Y(FE_RN_1111_0), 
	.B(B[16]), 
	.A(A[16]));
   INVX2M FE_RC_1232_0 (.Y(FE_RN_1110_0), 
	.A(FE_RN_1111_0));
   OAI21X8M FE_RC_1231_0 (.Y(FE_RN_1109_0), 
	.B0(A[17]), 
	.A1(FE_RN_1110_0), 
	.A0(FE_RN_1112_0));
   NAND2X4M FE_RC_1230_0 (.Y(carry[18]), 
	.B(FE_RN_1115_0), 
	.A(FE_RN_1109_0));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_23 (.S(SUM[23]), 
	.CO(carry[24]), 
	.CI(carry[23]), 
	.B(B[23]), 
	.A(A[23]));
   ADDFHX1M U1_22 (.S(SUM[22]), 
	.CO(carry[23]), 
	.CI(carry[22]), 
	.B(B[22]), 
	.A(A[22]));
   ADDFHX1M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFHX1M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFHX1M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFHX1M U1_21 (.S(SUM[21]), 
	.CO(carry[22]), 
	.CI(carry[21]), 
	.B(B[21]), 
	.A(A[21]));
   XOR3X1M U1_24 (.Y(SUM[24]), 
	.C(carry[24]), 
	.B(B[24]), 
	.A(A[24]));
   ADDFHX4M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFHX4M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFHX8M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX1M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFHX4M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFHX2M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XOR2XLM U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module LMS_in_width4_K_width9_err_width20_test_1 (
	CLK, 
	RST, 
	TDC_OUT, 
	Q_ERR, 
	Kcal_UNSIGN, 
	OV_FL, 
	UN_FL, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] TDC_OUT;
   input [19:0] Q_ERR;
   output [8:0] Kcal_UNSIGN;
   output OV_FL;
   output UN_FL;
   input test_si;
   input test_se;

   // Internal wires
   wire CORR_OUT_24;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire \CORR_IN[9] ;
   wire \CORR_IN[8] ;
   wire \CORR_IN[7] ;
   wire \CORR_IN[6] ;
   wire \CORR_IN[5] ;
   wire \CORR_IN[4] ;
   wire \CORR_IN[23] ;
   wire \CORR_IN[22] ;
   wire \CORR_IN[21] ;
   wire \CORR_IN[20] ;
   wire \CORR_IN[19] ;
   wire \CORR_IN[18] ;
   wire \CORR_IN[17] ;
   wire \CORR_IN[16] ;
   wire \CORR_IN[15] ;
   wire \CORR_IN[14] ;
   wire \CORR_IN[13] ;
   wire \CORR_IN[12] ;
   wire \CORR_IN[11] ;
   wire \CORR_IN[10] ;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire [15:0] CORR_OUT;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   SDFFRQX2M \CORR_OUT_reg[12]  (.SI(CORR_OUT[11]), 
	.SE(n49), 
	.RN(RST), 
	.Q(CORR_OUT[12]), 
	.D(N42), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[11]  (.SI(CORR_OUT[10]), 
	.SE(n45), 
	.RN(RST), 
	.Q(CORR_OUT[11]), 
	.D(N41), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[10]  (.SI(CORR_OUT[9]), 
	.SE(n51), 
	.RN(RST), 
	.Q(CORR_OUT[10]), 
	.D(N40), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[9]  (.SI(CORR_OUT[8]), 
	.SE(n53), 
	.RN(RST), 
	.Q(CORR_OUT[9]), 
	.D(N39), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[8]  (.SI(CORR_OUT[7]), 
	.SE(n55), 
	.RN(RST), 
	.Q(CORR_OUT[8]), 
	.D(N38), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[7]  (.SI(CORR_OUT[6]), 
	.SE(n49), 
	.RN(RST), 
	.Q(CORR_OUT[7]), 
	.D(N37), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[6]  (.SI(CORR_OUT[5]), 
	.SE(n52), 
	.RN(RST), 
	.Q(CORR_OUT[6]), 
	.D(N36), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[5]  (.SI(CORR_OUT[4]), 
	.SE(n54), 
	.RN(RST), 
	.Q(CORR_OUT[5]), 
	.D(N35), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[4]  (.SI(CORR_OUT[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(CORR_OUT[4]), 
	.D(N34), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[3]  (.SI(CORR_OUT[2]), 
	.SE(n55), 
	.RN(RST), 
	.Q(CORR_OUT[3]), 
	.D(N33), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[2]  (.SI(CORR_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CORR_OUT[2]), 
	.D(N32), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[1]  (.SI(CORR_OUT[0]), 
	.SE(n52), 
	.RN(RST), 
	.Q(CORR_OUT[1]), 
	.D(N31), 
	.CK(CLK));
   SDFFRQX2M \CORR_OUT_reg[0]  (.SI(test_si), 
	.SE(n50), 
	.RN(RST), 
	.Q(CORR_OUT[0]), 
	.D(N30), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[24]  (.SI(Kcal_UNSIGN[7]), 
	.SE(n44), 
	.RN(RST), 
	.Q(CORR_OUT_24), 
	.D(N54), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[17]  (.SI(Kcal_UNSIGN[0]), 
	.SE(n45), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[1]), 
	.D(N47), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[21]  (.SI(Kcal_UNSIGN[4]), 
	.SE(n54), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[5]), 
	.D(N51), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[22]  (.SI(Kcal_UNSIGN[5]), 
	.SE(n44), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[6]), 
	.D(N52), 
	.CK(CLK));
   SDFFRQX1M \CORR_OUT_reg[15]  (.SI(CORR_OUT[14]), 
	.SE(n53), 
	.RN(RST), 
	.Q(CORR_OUT[15]), 
	.D(N45), 
	.CK(CLK));
   SDFFRQX1M \CORR_OUT_reg[14]  (.SI(CORR_OUT[13]), 
	.SE(n55), 
	.RN(RST), 
	.Q(CORR_OUT[14]), 
	.D(N44), 
	.CK(CLK));
   SDFFRHQX8M \CORR_OUT_reg[19]  (.SI(Kcal_UNSIGN[2]), 
	.SE(n51), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[3]), 
	.D(N49), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[18]  (.SI(Kcal_UNSIGN[1]), 
	.SE(n50), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[2]), 
	.D(N48), 
	.CK(CLK));
   SDFFRQX1M \CORR_OUT_reg[13]  (.SI(CORR_OUT[12]), 
	.SE(n54), 
	.RN(RST), 
	.Q(CORR_OUT[13]), 
	.D(N43), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[16]  (.SI(CORR_OUT[15]), 
	.SE(n53), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[0]), 
	.D(N46), 
	.CK(CLK));
   SDFFRHQX8M \CORR_OUT_reg[20]  (.SI(Kcal_UNSIGN[3]), 
	.SE(n49), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[4]), 
	.D(N50), 
	.CK(CLK));
   SDFFRHQX4M \CORR_OUT_reg[23]  (.SI(Kcal_UNSIGN[6]), 
	.SE(n50), 
	.RN(RST), 
	.Q(Kcal_UNSIGN[7]), 
	.D(N53), 
	.CK(CLK));
   INVX4M U28 (.Y(Kcal_UNSIGN[8]), 
	.A(CORR_OUT_24));
   NOR2BX2M U30 (.Y(N49), 
	.B(n33), 
	.AN(N24));
   NOR2BX2M U33 (.Y(N47), 
	.B(n33), 
	.AN(N22));
   NOR2BX4M U34 (.Y(N54), 
	.B(n33), 
	.AN(N29));
   AND3XLM U35 (.Y(n35), 
	.C(Kcal_UNSIGN[3]), 
	.B(Kcal_UNSIGN[8]), 
	.A(Kcal_UNSIGN[4]));
   NOR3X1M U36 (.Y(n34), 
	.C(Kcal_UNSIGN[6]), 
	.B(Kcal_UNSIGN[7]), 
	.A(Kcal_UNSIGN[5]));
   NOR2BX2M U40 (.Y(N52), 
	.B(n33), 
	.AN(N27));
   NOR2BX2M U41 (.Y(N53), 
	.B(n33), 
	.AN(N28));
   NOR2BX2M U42 (.Y(N50), 
	.B(n33), 
	.AN(N25));
   NOR2BX2M U43 (.Y(N51), 
	.B(n33), 
	.AN(N26));
   NOR2BX2M U44 (.Y(N46), 
	.B(n33), 
	.AN(N21));
   NOR2BX2M U45 (.Y(N48), 
	.B(n33), 
	.AN(N23));
   NOR2BX2M U46 (.Y(N44), 
	.B(n33), 
	.AN(N19));
   NOR2BX2M U47 (.Y(N45), 
	.B(n33), 
	.AN(N20));
   NOR2BX2M U48 (.Y(N41), 
	.B(n33), 
	.AN(N16));
   NOR2BX2M U49 (.Y(N42), 
	.B(n33), 
	.AN(N17));
   NOR2BX2M U50 (.Y(N43), 
	.B(n33), 
	.AN(N18));
   NOR2BX2M U51 (.Y(N38), 
	.B(n33), 
	.AN(N13));
   NOR2BX2M U52 (.Y(N39), 
	.B(n33), 
	.AN(N14));
   NOR2BX2M U53 (.Y(N40), 
	.B(n33), 
	.AN(N15));
   NOR2BX2M U54 (.Y(N36), 
	.B(n33), 
	.AN(N11));
   NOR2BX2M U55 (.Y(N37), 
	.B(n33), 
	.AN(N12));
   NOR2BX2M U56 (.Y(N31), 
	.B(n33), 
	.AN(N6));
   NOR2BX2M U57 (.Y(N32), 
	.B(n33), 
	.AN(N7));
   NOR2BX2M U58 (.Y(N33), 
	.B(n33), 
	.AN(N8));
   NOR2BX2M U59 (.Y(N34), 
	.B(n33), 
	.AN(N9));
   NOR2BX2M U60 (.Y(N35), 
	.B(n33), 
	.AN(N10));
   NAND2X3M U61 (.Y(n33), 
	.B(n31), 
	.A(n32));
   NOR2BX2M U62 (.Y(N30), 
	.B(n33), 
	.AN(N5));
   NAND4BX1M U63 (.Y(n31), 
	.D(n34), 
	.C(Kcal_UNSIGN[3]), 
	.B(CORR_OUT_24), 
	.AN(Kcal_UNSIGN[4]));
   NAND4X1M U64 (.Y(n32), 
	.D(n35), 
	.C(Kcal_UNSIGN[7]), 
	.B(Kcal_UNSIGN[5]), 
	.A(Kcal_UNSIGN[6]));
   CLKINVX12M U65 (.Y(OV_FL), 
	.A(n32));
   CLKINVX12M U66 (.Y(UN_FL), 
	.A(n31));
   DLY1X1M U69 (.Y(n44), 
	.A(n47));
   DLY1X1M U70 (.Y(n45), 
	.A(n46));
   DLY1X1M U71 (.Y(n46), 
	.A(test_se));
   DLY1X1M U72 (.Y(n47), 
	.A(test_se));
   DLY1X1M U73 (.Y(n48), 
	.A(test_se));
   DLY1X1M U74 (.Y(n49), 
	.A(n52));
   DLY1X1M U75 (.Y(n50), 
	.A(n47));
   DLY1X1M U76 (.Y(n51), 
	.A(n46));
   DLY1X1M U77 (.Y(n52), 
	.A(n48));
   DLY1X1M U78 (.Y(n53), 
	.A(n47));
   DLY1X1M U79 (.Y(n54), 
	.A(n46));
   DLY1X1M U80 (.Y(n55), 
	.A(n48));
   LMS_in_width4_K_width9_err_width20_DW02_mult_0 mult_38 (.A({ Q_ERR[19],
		Q_ERR[18],
		Q_ERR[17],
		Q_ERR[16],
		Q_ERR[15],
		Q_ERR[14],
		Q_ERR[13],
		Q_ERR[12],
		Q_ERR[11],
		Q_ERR[10],
		Q_ERR[9],
		Q_ERR[8],
		Q_ERR[7],
		Q_ERR[6],
		Q_ERR[5],
		Q_ERR[4],
		Q_ERR[3],
		Q_ERR[2],
		Q_ERR[1],
		Q_ERR[0] }), 
	.B({ TDC_OUT[3],
		TDC_OUT[2],
		TDC_OUT[1],
		TDC_OUT[0] }), 
	.TC(1'b1), 
	.PRODUCT({ \CORR_IN[23] ,
		\CORR_IN[22] ,
		\CORR_IN[21] ,
		\CORR_IN[20] ,
		\CORR_IN[19] ,
		\CORR_IN[18] ,
		\CORR_IN[17] ,
		\CORR_IN[16] ,
		\CORR_IN[15] ,
		\CORR_IN[14] ,
		\CORR_IN[13] ,
		\CORR_IN[12] ,
		\CORR_IN[11] ,
		\CORR_IN[10] ,
		\CORR_IN[9] ,
		\CORR_IN[8] ,
		\CORR_IN[7] ,
		\CORR_IN[6] ,
		\CORR_IN[5] ,
		\CORR_IN[4] ,
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3 }));
   LMS_in_width4_K_width9_err_width20_DW01_add_0 add_51 (.A({ CORR_OUT_24,
		Kcal_UNSIGN[7],
		Kcal_UNSIGN[6],
		Kcal_UNSIGN[5],
		Kcal_UNSIGN[4],
		Kcal_UNSIGN[3],
		Kcal_UNSIGN[2],
		Kcal_UNSIGN[1],
		Kcal_UNSIGN[0],
		CORR_OUT[15],
		CORR_OUT[14],
		CORR_OUT[13],
		CORR_OUT[12],
		CORR_OUT[11],
		CORR_OUT[10],
		CORR_OUT[9],
		CORR_OUT[8],
		CORR_OUT[7],
		CORR_OUT[6],
		CORR_OUT[5],
		CORR_OUT[4],
		CORR_OUT[3],
		CORR_OUT[2],
		CORR_OUT[1],
		CORR_OUT[0] }), 
	.B({ \CORR_IN[23] ,
		\CORR_IN[23] ,
		\CORR_IN[23] ,
		\CORR_IN[23] ,
		\CORR_IN[23] ,
		\CORR_IN[23] ,
		\CORR_IN[22] ,
		\CORR_IN[21] ,
		\CORR_IN[20] ,
		\CORR_IN[19] ,
		\CORR_IN[18] ,
		\CORR_IN[17] ,
		\CORR_IN[16] ,
		\CORR_IN[15] ,
		\CORR_IN[14] ,
		\CORR_IN[13] ,
		\CORR_IN[12] ,
		\CORR_IN[11] ,
		\CORR_IN[10] ,
		\CORR_IN[9] ,
		\CORR_IN[8] ,
		\CORR_IN[7] ,
		\CORR_IN[6] ,
		\CORR_IN[5] ,
		\CORR_IN[4]  }), 
	.CI(1'b0), 
	.SUM({ N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7,
		N6,
		N5 }));
endmodule

