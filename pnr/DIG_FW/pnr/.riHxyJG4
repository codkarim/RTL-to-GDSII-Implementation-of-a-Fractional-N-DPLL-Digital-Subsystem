/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 09:14:02 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module DLF_in_width4_coeff_width4_out_width15_DW01_add_0 ( A, B, CI, SUM, CO
 );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module DLF_in_width4_coeff_width4_out_width15_DW01_add_1 ( A, B, CI, SUM, CO
 );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [20:1] carry;

  ADDFHX8M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X8M U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX8M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX8M U1_6 ( .A(A[6]), .B(n1), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX8M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX8M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX8M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDFHX8M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  OAI21X8M U1 ( .A0(A[5]), .A1(n3), .B0(B[5]), .Y(n4) );
  OAI21X8M U2 ( .A0(A[3]), .A1(n7), .B0(B[3]), .Y(n8) );
  OAI2B1X8M U3 ( .A1N(n7), .A0(n2), .B0(n8), .Y(n5) );
  BUFX5M U4 ( .A(B[6]), .Y(n1) );
  INVX2M U5 ( .A(A[3]), .Y(n2) );
  OAI211X8M U6 ( .A0(B[1]), .A1(A[1]), .B0(B[0]), .C0(A[0]), .Y(n11) );
  OAI2BB1X4M U7 ( .A0N(A[1]), .A1N(B[1]), .B0(n11), .Y(n9) );
  OAI21X8M U8 ( .A0(A[2]), .A1(n9), .B0(B[2]), .Y(n10) );
  OAI2BB1X4M U9 ( .A0N(n9), .A1N(A[2]), .B0(n10), .Y(n7) );
  OAI21X8M U10 ( .A0(A[4]), .A1(n5), .B0(B[4]), .Y(n6) );
  OAI2BB1X4M U12 ( .A0N(n3), .A1N(A[5]), .B0(n4), .Y(carry[6]) );
  OAI2B1X8M U11 ( .A1N(n5), .A0(n12), .B0(n6), .Y(n3) );
  CLKINVX40M U13 ( .A(A[4]), .Y(n12) );
endmodule


module DLF_in_width4_coeff_width4_out_width15_test_1 ( DLF_IN, KP, KI, CLK, 
        RST, DLF_Ext_En, DLF_Ext_Data, OV_FL, UN_FL, DLF_OUT, test_si, test_so, 
        test_se );
  input [3:0] DLF_IN;
  input [3:0] KP;
  input [3:0] KI;
  input [14:0] DLF_Ext_Data;
  output [14:0] DLF_OUT;
  input CLK, RST, DLF_Ext_En, test_si, test_se;
  output OV_FL, UN_FL, test_so;
  wire   n103, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, n45, \sla_54/ML_int[3][0] , \sla_54/ML_int[3][1] ,
         \sla_54/ML_int[3][2] , \sla_54/ML_int[3][6] , \sla_54/ML_int[3][7] ,
         \sla_54/ML_int[3][8] , \sla_54/ML_int[3][9] , \sla_54/ML_int[2][2] ,
         \sla_54/ML_int[1][0] , \sla_48/ML_int[3][0] , \sla_48/ML_int[3][1] ,
         \sla_48/ML_int[3][2] , \sla_48/ML_int[3][4] , \sla_48/ML_int[3][5] ,
         \sla_48/ML_int[3][6] , \sla_48/ML_int[3][7] , \sla_48/ML_int[3][8] ,
         \sla_48/ML_int[3][9] , \sla_48/ML_int[2][2] , \sla_48/ML_int[1][0] ,
         \sla_48/ML_int[1][1] , \sla_48/ML_int[1][2] , n3, n5, n6, n7, n9, n10,
         n11, n12, n13, n14, n40, n42, n43, n44, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n4, n8;
  wire   [3:0] DLF_IN_FLOP;
  wire   [17:0] I_path;
  wire   [17:0] P_path;
  wire   [20:0] acc_out;
  wire   [20:6] PI_path;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign test_so = acc_out[20];

  SDFFRQX2M \acc_out_reg[20]  ( .D(N48), .SI(acc_out[19]), .SE(n112), .CK(CLK), 
        .RN(n63), .Q(acc_out[20]) );
  SDFFRQX2M \acc_out_reg[19]  ( .D(N47), .SI(acc_out[18]), .SE(n112), .CK(CLK), 
        .RN(n63), .Q(acc_out[19]) );
  SDFFRQX2M \acc_out_reg[18]  ( .D(N46), .SI(acc_out[17]), .SE(n115), .CK(CLK), 
        .RN(n63), .Q(acc_out[18]) );
  SDFFRQX2M \acc_out_reg[17]  ( .D(N45), .SI(acc_out[16]), .SE(n112), .CK(CLK), 
        .RN(n63), .Q(acc_out[17]) );
  SDFFRQX2M \acc_out_reg[16]  ( .D(N44), .SI(acc_out[15]), .SE(n114), .CK(CLK), 
        .RN(n63), .Q(acc_out[16]) );
  SDFFRQX2M \acc_out_reg[15]  ( .D(N43), .SI(acc_out[14]), .SE(n117), .CK(CLK), 
        .RN(n63), .Q(acc_out[15]) );
  SDFFRQX2M \acc_out_reg[14]  ( .D(N42), .SI(acc_out[13]), .SE(n114), .CK(CLK), 
        .RN(n63), .Q(acc_out[14]) );
  SDFFRQX2M \acc_out_reg[13]  ( .D(N41), .SI(acc_out[12]), .SE(n107), .CK(CLK), 
        .RN(n64), .Q(acc_out[13]) );
  SDFFRQX2M \acc_out_reg[12]  ( .D(N40), .SI(acc_out[11]), .SE(n113), .CK(CLK), 
        .RN(n64), .Q(acc_out[12]) );
  SDFFRQX2M \acc_out_reg[11]  ( .D(N39), .SI(acc_out[10]), .SE(n116), .CK(CLK), 
        .RN(n64), .Q(acc_out[11]) );
  SDFFRQX2M \acc_out_reg[10]  ( .D(N38), .SI(acc_out[9]), .SE(n113), .CK(CLK), 
        .RN(n64), .Q(acc_out[10]) );
  SDFFRQX2M \acc_out_reg[9]  ( .D(N37), .SI(acc_out[8]), .SE(n106), .CK(CLK), 
        .RN(n64), .Q(acc_out[9]) );
  SDFFRQX2M \acc_out_reg[8]  ( .D(N36), .SI(acc_out[7]), .SE(n106), .CK(CLK), 
        .RN(n64), .Q(acc_out[8]) );
  SDFFRQX2M \acc_out_reg[7]  ( .D(N35), .SI(acc_out[6]), .SE(n113), .CK(CLK), 
        .RN(n64), .Q(acc_out[7]) );
  SDFFRQX2M \acc_out_reg[6]  ( .D(N34), .SI(acc_out[5]), .SE(n116), .CK(CLK), 
        .RN(n64), .Q(acc_out[6]) );
  SDFFRQX2M \acc_out_reg[5]  ( .D(N33), .SI(acc_out[4]), .SE(n116), .CK(CLK), 
        .RN(n64), .Q(acc_out[5]) );
  SDFFRQX2M \acc_out_reg[4]  ( .D(N32), .SI(acc_out[3]), .SE(n107), .CK(CLK), 
        .RN(n64), .Q(acc_out[4]) );
  SDFFRQX2M \acc_out_reg[3]  ( .D(N31), .SI(acc_out[2]), .SE(n114), .CK(CLK), 
        .RN(n64), .Q(acc_out[3]) );
  SDFFRQX2M \acc_out_reg[2]  ( .D(N30), .SI(acc_out[1]), .SE(n117), .CK(CLK), 
        .RN(n64), .Q(acc_out[2]) );
  SDFFRQX2M \acc_out_reg[1]  ( .D(N29), .SI(acc_out[0]), .SE(n117), .CK(CLK), 
        .RN(n65), .Q(acc_out[1]) );
  SDFFRQX2M \acc_out_reg[0]  ( .D(N28), .SI(n8), .SE(n108), .CK(CLK), .RN(n63), 
        .Q(acc_out[0]) );
  SDFFRQX2M \DLF_IN_FLOP_reg[0]  ( .D(DLF_IN[0]), .SI(test_si), .SE(n118), 
        .CK(CLK), .RN(n63), .Q(DLF_IN_FLOP[0]) );
  SDFFRX1M \DLF_IN_FLOP_reg[3]  ( .D(DLF_IN[3]), .SI(DLF_IN_FLOP[2]), .SE(n115), .CK(CLK), .RN(RST), .QN(n7) );
  CLKBUFX40M U8 ( .A(n103), .Y(UN_FL) );
  CLKINVX40M U9 ( .A(n42), .Y(OV_FL) );
  OR4X12M U32 ( .A(n99), .B(n100), .C(n101), .D(PI_path[20]), .Y(n42) );
  NOR2X3M U33 ( .A(PI_path[19]), .B(PI_path[18]), .Y(n45) );
  CLKMX2X6M U34 ( .A(n61), .B(n3), .S0(KP[1]), .Y(n92) );
  MXI2X3M U35 ( .A(n10), .B(n52), .S0(KP[0]), .Y(n3) );
  CLKNAND2X12M U36 ( .A(n14), .B(n87), .Y(n85) );
  MXI2X6M U37 ( .A(n52), .B(n53), .S0(KP[0]), .Y(n14) );
  MXI2X12M U38 ( .A(n44), .B(n96), .S0(n87), .Y(n40) );
  INVX5M U39 ( .A(n43), .Y(n44) );
  INVX2M U40 ( .A(n9), .Y(P_path[2]) );
  NOR2X8M U41 ( .A(n85), .B(n86), .Y(P_path[1]) );
  INVX2M U42 ( .A(n50), .Y(P_path[4]) );
  INVXLM U44 ( .A(n14), .Y(n43) );
  NAND2X8M U45 ( .A(\sla_54/ML_int[1][0] ), .B(n87), .Y(n84) );
  MXI2X1M U46 ( .A(n61), .B(\sla_54/ML_int[2][2] ), .S0(n57), .Y(n95) );
  NAND2BX4M U47 ( .AN(n86), .B(\sla_54/ML_int[2][2] ), .Y(n9) );
  NOR2X2M U48 ( .A(n46), .B(n84), .Y(P_path[0]) );
  MX2X2M U49 ( .A(n61), .B(n96), .S0(KP[1]), .Y(n94) );
  AND2X2M U50 ( .A(n44), .B(n87), .Y(n51) );
  MXI2X2M U51 ( .A(n94), .B(n51), .S0(n57), .Y(n93) );
  NAND2X2M U52 ( .A(n92), .B(n11), .Y(n12) );
  BUFX4M U53 ( .A(n65), .Y(n63) );
  NOR3X4M U54 ( .A(OV_FL), .B(UN_FL), .C(n54), .Y(n5) );
  AND2X2M U55 ( .A(n12), .B(n13), .Y(n6) );
  INVX1M U56 ( .A(n97), .Y(\sla_54/ML_int[3][8] ) );
  MXI2X1M U57 ( .A(n61), .B(n92), .S0(n57), .Y(n97) );
  MXI2X1M U58 ( .A(n8), .B(n91), .S0(n58), .Y(P_path[11]) );
  OR2X2M U59 ( .A(n57), .B(n40), .Y(n91) );
  MXI2X1M U60 ( .A(n8), .B(n98), .S0(n48), .Y(P_path[17]) );
  MXI2X1M U61 ( .A(n8), .B(n6), .S0(n58), .Y(P_path[12]) );
  MXI2X1M U62 ( .A(n8), .B(n95), .S0(n58), .Y(P_path[14]) );
  MXI2X1M U63 ( .A(n8), .B(n97), .S0(n48), .Y(P_path[16]) );
  AND4X4M U66 ( .A(PI_path[20]), .B(PI_path[16]), .C(n45), .D(n101), .Y(n103)
         );
  NOR2BX4M U67 ( .AN(DLF_IN_FLOP[0]), .B(KP[0]), .Y(\sla_54/ML_int[1][0] ) );
  INVXLM U68 ( .A(\sla_54/ML_int[2][2] ), .Y(n90) );
  NOR2BX1M U69 ( .AN(\sla_54/ML_int[3][7] ), .B(n58), .Y(P_path[7]) );
  MXI2X1M U70 ( .A(n8), .B(n40), .S0(n57), .Y(\sla_54/ML_int[3][7] ) );
  MXI2X1M U71 ( .A(n8), .B(n93), .S0(n58), .Y(P_path[13]) );
  MXI2X1M U72 ( .A(n61), .B(n94), .S0(n57), .Y(n98) );
  MXI2X2M U73 ( .A(n81), .B(\sla_48/ML_int[1][1] ), .S0(KI[1]), .Y(n74) );
  NAND2BX8M U74 ( .AN(n58), .B(n88), .Y(n46) );
  NAND2BX12M U75 ( .AN(n58), .B(n88), .Y(n86) );
  INVX20M U76 ( .A(n57), .Y(n88) );
  MX2X4M U77 ( .A(n3), .B(\sla_54/ML_int[1][0] ), .S0(KP[1]), .Y(
        \sla_54/ML_int[2][2] ) );
  INVX2M U78 ( .A(PI_path[19]), .Y(n99) );
  INVX20M U79 ( .A(KP[1]), .Y(n87) );
  NAND2X1M U80 ( .A(n89), .B(n57), .Y(n13) );
  INVXLM U81 ( .A(n57), .Y(n11) );
  INVX1M U82 ( .A(n84), .Y(n89) );
  NAND2BX2M U83 ( .AN(n6), .B(n47), .Y(n50) );
  INVXLM U84 ( .A(n80), .Y(\sla_48/ML_int[3][6] ) );
  INVXLM U85 ( .A(n78), .Y(\sla_48/ML_int[3][5] ) );
  INVXLM U86 ( .A(n76), .Y(\sla_48/ML_int[3][4] ) );
  OAI22XLM U87 ( .A0(PI_path[20]), .A1(n54), .B0(DLF_Ext_Data[14]), .B1(n102), 
        .Y(DLF_OUT[14]) );
  CLKINVX1M U88 ( .A(n47), .Y(n48) );
  CLKBUFX32M U89 ( .A(KP[2]), .Y(n57) );
  MX2XLM U90 ( .A(\sla_54/ML_int[3][8] ), .B(\sla_54/ML_int[3][0] ), .S0(n58), 
        .Y(P_path[8]) );
  MX2XLM U91 ( .A(n61), .B(\sla_54/ML_int[3][2] ), .S0(n58), .Y(P_path[10]) );
  OAI2BB2X1M U92 ( .B0(n54), .B1(n101), .A0N(DLF_Ext_Data[11]), .A1N(n54), .Y(
        DLF_OUT[11]) );
  OAI2BB2X1M U93 ( .B0(n54), .B1(n100), .A0N(DLF_Ext_Data[12]), .A1N(n54), .Y(
        DLF_OUT[12]) );
  AO22XLM U94 ( .A0(n102), .A1(PI_path[16]), .B0(DLF_Ext_Data[10]), .B1(n54), 
        .Y(DLF_OUT[10]) );
  CLKBUFX8M U95 ( .A(DLF_Ext_En), .Y(n54) );
  NOR2X2M U96 ( .A(n46), .B(n40), .Y(P_path[3]) );
  INVX4M U97 ( .A(n5), .Y(n59) );
  INVX4M U98 ( .A(n5), .Y(n60) );
  INVX2M U99 ( .A(\sla_48/ML_int[2][2] ), .Y(n73) );
  CLKBUFX6M U100 ( .A(n65), .Y(n64) );
  INVX2M U101 ( .A(PI_path[17]), .Y(n101) );
  INVX2M U102 ( .A(PI_path[18]), .Y(n100) );
  INVX2M U103 ( .A(n67), .Y(n71) );
  INVX2M U104 ( .A(n68), .Y(n72) );
  OR2X2M U105 ( .A(n56), .B(n55), .Y(n69) );
  INVX8M U106 ( .A(n8), .Y(n61) );
  NOR2BX2M U107 ( .AN(N10), .B(n59), .Y(N31) );
  NOR2BX2M U108 ( .AN(N11), .B(n59), .Y(N32) );
  NOR2BX2M U109 ( .AN(N14), .B(n59), .Y(N35) );
  NOR2BX2M U110 ( .AN(N15), .B(n59), .Y(N36) );
  NOR2BX2M U111 ( .AN(N18), .B(n59), .Y(N39) );
  NOR2BX2M U112 ( .AN(N19), .B(n59), .Y(N40) );
  NOR2BX2M U113 ( .AN(N22), .B(n59), .Y(N43) );
  NOR2BX2M U114 ( .AN(N23), .B(n59), .Y(N44) );
  NOR2BX2M U115 ( .AN(N26), .B(n59), .Y(N47) );
  NOR2BX2M U116 ( .AN(N8), .B(n60), .Y(N29) );
  NOR2BX2M U117 ( .AN(N9), .B(n60), .Y(N30) );
  NOR2BX2M U118 ( .AN(N12), .B(n60), .Y(N33) );
  NOR2BX2M U119 ( .AN(N13), .B(n60), .Y(N34) );
  NOR2BX2M U120 ( .AN(N16), .B(n60), .Y(N37) );
  NOR2BX2M U121 ( .AN(N17), .B(n60), .Y(N38) );
  NOR2BX2M U122 ( .AN(N20), .B(n60), .Y(N41) );
  NOR2BX2M U123 ( .AN(N21), .B(n60), .Y(N42) );
  NOR2BX2M U124 ( .AN(N24), .B(n60), .Y(N45) );
  NOR2BX2M U125 ( .AN(N25), .B(n60), .Y(N46) );
  INVX2M U126 ( .A(KI[1]), .Y(n70) );
  MX2X2M U127 ( .A(\sla_48/ML_int[1][2] ), .B(\sla_48/ML_int[1][0] ), .S0(
        KI[1]), .Y(\sla_48/ML_int[2][2] ) );
  INVX4M U128 ( .A(n54), .Y(n102) );
  INVX2M U129 ( .A(n66), .Y(n65) );
  INVX2M U130 ( .A(RST), .Y(n66) );
  NOR2X2M U131 ( .A(n93), .B(n58), .Y(P_path[5]) );
  MX2X2M U132 ( .A(n61), .B(DLF_IN_FLOP[2]), .S0(KP[0]), .Y(n96) );
  MX2X2M U133 ( .A(\sla_54/ML_int[3][9] ), .B(\sla_54/ML_int[3][1] ), .S0(n58), 
        .Y(P_path[9]) );
  AO22X1M U134 ( .A0(PI_path[15]), .A1(n102), .B0(n54), .B1(DLF_Ext_Data[9]), 
        .Y(DLF_OUT[9]) );
  AO22X1M U135 ( .A0(PI_path[14]), .A1(n102), .B0(DLF_Ext_Data[8]), .B1(n54), 
        .Y(DLF_OUT[8]) );
  AO22X1M U136 ( .A0(PI_path[13]), .A1(n102), .B0(DLF_Ext_Data[7]), .B1(n54), 
        .Y(DLF_OUT[7]) );
  OAI2BB2X2M U137 ( .B0(n54), .B1(n99), .A0N(DLF_Ext_Data[13]), .A1N(n54), .Y(
        DLF_OUT[13]) );
  MX2X2M U138 ( .A(DLF_IN_FLOP[2]), .B(DLF_IN_FLOP[1]), .S0(KI[0]), .Y(
        \sla_48/ML_int[1][2] ) );
  MX2X2M U139 ( .A(DLF_IN_FLOP[1]), .B(DLF_IN_FLOP[0]), .S0(KI[0]), .Y(
        \sla_48/ML_int[1][1] ) );
  CLKBUFX6M U140 ( .A(KI[3]), .Y(n56) );
  AO22X1M U141 ( .A0(PI_path[6]), .A1(n102), .B0(DLF_Ext_Data[0]), .B1(n54), 
        .Y(DLF_OUT[0]) );
  BUFX4M U142 ( .A(KI[2]), .Y(n55) );
  NOR2BX2M U143 ( .AN(N27), .B(n59), .Y(N48) );
  NOR2BX2M U144 ( .AN(N7), .B(n59), .Y(N28) );
  MX2X2M U145 ( .A(\sla_48/ML_int[3][8] ), .B(\sla_48/ML_int[3][0] ), .S0(n56), 
        .Y(I_path[8]) );
  MX2X2M U146 ( .A(\sla_48/ML_int[3][9] ), .B(\sla_48/ML_int[3][1] ), .S0(n56), 
        .Y(I_path[9]) );
  MX2X2M U147 ( .A(n61), .B(\sla_48/ML_int[3][2] ), .S0(n56), .Y(I_path[10])
         );
  AO22X1M U148 ( .A0(PI_path[7]), .A1(n102), .B0(DLF_Ext_Data[1]), .B1(n54), 
        .Y(DLF_OUT[1]) );
  INVX2M U150 ( .A(DLF_IN_FLOP[0]), .Y(n53) );
  AO22X1M U151 ( .A0(PI_path[8]), .A1(n102), .B0(DLF_Ext_Data[2]), .B1(n54), 
        .Y(DLF_OUT[2]) );
  AO22X1M U152 ( .A0(PI_path[9]), .A1(n102), .B0(DLF_Ext_Data[3]), .B1(n54), 
        .Y(DLF_OUT[3]) );
  AO22X1M U153 ( .A0(PI_path[10]), .A1(n102), .B0(DLF_Ext_Data[4]), .B1(n54), 
        .Y(DLF_OUT[4]) );
  AO22X1M U154 ( .A0(PI_path[11]), .A1(n102), .B0(DLF_Ext_Data[5]), .B1(n54), 
        .Y(DLF_OUT[5]) );
  AO22X1M U155 ( .A0(PI_path[12]), .A1(n102), .B0(DLF_Ext_Data[6]), .B1(n54), 
        .Y(DLF_OUT[6]) );
  NOR2XLM U156 ( .A(n57), .B(n90), .Y(\sla_54/ML_int[3][2] ) );
  NOR2XLM U157 ( .A(n57), .B(n84), .Y(\sla_54/ML_int[3][0] ) );
  INVXLM U158 ( .A(n98), .Y(\sla_54/ML_int[3][9] ) );
  INVXLM U159 ( .A(n95), .Y(\sla_54/ML_int[3][6] ) );
  INVXLM U160 ( .A(n58), .Y(n47) );
  NOR2BXLM U161 ( .AN(\sla_54/ML_int[3][6] ), .B(n58), .Y(P_path[6]) );
  MX2XLM U162 ( .A(n61), .B(\sla_54/ML_int[3][7] ), .S0(n58), .Y(P_path[15])
         );
  INVXLM U163 ( .A(n51), .Y(n49) );
  NOR2XLM U164 ( .A(n57), .B(n49), .Y(\sla_54/ML_int[3][1] ) );
  CLKBUFX32M U165 ( .A(KP[3]), .Y(n58) );
  NOR2BX1M U166 ( .AN(DLF_IN_FLOP[0]), .B(KI[0]), .Y(\sla_48/ML_int[1][0] ) );
  CLKNAND2X2M U167 ( .A(\sla_48/ML_int[1][0] ), .B(n70), .Y(n67) );
  CLKNAND2X2M U168 ( .A(\sla_48/ML_int[1][1] ), .B(n70), .Y(n68) );
  NOR2X1M U169 ( .A(n55), .B(n67), .Y(\sla_48/ML_int[3][0] ) );
  NOR2X1M U170 ( .A(n55), .B(n68), .Y(\sla_48/ML_int[3][1] ) );
  NOR2X1M U171 ( .A(n55), .B(n73), .Y(\sla_48/ML_int[3][2] ) );
  NOR2X1M U172 ( .A(n69), .B(n67), .Y(I_path[0]) );
  NOR2X1M U173 ( .A(n69), .B(n68), .Y(I_path[1]) );
  NOR2X1M U174 ( .A(n69), .B(n73), .Y(I_path[2]) );
  NOR2X1M U175 ( .A(n69), .B(n74), .Y(I_path[3]) );
  NOR2BX1M U176 ( .AN(\sla_48/ML_int[3][4] ), .B(n56), .Y(I_path[4]) );
  NOR2BX1M U177 ( .AN(\sla_48/ML_int[3][5] ), .B(n56), .Y(I_path[5]) );
  NOR2BX1M U178 ( .AN(\sla_48/ML_int[3][6] ), .B(n56), .Y(I_path[6]) );
  NOR2BX1M U179 ( .AN(\sla_48/ML_int[3][7] ), .B(n56), .Y(I_path[7]) );
  MXI2X1M U180 ( .A(n8), .B(n75), .S0(n56), .Y(I_path[11]) );
  OR2X1M U181 ( .A(n55), .B(n74), .Y(n75) );
  MXI2X1M U182 ( .A(n8), .B(n76), .S0(n56), .Y(I_path[12]) );
  MXI2X1M U183 ( .A(n77), .B(n71), .S0(n55), .Y(n76) );
  MXI2X1M U184 ( .A(n8), .B(n78), .S0(n56), .Y(I_path[13]) );
  MXI2X1M U185 ( .A(n79), .B(n72), .S0(n55), .Y(n78) );
  MXI2X1M U186 ( .A(n8), .B(n80), .S0(n56), .Y(I_path[14]) );
  MXI2X1M U187 ( .A(n61), .B(\sla_48/ML_int[2][2] ), .S0(n55), .Y(n80) );
  CLKMX2X2M U188 ( .A(n61), .B(\sla_48/ML_int[3][7] ), .S0(n56), .Y(I_path[15]) );
  MXI2X1M U189 ( .A(n8), .B(n74), .S0(n55), .Y(\sla_48/ML_int[3][7] ) );
  MXI2X1M U190 ( .A(n8), .B(n82), .S0(n56), .Y(I_path[16]) );
  CLKINVX1M U191 ( .A(n82), .Y(\sla_48/ML_int[3][8] ) );
  MXI2X1M U192 ( .A(n61), .B(n77), .S0(n55), .Y(n82) );
  CLKMX2X2M U193 ( .A(n61), .B(\sla_48/ML_int[1][2] ), .S0(KI[1]), .Y(n77) );
  MXI2X1M U194 ( .A(n8), .B(n83), .S0(n56), .Y(I_path[17]) );
  CLKINVX1M U195 ( .A(n83), .Y(\sla_48/ML_int[3][9] ) );
  MXI2X1M U196 ( .A(n61), .B(n79), .S0(n55), .Y(n83) );
  CLKMX2X2M U197 ( .A(n61), .B(n81), .S0(KI[1]), .Y(n79) );
  CLKMX2X2M U198 ( .A(n61), .B(DLF_IN_FLOP[2]), .S0(KI[0]), .Y(n81) );
  DLY1X1M U199 ( .A(n110), .Y(n106) );
  DLY1X1M U200 ( .A(n109), .Y(n107) );
  DLY1X1M U201 ( .A(n118), .Y(n108) );
  DLY1X1M U202 ( .A(test_se), .Y(n109) );
  DLY1X1M U203 ( .A(test_se), .Y(n110) );
  DLY1X1M U204 ( .A(test_se), .Y(n111) );
  DLY1X1M U205 ( .A(n115), .Y(n112) );
  DLY1X1M U206 ( .A(n110), .Y(n113) );
  DLY1X1M U207 ( .A(n109), .Y(n114) );
  DLY1X1M U208 ( .A(n111), .Y(n115) );
  DLY1X1M U209 ( .A(n110), .Y(n116) );
  DLY1X1M U210 ( .A(n109), .Y(n117) );
  DLY1X1M U211 ( .A(n111), .Y(n118) );
  DLF_in_width4_coeff_width4_out_width15_DW01_add_0 add_67 ( .A(acc_out), .B({
        n61, n61, n61, I_path}), .CI(1'b0), .SUM({N27, N26, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  DLF_in_width4_coeff_width4_out_width15_DW01_add_1 add_77 ( .A(acc_out), .B({
        n61, n61, n61, P_path}), .CI(1'b0), .SUM({PI_path, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  SDFFRX1M \DLF_IN_FLOP_reg[2]  ( .D(DLF_IN[2]), .SI(n52), .SE(n108), .CK(CLK), 
        .RN(RST), .Q(DLF_IN_FLOP[2]), .QN(n10) );
  SDFFRX1M \DLF_IN_FLOP_reg[1]  ( .D(DLF_IN[1]), .SI(DLF_IN_FLOP[0]), .SE(n118), .CK(CLK), .RN(RST), .Q(DLF_IN_FLOP[1]), .QN(n52) );
  INVXLM U3 ( .A(n7), .Y(n4) );
  INVX6M U4 ( .A(n4), .Y(n8) );
endmodule


module DSM_MASH_1_1_IN_W15_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(SUM[10]), .S(SUM[9])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module DSM_MASH_1_1_IN_W15_DW01_add_1 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [14:1] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[14]), .B(n5), .Y(SUM[14]) );
  AND2X2M U3 ( .A(B[10]), .B(carry[10]), .Y(n2) );
  AND2X2M U4 ( .A(B[11]), .B(n2), .Y(n3) );
  AND2X2M U5 ( .A(B[12]), .B(n3), .Y(n4) );
  CLKXOR2X2M U6 ( .A(B[13]), .B(n4), .Y(SUM[13]) );
  CLKXOR2X2M U7 ( .A(B[12]), .B(n3), .Y(SUM[12]) );
  CLKXOR2X2M U8 ( .A(B[11]), .B(n2), .Y(SUM[11]) );
  CLKXOR2X2M U9 ( .A(B[10]), .B(carry[10]), .Y(SUM[10]) );
  NAND2X2M U10 ( .A(B[13]), .B(n4), .Y(n5) );
  CLKXOR2X2M U11 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module DSM_MASH_1_1_IN_W15_test_1 ( CLK, RST, DSM_IN, DSM_OUT, test_si, 
        test_so, test_se );
  input [14:0] DSM_IN;
  output [4:0] DSM_OUT;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   n57, n58, n59, n60, n61, out_stage_2, out_stage_2_del, N3, N4, N5, N6,
         N7, N1, \add_115/carry[4] , \add_115/carry[3] , \add_115/carry[2] ,
         \add_115/carry[1] , \add_115/B[1] , n35, n37, n39, n41, n43, n51, n52,
         n53, n54, n55, n56, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77;
  wire   [9:0] Q_ERR_1;
  wire   [14:0] Q_IN_1;
  wire   [9:0] Q_ERR_2;
  wire   [10:0] Q_IN_2;
  wire   [4:0] out_stage_1;
  assign test_so = out_stage_2;

  SDFFRQX2M \Q_ERR_2_reg[7]  ( .D(Q_IN_2[7]), .SI(Q_ERR_2[6]), .SE(n69), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[7]) );
  SDFFRQX2M \Q_ERR_2_reg[8]  ( .D(Q_IN_2[8]), .SI(Q_ERR_2[7]), .SE(n69), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[8]) );
  SDFFRQX2M \Q_ERR_2_reg[9]  ( .D(Q_IN_2[9]), .SI(Q_ERR_2[8]), .SE(n77), .CK(
        CLK), .RN(n53), .Q(Q_ERR_2[9]) );
  SDFFRQX2M \out_stage_1_reg[2]  ( .D(Q_IN_1[12]), .SI(out_stage_1[1]), .SE(
        n77), .CK(CLK), .RN(n52), .Q(out_stage_1[2]) );
  SDFFRQX2M \out_stage_1_reg[3]  ( .D(Q_IN_1[13]), .SI(out_stage_1[2]), .SE(
        n72), .CK(CLK), .RN(n52), .Q(out_stage_1[3]) );
  SDFFRQX2M \out_stage_1_reg[4]  ( .D(Q_IN_1[14]), .SI(out_stage_1[3]), .SE(
        n73), .CK(CLK), .RN(n52), .Q(out_stage_1[4]) );
  SDFFRQX2M \Q_ERR_2_reg[3]  ( .D(Q_IN_2[3]), .SI(Q_ERR_2[2]), .SE(n70), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[3]) );
  SDFFRQX2M \Q_ERR_2_reg[4]  ( .D(Q_IN_2[4]), .SI(Q_ERR_2[3]), .SE(n74), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[4]) );
  SDFFRQX2M \Q_ERR_2_reg[5]  ( .D(Q_IN_2[5]), .SI(Q_ERR_2[4]), .SE(n73), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[5]) );
  SDFFRQX2M \Q_ERR_2_reg[6]  ( .D(Q_IN_2[6]), .SI(Q_ERR_2[5]), .SE(n74), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[6]) );
  SDFFRQX2M \out_stage_1_reg[0]  ( .D(Q_IN_1[10]), .SI(Q_ERR_2[9]), .SE(n71), 
        .CK(CLK), .RN(n51), .Q(out_stage_1[0]) );
  SDFFRQX2M \Q_ERR_1_reg[8]  ( .D(Q_IN_1[8]), .SI(Q_ERR_1[7]), .SE(n65), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[8]) );
  SDFFRQX2M \Q_ERR_1_reg[9]  ( .D(Q_IN_1[9]), .SI(Q_ERR_1[8]), .SE(n76), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[9]) );
  SDFFRQX2M \out_stage_1_reg[1]  ( .D(Q_IN_1[11]), .SI(out_stage_1[0]), .SE(
        n70), .CK(CLK), .RN(n51), .Q(out_stage_1[1]) );
  SDFFRQX2M \Q_ERR_1_reg[5]  ( .D(Q_IN_1[5]), .SI(Q_ERR_1[4]), .SE(n64), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[5]) );
  SDFFRQX2M \Q_ERR_2_reg[1]  ( .D(Q_IN_2[1]), .SI(Q_ERR_2[0]), .SE(n66), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[1]) );
  SDFFRQX2M \Q_ERR_2_reg[2]  ( .D(Q_IN_2[2]), .SI(Q_ERR_2[1]), .SE(n65), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[2]) );
  SDFFRQX2M \Q_ERR_1_reg[6]  ( .D(Q_IN_1[6]), .SI(Q_ERR_1[5]), .SE(n65), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[6]) );
  SDFFRQX2M \Q_ERR_1_reg[7]  ( .D(Q_IN_1[7]), .SI(Q_ERR_1[6]), .SE(n74), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[7]) );
  SDFFRQX2M \Q_ERR_2_reg[0]  ( .D(Q_IN_2[0]), .SI(Q_ERR_1[9]), .SE(n66), .CK(
        CLK), .RN(n52), .Q(Q_ERR_2[0]) );
  SDFFRQX2M \Q_ERR_1_reg[3]  ( .D(Q_IN_1[3]), .SI(Q_ERR_1[2]), .SE(n72), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[3]) );
  SDFFRQX2M \Q_ERR_1_reg[4]  ( .D(Q_IN_1[4]), .SI(Q_ERR_1[3]), .SE(n71), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[4]) );
  SDFFRQX2M \Q_ERR_1_reg[2]  ( .D(Q_IN_1[2]), .SI(Q_ERR_1[1]), .SE(n72), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[2]) );
  SDFFRQX2M \Q_ERR_1_reg[1]  ( .D(Q_IN_1[1]), .SI(Q_ERR_1[0]), .SE(n75), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[1]) );
  SDFFRQX2M \Q_ERR_1_reg[0]  ( .D(Q_IN_1[0]), .SI(DSM_OUT[4]), .SE(n71), .CK(
        CLK), .RN(n51), .Q(Q_ERR_1[0]) );
  SDFFRQX2M \DSM_OUT_reg[0]  ( .D(N3), .SI(test_si), .SE(n76), .CK(CLK), .RN(
        RST), .Q(n61) );
  SDFFRQX2M \DSM_OUT_reg[1]  ( .D(N4), .SI(DSM_OUT[0]), .SE(n66), .CK(CLK), 
        .RN(n52), .Q(n60) );
  SDFFRQX2M \DSM_OUT_reg[2]  ( .D(N5), .SI(DSM_OUT[1]), .SE(n75), .CK(CLK), 
        .RN(RST), .Q(n59) );
  SDFFRQX2M \DSM_OUT_reg[3]  ( .D(N6), .SI(DSM_OUT[2]), .SE(test_se), .CK(CLK), 
        .RN(n53), .Q(n58) );
  SDFFRQX2M \DSM_OUT_reg[4]  ( .D(N7), .SI(DSM_OUT[3]), .SE(n76), .CK(CLK), 
        .RN(n53), .Q(n57) );
  INVXLM U37 ( .A(n57), .Y(n35) );
  INVX8M U38 ( .A(n35), .Y(DSM_OUT[4]) );
  INVXLM U39 ( .A(n58), .Y(n37) );
  INVX8M U40 ( .A(n37), .Y(DSM_OUT[3]) );
  INVXLM U41 ( .A(n59), .Y(n39) );
  INVX8M U42 ( .A(n39), .Y(DSM_OUT[2]) );
  INVXLM U43 ( .A(n60), .Y(n41) );
  INVX8M U44 ( .A(n41), .Y(DSM_OUT[1]) );
  INVXLM U45 ( .A(n61), .Y(n43) );
  INVX8M U46 ( .A(n43), .Y(DSM_OUT[0]) );
  CLKBUFX6M U53 ( .A(n53), .Y(n52) );
  CLKBUFX6M U54 ( .A(n53), .Y(n51) );
  INVX2M U55 ( .A(n56), .Y(\add_115/B[1] ) );
  INVX2M U56 ( .A(n54), .Y(n53) );
  INVX2M U57 ( .A(RST), .Y(n54) );
  OAI21X2M U58 ( .A0(out_stage_2_del), .A1(n55), .B0(n56), .Y(N1) );
  NAND2X2M U59 ( .A(out_stage_2_del), .B(n55), .Y(n56) );
  INVX2M U60 ( .A(out_stage_2), .Y(n55) );
  ADDFX2M U61 ( .A(out_stage_1[1]), .B(\add_115/B[1] ), .CI(\add_115/carry[1] ), .CO(\add_115/carry[2] ), .S(N4) );
  ADDFX2M U62 ( .A(out_stage_1[2]), .B(\add_115/B[1] ), .CI(\add_115/carry[2] ), .CO(\add_115/carry[3] ), .S(N5) );
  ADDFX2M U63 ( .A(out_stage_1[3]), .B(\add_115/B[1] ), .CI(\add_115/carry[3] ), .CO(\add_115/carry[4] ), .S(N6) );
  XOR3XLM U64 ( .A(out_stage_1[4]), .B(\add_115/B[1] ), .C(\add_115/carry[4] ), 
        .Y(N7) );
  AND2X1M U65 ( .A(out_stage_1[0]), .B(N1), .Y(\add_115/carry[1] ) );
  CLKXOR2X2M U66 ( .A(N1), .B(out_stage_1[0]), .Y(N3) );
  DLY1X1M U67 ( .A(n70), .Y(n64) );
  DLY1X1M U68 ( .A(n68), .Y(n65) );
  DLY1X1M U69 ( .A(n73), .Y(n66) );
  DLY1X1M U70 ( .A(test_se), .Y(n67) );
  DLY1X1M U71 ( .A(test_se), .Y(n68) );
  DLY1X1M U72 ( .A(n77), .Y(n69) );
  DLY1X1M U73 ( .A(n67), .Y(n70) );
  DLY1X1M U74 ( .A(n67), .Y(n71) );
  DLY1X1M U75 ( .A(n68), .Y(n72) );
  DLY1X1M U76 ( .A(n67), .Y(n73) );
  DLY1X1M U77 ( .A(n68), .Y(n74) );
  DLY1X1M U78 ( .A(n67), .Y(n75) );
  DLY1X1M U79 ( .A(n68), .Y(n76) );
  DLY1X1M U80 ( .A(n64), .Y(n77) );
  DSM_MASH_1_1_IN_W15_DW01_add_0 add_52 ( .A({1'b0, Q_IN_1[9:0]}), .B({1'b0, 
        Q_ERR_2}), .CI(1'b0), .SUM(Q_IN_2) );
  DSM_MASH_1_1_IN_W15_DW01_add_1 add_34 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        Q_ERR_1}), .B(DSM_IN), .CI(1'b0), .SUM(Q_IN_1) );
  SDFFRQX4M out_stage_2_reg ( .D(Q_IN_2[10]), .SI(out_stage_2_del), .SE(n75), 
        .CK(CLK), .RN(n53), .Q(out_stage_2) );
  SDFFRQX2M out_stage_2_del_reg ( .D(out_stage_2), .SI(out_stage_1[4]), .SE(
        n69), .CK(CLK), .RN(RST), .Q(out_stage_2_del) );
endmodule


module DIG_FEEDFWD ( REF_CLK, RST, DLF_Ext_En, DLF_Ext_Data, TDC_OUT, KP, KI, 
        SI, SE, scan_clk, scan_rst, test_mode, SO, DAC_IN, OV_FL, UN_FL );
  input [14:0] DLF_Ext_Data;
  input [3:0] TDC_OUT;
  input [3:0] KP;
  input [3:0] KI;
  output [4:0] DAC_IN;
  input REF_CLK, RST, DLF_Ext_En, SI, SE, scan_clk, scan_rst, test_mode;
  output SO, OV_FL, UN_FL;
  wire   CLK_M, RST_M, n1, n2, n5;
  wire   [14:0] Mash_IN;

  BUFX16M U1 ( .A(KP[1]), .Y(n2) );
  BUFX16M U2 ( .A(KP[0]), .Y(n1) );
  mux2X1_1 U0_clk ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_0 U0_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_M)
         );
  DLF_in_width4_coeff_width4_out_width15_test_1 U0_DLF ( .DLF_IN(TDC_OUT), 
        .KP({KP[3:2], n2, n1}), .KI(KI), .CLK(CLK_M), .RST(RST_M), 
        .DLF_Ext_En(DLF_Ext_En), .DLF_Ext_Data(DLF_Ext_Data), .OV_FL(OV_FL), 
        .UN_FL(UN_FL), .DLF_OUT(Mash_IN), .test_si(SI), .test_so(n5), 
        .test_se(SE) );
  DSM_MASH_1_1_IN_W15_test_1 U0_MASH ( .CLK(CLK_M), .RST(RST_M), .DSM_IN(
        Mash_IN), .DSM_OUT(DAC_IN), .test_si(n5), .test_so(SO), .test_se(SE)
         );
endmodule

