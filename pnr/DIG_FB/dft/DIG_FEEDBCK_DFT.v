/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 11:31:27 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module DSM_1ST_ORDER_in_width20_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(SUM[20]), .S(
        SUM[19]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module DSM_1ST_ORDER_in_width20_test_1 ( CLK, RST, DSM_IN, Q_ERR_SIGN, Q_ERR, 
        DSM_out, test_si2, test_si1, test_se );
  input [19:0] DSM_IN;
  output [19:0] Q_ERR_SIGN;
  output [19:0] Q_ERR;
  input CLK, RST, test_si2, test_si1, test_se;
  output DSM_out;
  wire   n75, n44, n45, n46, n47, n48, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74;
  wire   [20:0] Q_IN;

  SDFFRQX2M DSM_out_reg ( .D(Q_IN[20]), .SI(test_si1), .SE(n55), .CK(CLK), 
        .RN(n45), .Q(DSM_out) );
  SDFFRQX2M \Q_ERR_SIGN_reg[18]  ( .D(Q_IN[18]), .SI(Q_ERR_SIGN[17]), .SE(n60), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[18]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[17]  ( .D(Q_IN[17]), .SI(Q_ERR_SIGN[16]), .SE(n62), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[17]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[16]  ( .D(Q_IN[16]), .SI(Q_ERR_SIGN[15]), .SE(n70), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[16]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[15]  ( .D(Q_IN[15]), .SI(Q_ERR_SIGN[14]), .SE(n61), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[15]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[14]  ( .D(Q_IN[14]), .SI(Q_ERR_SIGN[13]), .SE(n65), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[14]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[13]  ( .D(Q_IN[13]), .SI(Q_ERR_SIGN[12]), .SE(n68), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[13]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[12]  ( .D(Q_IN[12]), .SI(Q_ERR_SIGN[11]), .SE(n71), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[12]) );
  SDFFRQX2M \Q_ERR_reg[19]  ( .D(Q_IN[19]), .SI(Q_ERR[18]), .SE(n64), .CK(CLK), 
        .RN(n45), .Q(Q_ERR[19]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[11]  ( .D(Q_IN[11]), .SI(Q_ERR_SIGN[10]), .SE(n67), 
        .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[11]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[10]  ( .D(Q_IN[10]), .SI(test_si2), .SE(n60), .CK(
        CLK), .RN(n44), .Q(Q_ERR_SIGN[10]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[9]  ( .D(Q_IN[9]), .SI(Q_ERR_SIGN[8]), .SE(n63), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[9]) );
  SDFFRQX2M \Q_ERR_reg[16]  ( .D(Q_IN[16]), .SI(Q_ERR[15]), .SE(n69), .CK(CLK), 
        .RN(n45), .Q(Q_ERR[16]) );
  SDFFRQX2M \Q_ERR_reg[17]  ( .D(Q_IN[17]), .SI(Q_ERR[16]), .SE(n61), .CK(CLK), 
        .RN(n45), .Q(Q_ERR[17]) );
  SDFFRQX2M \Q_ERR_reg[18]  ( .D(Q_IN[18]), .SI(Q_ERR[17]), .SE(n54), .CK(CLK), 
        .RN(n45), .Q(Q_ERR[18]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[8]  ( .D(Q_IN[8]), .SI(Q_ERR_SIGN[7]), .SE(n68), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[8]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[7]  ( .D(Q_IN[7]), .SI(Q_ERR_SIGN[6]), .SE(n55), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[7]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[6]  ( .D(Q_IN[6]), .SI(Q_ERR_SIGN[5]), .SE(n65), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[6]) );
  SDFFRQX2M \Q_ERR_reg[13]  ( .D(Q_IN[13]), .SI(Q_ERR[12]), .SE(n67), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[13]) );
  SDFFRQX2M \Q_ERR_reg[14]  ( .D(Q_IN[14]), .SI(Q_ERR[13]), .SE(n58), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[14]) );
  SDFFRQX2M \Q_ERR_reg[15]  ( .D(Q_IN[15]), .SI(Q_ERR[14]), .SE(n64), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[15]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[5]  ( .D(Q_IN[5]), .SI(Q_ERR_SIGN[4]), .SE(test_se), .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[5]) );
  SDFFRQX2M \Q_ERR_reg[10]  ( .D(Q_IN[10]), .SI(Q_ERR[9]), .SE(n53), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[10]) );
  SDFFRQX2M \Q_ERR_reg[11]  ( .D(Q_IN[11]), .SI(Q_ERR[10]), .SE(n63), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[11]) );
  SDFFRQX2M \Q_ERR_reg[12]  ( .D(Q_IN[12]), .SI(Q_ERR[11]), .SE(n68), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[12]) );
  SDFFRQX2M \Q_ERR_reg[7]  ( .D(Q_IN[7]), .SI(Q_ERR[6]), .SE(n54), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[7]) );
  SDFFRQX2M \Q_ERR_reg[8]  ( .D(Q_IN[8]), .SI(Q_ERR[7]), .SE(n54), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[8]) );
  SDFFRQX2M \Q_ERR_reg[9]  ( .D(Q_IN[9]), .SI(Q_ERR[8]), .SE(n67), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[9]) );
  SDFFRQX2M \Q_ERR_reg[6]  ( .D(Q_IN[6]), .SI(Q_ERR[5]), .SE(n58), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[6]) );
  SDFFRQX4M \Q_ERR_reg[0]  ( .D(Q_IN[0]), .SI(n74), .SE(n52), .CK(CLK), .RN(
        n44), .Q(Q_ERR[0]) );
  SDFFRQX2M \Q_ERR_reg[5]  ( .D(Q_IN[5]), .SI(Q_ERR[4]), .SE(n65), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[5]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[4]  ( .D(Q_IN[4]), .SI(Q_ERR_SIGN[3]), .SE(n59), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[4]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[3]  ( .D(Q_IN[3]), .SI(Q_ERR_SIGN[2]), .SE(n52), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[3]) );
  SDFFRQX2M \Q_ERR_reg[4]  ( .D(Q_IN[4]), .SI(Q_ERR[3]), .SE(n64), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[4]) );
  SDFFRQX2M \Q_ERR_reg[3]  ( .D(Q_IN[3]), .SI(Q_ERR[2]), .SE(n66), .CK(CLK), 
        .RN(n46), .Q(Q_ERR[3]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[1]  ( .D(Q_IN[1]), .SI(Q_ERR_SIGN[0]), .SE(n61), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[1]) );
  SDFFSQX1M \Q_ERR_SIGN_reg[19]  ( .D(n48), .SI(Q_ERR_SIGN[18]), .SE(n66), 
        .CK(CLK), .SN(RST), .Q(n75) );
  SDFFRQX2M \Q_ERR_SIGN_reg[2]  ( .D(Q_IN[2]), .SI(Q_ERR_SIGN[1]), .SE(n52), 
        .CK(CLK), .RN(n44), .Q(Q_ERR_SIGN[2]) );
  SDFFRQX2M \Q_ERR_SIGN_reg[0]  ( .D(Q_IN[0]), .SI(DSM_out), .SE(n66), .CK(CLK), .RN(n45), .Q(Q_ERR_SIGN[0]) );
  SDFFRQX2M \Q_ERR_reg[2]  ( .D(Q_IN[2]), .SI(Q_ERR[1]), .SE(n58), .CK(CLK), 
        .RN(n47), .Q(Q_ERR[2]) );
  SDFFRQX2M \Q_ERR_reg[1]  ( .D(Q_IN[1]), .SI(Q_ERR[0]), .SE(n62), .CK(CLK), 
        .RN(n47), .Q(Q_ERR[1]) );
  CLKBUFX6M U46 ( .A(n47), .Y(n44) );
  CLKBUFX6M U47 ( .A(n47), .Y(n45) );
  CLKBUFX6M U48 ( .A(n47), .Y(n46) );
  INVX2M U49 ( .A(Q_IN[19]), .Y(n48) );
  BUFX2M U50 ( .A(RST), .Y(n47) );
  DLY1X1M U51 ( .A(n63), .Y(n52) );
  DLY1X1M U52 ( .A(n72), .Y(n53) );
  DLY1X1M U53 ( .A(n62), .Y(n54) );
  INVXLM U54 ( .A(n57), .Y(n55) );
  DLY1X1M U55 ( .A(test_se), .Y(n69) );
  INVXLM U56 ( .A(n69), .Y(n56) );
  INVXLM U57 ( .A(n69), .Y(n57) );
  DLY1X1M U58 ( .A(n60), .Y(n58) );
  DLY1X1M U59 ( .A(n71), .Y(n59) );
  DLY1X1M U60 ( .A(n70), .Y(n60) );
  DLY1X1M U61 ( .A(n72), .Y(n61) );
  DLY1X1M U62 ( .A(n53), .Y(n62) );
  DLY1X1M U63 ( .A(n53), .Y(n63) );
  DLY1X1M U64 ( .A(n53), .Y(n64) );
  DLY1X1M U65 ( .A(n69), .Y(n65) );
  DLY1X1M U66 ( .A(n59), .Y(n66) );
  DLY1X1M U67 ( .A(n59), .Y(n67) );
  DLY1X1M U68 ( .A(n59), .Y(n68) );
  INVXLM U69 ( .A(n56), .Y(n70) );
  INVXLM U70 ( .A(n57), .Y(n71) );
  INVXLM U71 ( .A(n56), .Y(n72) );
  DLY1X1M U72 ( .A(n75), .Y(Q_ERR_SIGN[19]) );
  DLY1X1M U73 ( .A(n75), .Y(n74) );
  DSM_1ST_ORDER_in_width20_DW01_add_0 add_29 ( .A({1'b0, Q_ERR}), .B({1'b0, 
        DSM_IN}), .CI(1'b0), .SUM(Q_IN) );
endmodule


module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW01_add_0 ( A, B, CI, SUM, CO
 );
  input [26:0] A;
  input [26:0] B;
  output [26:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;
  assign SUM[18] = A[18];

  NAND2X2M U2 ( .A(B[19]), .B(A[19]), .Y(n30) );
  NAND2X4M U3 ( .A(n3), .B(n25), .Y(n20) );
  XOR2X4M U5 ( .A(B[26]), .B(n10), .Y(SUM[26]) );
  CLKNAND2X8M U6 ( .A(n1), .B(n31), .Y(n3) );
  INVX2M U7 ( .A(n23), .Y(n1) );
  NOR2X2M U9 ( .A(B[22]), .B(A[22]), .Y(n19) );
  AND2X1M U10 ( .A(B[20]), .B(A[20]), .Y(n28) );
  NAND2X2M U11 ( .A(B[21]), .B(A[21]), .Y(n25) );
  NOR2X4M U12 ( .A(n15), .B(n16), .Y(n5) );
  OAI21X2M U13 ( .A0(A[25]), .A1(n11), .B0(B[25]), .Y(n12) );
  OAI2BB1X2M U14 ( .A0N(n11), .A1N(A[25]), .B0(n12), .Y(n10) );
  OR2X6M U15 ( .A(n5), .B(n6), .Y(n13) );
  NOR2X2M U16 ( .A(B[20]), .B(A[20]), .Y(n27) );
  OR2X4M U17 ( .A(A[24]), .B(n13), .Y(n14) );
  AOI2B1X8M U18 ( .A1N(n19), .A0(n20), .B0(n21), .Y(n16) );
  XOR2XLM U19 ( .A(n18), .B(n16), .Y(SUM[23]) );
  XOR2XLM U20 ( .A(n20), .B(n22), .Y(SUM[22]) );
  NOR2XLM U21 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X1M U23 ( .A(B[23]), .B(A[23]), .Y(n17) );
  CLKINVX2M U24 ( .A(n30), .Y(n9) );
  AND2X1M U25 ( .A(n8), .B(n30), .Y(SUM[19]) );
  OR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n8) );
  AO22X1M U27 ( .A0(n13), .A1(A[24]), .B0(n14), .B1(B[24]), .Y(n11) );
  INVX2M U28 ( .A(n17), .Y(n6) );
  NOR2X2M U29 ( .A(B[23]), .B(A[23]), .Y(n15) );
  XOR3XLM U30 ( .A(B[25]), .B(A[25]), .C(n11), .Y(SUM[25]) );
  XOR3XLM U31 ( .A(B[24]), .B(A[24]), .C(n13), .Y(SUM[24]) );
  NAND2BX1M U32 ( .AN(n15), .B(n17), .Y(n18) );
  AND2X1M U33 ( .A(B[22]), .B(A[22]), .Y(n21) );
  CLKXOR2X2M U34 ( .A(n26), .B(n24), .Y(SUM[21]) );
  NAND2BX1M U35 ( .AN(n23), .B(n25), .Y(n26) );
  NOR2X1M U36 ( .A(B[21]), .B(A[21]), .Y(n23) );
  CLKXOR2X2M U37 ( .A(n9), .B(n29), .Y(SUM[20]) );
  NOR2X1M U38 ( .A(n28), .B(n27), .Y(n29) );
  OAI21BX8M U4 ( .A0(n27), .A1(n30), .B0N(n28), .Y(n31) );
  CLKINVX40M U8 ( .A(n31), .Y(n24) );
endmodule


module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW02_mult_0 ( A, B, TC, 
        PRODUCT );
  input [19:0] A;
  input [8:0] B;
  output [28:0] PRODUCT;
  input TC;
  wire   \ab[19][8] , \ab[19][7] , \ab[19][6] , \ab[19][5] , \ab[19][4] ,
         \ab[19][3] , \ab[19][2] , \ab[19][1] , \ab[19][0] , \ab[18][8] ,
         \ab[18][7] , \ab[18][6] , \ab[18][5] , \ab[18][4] , \ab[18][3] ,
         \ab[18][2] , \ab[18][1] , \ab[18][0] , \ab[17][8] , \ab[17][7] ,
         \ab[17][6] , \ab[17][5] , \ab[17][4] , \ab[17][3] , \ab[17][2] ,
         \ab[17][1] , \ab[17][0] , \ab[16][8] , \ab[16][7] , \ab[16][6] ,
         \ab[16][5] , \ab[16][4] , \ab[16][3] , \ab[16][2] , \ab[16][1] ,
         \ab[16][0] , \ab[15][8] , \ab[15][7] , \ab[15][6] , \ab[15][5] ,
         \ab[15][4] , \ab[15][3] , \ab[15][2] , \ab[15][1] , \ab[15][0] ,
         \ab[14][8] , \ab[14][7] , \ab[14][6] , \ab[14][5] , \ab[14][4] ,
         \ab[14][3] , \ab[14][2] , \ab[14][1] , \ab[14][0] , \ab[13][8] ,
         \ab[13][7] , \ab[13][6] , \ab[13][5] , \ab[13][4] , \ab[13][3] ,
         \ab[13][2] , \ab[13][1] , \ab[13][0] , \ab[12][8] , \ab[12][7] ,
         \ab[12][6] , \ab[12][5] , \ab[12][4] , \ab[12][3] , \ab[12][2] ,
         \ab[12][1] , \ab[12][0] , \ab[11][8] , \ab[11][7] , \ab[11][6] ,
         \ab[11][5] , \ab[11][4] , \ab[11][3] , \ab[11][2] , \ab[11][1] ,
         \ab[11][0] , \ab[10][8] , \ab[10][7] , \ab[10][6] , \ab[10][5] ,
         \ab[10][4] , \ab[10][3] , \ab[10][2] , \ab[10][1] , \ab[10][0] ,
         \ab[9][8] , \ab[9][7] , \ab[9][6] , \ab[9][5] , \ab[9][4] ,
         \ab[9][3] , \ab[9][2] , \ab[9][1] , \ab[9][0] , \ab[8][8] ,
         \ab[8][7] , \ab[8][6] , \ab[8][5] , \ab[8][4] , \ab[8][3] ,
         \ab[8][2] , \ab[8][1] , \ab[8][0] , \ab[7][8] , \ab[7][7] ,
         \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] , \ab[7][2] ,
         \ab[7][1] , \ab[7][0] , \ab[6][8] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][8] , \ab[5][7] , \ab[5][6] , \ab[5][5] ,
         \ab[5][4] , \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] ,
         \ab[4][8] , \ab[4][7] , \ab[4][6] , \ab[4][5] , \ab[4][4] ,
         \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] , \ab[3][8] ,
         \ab[3][7] , \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] ,
         \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][8] , \ab[2][7] ,
         \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] , \ab[2][2] ,
         \ab[2][1] , \ab[2][0] , \ab[1][8] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][8] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \CARRYB[19][7] , \CARRYB[19][6] ,
         \CARRYB[19][5] , \CARRYB[19][4] , \CARRYB[19][3] , \CARRYB[19][2] ,
         \CARRYB[19][1] , \CARRYB[19][0] , \CARRYB[18][7] , \CARRYB[18][6] ,
         \CARRYB[18][5] , \CARRYB[18][4] , \CARRYB[18][3] , \CARRYB[18][2] ,
         \CARRYB[18][1] , \CARRYB[18][0] , \CARRYB[17][7] , \CARRYB[17][6] ,
         \CARRYB[17][5] , \CARRYB[17][4] , \CARRYB[17][3] , \CARRYB[17][2] ,
         \CARRYB[17][1] , \CARRYB[17][0] , \CARRYB[16][7] , \CARRYB[16][6] ,
         \CARRYB[16][5] , \CARRYB[16][4] , \CARRYB[16][3] , \CARRYB[16][2] ,
         \CARRYB[16][1] , \CARRYB[16][0] , \CARRYB[15][7] , \CARRYB[15][6] ,
         \CARRYB[15][5] , \CARRYB[15][4] , \CARRYB[15][3] , \CARRYB[15][2] ,
         \CARRYB[15][1] , \CARRYB[15][0] , \CARRYB[14][7] , \CARRYB[14][6] ,
         \CARRYB[14][5] , \CARRYB[14][4] , \CARRYB[14][3] , \CARRYB[14][2] ,
         \CARRYB[14][1] , \CARRYB[14][0] , \CARRYB[13][7] , \CARRYB[13][6] ,
         \CARRYB[13][5] , \CARRYB[13][4] , \CARRYB[13][3] , \CARRYB[13][2] ,
         \CARRYB[13][1] , \CARRYB[13][0] , \CARRYB[12][7] , \CARRYB[12][6] ,
         \CARRYB[12][5] , \CARRYB[12][4] , \CARRYB[12][3] , \CARRYB[12][2] ,
         \CARRYB[12][1] , \CARRYB[12][0] , \CARRYB[11][7] , \CARRYB[11][6] ,
         \CARRYB[11][5] , \CARRYB[11][4] , \CARRYB[11][3] , \CARRYB[11][2] ,
         \CARRYB[11][1] , \CARRYB[11][0] , \CARRYB[10][7] , \CARRYB[10][6] ,
         \CARRYB[10][5] , \CARRYB[10][4] , \CARRYB[10][3] , \CARRYB[10][2] ,
         \CARRYB[10][1] , \CARRYB[10][0] , \CARRYB[9][7] , \CARRYB[9][6] ,
         \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] , \CARRYB[9][2] ,
         \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][7] , \CARRYB[8][6] ,
         \CARRYB[8][5] , \CARRYB[8][4] , \CARRYB[8][3] , \CARRYB[8][2] ,
         \CARRYB[8][1] , \CARRYB[8][0] , \CARRYB[7][7] , \CARRYB[7][6] ,
         \CARRYB[7][5] , \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] ,
         \CARRYB[7][1] , \CARRYB[7][0] , \CARRYB[6][7] , \CARRYB[6][6] ,
         \CARRYB[6][5] , \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] ,
         \CARRYB[6][1] , \CARRYB[6][0] , \CARRYB[5][7] , \CARRYB[5][6] ,
         \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] , \CARRYB[5][2] ,
         \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][7] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][7] , \CARRYB[3][6] ,
         \CARRYB[3][5] , \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][7] , \CARRYB[2][6] ,
         \CARRYB[2][5] , \CARRYB[2][4] , \CARRYB[2][3] , \CARRYB[2][2] ,
         \CARRYB[2][1] , \CARRYB[2][0] , \CARRYB[1][0] , \SUMB[19][7] ,
         \SUMB[19][6] , \SUMB[19][5] , \SUMB[19][4] , \SUMB[19][3] ,
         \SUMB[19][2] , \SUMB[19][1] , \SUMB[19][0] , \SUMB[18][7] ,
         \SUMB[18][6] , \SUMB[18][5] , \SUMB[18][4] , \SUMB[18][3] ,
         \SUMB[18][2] , \SUMB[18][1] , \SUMB[17][7] , \SUMB[17][6] ,
         \SUMB[17][5] , \SUMB[17][4] , \SUMB[17][3] , \SUMB[17][2] ,
         \SUMB[17][1] , \SUMB[16][7] , \SUMB[16][6] , \SUMB[16][5] ,
         \SUMB[16][4] , \SUMB[16][3] , \SUMB[16][2] , \SUMB[16][1] ,
         \SUMB[15][7] , \SUMB[15][6] , \SUMB[15][5] , \SUMB[15][4] ,
         \SUMB[15][3] , \SUMB[15][2] , \SUMB[15][1] , \SUMB[14][7] ,
         \SUMB[14][6] , \SUMB[14][5] , \SUMB[14][4] , \SUMB[14][3] ,
         \SUMB[14][2] , \SUMB[14][1] , \SUMB[13][7] , \SUMB[13][6] ,
         \SUMB[13][5] , \SUMB[13][4] , \SUMB[13][3] , \SUMB[13][2] ,
         \SUMB[13][1] , \SUMB[12][7] , \SUMB[12][6] , \SUMB[12][5] ,
         \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] , \SUMB[12][1] ,
         \SUMB[11][7] , \SUMB[11][6] , \SUMB[11][5] , \SUMB[11][4] ,
         \SUMB[11][3] , \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][7] ,
         \SUMB[10][6] , \SUMB[10][5] , \SUMB[10][4] , \SUMB[10][3] ,
         \SUMB[10][2] , \SUMB[10][1] , \SUMB[9][7] , \SUMB[9][6] ,
         \SUMB[9][5] , \SUMB[9][4] , \SUMB[9][3] , \SUMB[9][2] , \SUMB[9][1] ,
         \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] , \SUMB[8][3] ,
         \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][7] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] ,
         \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][7] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] ,
         \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][7] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , \PROD1[8] , \A1[25] , \A1[24] , \A1[23] , \A1[22] ,
         \A1[21] , \A1[20] , \A1[19] , \A1[18] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] ,
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;

  ADDFX2M S5_7 ( .A(\ab[19][7] ), .B(\CARRYB[18][7] ), .CI(\ab[18][8] ), .CO(
        \CARRYB[19][7] ), .S(\SUMB[19][7] ) );
  ADDFX2M S3_18_7 ( .A(\ab[18][7] ), .B(\CARRYB[17][7] ), .CI(\ab[17][8] ), 
        .CO(\CARRYB[18][7] ), .S(\SUMB[18][7] ) );
  ADDFX2M S3_17_7 ( .A(\ab[17][7] ), .B(\CARRYB[16][7] ), .CI(\ab[16][8] ), 
        .CO(\CARRYB[17][7] ), .S(\SUMB[17][7] ) );
  ADDFX2M S3_16_7 ( .A(\ab[16][7] ), .B(\CARRYB[15][7] ), .CI(\ab[15][8] ), 
        .CO(\CARRYB[16][7] ), .S(\SUMB[16][7] ) );
  ADDFX2M S4_6 ( .A(\ab[19][6] ), .B(\CARRYB[18][6] ), .CI(\SUMB[18][7] ), 
        .CO(\CARRYB[19][6] ), .S(\SUMB[19][6] ) );
  ADDFX2M S3_14_7 ( .A(\ab[14][7] ), .B(\CARRYB[13][7] ), .CI(\ab[13][8] ), 
        .CO(\CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  ADDFX2M S2_18_6 ( .A(\ab[18][6] ), .B(\CARRYB[17][6] ), .CI(\SUMB[17][7] ), 
        .CO(\CARRYB[18][6] ), .S(\SUMB[18][6] ) );
  ADDFX2M S2_18_5 ( .A(\ab[18][5] ), .B(\CARRYB[17][5] ), .CI(\SUMB[17][6] ), 
        .CO(\CARRYB[18][5] ), .S(\SUMB[18][5] ) );
  ADDFX2M S2_17_6 ( .A(\ab[17][6] ), .B(\CARRYB[16][6] ), .CI(\SUMB[16][7] ), 
        .CO(\CARRYB[17][6] ), .S(\SUMB[17][6] ) );
  ADDFX2M S3_15_7 ( .A(\ab[15][7] ), .B(\CARRYB[14][7] ), .CI(\ab[14][8] ), 
        .CO(\CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  ADDFX2M S3_13_7 ( .A(\ab[13][7] ), .B(\CARRYB[12][7] ), .CI(\ab[12][8] ), 
        .CO(\CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  ADDFX2M S4_5 ( .A(\ab[19][5] ), .B(\CARRYB[18][5] ), .CI(\SUMB[18][6] ), 
        .CO(\CARRYB[19][5] ), .S(\SUMB[19][5] ) );
  ADDFX2M S4_4 ( .A(\ab[19][4] ), .B(\CARRYB[18][4] ), .CI(\SUMB[18][5] ), 
        .CO(\CARRYB[19][4] ), .S(\SUMB[19][4] ) );
  ADDFX2M S2_16_5 ( .A(\ab[16][5] ), .B(\CARRYB[15][5] ), .CI(\SUMB[15][6] ), 
        .CO(\CARRYB[16][5] ), .S(\SUMB[16][5] ) );
  ADDFX2M S2_17_3 ( .A(\ab[17][3] ), .B(\CARRYB[16][3] ), .CI(\SUMB[16][4] ), 
        .CO(\CARRYB[17][3] ), .S(\SUMB[17][3] ) );
  ADDFX2M S2_18_1 ( .A(\ab[18][1] ), .B(\CARRYB[17][1] ), .CI(\SUMB[17][2] ), 
        .CO(\CARRYB[18][1] ), .S(\SUMB[18][1] ) );
  ADDFX2M S1_16_0 ( .A(\ab[16][0] ), .B(\CARRYB[15][0] ), .CI(\SUMB[15][1] ), 
        .CO(\CARRYB[16][0] ), .S(\A1[14] ) );
  ADDFX2M S1_17_0 ( .A(\ab[17][0] ), .B(\CARRYB[16][0] ), .CI(\SUMB[16][1] ), 
        .CO(\CARRYB[17][0] ), .S(\A1[15] ) );
  ADDFX2M S2_15_5 ( .A(\ab[15][5] ), .B(\CARRYB[14][5] ), .CI(\SUMB[14][6] ), 
        .CO(\CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  ADDFX2M S2_16_2 ( .A(\ab[16][2] ), .B(\CARRYB[15][2] ), .CI(\SUMB[15][3] ), 
        .CO(\CARRYB[16][2] ), .S(\SUMB[16][2] ) );
  ADDFX2M S2_16_1 ( .A(\ab[16][1] ), .B(\CARRYB[15][1] ), .CI(\SUMB[15][2] ), 
        .CO(\CARRYB[16][1] ), .S(\SUMB[16][1] ) );
  ADDFX2M S2_14_6 ( .A(\ab[14][6] ), .B(\CARRYB[13][6] ), .CI(\SUMB[13][7] ), 
        .CO(\CARRYB[14][6] ), .S(\SUMB[14][6] ) );
  ADDFX2M S2_15_4 ( .A(\ab[15][4] ), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), 
        .CO(\CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  ADDFX2M S2_15_3 ( .A(\ab[15][3] ), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), 
        .CO(\CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  ADDFX2M S2_15_2 ( .A(\ab[15][2] ), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), 
        .CO(\CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  ADDFX2M S1_14_0 ( .A(\ab[14][0] ), .B(\CARRYB[13][0] ), .CI(\SUMB[13][1] ), 
        .CO(\CARRYB[14][0] ), .S(\A1[12] ) );
  ADDFX2M S1_15_0 ( .A(\ab[15][0] ), .B(\CARRYB[14][0] ), .CI(\SUMB[14][1] ), 
        .CO(\CARRYB[15][0] ), .S(\A1[13] ) );
  ADDFX2M S2_14_2 ( .A(\ab[14][2] ), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), 
        .CO(\CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  ADDFX2M S2_14_1 ( .A(\ab[14][1] ), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), 
        .CO(\CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  ADDFX2M S2_13_6 ( .A(\ab[13][6] ), .B(\CARRYB[12][6] ), .CI(\SUMB[12][7] ), 
        .CO(\CARRYB[13][6] ), .S(\SUMB[13][6] ) );
  ADDFX2M S2_13_5 ( .A(\ab[13][5] ), .B(\CARRYB[12][5] ), .CI(\SUMB[12][6] ), 
        .CO(\CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  ADDFX2M S2_13_4 ( .A(\ab[13][4] ), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  ADDFX2M S2_13_3 ( .A(\ab[13][3] ), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  ADDFX2M S2_13_2 ( .A(\ab[13][2] ), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  ADDFX2M S1_12_0 ( .A(\ab[12][0] ), .B(\CARRYB[11][0] ), .CI(\SUMB[11][1] ), 
        .CO(\CARRYB[12][0] ), .S(\A1[10] ) );
  ADDFX2M S1_13_0 ( .A(\ab[13][0] ), .B(\CARRYB[12][0] ), .CI(\SUMB[12][1] ), 
        .CO(\CARRYB[13][0] ), .S(\A1[11] ) );
  ADDFX2M S2_12_6 ( .A(\ab[12][6] ), .B(\CARRYB[11][6] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[12][6] ), .S(\SUMB[12][6] ) );
  ADDFX2M S2_12_2 ( .A(\ab[12][2] ), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  ADDFX2M S2_12_1 ( .A(\ab[12][1] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  ADDFX2M S2_11_6 ( .A(\ab[11][6] ), .B(\CARRYB[10][6] ), .CI(\SUMB[10][7] ), 
        .CO(\CARRYB[11][6] ), .S(\SUMB[11][6] ) );
  ADDFX2M S2_11_5 ( .A(\ab[11][5] ), .B(\CARRYB[10][5] ), .CI(\SUMB[10][6] ), 
        .CO(\CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  ADDFX2M S2_11_4 ( .A(\ab[11][4] ), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  ADDFX2M S2_11_3 ( .A(\ab[11][3] ), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  ADDFX2M S2_11_2 ( .A(\ab[11][2] ), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  ADDFX2M S1_10_0 ( .A(\ab[10][0] ), .B(\CARRYB[9][0] ), .CI(\SUMB[9][1] ), 
        .CO(\CARRYB[10][0] ), .S(\A1[8] ) );
  ADDFX2M S1_11_0 ( .A(\ab[11][0] ), .B(\CARRYB[10][0] ), .CI(\SUMB[10][1] ), 
        .CO(\CARRYB[11][0] ), .S(\A1[9] ) );
  ADDFX2M S2_10_6 ( .A(\ab[10][6] ), .B(\CARRYB[9][6] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[10][6] ), .S(\SUMB[10][6] ) );
  ADDFX2M S2_10_2 ( .A(\ab[10][2] ), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  ADDFX2M S2_10_1 ( .A(\ab[10][1] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  ADDFX2M S2_9_6 ( .A(\ab[9][6] ), .B(\CARRYB[8][6] ), .CI(\SUMB[8][7] ), .CO(
        \CARRYB[9][6] ), .S(\SUMB[9][6] ) );
  ADDFX2M S2_9_5 ( .A(\ab[9][5] ), .B(\CARRYB[8][5] ), .CI(\SUMB[8][6] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  ADDFX2M S2_9_4 ( .A(\ab[9][4] ), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  ADDFX2M S2_9_3 ( .A(\ab[9][3] ), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  ADDFX2M S2_9_2 ( .A(\ab[9][2] ), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  ADDFX2M S1_8_0 ( .A(\ab[8][0] ), .B(\CARRYB[7][0] ), .CI(\SUMB[7][1] ), .CO(
        \CARRYB[8][0] ), .S(\PROD1[8] ) );
  ADDFX2M S1_9_0 ( .A(\ab[9][0] ), .B(\CARRYB[8][0] ), .CI(\SUMB[8][1] ), .CO(
        \CARRYB[9][0] ), .S(\A1[7] ) );
  ADDFX2M S2_8_6 ( .A(\ab[8][6] ), .B(\CARRYB[7][6] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[8][6] ), .S(\SUMB[8][6] ) );
  ADDFX2M S2_8_2 ( .A(\ab[8][2] ), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  ADDFX2M S2_8_1 ( .A(\ab[8][1] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  ADDFX2M S2_7_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S2_7_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_7_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_7_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S2_7_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_7_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  ADDFX2M S2_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_18_4 ( .A(\ab[18][4] ), .B(\CARRYB[17][4] ), .CI(\SUMB[17][5] ), 
        .CO(\CARRYB[18][4] ), .S(\SUMB[18][4] ) );
  ADDFX2M S2_16_6 ( .A(\ab[16][6] ), .B(\CARRYB[15][6] ), .CI(\SUMB[15][7] ), 
        .CO(\CARRYB[16][6] ), .S(\SUMB[16][6] ) );
  ADDFX2M S2_15_6 ( .A(\ab[15][6] ), .B(\CARRYB[14][6] ), .CI(\SUMB[14][7] ), 
        .CO(\CARRYB[15][6] ), .S(\SUMB[15][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_12_7 ( .A(\ab[12][7] ), .B(\CARRYB[11][7] ), .CI(\ab[11][8] ), 
        .CO(\CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  ADDFX2M S3_11_7 ( .A(\ab[11][7] ), .B(\CARRYB[10][7] ), .CI(\ab[10][8] ), 
        .CO(\CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  ADDFX2M S3_10_7 ( .A(\ab[10][7] ), .B(\CARRYB[9][7] ), .CI(\ab[9][8] ), .CO(
        \CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  ADDFX2M S3_9_7 ( .A(\ab[9][7] ), .B(\CARRYB[8][7] ), .CI(\ab[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  ADDFX2M S3_8_7 ( .A(\ab[8][7] ), .B(\CARRYB[7][7] ), .CI(\ab[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  ADDFX2M S3_7_7 ( .A(\ab[7][7] ), .B(\CARRYB[6][7] ), .CI(\ab[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  ADDFX2M S3_6_7 ( .A(\ab[6][7] ), .B(\CARRYB[5][7] ), .CI(\ab[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  ADDFX2M S3_5_7 ( .A(\ab[5][7] ), .B(\CARRYB[4][7] ), .CI(\ab[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  ADDFX2M S3_4_7 ( .A(\ab[4][7] ), .B(\CARRYB[3][7] ), .CI(\ab[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  ADDFX2M S3_3_7 ( .A(\ab[3][7] ), .B(\CARRYB[2][7] ), .CI(\ab[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  ADDFX2M S2_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_18_0 ( .A(\ab[18][0] ), .B(\CARRYB[17][0] ), .CI(\SUMB[17][1] ), 
        .CO(\CARRYB[18][0] ), .S(\A1[16] ) );
  ADDFX2M S4_0 ( .A(\ab[19][0] ), .B(\CARRYB[18][0] ), .CI(\SUMB[18][1] ), 
        .CO(\CARRYB[19][0] ), .S(\SUMB[19][0] ) );
  ADDFHX1M S2_14_4 ( .A(\ab[14][4] ), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), 
        .CO(\CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  ADDFHX1M S2_10_4 ( .A(\ab[10][4] ), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), 
        .CO(\CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  ADDFHX1M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), 
        .CO(\CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFHX1M S2_14_3 ( .A(\ab[14][3] ), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), 
        .CO(\CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  ADDFHX1M S2_10_3 ( .A(\ab[10][3] ), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), 
        .CO(\CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  ADDFHX1M S2_17_2 ( .A(\ab[17][2] ), .B(\CARRYB[16][2] ), .CI(\SUMB[16][3] ), 
        .CO(\CARRYB[17][2] ), .S(\SUMB[17][2] ) );
  ADDFHX1M S2_18_3 ( .A(\ab[18][3] ), .B(\CARRYB[17][3] ), .CI(\SUMB[17][4] ), 
        .CO(\CARRYB[18][3] ), .S(\SUMB[18][3] ) );
  ADDFHX1M S2_18_2 ( .A(\ab[18][2] ), .B(\CARRYB[17][2] ), .CI(\SUMB[17][3] ), 
        .CO(\CARRYB[18][2] ), .S(\SUMB[18][2] ) );
  ADDFHX1M S2_2_4 ( .A(\ab[2][4] ), .B(n10), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_17_5 ( .A(\ab[17][5] ), .B(\CARRYB[16][5] ), .CI(\SUMB[16][6] ), 
        .CO(\CARRYB[17][5] ), .S(\SUMB[17][5] ) );
  ADDFX2M S2_8_3 ( .A(\ab[8][3] ), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_17_4 ( .A(\ab[17][4] ), .B(\CARRYB[16][4] ), .CI(\SUMB[16][5] ), 
        .CO(\CARRYB[17][4] ), .S(\SUMB[17][4] ) );
  ADDFX2M S2_16_4 ( .A(\ab[16][4] ), .B(\CARRYB[15][4] ), .CI(\SUMB[15][5] ), 
        .CO(\CARRYB[16][4] ), .S(\SUMB[16][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFHX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFHX1M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), 
        .CO(\CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFHX1M S2_10_5 ( .A(\ab[10][5] ), .B(\CARRYB[9][5] ), .CI(\SUMB[9][6] ), 
        .CO(\CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  ADDFHX1M S2_12_5 ( .A(\ab[12][5] ), .B(\CARRYB[11][5] ), .CI(\SUMB[11][6] ), 
        .CO(\CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S4_2 ( .A(\ab[19][2] ), .B(\CARRYB[18][2] ), .CI(\SUMB[18][3] ), 
        .CO(\CARRYB[19][2] ), .S(\SUMB[19][2] ) );
  ADDFX2M S4_1 ( .A(\ab[19][1] ), .B(\CARRYB[18][1] ), .CI(\SUMB[18][2] ), 
        .CO(\CARRYB[19][1] ), .S(\SUMB[19][1] ) );
  ADDFX2M S4_3 ( .A(\ab[19][3] ), .B(\CARRYB[18][3] ), .CI(\SUMB[18][4] ), 
        .CO(\CARRYB[19][3] ), .S(\SUMB[19][3] ) );
  ADDFX2M S2_15_1 ( .A(\ab[15][1] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), 
        .CO(\CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  ADDFX2M S2_16_3 ( .A(\ab[16][3] ), .B(\CARRYB[15][3] ), .CI(\SUMB[15][4] ), 
        .CO(\CARRYB[16][3] ), .S(\SUMB[16][3] ) );
  ADDFX2M S2_11_1 ( .A(\ab[11][1] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  ADDFX2M S2_14_5 ( .A(\ab[14][5] ), .B(\CARRYB[13][5] ), .CI(\SUMB[13][6] ), 
        .CO(\CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  ADDFX2M S2_12_3 ( .A(\ab[12][3] ), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), 
        .CO(\CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  ADDFX2M S2_12_4 ( .A(\ab[12][4] ), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), 
        .CO(\CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  ADDFX2M S2_7_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_8_4 ( .A(\ab[8][4] ), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  ADDFX2M S2_8_5 ( .A(\ab[8][5] ), .B(\CARRYB[7][5] ), .CI(\SUMB[7][6] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_7 ( .A(\ab[2][7] ), .B(n8), .CI(\ab[1][8] ), .CO(\CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  ADDFX2M S2_17_1 ( .A(\ab[17][1] ), .B(\CARRYB[16][1] ), .CI(\SUMB[16][2] ), 
        .CO(\CARRYB[17][1] ), .S(\SUMB[17][1] ) );
  ADDFX2M S2_13_1 ( .A(\ab[13][1] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  ADDFX2M S2_9_1 ( .A(\ab[9][1] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFHX2M S2_2_1 ( .A(\ab[2][1] ), .B(n5), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  INVX4M U2 ( .A(A[0]), .Y(n33) );
  INVX8M U3 ( .A(B[7]), .Y(n26) );
  INVX12M U4 ( .A(B[5]), .Y(n28) );
  INVX8M U5 ( .A(B[4]), .Y(n29) );
  BUFX14M U6 ( .A(n27), .Y(n3) );
  NOR2X2M U7 ( .A(n26), .B(n34), .Y(\ab[1][7] ) );
  XOR2X2M U8 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKAND2X2M U9 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n10) );
  NOR2X2M U10 ( .A(n29), .B(n34), .Y(\ab[1][4] ) );
  XOR2X4M U11 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  AND2X1M U12 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  NOR2X2M U13 ( .A(n28), .B(n34), .Y(\ab[1][5] ) );
  XOR2X3M U14 ( .A(\ab[1][7] ), .B(\ab[0][8] ), .Y(\SUMB[1][7] ) );
  AND2X1M U15 ( .A(\ab[0][8] ), .B(\ab[1][7] ), .Y(n8) );
  NOR2X2M U16 ( .A(n25), .B(n33), .Y(\ab[0][8] ) );
  CLKXOR2X2M U17 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  NOR2X3M U18 ( .A(n34), .B(n31), .Y(\ab[1][1] ) );
  NOR2XLM U19 ( .A(n31), .B(n35), .Y(\ab[2][1] ) );
  NOR2XLM U20 ( .A(n31), .B(n36), .Y(\ab[3][1] ) );
  NOR2XLM U21 ( .A(n31), .B(n37), .Y(\ab[4][1] ) );
  NOR2XLM U22 ( .A(n31), .B(n38), .Y(\ab[5][1] ) );
  NOR2XLM U23 ( .A(n31), .B(n39), .Y(\ab[6][1] ) );
  INVX20M U24 ( .A(B[1]), .Y(n31) );
  INVX4M U25 ( .A(A[1]), .Y(n34) );
  INVX8M U26 ( .A(B[3]), .Y(n24) );
  INVX2M U27 ( .A(n16), .Y(\ab[0][2] ) );
  INVX8M U28 ( .A(B[2]), .Y(n30) );
  INVX8M U29 ( .A(B[6]), .Y(n27) );
  AND2X2M U30 ( .A(\CARRYB[19][0] ), .B(\SUMB[19][1] ), .Y(n17) );
  AND2X2M U31 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n5) );
  AND2X2M U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U33 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U34 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U35 ( .A(\CARRYB[19][7] ), .B(\ab[19][8] ), .Y(n11) );
  CLKNAND2X4M U36 ( .A(n12), .B(\SUMB[19][3] ), .Y(n15) );
  NAND2X4M U37 ( .A(n14), .B(n15), .Y(\A1[20] ) );
  NAND2X1M U38 ( .A(\CARRYB[19][2] ), .B(n13), .Y(n14) );
  CLKXOR2X2M U39 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  NOR2X2M U40 ( .A(n30), .B(n34), .Y(\ab[1][2] ) );
  INVX6M U41 ( .A(B[0]), .Y(n32) );
  NOR2X2M U42 ( .A(n29), .B(n33), .Y(\ab[0][4] ) );
  INVX2M U43 ( .A(\CARRYB[19][2] ), .Y(n12) );
  CLKINVX2M U44 ( .A(\SUMB[19][3] ), .Y(n13) );
  NOR2X2M U45 ( .A(n24), .B(n34), .Y(\ab[1][3] ) );
  NOR2X2M U46 ( .A(n28), .B(n33), .Y(\ab[0][5] ) );
  XOR2XLM U47 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  NOR2X2M U48 ( .A(n3), .B(n34), .Y(\ab[1][6] ) );
  NOR2X1M U49 ( .A(n3), .B(n33), .Y(\ab[0][6] ) );
  AND3X2M U50 ( .A(\ab[1][1] ), .B(B[0]), .C(A[0]), .Y(\CARRYB[1][0] ) );
  INVX4M U51 ( .A(A[2]), .Y(n35) );
  NAND2BX2M U52 ( .AN(n30), .B(A[0]), .Y(n16) );
  AND2X2M U53 ( .A(\CARRYB[19][3] ), .B(\SUMB[19][4] ), .Y(n20) );
  XOR2X2M U54 ( .A(\CARRYB[19][3] ), .B(\SUMB[19][4] ), .Y(\A1[21] ) );
  INVX4M U55 ( .A(A[4]), .Y(n37) );
  INVX4M U56 ( .A(A[3]), .Y(n36) );
  INVX4M U57 ( .A(A[5]), .Y(n38) );
  AND2X1M U58 ( .A(\CARRYB[19][2] ), .B(\SUMB[19][3] ), .Y(n19) );
  AND2X1M U59 ( .A(\CARRYB[19][4] ), .B(\SUMB[19][5] ), .Y(n21) );
  AND2X1M U60 ( .A(\CARRYB[19][5] ), .B(\SUMB[19][6] ), .Y(n22) );
  XOR2XLM U61 ( .A(\CARRYB[19][0] ), .B(\SUMB[19][1] ), .Y(\A1[18] ) );
  NOR2X2M U62 ( .A(n26), .B(n33), .Y(\ab[0][7] ) );
  NOR2X2M U63 ( .A(n24), .B(n33), .Y(\ab[0][3] ) );
  XOR2X1M U64 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U65 ( .A(\CARRYB[19][1] ), .B(\SUMB[19][2] ), .Y(\A1[19] ) );
  AND2X2M U66 ( .A(\CARRYB[19][1] ), .B(\SUMB[19][2] ), .Y(n18) );
  CLKXOR2X2M U67 ( .A(\CARRYB[19][4] ), .B(\SUMB[19][5] ), .Y(\A1[22] ) );
  CLKXOR2X2M U68 ( .A(\CARRYB[19][5] ), .B(\SUMB[19][6] ), .Y(\A1[23] ) );
  CLKXOR2X2M U69 ( .A(\CARRYB[19][6] ), .B(\SUMB[19][7] ), .Y(\A1[24] ) );
  CLKXOR2X2M U70 ( .A(\CARRYB[19][7] ), .B(\ab[19][8] ), .Y(\A1[25] ) );
  AND2X2M U71 ( .A(\CARRYB[19][6] ), .B(\SUMB[19][7] ), .Y(n23) );
  INVX8M U72 ( .A(B[8]), .Y(n25) );
  INVX4M U73 ( .A(A[6]), .Y(n39) );
  INVX4M U74 ( .A(A[9]), .Y(n42) );
  INVX4M U75 ( .A(A[7]), .Y(n40) );
  INVX4M U76 ( .A(A[8]), .Y(n41) );
  INVX4M U77 ( .A(A[10]), .Y(n43) );
  INVX4M U78 ( .A(A[11]), .Y(n44) );
  INVX4M U79 ( .A(A[12]), .Y(n45) );
  INVX4M U80 ( .A(A[13]), .Y(n46) );
  INVX4M U81 ( .A(A[14]), .Y(n47) );
  INVX4M U82 ( .A(A[15]), .Y(n48) );
  INVX4M U83 ( .A(A[16]), .Y(n49) );
  INVX4M U84 ( .A(A[17]), .Y(n50) );
  INVX4M U85 ( .A(A[18]), .Y(n51) );
  INVX4M U86 ( .A(A[19]), .Y(n52) );
  NOR2X1M U88 ( .A(n42), .B(n25), .Y(\ab[9][8] ) );
  NOR2X1M U89 ( .A(n42), .B(n26), .Y(\ab[9][7] ) );
  NOR2X1M U90 ( .A(n42), .B(n3), .Y(\ab[9][6] ) );
  NOR2X1M U91 ( .A(n42), .B(n28), .Y(\ab[9][5] ) );
  NOR2X1M U92 ( .A(n42), .B(n29), .Y(\ab[9][4] ) );
  NOR2X1M U93 ( .A(n42), .B(n24), .Y(\ab[9][3] ) );
  NOR2X1M U94 ( .A(n42), .B(n30), .Y(\ab[9][2] ) );
  NOR2X1M U95 ( .A(n42), .B(n31), .Y(\ab[9][1] ) );
  NOR2X1M U96 ( .A(n42), .B(n32), .Y(\ab[9][0] ) );
  NOR2X1M U97 ( .A(n25), .B(n41), .Y(\ab[8][8] ) );
  NOR2X1M U98 ( .A(n26), .B(n41), .Y(\ab[8][7] ) );
  NOR2X1M U99 ( .A(n3), .B(n41), .Y(\ab[8][6] ) );
  NOR2X1M U100 ( .A(n28), .B(n41), .Y(\ab[8][5] ) );
  NOR2X1M U101 ( .A(n29), .B(n41), .Y(\ab[8][4] ) );
  NOR2X1M U102 ( .A(n24), .B(n41), .Y(\ab[8][3] ) );
  NOR2X1M U103 ( .A(n30), .B(n41), .Y(\ab[8][2] ) );
  NOR2X1M U104 ( .A(n31), .B(n41), .Y(\ab[8][1] ) );
  NOR2X1M U105 ( .A(n32), .B(n41), .Y(\ab[8][0] ) );
  NOR2X1M U106 ( .A(n25), .B(n40), .Y(\ab[7][8] ) );
  NOR2X1M U107 ( .A(n26), .B(n40), .Y(\ab[7][7] ) );
  NOR2X1M U108 ( .A(n3), .B(n40), .Y(\ab[7][6] ) );
  NOR2X1M U109 ( .A(n28), .B(n40), .Y(\ab[7][5] ) );
  NOR2X1M U110 ( .A(n29), .B(n40), .Y(\ab[7][4] ) );
  NOR2X1M U111 ( .A(n24), .B(n40), .Y(\ab[7][3] ) );
  NOR2X1M U112 ( .A(n30), .B(n40), .Y(\ab[7][2] ) );
  NOR2X1M U113 ( .A(n31), .B(n40), .Y(\ab[7][1] ) );
  NOR2X1M U114 ( .A(n32), .B(n40), .Y(\ab[7][0] ) );
  NOR2X1M U115 ( .A(n25), .B(n39), .Y(\ab[6][8] ) );
  NOR2X1M U116 ( .A(n26), .B(n39), .Y(\ab[6][7] ) );
  NOR2X1M U117 ( .A(n3), .B(n39), .Y(\ab[6][6] ) );
  NOR2X1M U118 ( .A(n28), .B(n39), .Y(\ab[6][5] ) );
  NOR2X1M U119 ( .A(n29), .B(n39), .Y(\ab[6][4] ) );
  NOR2X1M U120 ( .A(n24), .B(n39), .Y(\ab[6][3] ) );
  NOR2X1M U121 ( .A(n30), .B(n39), .Y(\ab[6][2] ) );
  NOR2X1M U122 ( .A(n32), .B(n39), .Y(\ab[6][0] ) );
  NOR2X1M U123 ( .A(n25), .B(n38), .Y(\ab[5][8] ) );
  NOR2X1M U124 ( .A(n26), .B(n38), .Y(\ab[5][7] ) );
  NOR2X1M U125 ( .A(n3), .B(n38), .Y(\ab[5][6] ) );
  NOR2X1M U126 ( .A(n28), .B(n38), .Y(\ab[5][5] ) );
  NOR2X1M U127 ( .A(n29), .B(n38), .Y(\ab[5][4] ) );
  NOR2X1M U128 ( .A(n24), .B(n38), .Y(\ab[5][3] ) );
  NOR2X1M U129 ( .A(n30), .B(n38), .Y(\ab[5][2] ) );
  NOR2X1M U130 ( .A(n32), .B(n38), .Y(\ab[5][0] ) );
  NOR2X1M U131 ( .A(n25), .B(n37), .Y(\ab[4][8] ) );
  NOR2X1M U132 ( .A(n26), .B(n37), .Y(\ab[4][7] ) );
  NOR2X1M U133 ( .A(n3), .B(n37), .Y(\ab[4][6] ) );
  NOR2X1M U134 ( .A(n28), .B(n37), .Y(\ab[4][5] ) );
  NOR2X1M U135 ( .A(n29), .B(n37), .Y(\ab[4][4] ) );
  NOR2X1M U136 ( .A(n24), .B(n37), .Y(\ab[4][3] ) );
  NOR2X1M U137 ( .A(n30), .B(n37), .Y(\ab[4][2] ) );
  NOR2X1M U138 ( .A(n32), .B(n37), .Y(\ab[4][0] ) );
  NOR2X1M U139 ( .A(n25), .B(n36), .Y(\ab[3][8] ) );
  NOR2X1M U140 ( .A(n26), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U141 ( .A(n3), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U142 ( .A(n28), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U143 ( .A(n29), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U144 ( .A(n24), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U145 ( .A(n30), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U146 ( .A(n32), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U147 ( .A(n25), .B(n35), .Y(\ab[2][8] ) );
  NOR2X1M U148 ( .A(n26), .B(n35), .Y(\ab[2][7] ) );
  NOR2X1M U149 ( .A(n3), .B(n35), .Y(\ab[2][6] ) );
  NOR2X1M U150 ( .A(n28), .B(n35), .Y(\ab[2][5] ) );
  NOR2X1M U151 ( .A(n29), .B(n35), .Y(\ab[2][4] ) );
  NOR2X1M U152 ( .A(n24), .B(n35), .Y(\ab[2][3] ) );
  NOR2X1M U153 ( .A(n30), .B(n35), .Y(\ab[2][2] ) );
  NOR2X1M U154 ( .A(n32), .B(n35), .Y(\ab[2][0] ) );
  NOR2X1M U155 ( .A(n25), .B(n34), .Y(\ab[1][8] ) );
  NOR2X1M U156 ( .A(n25), .B(n52), .Y(\ab[19][8] ) );
  NOR2X1M U157 ( .A(n26), .B(n52), .Y(\ab[19][7] ) );
  NOR2X1M U158 ( .A(n3), .B(n52), .Y(\ab[19][6] ) );
  NOR2X1M U159 ( .A(n28), .B(n52), .Y(\ab[19][5] ) );
  NOR2X1M U160 ( .A(n29), .B(n52), .Y(\ab[19][4] ) );
  NOR2X1M U161 ( .A(n24), .B(n52), .Y(\ab[19][3] ) );
  NOR2X1M U162 ( .A(n30), .B(n52), .Y(\ab[19][2] ) );
  NOR2X1M U163 ( .A(n31), .B(n52), .Y(\ab[19][1] ) );
  NOR2X1M U164 ( .A(n32), .B(n52), .Y(\ab[19][0] ) );
  NOR2X1M U165 ( .A(n25), .B(n51), .Y(\ab[18][8] ) );
  NOR2X1M U166 ( .A(n26), .B(n51), .Y(\ab[18][7] ) );
  NOR2X1M U167 ( .A(n3), .B(n51), .Y(\ab[18][6] ) );
  NOR2X1M U168 ( .A(n28), .B(n51), .Y(\ab[18][5] ) );
  NOR2X1M U169 ( .A(n29), .B(n51), .Y(\ab[18][4] ) );
  NOR2X1M U170 ( .A(n24), .B(n51), .Y(\ab[18][3] ) );
  NOR2X1M U171 ( .A(n30), .B(n51), .Y(\ab[18][2] ) );
  NOR2X1M U172 ( .A(n31), .B(n51), .Y(\ab[18][1] ) );
  NOR2X1M U173 ( .A(n32), .B(n51), .Y(\ab[18][0] ) );
  NOR2X1M U174 ( .A(n25), .B(n50), .Y(\ab[17][8] ) );
  NOR2X1M U175 ( .A(n26), .B(n50), .Y(\ab[17][7] ) );
  NOR2X1M U176 ( .A(n3), .B(n50), .Y(\ab[17][6] ) );
  NOR2X1M U177 ( .A(n28), .B(n50), .Y(\ab[17][5] ) );
  NOR2X1M U178 ( .A(n29), .B(n50), .Y(\ab[17][4] ) );
  NOR2X1M U179 ( .A(n24), .B(n50), .Y(\ab[17][3] ) );
  NOR2X1M U180 ( .A(n30), .B(n50), .Y(\ab[17][2] ) );
  NOR2X1M U181 ( .A(n31), .B(n50), .Y(\ab[17][1] ) );
  NOR2X1M U182 ( .A(n32), .B(n50), .Y(\ab[17][0] ) );
  NOR2X1M U183 ( .A(n25), .B(n49), .Y(\ab[16][8] ) );
  NOR2X1M U184 ( .A(n26), .B(n49), .Y(\ab[16][7] ) );
  NOR2X1M U185 ( .A(n3), .B(n49), .Y(\ab[16][6] ) );
  NOR2X1M U186 ( .A(n28), .B(n49), .Y(\ab[16][5] ) );
  NOR2X1M U187 ( .A(n29), .B(n49), .Y(\ab[16][4] ) );
  NOR2X1M U188 ( .A(n24), .B(n49), .Y(\ab[16][3] ) );
  NOR2X1M U189 ( .A(n30), .B(n49), .Y(\ab[16][2] ) );
  NOR2X1M U190 ( .A(n31), .B(n49), .Y(\ab[16][1] ) );
  NOR2X1M U191 ( .A(n32), .B(n49), .Y(\ab[16][0] ) );
  NOR2X1M U192 ( .A(n25), .B(n48), .Y(\ab[15][8] ) );
  NOR2X1M U193 ( .A(n26), .B(n48), .Y(\ab[15][7] ) );
  NOR2X1M U194 ( .A(n3), .B(n48), .Y(\ab[15][6] ) );
  NOR2X1M U195 ( .A(n28), .B(n48), .Y(\ab[15][5] ) );
  NOR2X1M U196 ( .A(n29), .B(n48), .Y(\ab[15][4] ) );
  NOR2X1M U197 ( .A(n24), .B(n48), .Y(\ab[15][3] ) );
  NOR2X1M U198 ( .A(n30), .B(n48), .Y(\ab[15][2] ) );
  NOR2X1M U199 ( .A(n31), .B(n48), .Y(\ab[15][1] ) );
  NOR2X1M U200 ( .A(n32), .B(n48), .Y(\ab[15][0] ) );
  NOR2X1M U201 ( .A(n25), .B(n47), .Y(\ab[14][8] ) );
  NOR2X1M U202 ( .A(n26), .B(n47), .Y(\ab[14][7] ) );
  NOR2X1M U203 ( .A(n3), .B(n47), .Y(\ab[14][6] ) );
  NOR2X1M U204 ( .A(n28), .B(n47), .Y(\ab[14][5] ) );
  NOR2X1M U205 ( .A(n29), .B(n47), .Y(\ab[14][4] ) );
  NOR2X1M U206 ( .A(n24), .B(n47), .Y(\ab[14][3] ) );
  NOR2X1M U207 ( .A(n30), .B(n47), .Y(\ab[14][2] ) );
  NOR2X1M U208 ( .A(n31), .B(n47), .Y(\ab[14][1] ) );
  NOR2X1M U209 ( .A(n32), .B(n47), .Y(\ab[14][0] ) );
  NOR2X1M U210 ( .A(n25), .B(n46), .Y(\ab[13][8] ) );
  NOR2X1M U211 ( .A(n26), .B(n46), .Y(\ab[13][7] ) );
  NOR2X1M U212 ( .A(n3), .B(n46), .Y(\ab[13][6] ) );
  NOR2X1M U213 ( .A(n28), .B(n46), .Y(\ab[13][5] ) );
  NOR2X1M U214 ( .A(n29), .B(n46), .Y(\ab[13][4] ) );
  NOR2X1M U215 ( .A(n24), .B(n46), .Y(\ab[13][3] ) );
  NOR2X1M U216 ( .A(n30), .B(n46), .Y(\ab[13][2] ) );
  NOR2X1M U217 ( .A(n31), .B(n46), .Y(\ab[13][1] ) );
  NOR2X1M U218 ( .A(n32), .B(n46), .Y(\ab[13][0] ) );
  NOR2X1M U219 ( .A(n25), .B(n45), .Y(\ab[12][8] ) );
  NOR2X1M U220 ( .A(n26), .B(n45), .Y(\ab[12][7] ) );
  NOR2X1M U221 ( .A(n3), .B(n45), .Y(\ab[12][6] ) );
  NOR2X1M U222 ( .A(n28), .B(n45), .Y(\ab[12][5] ) );
  NOR2X1M U223 ( .A(n29), .B(n45), .Y(\ab[12][4] ) );
  NOR2X1M U224 ( .A(n24), .B(n45), .Y(\ab[12][3] ) );
  NOR2X1M U225 ( .A(n30), .B(n45), .Y(\ab[12][2] ) );
  NOR2X1M U226 ( .A(n31), .B(n45), .Y(\ab[12][1] ) );
  NOR2X1M U227 ( .A(n32), .B(n45), .Y(\ab[12][0] ) );
  NOR2X1M U228 ( .A(n25), .B(n44), .Y(\ab[11][8] ) );
  NOR2X1M U229 ( .A(n26), .B(n44), .Y(\ab[11][7] ) );
  NOR2X1M U230 ( .A(n3), .B(n44), .Y(\ab[11][6] ) );
  NOR2X1M U231 ( .A(n28), .B(n44), .Y(\ab[11][5] ) );
  NOR2X1M U232 ( .A(n29), .B(n44), .Y(\ab[11][4] ) );
  NOR2X1M U233 ( .A(n24), .B(n44), .Y(\ab[11][3] ) );
  NOR2X1M U234 ( .A(n30), .B(n44), .Y(\ab[11][2] ) );
  NOR2X1M U235 ( .A(n31), .B(n44), .Y(\ab[11][1] ) );
  NOR2X1M U236 ( .A(n32), .B(n44), .Y(\ab[11][0] ) );
  NOR2X1M U237 ( .A(n25), .B(n43), .Y(\ab[10][8] ) );
  NOR2X1M U238 ( .A(n26), .B(n43), .Y(\ab[10][7] ) );
  NOR2X1M U239 ( .A(n3), .B(n43), .Y(\ab[10][6] ) );
  NOR2X1M U240 ( .A(n28), .B(n43), .Y(\ab[10][5] ) );
  NOR2X1M U241 ( .A(n29), .B(n43), .Y(\ab[10][4] ) );
  NOR2X1M U242 ( .A(n24), .B(n43), .Y(\ab[10][3] ) );
  NOR2X1M U243 ( .A(n30), .B(n43), .Y(\ab[10][2] ) );
  NOR2X1M U244 ( .A(n31), .B(n43), .Y(\ab[10][1] ) );
  NOR2X1M U245 ( .A(n32), .B(n43), .Y(\ab[10][0] ) );
  CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW01_add_0 FS_1 ( .A({1'b0, 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , \A1[19] , 
        \A1[18] , \SUMB[19][0] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \PROD1[8] , 
        \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n11, n23, 
        n22, n21, n20, n19, n18, n17, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({PRODUCT[28:20], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}) );
endmodule


module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 ( CLK, RST, Q_ERR, Kcal, 
        DCW, test_si2, test_si1, test_se );
  input [19:0] Q_ERR;
  input [8:0] Kcal;
  output [8:0] DCW;
  input CLK, RST, test_si2, test_si1, test_se;
  wire   n3, n10, n11, n16, n17, n18, n19, n1;
  wire   [28:20] DCW_MUL;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19;

  SDFFRHQX8M \DCW_reg[7]  ( .D(DCW_MUL[27]), .SI(DCW[6]), .SE(n18), .CK(CLK), 
        .RN(n10), .Q(DCW[7]) );
  SDFFRHQX8M \DCW_reg[6]  ( .D(DCW_MUL[26]), .SI(DCW[5]), .SE(n17), .CK(CLK), 
        .RN(n10), .Q(DCW[6]) );
  SDFFRHQX8M \DCW_reg[5]  ( .D(DCW_MUL[25]), .SI(DCW[4]), .SE(n19), .CK(CLK), 
        .RN(n10), .Q(DCW[5]) );
  SDFFRHQX8M \DCW_reg[4]  ( .D(DCW_MUL[24]), .SI(DCW[3]), .SE(n18), .CK(CLK), 
        .RN(n10), .Q(DCW[4]) );
  SDFFRHQX8M \DCW_reg[3]  ( .D(DCW_MUL[23]), .SI(DCW[2]), .SE(n17), .CK(CLK), 
        .RN(n10), .Q(DCW[3]) );
  SDFFRHQX8M \DCW_reg[2]  ( .D(DCW_MUL[22]), .SI(DCW[1]), .SE(n19), .CK(CLK), 
        .RN(n10), .Q(DCW[2]) );
  SDFFRHQX8M \DCW_reg[1]  ( .D(DCW_MUL[21]), .SI(DCW[0]), .SE(n18), .CK(CLK), 
        .RN(n10), .Q(DCW[1]) );
  SDFFRHQX8M \DCW_reg[0]  ( .D(DCW_MUL[20]), .SI(test_si1), .SE(n17), .CK(CLK), 
        .RN(n10), .Q(DCW[0]) );
  INVX4M U12 ( .A(n11), .Y(n10) );
  INVX2M U13 ( .A(RST), .Y(n11) );
  DLY1X1M U15 ( .A(test_se), .Y(n16) );
  DLY1X1M U16 ( .A(n16), .Y(n17) );
  DLY1X1M U17 ( .A(n16), .Y(n18) );
  DLY1X1M U18 ( .A(n16), .Y(n19) );
  CALC_DCW_DCW_WIDTH9_err_width20_K_width9_DW02_mult_0 mult_15 ( .A(Q_ERR), 
        .B(Kcal), .TC(1'b0), .PRODUCT({DCW_MUL, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19}) );
  SDFFRHQX4M \DCW_reg[8]  ( .D(DCW_MUL[28]), .SI(test_si2), .SE(n19), .CK(CLK), 
        .RN(n10), .Q(n3) );
  INVXLM U3 ( .A(n3), .Y(n1) );
  CLKINVX12M U4 ( .A(n1), .Y(DCW[8]) );
endmodule


module CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 ( CLK, 
        RST, DSM_out, FCW, FRAC_IN, INTEGER_IN, MMD_CNTRL, test_si, test_se );
  input [26:0] FCW;
  output [19:0] FRAC_IN;
  output [6:0] INTEGER_IN;
  output [7:0] MMD_CNTRL;
  input CLK, RST, DSM_out, test_si, test_se;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, \add_38/carry[6] , \add_38/carry[5] ,
         \add_38/carry[4] , \add_38/carry[3] , \add_38/carry[2] ,
         \add_38/carry[1] , n36, n40, n41, n42, n44, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  SDFFRHQX8M \MMD_CNTRL_reg[7]  ( .D(N8), .SI(MMD_CNTRL[6]), .SE(n59), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[7]) );
  SDFFRHQX8M \MMD_CNTRL_reg[6]  ( .D(N7), .SI(MMD_CNTRL[5]), .SE(n58), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[6]) );
  SDFFRHQX8M \MMD_CNTRL_reg[5]  ( .D(N6), .SI(MMD_CNTRL[4]), .SE(n55), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[5]) );
  SDFFRHQX8M \MMD_CNTRL_reg[4]  ( .D(N5), .SI(MMD_CNTRL[3]), .SE(n58), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[4]) );
  SDFFRHQX8M \MMD_CNTRL_reg[3]  ( .D(N4), .SI(MMD_CNTRL[2]), .SE(n58), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[3]) );
  SDFFRHQX8M \MMD_CNTRL_reg[2]  ( .D(N3), .SI(MMD_CNTRL[1]), .SE(n57), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[2]) );
  SDFFRHQX8M \MMD_CNTRL_reg[1]  ( .D(N2), .SI(MMD_CNTRL[0]), .SE(n54), .CK(CLK), .RN(n42), .Q(MMD_CNTRL[1]) );
  SDFFRQX2M \FRAC_IN_reg[19]  ( .D(FCW[19]), .SI(FRAC_IN[18]), .SE(n61), .CK(
        CLK), .RN(n40), .Q(FRAC_IN[19]) );
  SDFFRQX2M \FRAC_IN_reg[18]  ( .D(FCW[18]), .SI(FRAC_IN[17]), .SE(n61), .CK(
        CLK), .RN(n40), .Q(FRAC_IN[18]) );
  SDFFRQX2M \FRAC_IN_reg[17]  ( .D(FCW[17]), .SI(FRAC_IN[16]), .SE(n62), .CK(
        CLK), .RN(n40), .Q(FRAC_IN[17]) );
  SDFFRQX2M \INTEGER_IN_reg[5]  ( .D(FCW[25]), .SI(INTEGER_IN[4]), .SE(n62), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[5]) );
  SDFFRQX2M \FRAC_IN_reg[16]  ( .D(FCW[16]), .SI(FRAC_IN[15]), .SE(n59), .CK(
        CLK), .RN(n40), .Q(FRAC_IN[16]) );
  SDFFRQX2M \FRAC_IN_reg[15]  ( .D(FCW[15]), .SI(FRAC_IN[14]), .SE(n49), .CK(
        CLK), .RN(n40), .Q(FRAC_IN[15]) );
  SDFFRQX2M \FRAC_IN_reg[14]  ( .D(FCW[14]), .SI(FRAC_IN[13]), .SE(n48), .CK(
        CLK), .RN(n41), .Q(FRAC_IN[14]) );
  SDFFRQX2M \INTEGER_IN_reg[4]  ( .D(FCW[24]), .SI(INTEGER_IN[3]), .SE(n48), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[4]) );
  SDFFRQX2M \FRAC_IN_reg[13]  ( .D(FCW[13]), .SI(FRAC_IN[12]), .SE(n55), .CK(
        CLK), .RN(n41), .Q(FRAC_IN[13]) );
  SDFFRQX2M \FRAC_IN_reg[12]  ( .D(FCW[12]), .SI(FRAC_IN[11]), .SE(n54), .CK(
        CLK), .RN(n41), .Q(FRAC_IN[12]) );
  SDFFRQX2M \FRAC_IN_reg[11]  ( .D(FCW[11]), .SI(FRAC_IN[10]), .SE(n57), .CK(
        CLK), .RN(n41), .Q(FRAC_IN[11]) );
  SDFFRQX2M \FRAC_IN_reg[10]  ( .D(FCW[10]), .SI(FRAC_IN[9]), .SE(n52), .CK(
        CLK), .RN(n41), .Q(FRAC_IN[10]) );
  SDFFRQX2M \INTEGER_IN_reg[3]  ( .D(FCW[23]), .SI(INTEGER_IN[2]), .SE(n55), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[3]) );
  SDFFRQX2M \INTEGER_IN_reg[2]  ( .D(FCW[22]), .SI(INTEGER_IN[1]), .SE(n56), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[2]) );
  SDFFRQX2M \FRAC_IN_reg[9]  ( .D(FCW[9]), .SI(FRAC_IN[8]), .SE(n56), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[9]) );
  SDFFRQX2M \FRAC_IN_reg[8]  ( .D(FCW[8]), .SI(FRAC_IN[7]), .SE(n60), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[8]) );
  SDFFRQX2M \FRAC_IN_reg[7]  ( .D(FCW[7]), .SI(FRAC_IN[6]), .SE(n56), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[7]) );
  SDFFRQX2M \FRAC_IN_reg[6]  ( .D(FCW[6]), .SI(FRAC_IN[5]), .SE(n47), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[6]) );
  SDFFRQX2M \INTEGER_IN_reg[1]  ( .D(FCW[21]), .SI(INTEGER_IN[0]), .SE(n47), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[1]) );
  SDFFRQX2M \INTEGER_IN_reg[0]  ( .D(FCW[20]), .SI(FRAC_IN[19]), .SE(n52), 
        .CK(CLK), .RN(n40), .Q(INTEGER_IN[0]) );
  SDFFRQX2M \FRAC_IN_reg[5]  ( .D(FCW[5]), .SI(FRAC_IN[4]), .SE(n59), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[5]) );
  SDFFRQX2M \FRAC_IN_reg[4]  ( .D(FCW[4]), .SI(FRAC_IN[3]), .SE(n57), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[4]) );
  SDFFRQX2M \FRAC_IN_reg[3]  ( .D(FCW[3]), .SI(FRAC_IN[2]), .SE(n48), .CK(CLK), 
        .RN(n41), .Q(FRAC_IN[3]) );
  SDFFRQX2M \FRAC_IN_reg[2]  ( .D(FCW[2]), .SI(FRAC_IN[1]), .SE(n54), .CK(CLK), 
        .RN(n42), .Q(FRAC_IN[2]) );
  SDFFRQX2M \FRAC_IN_reg[1]  ( .D(FCW[1]), .SI(FRAC_IN[0]), .SE(n49), .CK(CLK), 
        .RN(n42), .Q(FRAC_IN[1]) );
  SDFFRQX2M \FRAC_IN_reg[0]  ( .D(FCW[0]), .SI(test_si), .SE(n60), .CK(CLK), 
        .RN(n42), .Q(FRAC_IN[0]) );
  SDFFRX1M \INTEGER_IN_reg[6]  ( .D(FCW[26]), .SI(INTEGER_IN[5]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(INTEGER_IN[6]), .QN(n44) );
  BUFX4M U38 ( .A(RST), .Y(n40) );
  INVX8M U40 ( .A(n36), .Y(MMD_CNTRL[0]) );
  CLKBUFX6M U43 ( .A(RST), .Y(n41) );
  BUFX4M U44 ( .A(RST), .Y(n42) );
  AND2X1M U45 ( .A(\add_38/carry[6] ), .B(INTEGER_IN[6]), .Y(N8) );
  CLKXOR2X2M U46 ( .A(INTEGER_IN[6]), .B(\add_38/carry[6] ), .Y(N7) );
  AND2X1M U47 ( .A(\add_38/carry[5] ), .B(INTEGER_IN[5]), .Y(\add_38/carry[6] ) );
  CLKXOR2X2M U48 ( .A(INTEGER_IN[5]), .B(\add_38/carry[5] ), .Y(N6) );
  AND2X1M U49 ( .A(\add_38/carry[4] ), .B(INTEGER_IN[4]), .Y(\add_38/carry[5] ) );
  CLKXOR2X2M U50 ( .A(INTEGER_IN[4]), .B(\add_38/carry[4] ), .Y(N5) );
  AND2X1M U51 ( .A(\add_38/carry[3] ), .B(INTEGER_IN[3]), .Y(\add_38/carry[4] ) );
  CLKXOR2X2M U52 ( .A(INTEGER_IN[3]), .B(\add_38/carry[3] ), .Y(N4) );
  AND2X1M U53 ( .A(\add_38/carry[2] ), .B(INTEGER_IN[2]), .Y(\add_38/carry[3] ) );
  CLKXOR2X2M U54 ( .A(INTEGER_IN[2]), .B(\add_38/carry[2] ), .Y(N3) );
  AND2X1M U55 ( .A(\add_38/carry[1] ), .B(INTEGER_IN[1]), .Y(\add_38/carry[2] ) );
  CLKXOR2X2M U56 ( .A(INTEGER_IN[1]), .B(\add_38/carry[1] ), .Y(N2) );
  AND2X1M U57 ( .A(DSM_out), .B(INTEGER_IN[0]), .Y(\add_38/carry[1] ) );
  CLKXOR2X2M U58 ( .A(INTEGER_IN[0]), .B(DSM_out), .Y(N1) );
  DLY1X1M U59 ( .A(n50), .Y(n47) );
  DLY1X1M U60 ( .A(n53), .Y(n48) );
  DLY1X1M U61 ( .A(n51), .Y(n49) );
  DLY1X1M U62 ( .A(test_se), .Y(n50) );
  DLY1X1M U63 ( .A(test_se), .Y(n51) );
  DLY1X1M U64 ( .A(test_se), .Y(n52) );
  DLY1X1M U65 ( .A(test_se), .Y(n53) );
  DLY1X1M U66 ( .A(n51), .Y(n54) );
  DLY1X1M U67 ( .A(n50), .Y(n55) );
  DLY1X1M U68 ( .A(n53), .Y(n56) );
  DLY1X1M U69 ( .A(n53), .Y(n57) );
  DLY1X1M U70 ( .A(n52), .Y(n58) );
  DLY1X1M U71 ( .A(n51), .Y(n59) );
  DLY1X1M U72 ( .A(n50), .Y(n60) );
  DLY1X1M U73 ( .A(n62), .Y(n61) );
  DLY1X1M U74 ( .A(n49), .Y(n62) );
  SDFFRX1M \MMD_CNTRL_reg[0]  ( .D(N1), .SI(n44), .SE(n61), .CK(CLK), .RN(RST), 
        .QN(n36) );
endmodule


module LMS_in_width4_K_width9_err_width20_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;

  NAND3X8M U2 ( .A(A[16]), .B(n28), .C(A[17]), .Y(n25) );
  NOR3BX4M U3 ( .AN(A[7]), .B(n9), .C(n13), .Y(n11) );
  INVX12M U4 ( .A(A[6]), .Y(n9) );
  XOR2XLM U5 ( .A(A[7]), .B(n12), .Y(SUM[7]) );
  NOR2X3M U6 ( .A(n13), .B(n9), .Y(n12) );
  BUFX10M U7 ( .A(n11), .Y(n1) );
  NOR2X4M U8 ( .A(n30), .B(n7), .Y(n31) );
  NOR2X4M U9 ( .A(n34), .B(n8), .Y(n35) );
  AND2X4M U10 ( .A(B[19]), .B(A[19]), .Y(n22) );
  NOR2X8M U11 ( .A(B[19]), .B(A[19]), .Y(n20) );
  NOR2X8M U12 ( .A(B[18]), .B(A[18]), .Y(n24) );
  NAND2X4M U13 ( .A(B[18]), .B(A[18]), .Y(n26) );
  NAND3X4M U14 ( .A(A[4]), .B(n15), .C(A[5]), .Y(n13) );
  XNOR2X4M U15 ( .A(A[17]), .B(n29), .Y(SUM[17]) );
  XNOR2X2M U16 ( .A(A[13]), .B(n33), .Y(SUM[13]) );
  NAND2X2M U17 ( .A(A[12]), .B(n32), .Y(n33) );
  XOR2X1M U18 ( .A(n25), .B(n27), .Y(SUM[18]) );
  INVX4M U19 ( .A(n3), .Y(n23) );
  OR2X6M U20 ( .A(n22), .B(n20), .Y(n3) );
  CLKAND2X4M U21 ( .A(A[3]), .B(n16), .Y(n15) );
  XOR2X2M U22 ( .A(A[16]), .B(n28), .Y(SUM[16]) );
  INVX8M U23 ( .A(A[10]), .Y(n8) );
  XOR2X4M U24 ( .A(A[12]), .B(n32), .Y(SUM[12]) );
  XOR2X1M U25 ( .A(A[15]), .B(n31), .Y(SUM[15]) );
  CLKNAND2X2M U26 ( .A(n21), .B(n23), .Y(n5) );
  NOR3BX4M U27 ( .AN(A[15]), .B(n7), .C(n30), .Y(n28) );
  BUFX20M U28 ( .A(n18), .Y(n2) );
  NAND2X6M U29 ( .A(n5), .B(n6), .Y(SUM[19]) );
  XOR3X1M U30 ( .A(B[20]), .B(A[20]), .C(n2), .Y(SUM[20]) );
  OA21X8M U31 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  NAND2X2M U32 ( .A(n4), .B(n3), .Y(n6) );
  INVX1M U33 ( .A(n21), .Y(n4) );
  OAI21X6M U34 ( .A0(A[20]), .A1(n2), .B0(B[20]), .Y(n19) );
  NAND2BX4M U35 ( .AN(n24), .B(n26), .Y(n27) );
  NAND3X3M U36 ( .A(A[8]), .B(n1), .C(A[9]), .Y(n34) );
  OAI21BX8M U37 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  NAND3X6M U38 ( .A(A[12]), .B(n32), .C(A[13]), .Y(n30) );
  AND2X8M U39 ( .A(B[2]), .B(A[2]), .Y(n16) );
  OAI2BB1X4M U40 ( .A0N(n2), .A1N(A[20]), .B0(n19), .Y(n17) );
  XOR3X2M U41 ( .A(B[21]), .B(A[21]), .C(n17), .Y(SUM[21]) );
  INVX2M U42 ( .A(A[14]), .Y(n7) );
  NOR3BX4M U43 ( .AN(A[11]), .B(n8), .C(n34), .Y(n32) );
  XNOR2X1M U44 ( .A(A[9]), .B(n10), .Y(SUM[9]) );
  CLKNAND2X2M U45 ( .A(A[8]), .B(n1), .Y(n10) );
  CLKXOR2X2M U46 ( .A(A[8]), .B(n1), .Y(SUM[8]) );
  XNOR2X1M U47 ( .A(A[6]), .B(n13), .Y(SUM[6]) );
  XNOR2X1M U48 ( .A(A[5]), .B(n14), .Y(SUM[5]) );
  CLKNAND2X2M U49 ( .A(A[4]), .B(n15), .Y(n14) );
  CLKXOR2X2M U50 ( .A(A[4]), .B(n15), .Y(SUM[4]) );
  CLKXOR2X2M U51 ( .A(A[3]), .B(n16), .Y(SUM[3]) );
  AOI2BB1X1M U52 ( .A0N(B[2]), .A1N(A[2]), .B0(n16), .Y(SUM[2]) );
  CLKNAND2X2M U53 ( .A(A[16]), .B(n28), .Y(n29) );
  XNOR2X1M U54 ( .A(A[14]), .B(n30), .Y(SUM[14]) );
  CLKXOR2X2M U55 ( .A(A[11]), .B(n35), .Y(SUM[11]) );
  XNOR2X1M U56 ( .A(A[10]), .B(n34), .Y(SUM[10]) );
endmodule


module LMS_in_width4_K_width9_err_width20_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [19:0] A;
  input [3:0] B;
  output [23:0] PRODUCT;
  input TC;
  wire   \ab[19][3] , \ab[19][2] , \ab[19][1] , \ab[19][0] , \ab[18][3] ,
         \ab[18][2] , \ab[18][1] , \ab[18][0] , \ab[17][3] , \ab[17][2] ,
         \ab[17][1] , \ab[17][0] , \ab[16][3] , \ab[16][2] , \ab[16][1] ,
         \ab[16][0] , \ab[15][3] , \ab[15][2] , \ab[15][1] , \ab[15][0] ,
         \ab[14][3] , \ab[14][2] , \ab[14][1] , \ab[14][0] , \ab[13][3] ,
         \ab[13][2] , \ab[13][1] , \ab[13][0] , \ab[12][3] , \ab[12][2] ,
         \ab[12][1] , \ab[12][0] , \ab[11][3] , \ab[11][2] , \ab[11][1] ,
         \ab[11][0] , \ab[10][3] , \ab[10][2] , \ab[10][1] , \ab[10][0] ,
         \ab[9][3] , \ab[9][2] , \ab[9][1] , \ab[9][0] , \ab[8][3] ,
         \ab[8][2] , \ab[8][1] , \ab[8][0] , \ab[7][3] , \ab[7][2] ,
         \ab[7][1] , \ab[7][0] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] ,
         \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] , \ab[3][3] ,
         \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][3] , \ab[2][2] ,
         \ab[2][1] , \ab[2][0] , \ab[1][3] , \ab[1][2] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[19][3] , \CARRYB[19][2] , \CARRYB[19][1] ,
         \CARRYB[19][0] , \CARRYB[18][2] , \CARRYB[18][1] , \CARRYB[18][0] ,
         \CARRYB[17][2] , \CARRYB[17][1] , \CARRYB[17][0] , \CARRYB[16][2] ,
         \CARRYB[16][1] , \CARRYB[16][0] , \CARRYB[15][2] , \CARRYB[15][1] ,
         \CARRYB[15][0] , \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[14][0] ,
         \CARRYB[13][2] , \CARRYB[13][1] , \CARRYB[13][0] , \CARRYB[12][2] ,
         \CARRYB[12][1] , \CARRYB[12][0] , \CARRYB[11][2] , \CARRYB[11][1] ,
         \CARRYB[11][0] , \CARRYB[10][2] , \CARRYB[10][1] , \CARRYB[10][0] ,
         \CARRYB[9][2] , \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][2] ,
         \CARRYB[8][1] , \CARRYB[8][0] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][2] , \CARRYB[1][1] , \CARRYB[1][0] , \SUMB[19][3] ,
         \SUMB[19][2] , \SUMB[19][1] , \SUMB[19][0] , \SUMB[18][2] ,
         \SUMB[18][1] , \SUMB[17][2] , \SUMB[17][1] , \SUMB[16][2] ,
         \SUMB[16][1] , \SUMB[15][2] , \SUMB[15][1] , \SUMB[14][2] ,
         \SUMB[14][1] , \SUMB[13][2] , \SUMB[13][1] , \SUMB[12][2] ,
         \SUMB[12][1] , \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][2] ,
         \SUMB[10][1] , \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][2] , \SUMB[8][1] ,
         \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][2] ,
         \SUMB[5][1] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][2] , \SUMB[1][1] , \PROD1[3] ,
         ZA, ZB, \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] ,
         \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign ZA = A[19];
  assign ZB = B[3];

  ADDFX2M S3_18_2 ( .A(\ab[18][2] ), .B(\CARRYB[17][2] ), .CI(\ab[17][3] ), 
        .CO(\CARRYB[18][2] ), .S(\SUMB[18][2] ) );
  ADDFX2M S14_3 ( .A(n33), .B(n6), .CI(\ab[19][3] ), .CO(\CARRYB[19][3] ), .S(
        \SUMB[19][3] ) );
  ADDFHX4M S1_16_0 ( .A(\ab[16][0] ), .B(\CARRYB[15][0] ), .CI(\SUMB[15][1] ), 
        .CO(\CARRYB[16][0] ), .S(\A1[14] ) );
  ADDFHX2M S1_14_0 ( .A(\ab[14][0] ), .B(\CARRYB[13][0] ), .CI(\SUMB[13][1] ), 
        .CO(\CARRYB[14][0] ), .S(\A1[12] ) );
  ADDFX4M S1_15_0 ( .A(\ab[15][0] ), .B(\CARRYB[14][0] ), .CI(\SUMB[14][1] ), 
        .CO(\CARRYB[15][0] ), .S(\A1[13] ) );
  ADDFHX2M S3_7_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\ab[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFHX8M S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .CI(\SUMB[1][1] ), 
        .CO(\CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFHX8M S4_1 ( .A(\ab[19][1] ), .B(\CARRYB[18][1] ), .CI(\SUMB[18][2] ), 
        .CO(\CARRYB[19][1] ), .S(\SUMB[19][1] ) );
  ADDFHX8M S1_17_0 ( .A(\ab[17][0] ), .B(\CARRYB[16][0] ), .CI(\SUMB[16][1] ), 
        .CO(\CARRYB[17][0] ), .S(\A1[15] ) );
  ADDFHX8M S2_2_1 ( .A(\ab[2][1] ), .B(\CARRYB[1][1] ), .CI(\SUMB[1][2] ), 
        .CO(\CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFHX8M S5_2 ( .A(\ab[19][2] ), .B(\CARRYB[18][2] ), .CI(\ab[18][3] ), .CO(
        \CARRYB[19][2] ), .S(\SUMB[19][2] ) );
  ADDFHX8M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), 
        .CO(\CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFHX8M S2_17_1 ( .A(\ab[17][1] ), .B(\CARRYB[16][1] ), .CI(\SUMB[16][2] ), 
        .CO(\CARRYB[17][1] ), .S(\SUMB[17][1] ) );
  ADDFHX4M S2_18_1 ( .A(\ab[18][1] ), .B(\CARRYB[17][1] ), .CI(\SUMB[17][2] ), 
        .CO(\CARRYB[18][1] ), .S(\SUMB[18][1] ) );
  ADDFHX8M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), 
        .CO(\CARRYB[3][0] ), .S(\PROD1[3] ) );
  ADDFHX8M S3_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\ab[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFHX8M S3_15_2 ( .A(\ab[15][2] ), .B(\CARRYB[14][2] ), .CI(\ab[14][3] ), 
        .CO(\CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  ADDFHX8M S1_18_0 ( .A(\ab[18][0] ), .B(\CARRYB[17][0] ), .CI(\SUMB[17][1] ), 
        .CO(\CARRYB[18][0] ), .S(\A1[16] ) );
  ADDFHX8M S3_13_2 ( .A(\ab[13][2] ), .B(\CARRYB[12][2] ), .CI(\ab[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  ADDFHX8M S3_14_2 ( .A(\ab[14][2] ), .B(\CARRYB[13][2] ), .CI(\ab[13][3] ), 
        .CO(\CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  ADDFHX4M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), 
        .CO(\CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFHX4M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), 
        .CO(\CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFHX8M S1_8_0 ( .A(\ab[8][0] ), .B(\CARRYB[7][0] ), .CI(\SUMB[7][1] ), 
        .CO(\CARRYB[8][0] ), .S(\A1[6] ) );
  ADDFHX4M S2_7_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), 
        .CO(\CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFHX4M S2_8_1 ( .A(\ab[8][1] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), 
        .CO(\CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  ADDFHX8M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), 
        .CO(\CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFHX4M S2_9_1 ( .A(\ab[9][1] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), 
        .CO(\CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  ADDFHX4M S2_10_1 ( .A(\ab[10][1] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  ADDFHX4M S2_13_1 ( .A(\ab[13][1] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  ADDFHX4M S2_14_1 ( .A(\ab[14][1] ), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), 
        .CO(\CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  ADDFHX8M S1_13_0 ( .A(\ab[13][0] ), .B(\CARRYB[12][0] ), .CI(\SUMB[12][1] ), 
        .CO(\CARRYB[13][0] ), .S(\A1[11] ) );
  ADDFHX8M S3_10_2 ( .A(\ab[10][2] ), .B(\CARRYB[9][2] ), .CI(\ab[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  ADDFHX8M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), 
        .CO(\CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFHX8M S1_12_0 ( .A(\ab[12][0] ), .B(\CARRYB[11][0] ), .CI(\SUMB[11][1] ), 
        .CO(\CARRYB[12][0] ), .S(\A1[10] ) );
  ADDFHX8M S3_11_2 ( .A(\ab[11][2] ), .B(\CARRYB[10][2] ), .CI(\ab[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  ADDFHX8M S2_11_1 ( .A(\ab[11][1] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  ADDFHX4M S3_17_2 ( .A(\ab[17][2] ), .B(\CARRYB[16][2] ), .CI(\ab[16][3] ), 
        .CO(\CARRYB[17][2] ), .S(\SUMB[17][2] ) );
  ADDFHX2M S3_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\ab[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFHX4M S1_7_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), 
        .CO(\CARRYB[7][0] ), .S(\A1[5] ) );
  ADDFHX4M S2_12_1 ( .A(\ab[12][1] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  ADDFHX4M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), 
        .CO(\CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFHX4M S3_12_2 ( .A(\ab[12][2] ), .B(\CARRYB[11][2] ), .CI(\ab[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  ADDFHX4M S3_9_2 ( .A(\ab[9][2] ), .B(\CARRYB[8][2] ), .CI(\ab[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  ADDFHX4M S3_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\ab[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFHX4M S3_16_2 ( .A(\ab[16][2] ), .B(\CARRYB[15][2] ), .CI(\ab[15][3] ), 
        .CO(\CARRYB[16][2] ), .S(\SUMB[16][2] ) );
  ADDFHX4M S3_2_2 ( .A(\ab[2][2] ), .B(\CARRYB[1][2] ), .CI(\ab[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFHX8M S2_15_1 ( .A(\ab[15][1] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), 
        .CO(\CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  ADDFHX8M S2_16_1 ( .A(\ab[16][1] ), .B(\CARRYB[15][1] ), .CI(\SUMB[15][2] ), 
        .CO(\CARRYB[16][1] ), .S(\SUMB[16][1] ) );
  ADDFHX8M S1_9_0 ( .A(\ab[9][0] ), .B(\CARRYB[8][0] ), .CI(\SUMB[8][1] ), 
        .CO(\CARRYB[9][0] ), .S(\A1[7] ) );
  ADDFHX2M S3_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\ab[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFHX8M S1_10_0 ( .A(\ab[10][0] ), .B(\CARRYB[9][0] ), .CI(\SUMB[9][1] ), 
        .CO(\CARRYB[10][0] ), .S(\A1[8] ) );
  ADDFHX8M S1_11_0 ( .A(\ab[11][0] ), .B(\CARRYB[10][0] ), .CI(\SUMB[10][1] ), 
        .CO(\CARRYB[11][0] ), .S(\A1[9] ) );
  ADDFHX8M S4_0 ( .A(\ab[19][0] ), .B(\CARRYB[18][0] ), .CI(\SUMB[18][1] ), 
        .CO(\CARRYB[19][0] ), .S(\SUMB[19][0] ) );
  ADDFHX8M S3_8_2 ( .A(\ab[8][2] ), .B(\CARRYB[7][2] ), .CI(\ab[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  CLKINVX8M U2 ( .A(n14), .Y(\CARRYB[1][1] ) );
  XOR2X8M U3 ( .A(n4), .B(n8), .Y(\SUMB[1][1] ) );
  INVX12M U4 ( .A(B[2]), .Y(n52) );
  NAND2X8M U5 ( .A(n12), .B(n13), .Y(\A1[19] ) );
  NOR2X6M U6 ( .A(n31), .B(n49), .Y(\ab[3][1] ) );
  NOR2X2M U7 ( .A(n31), .B(n44), .Y(\ab[8][1] ) );
  BUFX32M U8 ( .A(n53), .Y(n31) );
  NOR2X8M U9 ( .A(n30), .B(n51), .Y(\ab[0][2] ) );
  NOR2X12M U10 ( .A(n30), .B(n50), .Y(\ab[2][2] ) );
  NOR2X3M U11 ( .A(n30), .B(n49), .Y(\ab[3][2] ) );
  NOR2XLM U12 ( .A(n30), .B(n47), .Y(\ab[5][2] ) );
  BUFX32M U13 ( .A(n52), .Y(n30) );
  CLKNAND2X4M U14 ( .A(\SUMB[2][2] ), .B(\CARRYB[2][1] ), .Y(n17) );
  BUFX8M U15 ( .A(\ab[0][2] ), .Y(n8) );
  XOR2X4M U16 ( .A(\ab[3][1] ), .B(\SUMB[2][2] ), .Y(n15) );
  XOR2X8M U17 ( .A(ZA), .B(\SUMB[19][0] ), .Y(\A1[17] ) );
  NOR2X4M U18 ( .A(n53), .B(n50), .Y(\ab[2][1] ) );
  NOR2X2M U19 ( .A(n3), .B(n19), .Y(\CARRYB[1][0] ) );
  NOR2X2M U20 ( .A(A[3]), .B(n6), .Y(\ab[3][3] ) );
  NAND2X2M U21 ( .A(\SUMB[2][2] ), .B(\ab[3][1] ), .Y(n18) );
  NAND2X2M U22 ( .A(n21), .B(\ab[0][3] ), .Y(n24) );
  NAND2X2M U23 ( .A(n8), .B(n4), .Y(n14) );
  INVX2M U24 ( .A(A[2]), .Y(n50) );
  NOR2X2M U25 ( .A(n54), .B(n49), .Y(\ab[3][0] ) );
  NOR2X2M U26 ( .A(n54), .B(n50), .Y(\ab[2][0] ) );
  INVX6M U27 ( .A(B[0]), .Y(n54) );
  INVX6M U28 ( .A(ZB), .Y(n20) );
  OR2X2M U29 ( .A(n51), .B(n54), .Y(n3) );
  CLKAND2X6M U30 ( .A(A[1]), .B(B[1]), .Y(n4) );
  BUFX8M U31 ( .A(n20), .Y(n6) );
  AND2X2M U32 ( .A(\CARRYB[19][2] ), .B(\SUMB[19][3] ), .Y(n5) );
  NOR2X2M U33 ( .A(n30), .B(n37), .Y(\ab[15][2] ) );
  NOR2X2M U34 ( .A(n30), .B(n39), .Y(\ab[13][2] ) );
  NOR2X2M U35 ( .A(n30), .B(n41), .Y(\ab[11][2] ) );
  NOR2X2M U36 ( .A(n43), .B(n30), .Y(\ab[9][2] ) );
  CLKBUFX3M U37 ( .A(n54), .Y(n7) );
  NOR2X1M U38 ( .A(n30), .B(n48), .Y(\ab[4][2] ) );
  NAND2X2M U39 ( .A(n9), .B(n22), .Y(n23) );
  INVX1M U40 ( .A(\ab[0][3] ), .Y(n22) );
  BUFX10M U41 ( .A(\ab[1][2] ), .Y(n9) );
  NAND2X6M U42 ( .A(n23), .B(n24), .Y(\SUMB[1][2] ) );
  XOR2X4M U43 ( .A(\CARRYB[2][1] ), .B(n15), .Y(\SUMB[3][1] ) );
  NOR2X2M U44 ( .A(A[2]), .B(n20), .Y(\ab[2][3] ) );
  INVX1M U45 ( .A(n4), .Y(n19) );
  NOR2X2M U46 ( .A(A[1]), .B(n20), .Y(\ab[1][3] ) );
  CLKINVX2M U47 ( .A(n9), .Y(n21) );
  INVX2M U48 ( .A(B[1]), .Y(n53) );
  NAND2X2M U49 ( .A(\CARRYB[19][1] ), .B(n11), .Y(n12) );
  NAND2X2M U50 ( .A(n10), .B(\SUMB[19][2] ), .Y(n13) );
  INVX1M U51 ( .A(\CARRYB[19][1] ), .Y(n10) );
  INVX2M U52 ( .A(\SUMB[19][2] ), .Y(n11) );
  XOR2X8M U53 ( .A(\CARRYB[19][0] ), .B(\SUMB[19][1] ), .Y(\A1[18] ) );
  CLKAND2X2M U54 ( .A(\CARRYB[19][0] ), .B(\SUMB[19][1] ), .Y(n25) );
  INVX2M U55 ( .A(A[0]), .Y(n51) );
  NAND2X6M U56 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .Y(n16) );
  NAND3X12M U57 ( .A(n17), .B(n18), .C(n16), .Y(\CARRYB[3][1] ) );
  CLKAND2X3M U58 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  NOR2X12M U59 ( .A(A[0]), .B(n20), .Y(\ab[0][3] ) );
  CLKAND2X6M U60 ( .A(ZA), .B(\SUMB[19][0] ), .Y(n28) );
  NAND2X4M U61 ( .A(\ab[0][3] ), .B(n9), .Y(n29) );
  NOR2XLM U62 ( .A(n30), .B(n45), .Y(\ab[7][2] ) );
  INVX2M U63 ( .A(A[3]), .Y(n49) );
  INVX2M U64 ( .A(A[4]), .Y(n48) );
  XOR2XLM U65 ( .A(ZB), .B(\PROD1[3] ), .Y(\A1[1] ) );
  CLKINVX6M U66 ( .A(n29), .Y(\CARRYB[1][2] ) );
  NOR2XLM U67 ( .A(n30), .B(n46), .Y(\ab[6][2] ) );
  INVX2M U68 ( .A(\CARRYB[19][3] ), .Y(n32) );
  AND2X2M U69 ( .A(ZB), .B(\PROD1[3] ), .Y(n26) );
  CLKXOR2X2M U70 ( .A(\CARRYB[19][2] ), .B(\SUMB[19][3] ), .Y(\A1[20] ) );
  AND2X2M U71 ( .A(\CARRYB[19][1] ), .B(\SUMB[19][2] ), .Y(n27) );
  INVX2M U72 ( .A(A[5]), .Y(n47) );
  INVX2M U73 ( .A(A[6]), .Y(n46) );
  INVX2M U74 ( .A(A[7]), .Y(n45) );
  INVX2M U75 ( .A(A[8]), .Y(n44) );
  INVX2M U76 ( .A(A[9]), .Y(n43) );
  INVX2M U77 ( .A(A[10]), .Y(n42) );
  INVX2M U78 ( .A(A[11]), .Y(n41) );
  INVX2M U79 ( .A(A[12]), .Y(n40) );
  INVX2M U80 ( .A(A[13]), .Y(n39) );
  INVX2M U81 ( .A(A[14]), .Y(n38) );
  INVX2M U82 ( .A(A[15]), .Y(n37) );
  INVX2M U83 ( .A(A[16]), .Y(n36) );
  INVX2M U84 ( .A(A[17]), .Y(n35) );
  INVX2M U85 ( .A(ZA), .Y(n33) );
  INVX2M U86 ( .A(A[18]), .Y(n34) );
  NOR2X1M U87 ( .A(A[9]), .B(n6), .Y(\ab[9][3] ) );
  NOR2X1M U88 ( .A(n43), .B(n31), .Y(\ab[9][1] ) );
  NOR2X1M U89 ( .A(n43), .B(n7), .Y(\ab[9][0] ) );
  NOR2X1M U90 ( .A(A[8]), .B(n6), .Y(\ab[8][3] ) );
  NOR2X1M U91 ( .A(n30), .B(n44), .Y(\ab[8][2] ) );
  NOR2X1M U92 ( .A(n54), .B(n44), .Y(\ab[8][0] ) );
  NOR2X1M U93 ( .A(A[7]), .B(n6), .Y(\ab[7][3] ) );
  NOR2X1M U94 ( .A(n31), .B(n45), .Y(\ab[7][1] ) );
  NOR2X1M U95 ( .A(n54), .B(n45), .Y(\ab[7][0] ) );
  NOR2X1M U96 ( .A(A[6]), .B(n6), .Y(\ab[6][3] ) );
  NOR2X1M U97 ( .A(n31), .B(n46), .Y(\ab[6][1] ) );
  NOR2X1M U98 ( .A(n7), .B(n46), .Y(\ab[6][0] ) );
  NOR2X1M U99 ( .A(A[5]), .B(n6), .Y(\ab[5][3] ) );
  NOR2X1M U100 ( .A(n31), .B(n47), .Y(\ab[5][1] ) );
  NOR2X1M U101 ( .A(n54), .B(n47), .Y(\ab[5][0] ) );
  NOR2X1M U102 ( .A(A[4]), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U103 ( .A(n31), .B(n48), .Y(\ab[4][1] ) );
  NOR2X1M U104 ( .A(n54), .B(n48), .Y(\ab[4][0] ) );
  NOR2X1M U105 ( .A(n6), .B(n33), .Y(\ab[19][3] ) );
  NOR2X1M U106 ( .A(B[2]), .B(n33), .Y(\ab[19][2] ) );
  NOR2X1M U107 ( .A(B[1]), .B(n33), .Y(\ab[19][1] ) );
  NOR2X1M U108 ( .A(B[0]), .B(n33), .Y(\ab[19][0] ) );
  NOR2X1M U109 ( .A(A[18]), .B(n6), .Y(\ab[18][3] ) );
  NOR2X1M U110 ( .A(n30), .B(n34), .Y(\ab[18][2] ) );
  NOR2X1M U111 ( .A(n31), .B(n34), .Y(\ab[18][1] ) );
  NOR2X1M U112 ( .A(n54), .B(n34), .Y(\ab[18][0] ) );
  NOR2X1M U113 ( .A(A[17]), .B(n6), .Y(\ab[17][3] ) );
  NOR2X1M U114 ( .A(n30), .B(n35), .Y(\ab[17][2] ) );
  NOR2X1M U115 ( .A(n31), .B(n35), .Y(\ab[17][1] ) );
  NOR2X1M U116 ( .A(n54), .B(n35), .Y(\ab[17][0] ) );
  NOR2X1M U117 ( .A(A[16]), .B(n6), .Y(\ab[16][3] ) );
  NOR2X1M U118 ( .A(n30), .B(n36), .Y(\ab[16][2] ) );
  NOR2X1M U119 ( .A(n31), .B(n36), .Y(\ab[16][1] ) );
  NOR2X1M U120 ( .A(n7), .B(n36), .Y(\ab[16][0] ) );
  NOR2X1M U121 ( .A(A[15]), .B(n6), .Y(\ab[15][3] ) );
  NOR2X1M U122 ( .A(n31), .B(n37), .Y(\ab[15][1] ) );
  NOR2X1M U123 ( .A(n7), .B(n37), .Y(\ab[15][0] ) );
  NOR2X1M U124 ( .A(A[14]), .B(n6), .Y(\ab[14][3] ) );
  NOR2X1M U125 ( .A(n30), .B(n38), .Y(\ab[14][2] ) );
  NOR2X1M U126 ( .A(n31), .B(n38), .Y(\ab[14][1] ) );
  NOR2X1M U127 ( .A(n7), .B(n38), .Y(\ab[14][0] ) );
  NOR2X1M U128 ( .A(A[13]), .B(n6), .Y(\ab[13][3] ) );
  NOR2X1M U129 ( .A(n31), .B(n39), .Y(\ab[13][1] ) );
  NOR2X1M U130 ( .A(n7), .B(n39), .Y(\ab[13][0] ) );
  NOR2X1M U131 ( .A(A[12]), .B(n6), .Y(\ab[12][3] ) );
  NOR2X1M U132 ( .A(n30), .B(n40), .Y(\ab[12][2] ) );
  NOR2X1M U133 ( .A(n31), .B(n40), .Y(\ab[12][1] ) );
  NOR2X1M U134 ( .A(n7), .B(n40), .Y(\ab[12][0] ) );
  NOR2X1M U135 ( .A(A[11]), .B(n6), .Y(\ab[11][3] ) );
  NOR2X1M U136 ( .A(n31), .B(n41), .Y(\ab[11][1] ) );
  NOR2X1M U137 ( .A(n7), .B(n41), .Y(\ab[11][0] ) );
  NOR2X1M U138 ( .A(A[10]), .B(n6), .Y(\ab[10][3] ) );
  NOR2X1M U139 ( .A(n30), .B(n42), .Y(\ab[10][2] ) );
  NOR2X1M U140 ( .A(n31), .B(n42), .Y(\ab[10][1] ) );
  NOR2X1M U141 ( .A(n7), .B(n42), .Y(\ab[10][0] ) );
  LMS_in_width4_K_width9_err_width20_DW01_add_1 FS_1 ( .A({n32, \A1[20] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n5, n27, 
        n25, n28, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n26, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        PRODUCT[23:4], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
endmodule


module LMS_in_width4_K_width9_err_width20_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX1M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX1M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1M U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFHX8M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX4M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX8M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX4M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX8M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module LMS_in_width4_K_width9_err_width20_test_1 ( CLK, RST, TDC_OUT, Q_ERR, 
        Kcal_UNSIGN, OV_FL, UN_FL, test_si, test_se );
  input [3:0] TDC_OUT;
  input [19:0] Q_ERR;
  output [8:0] Kcal_UNSIGN;
  input CLK, RST, test_si, test_se;
  output OV_FL, UN_FL;
  wire   CORR_OUT_24, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, n31, n32, n33, n34,
         n35, \CORR_IN[9] , \CORR_IN[8] , \CORR_IN[7] , \CORR_IN[6] ,
         \CORR_IN[5] , \CORR_IN[4] , \CORR_IN[23] , \CORR_IN[22] ,
         \CORR_IN[21] , \CORR_IN[20] , \CORR_IN[19] , \CORR_IN[18] ,
         \CORR_IN[17] , \CORR_IN[16] , \CORR_IN[15] , \CORR_IN[14] ,
         \CORR_IN[13] , \CORR_IN[12] , \CORR_IN[11] , \CORR_IN[10] , n2, n28,
         n29, n30, n36, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55;
  wire   [15:0] CORR_OUT;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  SDFFRQX2M \CORR_OUT_reg[12]  ( .D(N42), .SI(CORR_OUT[11]), .SE(n49), .CK(CLK), .RN(n36), .Q(CORR_OUT[12]) );
  SDFFRQX2M \CORR_OUT_reg[11]  ( .D(N41), .SI(CORR_OUT[10]), .SE(n45), .CK(CLK), .RN(n36), .Q(CORR_OUT[11]) );
  SDFFRQX2M \CORR_OUT_reg[10]  ( .D(N40), .SI(CORR_OUT[9]), .SE(n51), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[10]) );
  SDFFRQX2M \CORR_OUT_reg[9]  ( .D(N39), .SI(CORR_OUT[8]), .SE(n53), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[9]) );
  SDFFRQX2M \CORR_OUT_reg[8]  ( .D(N38), .SI(CORR_OUT[7]), .SE(n55), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[8]) );
  SDFFRQX2M \CORR_OUT_reg[7]  ( .D(N37), .SI(CORR_OUT[6]), .SE(n49), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[7]) );
  SDFFRQX2M \CORR_OUT_reg[6]  ( .D(N36), .SI(CORR_OUT[5]), .SE(n52), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[6]) );
  SDFFRQX2M \CORR_OUT_reg[5]  ( .D(N35), .SI(CORR_OUT[4]), .SE(n54), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[5]) );
  SDFFRQX2M \CORR_OUT_reg[4]  ( .D(N34), .SI(CORR_OUT[3]), .SE(n51), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[4]) );
  SDFFRQX2M \CORR_OUT_reg[3]  ( .D(N33), .SI(CORR_OUT[2]), .SE(n55), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[3]) );
  SDFFRQX2M \CORR_OUT_reg[2]  ( .D(N32), .SI(CORR_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(CORR_OUT[2]) );
  SDFFRQX2M \CORR_OUT_reg[1]  ( .D(N31), .SI(CORR_OUT[0]), .SE(n52), .CK(CLK), 
        .RN(n36), .Q(CORR_OUT[1]) );
  SDFFRQX2M \CORR_OUT_reg[0]  ( .D(N30), .SI(test_si), .SE(n50), .CK(CLK), 
        .RN(RST), .Q(CORR_OUT[0]) );
  SDFFRQX2M \CORR_OUT_reg[24]  ( .D(N54), .SI(Kcal_UNSIGN[7]), .SE(n44), .CK(
        CLK), .RN(n30), .Q(CORR_OUT_24) );
  SDFFRQX2M \CORR_OUT_reg[17]  ( .D(N47), .SI(Kcal_UNSIGN[0]), .SE(n45), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[1]) );
  SDFFRQX2M \CORR_OUT_reg[21]  ( .D(N51), .SI(Kcal_UNSIGN[4]), .SE(n54), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[5]) );
  SDFFRQX2M \CORR_OUT_reg[22]  ( .D(N52), .SI(Kcal_UNSIGN[5]), .SE(n44), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[6]) );
  SDFFRQX1M \CORR_OUT_reg[15]  ( .D(N45), .SI(CORR_OUT[14]), .SE(n53), .CK(CLK), .RN(n30), .Q(CORR_OUT[15]) );
  SDFFRQX1M \CORR_OUT_reg[14]  ( .D(N44), .SI(CORR_OUT[13]), .SE(n55), .CK(CLK), .RN(n30), .Q(CORR_OUT[14]) );
  SDFFRQX4M \CORR_OUT_reg[19]  ( .D(N49), .SI(Kcal_UNSIGN[2]), .SE(n51), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[3]) );
  SDFFRQX2M \CORR_OUT_reg[18]  ( .D(N48), .SI(Kcal_UNSIGN[1]), .SE(n50), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[2]) );
  SDFFRQX1M \CORR_OUT_reg[13]  ( .D(N43), .SI(CORR_OUT[12]), .SE(n54), .CK(CLK), .RN(RST), .Q(CORR_OUT[13]) );
  SDFFRQX2M \CORR_OUT_reg[16]  ( .D(N46), .SI(CORR_OUT[15]), .SE(n53), .CK(CLK), .RN(n30), .Q(Kcal_UNSIGN[0]) );
  SDFFRQX4M \CORR_OUT_reg[20]  ( .D(N50), .SI(Kcal_UNSIGN[3]), .SE(n49), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[4]) );
  SDFFRQX4M \CORR_OUT_reg[23]  ( .D(N53), .SI(Kcal_UNSIGN[6]), .SE(n50), .CK(
        CLK), .RN(n30), .Q(Kcal_UNSIGN[7]) );
  INVX4M U28 ( .A(CORR_OUT_24), .Y(Kcal_UNSIGN[8]) );
  BUFX14M U29 ( .A(\CORR_IN[23] ), .Y(n2) );
  NOR2BX2M U30 ( .AN(N24), .B(n29), .Y(N49) );
  BUFX4M U31 ( .A(RST), .Y(n30) );
  NOR2BX2M U33 ( .AN(N22), .B(n29), .Y(N47) );
  NOR2BX4M U34 ( .AN(N29), .B(n33), .Y(N54) );
  AND3XLM U35 ( .A(Kcal_UNSIGN[4]), .B(Kcal_UNSIGN[8]), .C(Kcal_UNSIGN[3]), 
        .Y(n35) );
  NOR3X1M U36 ( .A(Kcal_UNSIGN[5]), .B(Kcal_UNSIGN[7]), .C(Kcal_UNSIGN[6]), 
        .Y(n34) );
  BUFX4M U37 ( .A(n33), .Y(n28) );
  BUFX4M U38 ( .A(n33), .Y(n29) );
  CLKBUFX6M U39 ( .A(RST), .Y(n36) );
  NOR2BX2M U40 ( .AN(N27), .B(n29), .Y(N52) );
  NOR2BX2M U41 ( .AN(N28), .B(n29), .Y(N53) );
  NOR2BX2M U42 ( .AN(N25), .B(n29), .Y(N50) );
  NOR2BX2M U43 ( .AN(N26), .B(n29), .Y(N51) );
  NOR2BX2M U44 ( .AN(N21), .B(n29), .Y(N46) );
  NOR2BX2M U45 ( .AN(N23), .B(n29), .Y(N48) );
  NOR2BX2M U46 ( .AN(N19), .B(n29), .Y(N44) );
  NOR2BX2M U47 ( .AN(N20), .B(n29), .Y(N45) );
  NOR2BX2M U48 ( .AN(N16), .B(n28), .Y(N41) );
  NOR2BX2M U49 ( .AN(N17), .B(n29), .Y(N42) );
  NOR2BX2M U50 ( .AN(N18), .B(n29), .Y(N43) );
  NOR2BX2M U51 ( .AN(N13), .B(n28), .Y(N38) );
  NOR2BX2M U52 ( .AN(N14), .B(n28), .Y(N39) );
  NOR2BX2M U53 ( .AN(N15), .B(n28), .Y(N40) );
  NOR2BX2M U54 ( .AN(N11), .B(n28), .Y(N36) );
  NOR2BX2M U55 ( .AN(N12), .B(n28), .Y(N37) );
  NOR2BX2M U56 ( .AN(N6), .B(n28), .Y(N31) );
  NOR2BX2M U57 ( .AN(N7), .B(n28), .Y(N32) );
  NOR2BX2M U58 ( .AN(N8), .B(n28), .Y(N33) );
  NOR2BX2M U59 ( .AN(N9), .B(n28), .Y(N34) );
  NOR2BX2M U60 ( .AN(N10), .B(n28), .Y(N35) );
  NAND2X2M U61 ( .A(n32), .B(n31), .Y(n33) );
  NOR2BX2M U62 ( .AN(N5), .B(n28), .Y(N30) );
  NAND4BX2M U63 ( .AN(Kcal_UNSIGN[4]), .B(CORR_OUT_24), .C(Kcal_UNSIGN[3]), 
        .D(n34), .Y(n31) );
  NAND4X2M U64 ( .A(Kcal_UNSIGN[6]), .B(Kcal_UNSIGN[5]), .C(Kcal_UNSIGN[7]), 
        .D(n35), .Y(n32) );
  CLKINVX8M U65 ( .A(n32), .Y(OV_FL) );
  CLKINVX8M U66 ( .A(n31), .Y(UN_FL) );
  DLY1X1M U69 ( .A(n47), .Y(n44) );
  DLY1X1M U70 ( .A(n46), .Y(n45) );
  DLY1X1M U71 ( .A(test_se), .Y(n46) );
  DLY1X1M U72 ( .A(test_se), .Y(n47) );
  DLY1X1M U73 ( .A(test_se), .Y(n48) );
  DLY1X1M U74 ( .A(n52), .Y(n49) );
  DLY1X1M U75 ( .A(n47), .Y(n50) );
  DLY1X1M U76 ( .A(n46), .Y(n51) );
  DLY1X1M U77 ( .A(n48), .Y(n52) );
  DLY1X1M U78 ( .A(n47), .Y(n53) );
  DLY1X1M U79 ( .A(n46), .Y(n54) );
  DLY1X1M U80 ( .A(n48), .Y(n55) );
  LMS_in_width4_K_width9_err_width20_DW02_mult_0 mult_38 ( .A(Q_ERR), .B(
        TDC_OUT), .TC(1'b1), .PRODUCT({\CORR_IN[23] , \CORR_IN[22] , 
        \CORR_IN[21] , \CORR_IN[20] , \CORR_IN[19] , \CORR_IN[18] , 
        \CORR_IN[17] , \CORR_IN[16] , \CORR_IN[15] , \CORR_IN[14] , 
        \CORR_IN[13] , \CORR_IN[12] , \CORR_IN[11] , \CORR_IN[10] , 
        \CORR_IN[9] , \CORR_IN[8] , \CORR_IN[7] , \CORR_IN[6] , \CORR_IN[5] , 
        \CORR_IN[4] , SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  LMS_in_width4_K_width9_err_width20_DW01_add_0 add_51 ( .A({CORR_OUT_24, 
        Kcal_UNSIGN[7:0], CORR_OUT}), .B({n2, n2, n2, n2, n2, n2, 
        \CORR_IN[22] , \CORR_IN[21] , \CORR_IN[20] , \CORR_IN[19] , 
        \CORR_IN[18] , \CORR_IN[17] , \CORR_IN[16] , \CORR_IN[15] , 
        \CORR_IN[14] , \CORR_IN[13] , \CORR_IN[12] , \CORR_IN[11] , 
        \CORR_IN[10] , \CORR_IN[9] , \CORR_IN[8] , \CORR_IN[7] , \CORR_IN[6] , 
        \CORR_IN[5] , \CORR_IN[4] }), .CI(1'b0), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5}) );
endmodule


module DIG_FEEDBCK ( FB_CLK, RST, TDC_OUT, FCW, SI, SE, scan_clk, scan_rst, 
        test_mode, SO, LMS_OV_FL, LMS_UN_FL, MMD_CNTRL, DCW, test_si2, 
        test_so2 );
  input [3:0] TDC_OUT;
  input [26:0] FCW;
  output [7:0] MMD_CNTRL;
  output [8:0] DCW;
  input FB_CLK, RST, SI, SE, scan_clk, scan_rst, test_mode, test_si2;
  output SO, LMS_OV_FL, LMS_UN_FL, test_so2;
  wire   CLK_M, RST_M, DSM_out, n1, n2, n3, n4, n8, n9;
  wire   [19:0] FRAC_IN;
  wire   [19:0] Q_ERR_SIGN;
  wire   [19:0] Q_ERR_UNSIGN;
  wire   [8:0] Kcal;
  assign SO = DCW[8];
  assign test_so2 = Kcal[8];

  BUFX16M U1 ( .A(TDC_OUT[2]), .Y(n1) );
  BUFX10M U2 ( .A(TDC_OUT[3]), .Y(n2) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(RST_M), .Y(n4) );
  DLY1X1M U5 ( .A(SE), .Y(n8) );
  DLY1X1M U6 ( .A(SE), .Y(n9) );
  mux2X1_1 U0_clk ( .IN_0(FB_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_0 U0_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_M)
         );
  DSM_1ST_ORDER_in_width20_test_1 U0_DSM ( .CLK(CLK_M), .RST(n3), .DSM_IN(
        FRAC_IN), .Q_ERR_SIGN(Q_ERR_SIGN), .Q_ERR(Q_ERR_UNSIGN), .DSM_out(
        DSM_out), .test_si2(test_si2), .test_si1(DCW[7]), .test_se(n9) );
  CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 U0_DCW ( .CLK(CLK_M), .RST(
        n3), .Q_ERR(Q_ERR_UNSIGN), .Kcal(Kcal), .DCW(DCW), .test_si2(
        Q_ERR_SIGN[9]), .test_si1(MMD_CNTRL[7]), .test_se(n9) );
  CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 U0_CNT_MMD ( 
        .CLK(CLK_M), .RST(n3), .DSM_out(DSM_out), .FCW(FCW), .FRAC_IN(FRAC_IN), 
        .MMD_CNTRL(MMD_CNTRL), .test_si(SI), .test_se(n8) );
  LMS_in_width4_K_width9_err_width20_test_1 U0_LMS ( .CLK(CLK_M), .RST(n3), 
        .TDC_OUT({n2, n1, TDC_OUT[1:0]}), .Q_ERR(Q_ERR_SIGN), .Kcal_UNSIGN(
        Kcal), .OV_FL(LMS_OV_FL), .UN_FL(LMS_UN_FL), .test_si(Q_ERR_UNSIGN[19]), .test_se(SE) );
endmodule

