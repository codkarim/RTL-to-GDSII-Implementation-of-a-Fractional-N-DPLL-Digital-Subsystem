module DIG_FEEDFWD (
	REF_CLK, 
	RST, 
	DLF_Ext_En, 
	DLF_Ext_Data, 
	TDC_OUT, 
	KP, 
	KI, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	DAC_IN, 
	OV_FL, 
	UN_FL);
   input REF_CLK;
   input RST;
   input DLF_Ext_En;
   input [14:0] DLF_Ext_Data;
   input [3:0] TDC_OUT;
   input [3:0] KP;
   input [3:0] KI;
   input SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output SO;
   output [4:0] DAC_IN;
   output OV_FL;
   output UN_FL;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire CLK_M__L3_N1;
   wire CLK_M__L3_N0;
   wire CLK_M__L2_N0;
   wire CLK_M__L1_N0;
   wire CLK_M;
   wire RST_M;
   wire n5;
   wire [14:0] Mash_IN;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M CLK_M__L3_I1 (.Y(CLK_M__L3_N1), 
	.A(CLK_M__L2_N0));
   CLKINVX32M CLK_M__L3_I0 (.Y(CLK_M__L3_N0), 
	.A(CLK_M__L2_N0));
   INVX20M CLK_M__L2_I0 (.Y(CLK_M__L2_N0), 
	.A(CLK_M__L1_N0));
   BUFX12M CLK_M__L1_I0 (.Y(CLK_M__L1_N0), 
	.A(CLK_M));
   mux2X1_1 U0_clk (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(CLK_M));
   mux2X1_0 U0_RST (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_M));
   DLF_in_width4_coeff_width4_out_width15_test_1 U0_DLF (.DLF_IN({ TDC_OUT[3],
		TDC_OUT[2],
		TDC_OUT[1],
		TDC_OUT[0] }), 
	.KP({ KP[3],
		KP[2],
		KP[1],
		KP[0] }), 
	.KI({ KI[3],
		KI[2],
		KI[1],
		KI[0] }), 
	.CLK(CLK_M__L3_N0), 
	.RST(RST_M), 
	.DLF_Ext_En(DLF_Ext_En), 
	.DLF_Ext_Data({ DLF_Ext_Data[14],
		DLF_Ext_Data[13],
		DLF_Ext_Data[12],
		DLF_Ext_Data[11],
		DLF_Ext_Data[10],
		DLF_Ext_Data[9],
		DLF_Ext_Data[8],
		DLF_Ext_Data[7],
		DLF_Ext_Data[6],
		DLF_Ext_Data[5],
		DLF_Ext_Data[4],
		DLF_Ext_Data[3],
		DLF_Ext_Data[2],
		DLF_Ext_Data[1],
		DLF_Ext_Data[0] }), 
	.OV_FL(OV_FL), 
	.UN_FL(UN_FL), 
	.DLF_OUT({ Mash_IN[14],
		Mash_IN[13],
		Mash_IN[12],
		Mash_IN[11],
		Mash_IN[10],
		Mash_IN[9],
		Mash_IN[8],
		Mash_IN[7],
		Mash_IN[6],
		Mash_IN[5],
		Mash_IN[4],
		Mash_IN[3],
		Mash_IN[2],
		Mash_IN[1],
		Mash_IN[0] }), 
	.test_si(SI), 
	.test_so(n5), 
	.test_se(SE));
   DSM_MASH_1_1_IN_W15_test_1 U0_MASH (.CLK(CLK_M__L3_N0), 
	.RST(RST_M), 
	.DSM_IN({ Mash_IN[14],
		Mash_IN[13],
		Mash_IN[12],
		Mash_IN[11],
		Mash_IN[10],
		Mash_IN[9],
		Mash_IN[8],
		Mash_IN[7],
		Mash_IN[6],
		Mash_IN[5],
		Mash_IN[4],
		Mash_IN[3],
		Mash_IN[2],
		Mash_IN[1],
		Mash_IN[0] }), 
	.DSM_OUT({ DAC_IN[4],
		DAC_IN[3],
		DAC_IN[2],
		DAC_IN[1],
		DAC_IN[0] }), 
	.test_si(n5), 
	.test_so(SO), 
	.test_se(SE), 
	.CLK_M__L3_N1(CLK_M__L3_N1));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 09:14:02 2026
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

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module DLF_in_width4_coeff_width4_out_width15_DW01_add_0 (
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

   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(carry[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFX2M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFX2M U1_17 (.S(SUM[17]), 
	.CO(carry[18]), 
	.CI(carry[17]), 
	.B(B[17]), 
	.A(A[17]));
   ADDFX2M U1_16 (.S(SUM[16]), 
	.CO(carry[17]), 
	.CI(carry[16]), 
	.B(B[16]), 
	.A(A[16]));
   ADDFX2M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX2M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFX2M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   XOR3XLM U1_20 (.Y(SUM[20]), 
	.C(carry[20]), 
	.B(B[20]), 
	.A(A[20]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module DLF_in_width4_coeff_width4_out_width15_DW01_add_1 (
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
   wire n2;
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
   wire [20:1] carry;

   ADDFHX2M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFHX2M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   XOR3XLM U1_20 (.Y(SUM[20]), 
	.C(carry[20]), 
	.B(B[20]), 
	.A(A[20]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFHX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFHX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(carry[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   ADDFHX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFHX1M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
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
   ADDFHX1M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFHX2M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFHX2M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   OAI21X4M U1 (.Y(n4), 
	.B0(B[5]), 
	.A1(n3), 
	.A0(A[5]));
   OAI21X4M U2 (.Y(n8), 
	.B0(B[3]), 
	.A1(n7), 
	.A0(A[3]));
   OAI2B1X4M U3 (.Y(n5), 
	.B0(n8), 
	.A1N(n7), 
	.A0(n2));
   INVX2M U5 (.Y(n2), 
	.A(A[3]));
   OAI211X4M U6 (.Y(n11), 
	.C0(A[0]), 
	.B0(B[0]), 
	.A1(A[1]), 
	.A0(B[1]));
   OAI2BB1X4M U7 (.Y(n9), 
	.B0(n11), 
	.A1N(B[1]), 
	.A0N(A[1]));
   OAI21X4M U8 (.Y(n10), 
	.B0(B[2]), 
	.A1(n9), 
	.A0(A[2]));
   OAI2BB1X4M U9 (.Y(n7), 
	.B0(n10), 
	.A1N(A[2]), 
	.A0N(n9));
   OAI21X6M U10 (.Y(n6), 
	.B0(B[4]), 
	.A1(n5), 
	.A0(A[4]));
   OAI2BB1X2M U12 (.Y(carry[6]), 
	.B0(n4), 
	.A1N(A[5]), 
	.A0N(n3));
   OAI2B1X4M U11 (.Y(n3), 
	.B0(n6), 
	.A1N(n5), 
	.A0(n12));
   CLKINVX2M U13 (.Y(n12), 
	.A(A[4]));
endmodule

module DLF_in_width4_coeff_width4_out_width15_test_1 (
	DLF_IN, 
	KP, 
	KI, 
	CLK, 
	RST, 
	DLF_Ext_En, 
	DLF_Ext_Data, 
	OV_FL, 
	UN_FL, 
	DLF_OUT, 
	test_si, 
	test_so, 
	test_se);
   input [3:0] DLF_IN;
   input [3:0] KP;
   input [3:0] KI;
   input CLK;
   input RST;
   input DLF_Ext_En;
   input [14:0] DLF_Ext_Data;
   output OV_FL;
   output UN_FL;
   output [14:0] DLF_OUT;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n103;
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
   wire n45;
   wire \sla_54/ML_int[3][0] ;
   wire \sla_54/ML_int[3][1] ;
   wire \sla_54/ML_int[3][2] ;
   wire \sla_54/ML_int[3][6] ;
   wire \sla_54/ML_int[3][7] ;
   wire \sla_54/ML_int[3][8] ;
   wire \sla_54/ML_int[3][9] ;
   wire \sla_54/ML_int[2][2] ;
   wire \sla_54/ML_int[1][0] ;
   wire \sla_48/ML_int[3][0] ;
   wire \sla_48/ML_int[3][1] ;
   wire \sla_48/ML_int[3][2] ;
   wire \sla_48/ML_int[3][4] ;
   wire \sla_48/ML_int[3][5] ;
   wire \sla_48/ML_int[3][6] ;
   wire \sla_48/ML_int[3][7] ;
   wire \sla_48/ML_int[3][8] ;
   wire \sla_48/ML_int[3][9] ;
   wire \sla_48/ML_int[2][2] ;
   wire \sla_48/ML_int[1][0] ;
   wire \sla_48/ML_int[1][1] ;
   wire \sla_48/ML_int[1][2] ;
   wire n3;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n40;
   wire n42;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n59;
   wire n61;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire [3:0] DLF_IN_FLOP;
   wire [17:0] I_path;
   wire [17:0] P_path;
   wire [20:0] acc_out;
   wire [20:6] PI_path;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;

   assign test_so = acc_out[20] ;

   SDFFRQX2M \acc_out_reg[20]  (.SI(acc_out[19]), 
	.SE(n112), 
	.RN(RST), 
	.Q(acc_out[20]), 
	.D(N48), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[19]  (.SI(acc_out[18]), 
	.SE(n112), 
	.RN(RST), 
	.Q(acc_out[19]), 
	.D(N47), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[18]  (.SI(acc_out[17]), 
	.SE(n115), 
	.RN(RST), 
	.Q(acc_out[18]), 
	.D(N46), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[17]  (.SI(acc_out[16]), 
	.SE(n112), 
	.RN(RST), 
	.Q(acc_out[17]), 
	.D(N45), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[16]  (.SI(acc_out[15]), 
	.SE(n114), 
	.RN(RST), 
	.Q(acc_out[16]), 
	.D(N44), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[15]  (.SI(acc_out[14]), 
	.SE(n117), 
	.RN(RST), 
	.Q(acc_out[15]), 
	.D(N43), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[14]  (.SI(acc_out[13]), 
	.SE(n114), 
	.RN(RST), 
	.Q(acc_out[14]), 
	.D(N42), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[13]  (.SI(acc_out[12]), 
	.SE(n107), 
	.RN(RST), 
	.Q(acc_out[13]), 
	.D(N41), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[12]  (.SI(acc_out[11]), 
	.SE(n113), 
	.RN(RST), 
	.Q(acc_out[12]), 
	.D(N40), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[11]  (.SI(acc_out[10]), 
	.SE(n116), 
	.RN(RST), 
	.Q(acc_out[11]), 
	.D(N39), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[10]  (.SI(acc_out[9]), 
	.SE(n113), 
	.RN(RST), 
	.Q(acc_out[10]), 
	.D(N38), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[9]  (.SI(acc_out[8]), 
	.SE(n106), 
	.RN(RST), 
	.Q(acc_out[9]), 
	.D(N37), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[8]  (.SI(acc_out[7]), 
	.SE(n106), 
	.RN(RST), 
	.Q(acc_out[8]), 
	.D(N36), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[7]  (.SI(acc_out[6]), 
	.SE(n113), 
	.RN(RST), 
	.Q(acc_out[7]), 
	.D(N35), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[6]  (.SI(acc_out[5]), 
	.SE(n116), 
	.RN(RST), 
	.Q(acc_out[6]), 
	.D(N34), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[5]  (.SI(acc_out[4]), 
	.SE(n116), 
	.RN(RST), 
	.Q(acc_out[5]), 
	.D(N33), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[4]  (.SI(acc_out[3]), 
	.SE(n107), 
	.RN(RST), 
	.Q(acc_out[4]), 
	.D(N32), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[3]  (.SI(acc_out[2]), 
	.SE(n114), 
	.RN(RST), 
	.Q(acc_out[3]), 
	.D(N31), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[2]  (.SI(acc_out[1]), 
	.SE(n117), 
	.RN(RST), 
	.Q(acc_out[2]), 
	.D(N30), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[1]  (.SI(acc_out[0]), 
	.SE(n117), 
	.RN(RST), 
	.Q(acc_out[1]), 
	.D(N29), 
	.CK(CLK));
   SDFFRQX2M \acc_out_reg[0]  (.SI(n7), 
	.SE(n108), 
	.RN(RST), 
	.Q(acc_out[0]), 
	.D(N28), 
	.CK(CLK));
   SDFFRQX2M \DLF_IN_FLOP_reg[0]  (.SI(test_si), 
	.SE(n118), 
	.RN(RST), 
	.Q(DLF_IN_FLOP[0]), 
	.D(DLF_IN[0]), 
	.CK(CLK));
   SDFFRX1M \DLF_IN_FLOP_reg[3]  (.SI(DLF_IN_FLOP[2]), 
	.SE(n115), 
	.RN(RST), 
	.QN(n7), 
	.D(DLF_IN[3]), 
	.CK(CLK));
   BUFX10M U8 (.Y(UN_FL), 
	.A(n103));
   CLKINVX12M U9 (.Y(OV_FL), 
	.A(n42));
   OR4X1M U32 (.Y(n42), 
	.D(PI_path[20]), 
	.C(n101), 
	.B(n100), 
	.A(n99));
   NOR2X2M U33 (.Y(n45), 
	.B(PI_path[18]), 
	.A(PI_path[19]));
   MX2X2M U34 (.Y(n92), 
	.S0(KP[1]), 
	.B(n3), 
	.A(n61));
   MXI2X3M U35 (.Y(n3), 
	.S0(KP[0]), 
	.B(n52), 
	.A(n10));
   CLKNAND2X2M U36 (.Y(n85), 
	.B(n87), 
	.A(n14));
   MXI2X6M U37 (.Y(n14), 
	.S0(KP[0]), 
	.B(n53), 
	.A(n52));
   MXI2X1M U38 (.Y(n40), 
	.S0(n87), 
	.B(n96), 
	.A(n14));
   INVX2M U40 (.Y(P_path[2]), 
	.A(n9));
   NOR2X2M U41 (.Y(P_path[1]), 
	.B(n46), 
	.A(n85));
   INVX2M U42 (.Y(P_path[4]), 
	.A(n50));
   CLKNAND2X2M U45 (.Y(n84), 
	.B(n87), 
	.A(\sla_54/ML_int[1][0] ));
   MXI2X1M U46 (.Y(n95), 
	.S0(KP[2]), 
	.B(\sla_54/ML_int[2][2] ), 
	.A(n61));
   NAND2BX2M U47 (.Y(n9), 
	.B(\sla_54/ML_int[2][2] ), 
	.AN(n46));
   NOR2X2M U48 (.Y(P_path[0]), 
	.B(n84), 
	.A(n46));
   MX2X2M U49 (.Y(n94), 
	.S0(KP[1]), 
	.B(n96), 
	.A(n61));
   AND2X2M U50 (.Y(n51), 
	.B(n87), 
	.A(n14));
   MXI2X1M U51 (.Y(n93), 
	.S0(KP[2]), 
	.B(n51), 
	.A(n94));
   NAND2X2M U52 (.Y(n12), 
	.B(n11), 
	.A(n92));
   NOR3X2M U54 (.Y(n5), 
	.C(DLF_Ext_En), 
	.B(UN_FL), 
	.A(OV_FL));
   AND2X2M U55 (.Y(n6), 
	.B(n13), 
	.A(n12));
   INVX1M U56 (.Y(\sla_54/ML_int[3][8] ), 
	.A(n97));
   MXI2X1M U57 (.Y(n97), 
	.S0(KP[2]), 
	.B(n92), 
	.A(n61));
   MXI2X1M U58 (.Y(P_path[11]), 
	.S0(KP[3]), 
	.B(n91), 
	.A(n7));
   OR2X2M U59 (.Y(n91), 
	.B(n40), 
	.A(KP[2]));
   MXI2X1M U60 (.Y(P_path[17]), 
	.S0(n48), 
	.B(n98), 
	.A(n7));
   MXI2X1M U61 (.Y(P_path[12]), 
	.S0(KP[3]), 
	.B(n6), 
	.A(n7));
   MXI2X1M U62 (.Y(P_path[14]), 
	.S0(KP[3]), 
	.B(n95), 
	.A(n7));
   MXI2X1M U63 (.Y(P_path[16]), 
	.S0(n48), 
	.B(n97), 
	.A(n7));
   AND4X2M U66 (.Y(n103), 
	.D(n101), 
	.C(n45), 
	.B(PI_path[16]), 
	.A(PI_path[20]));
   NOR2BX4M U67 (.Y(\sla_54/ML_int[1][0] ), 
	.B(KP[0]), 
	.AN(DLF_IN_FLOP[0]));
   INVXLM U68 (.Y(n90), 
	.A(\sla_54/ML_int[2][2] ));
   NOR2BX1M U69 (.Y(P_path[7]), 
	.B(KP[3]), 
	.AN(\sla_54/ML_int[3][7] ));
   MXI2X1M U70 (.Y(\sla_54/ML_int[3][7] ), 
	.S0(KP[2]), 
	.B(n40), 
	.A(n7));
   MXI2X1M U71 (.Y(P_path[13]), 
	.S0(KP[3]), 
	.B(n93), 
	.A(n7));
   MXI2X1M U72 (.Y(n98), 
	.S0(KP[2]), 
	.B(n94), 
	.A(n61));
   MXI2X1M U73 (.Y(n74), 
	.S0(KI[1]), 
	.B(\sla_48/ML_int[1][1] ), 
	.A(n81));
   NAND2BX8M U74 (.Y(n46), 
	.B(n88), 
	.AN(KP[3]));
   INVX20M U76 (.Y(n88), 
	.A(KP[2]));
   MX2X4M U77 (.Y(\sla_54/ML_int[2][2] ), 
	.S0(KP[1]), 
	.B(\sla_54/ML_int[1][0] ), 
	.A(n3));
   INVX2M U78 (.Y(n99), 
	.A(PI_path[19]));
   INVX20M U79 (.Y(n87), 
	.A(KP[1]));
   NAND2X1M U80 (.Y(n13), 
	.B(KP[2]), 
	.A(n89));
   INVXLM U81 (.Y(n11), 
	.A(KP[2]));
   INVX1M U82 (.Y(n89), 
	.A(n84));
   NAND2BX2M U83 (.Y(n50), 
	.B(n47), 
	.AN(n6));
   INVXLM U84 (.Y(\sla_48/ML_int[3][6] ), 
	.A(n80));
   INVXLM U85 (.Y(\sla_48/ML_int[3][5] ), 
	.A(n78));
   INVXLM U86 (.Y(\sla_48/ML_int[3][4] ), 
	.A(n76));
   OAI22XLM U87 (.Y(DLF_OUT[14]), 
	.B1(n102), 
	.B0(DLF_Ext_Data[14]), 
	.A1(DLF_Ext_En), 
	.A0(PI_path[20]));
   CLKINVX1M U88 (.Y(n48), 
	.A(n47));
   MX2XLM U90 (.Y(P_path[8]), 
	.S0(KP[3]), 
	.B(\sla_54/ML_int[3][0] ), 
	.A(\sla_54/ML_int[3][8] ));
   MX2XLM U91 (.Y(P_path[10]), 
	.S0(KP[3]), 
	.B(\sla_54/ML_int[3][2] ), 
	.A(n61));
   OAI2BB2X1M U92 (.Y(DLF_OUT[11]), 
	.B1(n101), 
	.B0(DLF_Ext_En), 
	.A1N(DLF_Ext_En), 
	.A0N(DLF_Ext_Data[11]));
   OAI2BB2X1M U93 (.Y(DLF_OUT[12]), 
	.B1(n100), 
	.B0(DLF_Ext_En), 
	.A1N(DLF_Ext_En), 
	.A0N(DLF_Ext_Data[12]));
   AO22XLM U94 (.Y(DLF_OUT[10]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[10]), 
	.A1(PI_path[16]), 
	.A0(n102));
   NOR2X2M U96 (.Y(P_path[3]), 
	.B(n40), 
	.A(n46));
   CLKINVX2M U97 (.Y(n59), 
	.A(n5));
   INVX2M U99 (.Y(n73), 
	.A(\sla_48/ML_int[2][2] ));
   INVX2M U101 (.Y(n101), 
	.A(PI_path[17]));
   INVX2M U102 (.Y(n100), 
	.A(PI_path[18]));
   INVX2M U103 (.Y(n71), 
	.A(n67));
   INVX2M U104 (.Y(n72), 
	.A(n68));
   OR2X2M U105 (.Y(n69), 
	.B(KI[2]), 
	.A(KI[3]));
   INVX2M U106 (.Y(n61), 
	.A(n7));
   NOR2BX2M U107 (.Y(N31), 
	.B(n59), 
	.AN(N10));
   NOR2BX2M U108 (.Y(N32), 
	.B(n59), 
	.AN(N11));
   NOR2BX2M U109 (.Y(N35), 
	.B(n59), 
	.AN(N14));
   NOR2BX2M U110 (.Y(N36), 
	.B(n59), 
	.AN(N15));
   NOR2BX2M U111 (.Y(N39), 
	.B(n59), 
	.AN(N18));
   NOR2BX2M U112 (.Y(N40), 
	.B(n59), 
	.AN(N19));
   NOR2BX2M U113 (.Y(N43), 
	.B(n59), 
	.AN(N22));
   NOR2BX2M U114 (.Y(N44), 
	.B(n59), 
	.AN(N23));
   NOR2BX2M U115 (.Y(N47), 
	.B(n59), 
	.AN(N26));
   NOR2BX2M U116 (.Y(N29), 
	.B(n59), 
	.AN(N8));
   NOR2BX2M U117 (.Y(N30), 
	.B(n59), 
	.AN(N9));
   NOR2BX2M U118 (.Y(N33), 
	.B(n59), 
	.AN(N12));
   NOR2BX2M U119 (.Y(N34), 
	.B(n59), 
	.AN(N13));
   NOR2BX2M U120 (.Y(N37), 
	.B(n59), 
	.AN(N16));
   NOR2BX2M U121 (.Y(N38), 
	.B(n59), 
	.AN(N17));
   NOR2BX2M U122 (.Y(N41), 
	.B(n59), 
	.AN(N20));
   NOR2BX2M U123 (.Y(N42), 
	.B(n59), 
	.AN(N21));
   NOR2BX2M U124 (.Y(N45), 
	.B(n59), 
	.AN(N24));
   NOR2BX2M U125 (.Y(N46), 
	.B(n59), 
	.AN(N25));
   INVX2M U126 (.Y(n70), 
	.A(KI[1]));
   MX2X2M U127 (.Y(\sla_48/ML_int[2][2] ), 
	.S0(KI[1]), 
	.B(\sla_48/ML_int[1][0] ), 
	.A(\sla_48/ML_int[1][2] ));
   CLKINVX2M U128 (.Y(n102), 
	.A(DLF_Ext_En));
   NOR2X2M U131 (.Y(P_path[5]), 
	.B(KP[3]), 
	.A(n93));
   MX2X2M U132 (.Y(n96), 
	.S0(KP[0]), 
	.B(DLF_IN_FLOP[2]), 
	.A(n61));
   MX2X2M U133 (.Y(P_path[9]), 
	.S0(KP[3]), 
	.B(\sla_54/ML_int[3][1] ), 
	.A(\sla_54/ML_int[3][9] ));
   AO22X1M U134 (.Y(DLF_OUT[9]), 
	.B1(DLF_Ext_Data[9]), 
	.B0(DLF_Ext_En), 
	.A1(n102), 
	.A0(PI_path[15]));
   AO22X1M U135 (.Y(DLF_OUT[8]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[8]), 
	.A1(n102), 
	.A0(PI_path[14]));
   AO22X1M U136 (.Y(DLF_OUT[7]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[7]), 
	.A1(n102), 
	.A0(PI_path[13]));
   OAI2BB2X1M U137 (.Y(DLF_OUT[13]), 
	.B1(n99), 
	.B0(DLF_Ext_En), 
	.A1N(DLF_Ext_En), 
	.A0N(DLF_Ext_Data[13]));
   MX2X2M U138 (.Y(\sla_48/ML_int[1][2] ), 
	.S0(KI[0]), 
	.B(DLF_IN_FLOP[1]), 
	.A(DLF_IN_FLOP[2]));
   MX2X2M U139 (.Y(\sla_48/ML_int[1][1] ), 
	.S0(KI[0]), 
	.B(DLF_IN_FLOP[0]), 
	.A(DLF_IN_FLOP[1]));
   AO22X1M U141 (.Y(DLF_OUT[0]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[0]), 
	.A1(n102), 
	.A0(PI_path[6]));
   NOR2BX2M U143 (.Y(N48), 
	.B(n59), 
	.AN(N27));
   NOR2BX2M U144 (.Y(N28), 
	.B(n59), 
	.AN(N7));
   MX2X2M U145 (.Y(I_path[8]), 
	.S0(KI[3]), 
	.B(\sla_48/ML_int[3][0] ), 
	.A(\sla_48/ML_int[3][8] ));
   MX2X2M U146 (.Y(I_path[9]), 
	.S0(KI[3]), 
	.B(\sla_48/ML_int[3][1] ), 
	.A(\sla_48/ML_int[3][9] ));
   MX2X2M U147 (.Y(I_path[10]), 
	.S0(KI[3]), 
	.B(\sla_48/ML_int[3][2] ), 
	.A(n61));
   AO22X1M U148 (.Y(DLF_OUT[1]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[1]), 
	.A1(n102), 
	.A0(PI_path[7]));
   INVX2M U150 (.Y(n53), 
	.A(DLF_IN_FLOP[0]));
   AO22X1M U151 (.Y(DLF_OUT[2]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[2]), 
	.A1(n102), 
	.A0(PI_path[8]));
   AO22X1M U152 (.Y(DLF_OUT[3]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[3]), 
	.A1(n102), 
	.A0(PI_path[9]));
   AO22X1M U153 (.Y(DLF_OUT[4]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[4]), 
	.A1(n102), 
	.A0(PI_path[10]));
   AO22X1M U154 (.Y(DLF_OUT[5]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[5]), 
	.A1(n102), 
	.A0(PI_path[11]));
   AO22X1M U155 (.Y(DLF_OUT[6]), 
	.B1(DLF_Ext_En), 
	.B0(DLF_Ext_Data[6]), 
	.A1(n102), 
	.A0(PI_path[12]));
   NOR2XLM U156 (.Y(\sla_54/ML_int[3][2] ), 
	.B(n90), 
	.A(KP[2]));
   NOR2XLM U157 (.Y(\sla_54/ML_int[3][0] ), 
	.B(n84), 
	.A(KP[2]));
   INVXLM U158 (.Y(\sla_54/ML_int[3][9] ), 
	.A(n98));
   INVXLM U159 (.Y(\sla_54/ML_int[3][6] ), 
	.A(n95));
   INVXLM U160 (.Y(n47), 
	.A(KP[3]));
   NOR2BXLM U161 (.Y(P_path[6]), 
	.B(KP[3]), 
	.AN(\sla_54/ML_int[3][6] ));
   MX2XLM U162 (.Y(P_path[15]), 
	.S0(KP[3]), 
	.B(\sla_54/ML_int[3][7] ), 
	.A(n61));
   INVXLM U163 (.Y(n49), 
	.A(n51));
   NOR2XLM U164 (.Y(\sla_54/ML_int[3][1] ), 
	.B(n49), 
	.A(KP[2]));
   NOR2BX1M U166 (.Y(\sla_48/ML_int[1][0] ), 
	.B(KI[0]), 
	.AN(DLF_IN_FLOP[0]));
   CLKNAND2X2M U167 (.Y(n67), 
	.B(n70), 
	.A(\sla_48/ML_int[1][0] ));
   CLKNAND2X2M U168 (.Y(n68), 
	.B(n70), 
	.A(\sla_48/ML_int[1][1] ));
   NOR2X1M U169 (.Y(\sla_48/ML_int[3][0] ), 
	.B(n67), 
	.A(KI[2]));
   NOR2X1M U170 (.Y(\sla_48/ML_int[3][1] ), 
	.B(n68), 
	.A(KI[2]));
   NOR2X1M U171 (.Y(\sla_48/ML_int[3][2] ), 
	.B(n73), 
	.A(KI[2]));
   NOR2X1M U172 (.Y(I_path[0]), 
	.B(n67), 
	.A(n69));
   NOR2X1M U173 (.Y(I_path[1]), 
	.B(n68), 
	.A(n69));
   NOR2X1M U174 (.Y(I_path[2]), 
	.B(n73), 
	.A(n69));
   NOR2X1M U175 (.Y(I_path[3]), 
	.B(n74), 
	.A(n69));
   NOR2BX1M U176 (.Y(I_path[4]), 
	.B(KI[3]), 
	.AN(\sla_48/ML_int[3][4] ));
   NOR2BX1M U177 (.Y(I_path[5]), 
	.B(KI[3]), 
	.AN(\sla_48/ML_int[3][5] ));
   NOR2BX1M U178 (.Y(I_path[6]), 
	.B(KI[3]), 
	.AN(\sla_48/ML_int[3][6] ));
   NOR2BX1M U179 (.Y(I_path[7]), 
	.B(KI[3]), 
	.AN(\sla_48/ML_int[3][7] ));
   MXI2X1M U180 (.Y(I_path[11]), 
	.S0(KI[3]), 
	.B(n75), 
	.A(n7));
   OR2X1M U181 (.Y(n75), 
	.B(n74), 
	.A(KI[2]));
   MXI2X1M U182 (.Y(I_path[12]), 
	.S0(KI[3]), 
	.B(n76), 
	.A(n7));
   MXI2X1M U183 (.Y(n76), 
	.S0(KI[2]), 
	.B(n71), 
	.A(n77));
   MXI2X1M U184 (.Y(I_path[13]), 
	.S0(KI[3]), 
	.B(n78), 
	.A(n7));
   MXI2X1M U185 (.Y(n78), 
	.S0(KI[2]), 
	.B(n72), 
	.A(n79));
   MXI2X1M U186 (.Y(I_path[14]), 
	.S0(KI[3]), 
	.B(n80), 
	.A(n7));
   MXI2X1M U187 (.Y(n80), 
	.S0(KI[2]), 
	.B(\sla_48/ML_int[2][2] ), 
	.A(n61));
   CLKMX2X2M U188 (.Y(I_path[15]), 
	.S0(KI[3]), 
	.B(\sla_48/ML_int[3][7] ), 
	.A(n61));
   MXI2X1M U189 (.Y(\sla_48/ML_int[3][7] ), 
	.S0(KI[2]), 
	.B(n74), 
	.A(n7));
   MXI2X1M U190 (.Y(I_path[16]), 
	.S0(KI[3]), 
	.B(n82), 
	.A(n7));
   CLKINVX1M U191 (.Y(\sla_48/ML_int[3][8] ), 
	.A(n82));
   MXI2X1M U192 (.Y(n82), 
	.S0(KI[2]), 
	.B(n77), 
	.A(n61));
   CLKMX2X2M U193 (.Y(n77), 
	.S0(KI[1]), 
	.B(\sla_48/ML_int[1][2] ), 
	.A(n61));
   MXI2X1M U194 (.Y(I_path[17]), 
	.S0(KI[3]), 
	.B(n83), 
	.A(n7));
   CLKINVX1M U195 (.Y(\sla_48/ML_int[3][9] ), 
	.A(n83));
   MXI2X1M U196 (.Y(n83), 
	.S0(KI[2]), 
	.B(n79), 
	.A(n61));
   CLKMX2X2M U197 (.Y(n79), 
	.S0(KI[1]), 
	.B(n81), 
	.A(n61));
   CLKMX2X2M U198 (.Y(n81), 
	.S0(KI[0]), 
	.B(DLF_IN_FLOP[2]), 
	.A(n61));
   DLY1X1M U199 (.Y(n106), 
	.A(n110));
   DLY1X1M U200 (.Y(n107), 
	.A(n109));
   DLY1X1M U201 (.Y(n108), 
	.A(n118));
   DLY1X1M U202 (.Y(n109), 
	.A(test_se));
   DLY1X1M U203 (.Y(n110), 
	.A(test_se));
   DLY1X1M U204 (.Y(n111), 
	.A(test_se));
   DLY1X1M U205 (.Y(n112), 
	.A(n115));
   DLY1X1M U206 (.Y(n113), 
	.A(n110));
   DLY1X1M U207 (.Y(n114), 
	.A(n109));
   DLY1X1M U208 (.Y(n115), 
	.A(n111));
   DLY1X1M U209 (.Y(n116), 
	.A(n110));
   DLY1X1M U210 (.Y(n117), 
	.A(n109));
   DLY1X1M U211 (.Y(n118), 
	.A(n111));
   DLF_in_width4_coeff_width4_out_width15_DW01_add_0 add_67 (.A({ acc_out[20],
		acc_out[19],
		acc_out[18],
		acc_out[17],
		acc_out[16],
		acc_out[15],
		acc_out[14],
		acc_out[13],
		acc_out[12],
		acc_out[11],
		acc_out[10],
		acc_out[9],
		acc_out[8],
		acc_out[7],
		acc_out[6],
		acc_out[5],
		acc_out[4],
		acc_out[3],
		acc_out[2],
		acc_out[1],
		acc_out[0] }), 
	.B({ n61,
		n61,
		n61,
		I_path[17],
		I_path[16],
		I_path[15],
		I_path[14],
		I_path[13],
		I_path[12],
		I_path[11],
		I_path[10],
		I_path[9],
		I_path[8],
		I_path[7],
		I_path[6],
		I_path[5],
		I_path[4],
		I_path[3],
		I_path[2],
		I_path[1],
		I_path[0] }), 
	.CI(1'b0), 
	.SUM({ N27,
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
		N7 }));
   DLF_in_width4_coeff_width4_out_width15_DW01_add_1 add_77 (.A({ acc_out[20],
		acc_out[19],
		acc_out[18],
		acc_out[17],
		acc_out[16],
		acc_out[15],
		acc_out[14],
		acc_out[13],
		acc_out[12],
		acc_out[11],
		acc_out[10],
		acc_out[9],
		acc_out[8],
		acc_out[7],
		acc_out[6],
		acc_out[5],
		acc_out[4],
		acc_out[3],
		acc_out[2],
		acc_out[1],
		acc_out[0] }), 
	.B({ n61,
		n61,
		n61,
		P_path[17],
		P_path[16],
		P_path[15],
		P_path[14],
		P_path[13],
		P_path[12],
		P_path[11],
		P_path[10],
		P_path[9],
		P_path[8],
		P_path[7],
		P_path[6],
		P_path[5],
		P_path[4],
		P_path[3],
		P_path[2],
		P_path[1],
		P_path[0] }), 
	.CI(1'b0), 
	.SUM({ PI_path[20],
		PI_path[19],
		PI_path[18],
		PI_path[17],
		PI_path[16],
		PI_path[15],
		PI_path[14],
		PI_path[13],
		PI_path[12],
		PI_path[11],
		PI_path[10],
		PI_path[9],
		PI_path[8],
		PI_path[7],
		PI_path[6],
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		SYNOPSYS_UNCONNECTED__5 }));
   SDFFRX1M \DLF_IN_FLOP_reg[2]  (.SI(n52), 
	.SE(n108), 
	.RN(RST), 
	.QN(n10), 
	.Q(DLF_IN_FLOP[2]), 
	.D(DLF_IN[2]), 
	.CK(CLK));
   SDFFRX1M \DLF_IN_FLOP_reg[1]  (.SI(DLF_IN_FLOP[0]), 
	.SE(n118), 
	.RN(RST), 
	.QN(n52), 
	.Q(DLF_IN_FLOP[1]), 
	.D(DLF_IN[1]), 
	.CK(CLK));
endmodule

module DSM_MASH_1_1_IN_W15_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [10:0] A;
   input [10:0] B;
   input CI;
   output [10:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [10:1] carry;

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
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(SUM[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
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
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module DSM_MASH_1_1_IN_W15_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [14:0] A;
   input [14:0] B;
   input CI;
   output [14:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire [14:1] carry;

   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
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
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
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
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XNOR2X2M U2 (.Y(SUM[14]), 
	.B(n5), 
	.A(B[14]));
   AND2X2M U3 (.Y(n2), 
	.B(carry[10]), 
	.A(B[10]));
   AND2X2M U4 (.Y(n3), 
	.B(n2), 
	.A(B[11]));
   AND2X2M U5 (.Y(n4), 
	.B(n3), 
	.A(B[12]));
   CLKXOR2X2M U6 (.Y(SUM[13]), 
	.B(n4), 
	.A(B[13]));
   CLKXOR2X2M U7 (.Y(SUM[12]), 
	.B(n3), 
	.A(B[12]));
   CLKXOR2X2M U8 (.Y(SUM[11]), 
	.B(n2), 
	.A(B[11]));
   CLKXOR2X2M U9 (.Y(SUM[10]), 
	.B(carry[10]), 
	.A(B[10]));
   NAND2X2M U10 (.Y(n5), 
	.B(n4), 
	.A(B[13]));
   CLKXOR2X2M U11 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module DSM_MASH_1_1_IN_W15_test_1 (
	CLK, 
	RST, 
	DSM_IN, 
	DSM_OUT, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M__L3_N1);
   input CLK;
   input RST;
   input [14:0] DSM_IN;
   output [4:0] DSM_OUT;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M__L3_N1;

   // Internal wires
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire out_stage_2;
   wire out_stage_2_del;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N1;
   wire \add_115/carry[4] ;
   wire \add_115/carry[3] ;
   wire \add_115/carry[2] ;
   wire \add_115/carry[1] ;
   wire \add_115/B[1] ;
   wire n35;
   wire n37;
   wire n39;
   wire n41;
   wire n43;
   wire n55;
   wire n56;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire [9:0] Q_ERR_1;
   wire [14:0] Q_IN_1;
   wire [9:0] Q_ERR_2;
   wire [10:0] Q_IN_2;
   wire [4:0] out_stage_1;

   assign test_so = out_stage_2 ;

   SDFFRQX2M \Q_ERR_2_reg[7]  (.SI(Q_ERR_2[6]), 
	.SE(n69), 
	.RN(RST), 
	.Q(Q_ERR_2[7]), 
	.D(Q_IN_2[7]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[8]  (.SI(Q_ERR_2[7]), 
	.SE(n69), 
	.RN(RST), 
	.Q(Q_ERR_2[8]), 
	.D(Q_IN_2[8]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[9]  (.SI(Q_ERR_2[8]), 
	.SE(n77), 
	.RN(RST), 
	.Q(Q_ERR_2[9]), 
	.D(Q_IN_2[9]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \out_stage_1_reg[2]  (.SI(out_stage_1[1]), 
	.SE(n77), 
	.RN(RST), 
	.Q(out_stage_1[2]), 
	.D(Q_IN_1[12]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \out_stage_1_reg[3]  (.SI(out_stage_1[2]), 
	.SE(n72), 
	.RN(RST), 
	.Q(out_stage_1[3]), 
	.D(Q_IN_1[13]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \out_stage_1_reg[4]  (.SI(out_stage_1[3]), 
	.SE(n73), 
	.RN(RST), 
	.Q(out_stage_1[4]), 
	.D(Q_IN_1[14]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_2_reg[3]  (.SI(Q_ERR_2[2]), 
	.SE(n70), 
	.RN(RST), 
	.Q(Q_ERR_2[3]), 
	.D(Q_IN_2[3]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[4]  (.SI(Q_ERR_2[3]), 
	.SE(n74), 
	.RN(RST), 
	.Q(Q_ERR_2[4]), 
	.D(Q_IN_2[4]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[5]  (.SI(Q_ERR_2[4]), 
	.SE(n73), 
	.RN(RST), 
	.Q(Q_ERR_2[5]), 
	.D(Q_IN_2[5]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[6]  (.SI(Q_ERR_2[5]), 
	.SE(n74), 
	.RN(RST), 
	.Q(Q_ERR_2[6]), 
	.D(Q_IN_2[6]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \out_stage_1_reg[0]  (.SI(Q_ERR_2[9]), 
	.SE(n71), 
	.RN(RST), 
	.Q(out_stage_1[0]), 
	.D(Q_IN_1[10]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[8]  (.SI(Q_ERR_1[7]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR_1[8]), 
	.D(Q_IN_1[8]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[9]  (.SI(Q_ERR_1[8]), 
	.SE(n76), 
	.RN(RST), 
	.Q(Q_ERR_1[9]), 
	.D(Q_IN_1[9]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \out_stage_1_reg[1]  (.SI(out_stage_1[0]), 
	.SE(n70), 
	.RN(RST), 
	.Q(out_stage_1[1]), 
	.D(Q_IN_1[11]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[5]  (.SI(Q_ERR_1[4]), 
	.SE(n64), 
	.RN(RST), 
	.Q(Q_ERR_1[5]), 
	.D(Q_IN_1[5]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[1]  (.SI(Q_ERR_2[0]), 
	.SE(n66), 
	.RN(RST), 
	.Q(Q_ERR_2[1]), 
	.D(Q_IN_2[1]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[2]  (.SI(Q_ERR_2[1]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR_2[2]), 
	.D(Q_IN_2[2]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[6]  (.SI(Q_ERR_1[5]), 
	.SE(n65), 
	.RN(RST), 
	.Q(Q_ERR_1[6]), 
	.D(Q_IN_1[6]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[7]  (.SI(Q_ERR_1[6]), 
	.SE(n74), 
	.RN(RST), 
	.Q(Q_ERR_1[7]), 
	.D(Q_IN_1[7]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_2_reg[0]  (.SI(Q_ERR_1[9]), 
	.SE(n66), 
	.RN(RST), 
	.Q(Q_ERR_2[0]), 
	.D(Q_IN_2[0]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[3]  (.SI(Q_ERR_1[2]), 
	.SE(n72), 
	.RN(RST), 
	.Q(Q_ERR_1[3]), 
	.D(Q_IN_1[3]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[4]  (.SI(Q_ERR_1[3]), 
	.SE(n71), 
	.RN(RST), 
	.Q(Q_ERR_1[4]), 
	.D(Q_IN_1[4]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \Q_ERR_1_reg[2]  (.SI(Q_ERR_1[1]), 
	.SE(n72), 
	.RN(RST), 
	.Q(Q_ERR_1[2]), 
	.D(Q_IN_1[2]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_1_reg[1]  (.SI(Q_ERR_1[0]), 
	.SE(n75), 
	.RN(RST), 
	.Q(Q_ERR_1[1]), 
	.D(Q_IN_1[1]), 
	.CK(CLK));
   SDFFRQX2M \Q_ERR_1_reg[0]  (.SI(DSM_OUT[4]), 
	.SE(n71), 
	.RN(RST), 
	.Q(Q_ERR_1[0]), 
	.D(Q_IN_1[0]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \DSM_OUT_reg[0]  (.SI(test_si), 
	.SE(n76), 
	.RN(RST), 
	.Q(n61), 
	.D(N3), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \DSM_OUT_reg[1]  (.SI(DSM_OUT[0]), 
	.SE(n66), 
	.RN(RST), 
	.Q(n60), 
	.D(N4), 
	.CK(CLK));
   SDFFRQX2M \DSM_OUT_reg[2]  (.SI(DSM_OUT[1]), 
	.SE(n75), 
	.RN(RST), 
	.Q(n59), 
	.D(N5), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \DSM_OUT_reg[3]  (.SI(DSM_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(n58), 
	.D(N6), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M \DSM_OUT_reg[4]  (.SI(DSM_OUT[3]), 
	.SE(n76), 
	.RN(RST), 
	.Q(n57), 
	.D(N7), 
	.CK(CLK_M__L3_N1));
   INVXLM U37 (.Y(n35), 
	.A(n57));
   INVX8M U38 (.Y(DSM_OUT[4]), 
	.A(n35));
   INVXLM U39 (.Y(n37), 
	.A(n58));
   INVX8M U40 (.Y(DSM_OUT[3]), 
	.A(n37));
   INVXLM U41 (.Y(n39), 
	.A(n59));
   INVX8M U42 (.Y(DSM_OUT[2]), 
	.A(n39));
   INVXLM U43 (.Y(n41), 
	.A(n60));
   INVX8M U44 (.Y(DSM_OUT[1]), 
	.A(n41));
   INVXLM U45 (.Y(n43), 
	.A(n61));
   INVX8M U46 (.Y(DSM_OUT[0]), 
	.A(n43));
   INVX2M U55 (.Y(\add_115/B[1] ), 
	.A(n56));
   OAI21X2M U58 (.Y(N1), 
	.B0(n56), 
	.A1(n55), 
	.A0(out_stage_2_del));
   NAND2X2M U59 (.Y(n56), 
	.B(n55), 
	.A(out_stage_2_del));
   INVX2M U60 (.Y(n55), 
	.A(out_stage_2));
   ADDFX2M U61 (.S(N4), 
	.CO(\add_115/carry[2] ), 
	.CI(\add_115/carry[1] ), 
	.B(\add_115/B[1] ), 
	.A(out_stage_1[1]));
   ADDFX2M U62 (.S(N5), 
	.CO(\add_115/carry[3] ), 
	.CI(\add_115/carry[2] ), 
	.B(\add_115/B[1] ), 
	.A(out_stage_1[2]));
   ADDFX2M U63 (.S(N6), 
	.CO(\add_115/carry[4] ), 
	.CI(\add_115/carry[3] ), 
	.B(\add_115/B[1] ), 
	.A(out_stage_1[3]));
   XOR3XLM U64 (.Y(N7), 
	.C(\add_115/carry[4] ), 
	.B(\add_115/B[1] ), 
	.A(out_stage_1[4]));
   AND2X1M U65 (.Y(\add_115/carry[1] ), 
	.B(N1), 
	.A(out_stage_1[0]));
   CLKXOR2X2M U66 (.Y(N3), 
	.B(out_stage_1[0]), 
	.A(N1));
   DLY1X1M U67 (.Y(n64), 
	.A(n70));
   DLY1X1M U68 (.Y(n65), 
	.A(n68));
   DLY1X1M U69 (.Y(n66), 
	.A(n73));
   DLY1X1M U70 (.Y(n67), 
	.A(test_se));
   DLY1X1M U71 (.Y(n68), 
	.A(test_se));
   DLY1X1M U72 (.Y(n69), 
	.A(n77));
   DLY1X1M U73 (.Y(n70), 
	.A(n67));
   DLY1X1M U74 (.Y(n71), 
	.A(n67));
   DLY1X1M U75 (.Y(n72), 
	.A(n68));
   DLY1X1M U76 (.Y(n73), 
	.A(n67));
   DLY1X1M U77 (.Y(n74), 
	.A(n68));
   DLY1X1M U78 (.Y(n75), 
	.A(n67));
   DLY1X1M U79 (.Y(n76), 
	.A(n68));
   DLY1X1M U80 (.Y(n77), 
	.A(n64));
   DSM_MASH_1_1_IN_W15_DW01_add_0 add_52 (.A({ 1'b0,
		Q_IN_1[9],
		Q_IN_1[8],
		Q_IN_1[7],
		Q_IN_1[6],
		Q_IN_1[5],
		Q_IN_1[4],
		Q_IN_1[3],
		Q_IN_1[2],
		Q_IN_1[1],
		Q_IN_1[0] }), 
	.B({ 1'b0,
		Q_ERR_2[9],
		Q_ERR_2[8],
		Q_ERR_2[7],
		Q_ERR_2[6],
		Q_ERR_2[5],
		Q_ERR_2[4],
		Q_ERR_2[3],
		Q_ERR_2[2],
		Q_ERR_2[1],
		Q_ERR_2[0] }), 
	.CI(1'b0), 
	.SUM({ Q_IN_2[10],
		Q_IN_2[9],
		Q_IN_2[8],
		Q_IN_2[7],
		Q_IN_2[6],
		Q_IN_2[5],
		Q_IN_2[4],
		Q_IN_2[3],
		Q_IN_2[2],
		Q_IN_2[1],
		Q_IN_2[0] }));
   DSM_MASH_1_1_IN_W15_DW01_add_1 add_34 (.A({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		Q_ERR_1[9],
		Q_ERR_1[8],
		Q_ERR_1[7],
		Q_ERR_1[6],
		Q_ERR_1[5],
		Q_ERR_1[4],
		Q_ERR_1[3],
		Q_ERR_1[2],
		Q_ERR_1[1],
		Q_ERR_1[0] }), 
	.B({ DSM_IN[14],
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
	.SUM({ Q_IN_1[14],
		Q_IN_1[13],
		Q_IN_1[12],
		Q_IN_1[11],
		Q_IN_1[10],
		Q_IN_1[9],
		Q_IN_1[8],
		Q_IN_1[7],
		Q_IN_1[6],
		Q_IN_1[5],
		Q_IN_1[4],
		Q_IN_1[3],
		Q_IN_1[2],
		Q_IN_1[1],
		Q_IN_1[0] }));
   SDFFRQX4M out_stage_2_reg (.SI(out_stage_2_del), 
	.SE(n75), 
	.RN(RST), 
	.Q(out_stage_2), 
	.D(Q_IN_2[10]), 
	.CK(CLK_M__L3_N1));
   SDFFRQX2M out_stage_2_del_reg (.SI(out_stage_1[4]), 
	.SE(n69), 
	.RN(RST), 
	.Q(out_stage_2_del), 
	.D(out_stage_2), 
	.CK(CLK_M__L3_N1));
endmodule

