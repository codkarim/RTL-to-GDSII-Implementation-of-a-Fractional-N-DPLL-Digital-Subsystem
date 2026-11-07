/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Jul 16 21:35:57 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module DSM_1ST_ORDER_in_width20_test_1 ( CLK, RST, DSM_IN, Q_ERR_SIGN, Q_ERR, 
        DSM_out, test_si, test_se );
  input [19:0] DSM_IN;
  output [19:0] Q_ERR_SIGN;
  output [19:0] Q_ERR;
  input CLK, RST, test_si, test_se;
  output DSM_out;
  wire   \add_x_1/n20 , n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n123, n125, n126, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140;
  wire   [20:0] Q_IN;
  assign Q_ERR[18] = Q_ERR_SIGN[18];
  assign Q_ERR[17] = Q_ERR_SIGN[17];
  assign Q_ERR[16] = Q_ERR_SIGN[16];
  assign Q_ERR[15] = Q_ERR_SIGN[15];
  assign Q_ERR[14] = Q_ERR_SIGN[14];
  assign Q_ERR[13] = Q_ERR_SIGN[13];
  assign Q_ERR[12] = Q_ERR_SIGN[12];
  assign Q_ERR[11] = Q_ERR_SIGN[11];
  assign Q_ERR[10] = Q_ERR_SIGN[10];
  assign Q_ERR[9] = Q_ERR_SIGN[9];
  assign Q_ERR[8] = Q_ERR_SIGN[8];
  assign Q_ERR[7] = Q_ERR_SIGN[7];
  assign Q_ERR[6] = Q_ERR_SIGN[6];
  assign Q_ERR[5] = Q_ERR_SIGN[5];
  assign Q_ERR[4] = Q_ERR_SIGN[4];
  assign Q_ERR[3] = Q_ERR_SIGN[3];
  assign Q_ERR[2] = Q_ERR_SIGN[2];
  assign Q_ERR[1] = Q_ERR_SIGN[1];
  assign Q_ERR[0] = Q_ERR_SIGN[0];

  SDFFRQX1M DSM_out_reg ( .D(n5), .SI(test_si), .SE(n139), .CK(CLK), .RN(n123), 
        .Q(DSM_out) );
  SDFFRQX4M \Q_ERR_SIGN_reg[1]  ( .D(Q_IN[1]), .SI(n126), .SE(n132), .CK(CLK), 
        .RN(RST), .Q(Q_ERR_SIGN[1]) );
  SDFFRX1M \Q_ERR_SIGN_reg[19]  ( .D(Q_IN[19]), .SI(Q_ERR_SIGN[18]), .SE(n138), 
        .CK(CLK), .RN(n123), .Q(n125), .QN(Q_ERR_SIGN[19]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[5]  ( .D(Q_IN[5]), .SI(Q_ERR_SIGN[4]), .SE(n138), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[5]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[17]  ( .D(Q_IN[17]), .SI(Q_ERR_SIGN[16]), .SE(n131), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[17]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[18]  ( .D(Q_IN[18]), .SI(Q_ERR_SIGN[17]), .SE(n137), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[18]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[14]  ( .D(Q_IN[14]), .SI(Q_ERR_SIGN[13]), .SE(n138), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[14]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[12]  ( .D(Q_IN[12]), .SI(Q_ERR_SIGN[11]), .SE(n135), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[12]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[6]  ( .D(Q_IN[6]), .SI(Q_ERR_SIGN[5]), .SE(n134), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[6]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[16]  ( .D(Q_IN[16]), .SI(Q_ERR_SIGN[15]), .SE(n134), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[16]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[10]  ( .D(Q_IN[10]), .SI(Q_ERR_SIGN[9]), .SE(n139), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[10]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[4]  ( .D(Q_IN[4]), .SI(Q_ERR_SIGN[3]), .SE(n135), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[4]) );
  SDFFRQX4M \Q_ERR_reg[19]  ( .D(Q_IN[19]), .SI(n125), .SE(n133), .CK(CLK), 
        .RN(n123), .Q(Q_ERR[19]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[13]  ( .D(Q_IN[13]), .SI(Q_ERR_SIGN[12]), .SE(n137), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[13]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[15]  ( .D(Q_IN[15]), .SI(Q_ERR_SIGN[14]), .SE(n133), .CK(CLK), .RN(n123), .Q(Q_ERR_SIGN[15]) );
  SDFFSX2M \Q_ERR_SIGN_reg[0]  ( .D(\add_x_1/n20 ), .SI(DSM_out), .SE(n137), 
        .CK(CLK), .SN(RST), .Q(n126), .QN(Q_ERR_SIGN[0]) );
  AO21XLM U3 ( .A0(n111), .A1(n13), .B0(n110), .Y(n5) );
  AOI21X2M U4 ( .A0(n67), .A1(n15), .B0(n22), .Y(n64) );
  AOI21X2M U6 ( .A0(n51), .A1(n12), .B0(n24), .Y(n48) );
  AOI21X4M U9 ( .A0(n35), .A1(n7), .B0(n26), .Y(n32) );
  OAI21X4M U11 ( .A0(n40), .A1(n36), .B0(n37), .Y(n35) );
  OAI21X4M U12 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  AOI21X4M U29 ( .A0(n43), .A1(n11), .B0(n25), .Y(n40) );
  NOR2X1M U34 ( .A(n86), .B(n91), .Y(n18) );
  OAI21X2M U35 ( .A0(n86), .A1(n92), .B0(n87), .Y(n17) );
  NOR2X2M U43 ( .A(Q_ERR_SIGN[7]), .B(DSM_IN[7]), .Y(n76) );
  OAI21X6M U49 ( .A0(n56), .A1(n52), .B0(n53), .Y(n51) );
  AOI21X4M U50 ( .A0(n59), .A1(n10), .B0(n23), .Y(n56) );
  AOI21X2M U55 ( .A0(n85), .A1(n18), .B0(n17), .Y(n68) );
  NOR2X2M U59 ( .A(Q_ERR_SIGN[5]), .B(DSM_IN[5]), .Y(n86) );
  NOR2X2M U60 ( .A(Q_ERR_SIGN[4]), .B(DSM_IN[4]), .Y(n91) );
  NOR2X2M U66 ( .A(Q_ERR_SIGN[12]), .B(DSM_IN[12]), .Y(n52) );
  NOR2X2M U69 ( .A(Q_ERR_SIGN[18]), .B(DSM_IN[18]), .Y(n28) );
  OAI21X2M U76 ( .A0(n64), .A1(n60), .B0(n61), .Y(n59) );
  OAI21X2M U82 ( .A0(n68), .A1(n21), .B0(n20), .Y(n67) );
  AOI21X2M U85 ( .A0(n9), .A1(n106), .B0(n16), .Y(n103) );
  CLKINVX1M U86 ( .A(n105), .Y(n16) );
  OR2X1M U88 ( .A(Q_ERR[19]), .B(DSM_IN[19]), .Y(n13) );
  XOR2XLM U89 ( .A(n140), .B(n94), .Y(Q_IN[4]) );
  NAND2XLM U90 ( .A(n93), .B(n92), .Y(n94) );
  NAND2XLM U92 ( .A(n62), .B(n61), .Y(n63) );
  NAND2XLM U94 ( .A(n38), .B(n37), .Y(n39) );
  XNOR2XLM U96 ( .A(n84), .B(n83), .Y(Q_IN[6]) );
  NAND2XLM U97 ( .A(n82), .B(n81), .Y(n83) );
  NAND2XLM U98 ( .A(n54), .B(n53), .Y(n55) );
  NAND2XLM U100 ( .A(n46), .B(n45), .Y(n47) );
  NAND2XLM U102 ( .A(n30), .B(n29), .Y(n31) );
  NAND2XLM U104 ( .A(n7), .B(n33), .Y(n34) );
  XNOR2XLM U105 ( .A(n90), .B(n89), .Y(Q_IN[5]) );
  NAND2XLM U107 ( .A(n8), .B(n108), .Y(\add_x_1/n20 ) );
  NAND2XLM U108 ( .A(n11), .B(n41), .Y(n42) );
  NAND2XLM U109 ( .A(n12), .B(n49), .Y(n50) );
  NAND2XLM U110 ( .A(n10), .B(n57), .Y(n58) );
  NAND2XLM U111 ( .A(n14), .B(n71), .Y(n72) );
  NAND2XLM U112 ( .A(n78), .B(n77), .Y(n79) );
  XNOR2XLM U114 ( .A(n67), .B(n66), .Y(Q_IN[9]) );
  NAND2XLM U115 ( .A(n15), .B(n65), .Y(n66) );
  XOR2XLM U116 ( .A(n99), .B(n6), .Y(Q_IN[3]) );
  NAND2XLM U117 ( .A(n98), .B(n97), .Y(n99) );
  XOR2XLM U119 ( .A(n104), .B(n103), .Y(Q_IN[2]) );
  NAND2XLM U120 ( .A(n102), .B(n101), .Y(n104) );
  NAND2XLM U122 ( .A(n9), .B(n105), .Y(n107) );
  OA21X2M U123 ( .A0(n100), .A1(n103), .B0(n101), .Y(n6) );
  OR2X1M U124 ( .A(Q_ERR_SIGN[0]), .B(DSM_IN[0]), .Y(n8) );
  OR2X1M U125 ( .A(Q_ERR_SIGN[1]), .B(DSM_IN[1]), .Y(n9) );
  NAND2XLM U126 ( .A(n88), .B(n87), .Y(n89) );
  XNOR2XLM U127 ( .A(n107), .B(n106), .Y(Q_IN[1]) );
  CLKBUFX4M U141 ( .A(RST), .Y(n123) );
  DLY1X1M U143 ( .A(test_se), .Y(n131) );
  OA21X8M U152 ( .A0(n96), .A1(n6), .B0(n97), .Y(n140) );
  CLKINVX40M U153 ( .A(n140), .Y(n85) );
  SDFFRQX4M \Q_ERR_SIGN_reg[2]  ( .D(Q_IN[2]), .SI(Q_ERR_SIGN[1]), .SE(n136), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[2]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[3]  ( .D(Q_IN[3]), .SI(Q_ERR_SIGN[2]), .SE(n139), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[3]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[9]  ( .D(Q_IN[9]), .SI(Q_ERR_SIGN[8]), .SE(n132), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[9]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[7]  ( .D(Q_IN[7]), .SI(Q_ERR_SIGN[6]), .SE(n136), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[7]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[8]  ( .D(Q_IN[8]), .SI(Q_ERR_SIGN[7]), .SE(n136), 
        .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[8]) );
  SDFFRQX4M \Q_ERR_SIGN_reg[11]  ( .D(Q_IN[11]), .SI(Q_ERR_SIGN[10]), .SE(n135), .CK(CLK), .RN(RST), .Q(Q_ERR_SIGN[11]) );
  INVX8M U5 ( .A(n108), .Y(n106) );
  NAND2X1M U7 ( .A(Q_ERR_SIGN[0]), .B(DSM_IN[0]), .Y(n108) );
  XNOR2X2M U8 ( .A(n111), .B(n27), .Y(Q_IN[19]) );
  OAI21X8M U10 ( .A0(n32), .A1(n28), .B0(n29), .Y(n111) );
  INVXLM U13 ( .A(n65), .Y(n22) );
  NOR2X1M U14 ( .A(Q_ERR_SIGN[6]), .B(DSM_IN[6]), .Y(n74) );
  INVXLM U15 ( .A(n41), .Y(n25) );
  NAND2X1M U16 ( .A(Q_ERR_SIGN[6]), .B(DSM_IN[6]), .Y(n81) );
  INVXLM U17 ( .A(n57), .Y(n23) );
  NAND2XLM U18 ( .A(Q_ERR_SIGN[8]), .B(DSM_IN[8]), .Y(n71) );
  NOR2X1M U19 ( .A(n76), .B(n74), .Y(n70) );
  OAI21X1M U20 ( .A0(n76), .A1(n81), .B0(n77), .Y(n69) );
  OR2X1M U21 ( .A(Q_ERR_SIGN[8]), .B(DSM_IN[8]), .Y(n14) );
  NAND2XLM U22 ( .A(Q_ERR_SIGN[7]), .B(DSM_IN[7]), .Y(n77) );
  NOR2X1M U23 ( .A(Q_ERR_SIGN[10]), .B(DSM_IN[10]), .Y(n60) );
  INVXLM U24 ( .A(n49), .Y(n24) );
  INVXLM U25 ( .A(n33), .Y(n26) );
  NAND2X1M U26 ( .A(Q_ERR_SIGN[4]), .B(DSM_IN[4]), .Y(n92) );
  NAND2XLM U27 ( .A(Q_ERR_SIGN[5]), .B(DSM_IN[5]), .Y(n87) );
  AOI21XLM U28 ( .A0(n69), .A1(n14), .B0(n19), .Y(n20) );
  NAND2XLM U30 ( .A(n70), .B(n14), .Y(n21) );
  INVXLM U31 ( .A(n71), .Y(n19) );
  NOR2X1M U32 ( .A(Q_ERR_SIGN[3]), .B(DSM_IN[3]), .Y(n96) );
  NAND2X1M U33 ( .A(Q_ERR_SIGN[3]), .B(DSM_IN[3]), .Y(n97) );
  NAND2XLM U36 ( .A(Q_ERR_SIGN[2]), .B(DSM_IN[2]), .Y(n101) );
  NOR2X1M U37 ( .A(Q_ERR_SIGN[2]), .B(DSM_IN[2]), .Y(n100) );
  NAND2XLM U38 ( .A(Q_ERR_SIGN[15]), .B(DSM_IN[15]), .Y(n41) );
  OR2X1M U39 ( .A(Q_ERR_SIGN[15]), .B(DSM_IN[15]), .Y(n11) );
  NAND2XLM U40 ( .A(Q_ERR_SIGN[13]), .B(DSM_IN[13]), .Y(n49) );
  OR2X1M U41 ( .A(Q_ERR_SIGN[13]), .B(DSM_IN[13]), .Y(n12) );
  NAND2XLM U42 ( .A(Q_ERR_SIGN[10]), .B(DSM_IN[10]), .Y(n61) );
  NOR2X1M U44 ( .A(Q_ERR_SIGN[16]), .B(DSM_IN[16]), .Y(n36) );
  NAND2X1M U45 ( .A(Q_ERR_SIGN[16]), .B(DSM_IN[16]), .Y(n37) );
  NAND2X1M U46 ( .A(Q_ERR_SIGN[12]), .B(DSM_IN[12]), .Y(n53) );
  NOR2X1M U47 ( .A(Q_ERR_SIGN[14]), .B(DSM_IN[14]), .Y(n44) );
  NAND2X1M U48 ( .A(Q_ERR_SIGN[14]), .B(DSM_IN[14]), .Y(n45) );
  NAND2X1M U51 ( .A(Q_ERR_SIGN[18]), .B(DSM_IN[18]), .Y(n29) );
  NAND2XLM U52 ( .A(Q_ERR_SIGN[17]), .B(DSM_IN[17]), .Y(n33) );
  OR2X1M U53 ( .A(Q_ERR_SIGN[17]), .B(DSM_IN[17]), .Y(n7) );
  NAND2XLM U54 ( .A(Q_ERR_SIGN[11]), .B(DSM_IN[11]), .Y(n57) );
  OR2X1M U56 ( .A(Q_ERR_SIGN[11]), .B(DSM_IN[11]), .Y(n10) );
  INVXLM U57 ( .A(n74), .Y(n82) );
  INVXLM U58 ( .A(n81), .Y(n75) );
  CLKINVX1M U61 ( .A(n68), .Y(n84) );
  NAND2XLM U62 ( .A(Q_ERR_SIGN[9]), .B(DSM_IN[9]), .Y(n65) );
  OR2X1M U63 ( .A(Q_ERR_SIGN[9]), .B(DSM_IN[9]), .Y(n15) );
  NAND2X1M U64 ( .A(Q_ERR_SIGN[1]), .B(DSM_IN[1]), .Y(n105) );
  NAND2XLM U65 ( .A(Q_ERR[19]), .B(DSM_IN[19]), .Y(n109) );
  DLY4X1M U67 ( .A(test_se), .Y(n133) );
  XNOR2XLM U68 ( .A(n43), .B(n42), .Y(Q_IN[15]) );
  XNOR2XLM U70 ( .A(n51), .B(n50), .Y(Q_IN[13]) );
  INVXLM U71 ( .A(n91), .Y(n93) );
  XOR2XLM U72 ( .A(n64), .B(n63), .Y(Q_IN[10]) );
  INVXLM U73 ( .A(n60), .Y(n62) );
  XOR2XLM U74 ( .A(n40), .B(n39), .Y(Q_IN[16]) );
  INVXLM U75 ( .A(n36), .Y(n38) );
  DLY4X1M U77 ( .A(test_se), .Y(n134) );
  XOR2XLM U78 ( .A(n56), .B(n55), .Y(Q_IN[12]) );
  INVXLM U79 ( .A(n52), .Y(n54) );
  XOR2XLM U80 ( .A(n48), .B(n47), .Y(Q_IN[14]) );
  INVXLM U81 ( .A(n44), .Y(n46) );
  CLKBUFX1M U83 ( .A(n131), .Y(n137) );
  XOR2XLM U84 ( .A(n32), .B(n31), .Y(Q_IN[18]) );
  INVXLM U87 ( .A(n28), .Y(n30) );
  XNOR2XLM U91 ( .A(n35), .B(n34), .Y(Q_IN[17]) );
  OAI21XLM U93 ( .A0(n140), .A1(n91), .B0(n92), .Y(n90) );
  INVXLM U95 ( .A(n86), .Y(n88) );
  CLKBUFX1M U99 ( .A(n131), .Y(n135) );
  XNOR2XLM U101 ( .A(n59), .B(n58), .Y(Q_IN[11]) );
  XOR2XLM U103 ( .A(n73), .B(n72), .Y(Q_IN[8]) );
  AOI21XLM U106 ( .A0(n84), .A1(n70), .B0(n69), .Y(n73) );
  XOR2XLM U113 ( .A(n80), .B(n79), .Y(Q_IN[7]) );
  AOI21XLM U118 ( .A0(n84), .A1(n82), .B0(n75), .Y(n80) );
  INVXLM U121 ( .A(n76), .Y(n78) );
  DLY4X1M U128 ( .A(test_se), .Y(n132) );
  INVXLM U129 ( .A(n96), .Y(n98) );
  CLKBUFX1M U130 ( .A(n132), .Y(n136) );
  INVXLM U131 ( .A(n100), .Y(n102) );
  CLKBUFX1M U132 ( .A(n134), .Y(n138) );
  NAND2XLM U133 ( .A(n13), .B(n109), .Y(n27) );
  CLKBUFX1M U134 ( .A(n133), .Y(n139) );
  INVXLM U135 ( .A(n109), .Y(n110) );
endmodule


module CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 ( CLK, RST, Q_ERR, Kcal, 
        DCW, test_si2, test_si1, test_se );
  input [19:0] Q_ERR;
  input [8:0] Kcal;
  output [8:0] DCW;
  input CLK, RST, test_si2, test_si1, test_se;
  wire   n382, n2, n5, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n498, n503, n504, n505, n506, n1,
         n3, n4, n6, n7, n8, n9, n12, n62, n76, n92, n149;
  wire   [28:20] DCW_MUL;

  SDFFRHQX8M \DCW_reg[0]  ( .D(DCW_MUL[20]), .SI(test_si1), .SE(n506), .CK(CLK), .RN(n498), .Q(DCW[0]) );
  SDFFRHQX8M \DCW_reg[3]  ( .D(DCW_MUL[23]), .SI(DCW[2]), .SE(n505), .CK(CLK), 
        .RN(n498), .Q(DCW[3]) );
  SDFFRHQX8M \DCW_reg[4]  ( .D(DCW_MUL[24]), .SI(DCW[3]), .SE(n504), .CK(CLK), 
        .RN(n498), .Q(DCW[4]) );
  SDFFRHQX8M \DCW_reg[5]  ( .D(DCW_MUL[25]), .SI(DCW[4]), .SE(n506), .CK(CLK), 
        .RN(n498), .Q(DCW[5]) );
  SDFFRHQX8M \DCW_reg[1]  ( .D(DCW_MUL[21]), .SI(DCW[0]), .SE(n505), .CK(CLK), 
        .RN(n498), .Q(DCW[1]) );
  SDFFRHQX8M \DCW_reg[2]  ( .D(DCW_MUL[22]), .SI(DCW[1]), .SE(n504), .CK(CLK), 
        .RN(n498), .Q(DCW[2]) );
  SDFFRHQX8M \DCW_reg[6]  ( .D(DCW_MUL[26]), .SI(DCW[5]), .SE(n505), .CK(CLK), 
        .RN(n498), .Q(DCW[6]) );
  SDFFRHQX8M \DCW_reg[7]  ( .D(DCW_MUL[27]), .SI(DCW[6]), .SE(n504), .CK(CLK), 
        .RN(n498), .Q(DCW[7]) );
  NOR2X2M U4 ( .A(n460), .B(n477), .Y(n468) );
  NOR2X2M U6 ( .A(n84), .B(n299), .Y(n302) );
  NOR2X2M U7 ( .A(n172), .B(n279), .Y(n282) );
  ADDFX2M U9 ( .A(n96), .B(n95), .CI(n94), .CO(n103), .S(n99) );
  OAI22X1M U10 ( .A0(n448), .A1(n70), .B0(n11), .B1(n86), .Y(n96) );
  XNOR2X2M U13 ( .A(Kcal[7]), .B(Q_ERR[19]), .Y(n421) );
  OAI22XLM U20 ( .A0(n5), .A1(n177), .B0(n436), .B1(n176), .Y(n195) );
  OAI22XLM U21 ( .A0(n10), .A1(n222), .B0(n221), .B1(n356), .Y(n254) );
  NAND2XLM U23 ( .A(n296), .B(n295), .Y(n297) );
  OAI21X2M U24 ( .A0(n477), .A1(n473), .B0(n478), .Y(n467) );
  NAND2XLM U25 ( .A(n442), .B(n440), .Y(n439) );
  XOR2XLM U26 ( .A(n481), .B(n480), .Y(DCW_MUL[21]) );
  NAND2X8M U27 ( .A(n17), .B(n420), .Y(n5) );
  AOI21X6M U29 ( .A0(n485), .A1(n483), .B0(n419), .Y(n490) );
  NAND2X2M U35 ( .A(n479), .B(n478), .Y(n480) );
  INVX2M U44 ( .A(n477), .Y(n479) );
  NOR2X4M U47 ( .A(n276), .B(n275), .Y(n279) );
  ADDFX2M U52 ( .A(n359), .B(n379), .CI(n358), .CO(n387), .S(n363) );
  CLKXOR2X2M U58 ( .A(Kcal[5]), .B(Kcal[4]), .Y(n14) );
  XNOR2X2M U60 ( .A(n443), .B(n439), .Y(DCW_MUL[27]) );
  AOI21X4M U61 ( .A0(n443), .A1(n442), .B0(n441), .Y(n454) );
  OAI21X6M U62 ( .A0(n466), .A1(n462), .B0(n463), .Y(n485) );
  AOI21X6M U63 ( .A0(n458), .A1(n456), .B0(n391), .Y(n466) );
  AOI21X2M U64 ( .A0(n476), .A1(n475), .B0(n474), .Y(n481) );
  OAI21X6M U66 ( .A0(n459), .A1(n374), .B0(n373), .Y(n458) );
  AOI21X6M U67 ( .A0(n325), .A1(n324), .B0(n323), .Y(n459) );
  AOI21X2M U68 ( .A0(n302), .A1(n301), .B0(n300), .Y(n322) );
  AOI21X2M U69 ( .A0(n319), .A1(n318), .B0(n317), .Y(n320) );
  OR2X2M U71 ( .A(n371), .B(n370), .Y(n470) );
  ADDFX2M U72 ( .A(n128), .B(n127), .CI(n126), .CO(n310), .S(n306) );
  ADDFHX1M U73 ( .A(n54), .B(n53), .CI(n52), .CO(n288), .S(n287) );
  ADDFX2M U77 ( .A(n61), .B(n60), .CI(n59), .CO(n82), .S(n67) );
  ADDFX1M U78 ( .A(n51), .B(n50), .CI(n49), .CO(n59), .S(n54) );
  ADDFX1M U84 ( .A(n362), .B(n361), .CI(n15), .CO(n378), .S(n365) );
  OAI22X1M U85 ( .A0(n448), .A1(n326), .B0(n11), .B1(n347), .Y(n350) );
  OAI22X1M U86 ( .A0(n448), .A1(n381), .B0(n11), .B1(n398), .Y(n401) );
  OAI22X1M U87 ( .A0(n448), .A1(n129), .B0(n11), .B1(n326), .Y(n336) );
  AND2X2M U88 ( .A(n18), .B(n356), .Y(n32) );
  INVX10M U92 ( .A(n376), .Y(n345) );
  INVX8M U94 ( .A(Kcal[0]), .Y(n16) );
  OAI21X2M U107 ( .A0(n285), .A1(n284), .B0(n283), .Y(n324) );
  OAI21X4M U108 ( .A0(n322), .A1(n321), .B0(n320), .Y(n323) );
  NOR2X4M U112 ( .A(n143), .B(n316), .Y(n319) );
  NOR2X4M U114 ( .A(n289), .B(n288), .Y(n292) );
  NOR2X2M U115 ( .A(n294), .B(n293), .Y(n84) );
  ADDFX1M U117 ( .A(n165), .B(n164), .CI(n163), .CO(n170), .S(n173) );
  OR2X1M U119 ( .A(n450), .B(n449), .Y(n452) );
  ADDFX1M U121 ( .A(n182), .B(n181), .CI(n180), .CO(n163), .S(n187) );
  ADDFX1M U123 ( .A(n336), .B(n335), .CI(n334), .CO(n342), .S(n339) );
  ADDFX1M U125 ( .A(n139), .B(n138), .CI(n137), .CO(n329), .S(n142) );
  ADDFX2M U126 ( .A(n66), .B(n65), .CI(n64), .CO(n73), .S(n69) );
  ADDFX1M U127 ( .A(n125), .B(n124), .CI(n123), .CO(n132), .S(n128) );
  ADDFX1M U128 ( .A(n30), .B(n29), .CI(n28), .CO(n44), .S(n168) );
  OAI22X1M U129 ( .A0(n5), .A1(n340), .B0(n436), .B1(n360), .Y(n362) );
  OAI22X1M U130 ( .A0(n92), .A1(n130), .B0(n327), .B1(n149), .Y(n335) );
  XOR2X1M U131 ( .A(n345), .B(Kcal[2]), .Y(n18) );
  XNOR2X1M U133 ( .A(Kcal[7]), .B(Q_ERR[5]), .Y(n20) );
  BUFX10M U136 ( .A(n19), .Y(n11) );
  XNOR2X1M U143 ( .A(Kcal[1]), .B(Q_ERR[19]), .Y(n328) );
  ADDFX2M U147 ( .A(n110), .B(n109), .CI(n108), .CO(n118), .S(n113) );
  NAND2X2M U148 ( .A(n85), .B(n302), .Y(n145) );
  OAI21X8M U149 ( .A0(n490), .A1(n486), .B0(n487), .Y(n443) );
  OAI22X2M U157 ( .A0(n448), .A1(n422), .B0(n11), .B1(n434), .Y(n446) );
  NAND2BXLM U158 ( .AN(n226), .B(n225), .Y(n227) );
  XNOR2XLM U159 ( .A(Kcal[7]), .B(n226), .Y(n177) );
  ADDFX2M U161 ( .A(n158), .B(n157), .CI(n156), .CO(n153), .S(n175) );
  OAI22X1M U162 ( .A0(n448), .A1(n35), .B0(n11), .B1(n34), .Y(n158) );
  OAI22XLM U163 ( .A0(n448), .A1(n41), .B0(n11), .B1(n56), .Y(n66) );
  OAI22XLM U164 ( .A0(n243), .A1(n43), .B0(n58), .B1(n16), .Y(n64) );
  NOR2BXLM U166 ( .AN(n226), .B(n149), .Y(n232) );
  OAI22XLM U167 ( .A0(n10), .A1(n212), .B0(n222), .B1(n356), .Y(n231) );
  NOR2BXLM U168 ( .AN(n226), .B(n11), .Y(n182) );
  NOR2BXLM U169 ( .AN(n226), .B(n436), .Y(n248) );
  OAI22XLM U170 ( .A0(n448), .A1(n86), .B0(n11), .B1(n100), .Y(n110) );
  OAI22XLM U171 ( .A0(n243), .A1(n72), .B0(n88), .B1(n16), .Y(n94) );
  OAI22XLM U172 ( .A0(n448), .A1(n22), .B0(n11), .B1(n41), .Y(n51) );
  OAI22XLM U173 ( .A0(n5), .A1(n20), .B0(n436), .B1(n47), .Y(n46) );
  INVX2M U174 ( .A(Kcal[3]), .Y(n376) );
  NOR2XLM U175 ( .A(n234), .B(n233), .Y(n236) );
  NAND2XLM U176 ( .A(n234), .B(n233), .Y(n235) );
  NAND2XLM U177 ( .A(n259), .B(n258), .Y(n260) );
  NAND2XLM U178 ( .A(n257), .B(n256), .Y(n261) );
  NOR2XLM U179 ( .A(n257), .B(n256), .Y(n255) );
  NAND2XLM U180 ( .A(n269), .B(n268), .Y(n270) );
  NAND2XLM U181 ( .A(n267), .B(n266), .Y(n271) );
  NAND2XLM U182 ( .A(n274), .B(n273), .Y(n278) );
  NAND2XLM U183 ( .A(n287), .B(n286), .Y(n291) );
  NAND2XLM U184 ( .A(n289), .B(n288), .Y(n290) );
  NAND2XLM U185 ( .A(n294), .B(n293), .Y(n298) );
  NAND2XLM U186 ( .A(n304), .B(n303), .Y(n308) );
  NAND2XLM U187 ( .A(n306), .B(n305), .Y(n307) );
  NAND2XLM U188 ( .A(n311), .B(n310), .Y(n315) );
  OAI22XLM U189 ( .A0(n5), .A1(n360), .B0(n436), .B1(n1), .Y(n380) );
  OAI22XLM U191 ( .A0(n243), .A1(n328), .B0(n15), .B1(n16), .Y(n348) );
  OAI22XLM U192 ( .A0(n5), .A1(n135), .B0(n436), .B1(n332), .Y(n331) );
  NOR2XLM U193 ( .A(n287), .B(n286), .Y(n55) );
  OAI22X1M U194 ( .A0(n448), .A1(n410), .B0(n11), .B1(n422), .Y(n428) );
  OR2X1M U196 ( .A(n448), .B(n447), .Y(n449) );
  XNOR2X4M U198 ( .A(Kcal[5]), .B(Kcal[6]), .Y(n420) );
  NAND2BXLM U199 ( .AN(n226), .B(Kcal[7]), .Y(n161) );
  NAND2X2M U200 ( .A(n282), .B(n197), .Y(n285) );
  NAND2X12M U201 ( .A(n11), .B(Kcal[8]), .Y(n448) );
  CLKINVX1M U203 ( .A(Q_ERR[1]), .Y(n34) );
  NAND2BXLM U204 ( .AN(n226), .B(n228), .Y(n198) );
  OAI22XLM U205 ( .A0(n243), .A1(n88), .B0(n102), .B1(n16), .Y(n108) );
  OAI22XLM U206 ( .A0(n92), .A1(n224), .B0(n223), .B1(n149), .Y(n253) );
  BUFX4M U214 ( .A(Kcal[5]), .Y(n225) );
  XNOR2X2M U215 ( .A(n225), .B(Q_ERR[7]), .Y(n24) );
  XNOR2X2M U216 ( .A(Kcal[5]), .B(Q_ERR[8]), .Y(n42) );
  OAI22X1M U217 ( .A0(n92), .A1(n24), .B0(n42), .B1(n149), .Y(n50) );
  CLKBUFX4M U218 ( .A(Kcal[1]), .Y(n228) );
  XNOR2X2M U219 ( .A(n228), .B(Q_ERR[11]), .Y(n26) );
  XNOR2X2M U220 ( .A(n228), .B(Q_ERR[12]), .Y(n43) );
  OAI22X1M U221 ( .A0(n243), .A1(n26), .B0(n43), .B1(n16), .Y(n49) );
  XNOR2X2M U222 ( .A(Kcal[7]), .B(Q_ERR[4]), .Y(n31) );
  OAI22X1M U224 ( .A0(n5), .A1(n31), .B0(n436), .B1(n20), .Y(n40) );
  XNOR2X8M U225 ( .A(Kcal[1]), .B(Kcal[2]), .Y(n377) );
  XNOR2X2M U226 ( .A(n345), .B(Q_ERR[8]), .Y(n33) );
  XNOR2X2M U227 ( .A(n345), .B(Q_ERR[9]), .Y(n21) );
  OAI22X1M U228 ( .A0(n10), .A1(n33), .B0(n21), .B1(n356), .Y(n39) );
  OAI22X1M U229 ( .A0(n448), .A1(n34), .B0(n11), .B1(n23), .Y(n148) );
  XNOR2X2M U230 ( .A(n225), .B(Q_ERR[5]), .Y(n36) );
  XNOR2X2M U231 ( .A(Kcal[5]), .B(Q_ERR[6]), .Y(n25) );
  OAI22X1M U232 ( .A0(n92), .A1(n36), .B0(n25), .B1(n149), .Y(n147) );
  XNOR2X2M U233 ( .A(n228), .B(Q_ERR[9]), .Y(n37) );
  XNOR2X2M U234 ( .A(n228), .B(Q_ERR[10]), .Y(n27) );
  OAI22X1M U235 ( .A0(n243), .A1(n37), .B0(n27), .B1(n16), .Y(n146) );
  XNOR2X2M U236 ( .A(n345), .B(Q_ERR[10]), .Y(n48) );
  OAI22X1M U238 ( .A0(n448), .A1(n23), .B0(n11), .B1(n22), .Y(n30) );
  OAI22X1M U239 ( .A0(n92), .A1(n25), .B0(n24), .B1(n149), .Y(n29) );
  OAI22X1M U241 ( .A0(n5), .A1(n7), .B0(n436), .B1(n31), .Y(n155) );
  XNOR2X2M U242 ( .A(n345), .B(Q_ERR[7]), .Y(n150) );
  OAI22X1M U243 ( .A0(n10), .A1(n150), .B0(n33), .B1(n356), .Y(n154) );
  CLKBUFX4M U244 ( .A(Q_ERR[0]), .Y(n226) );
  XNOR2X2M U245 ( .A(n225), .B(Q_ERR[4]), .Y(n159) );
  OAI22X1M U246 ( .A0(n92), .A1(n159), .B0(n36), .B1(n149), .Y(n157) );
  XNOR2X2M U247 ( .A(n228), .B(Q_ERR[8]), .Y(n160) );
  OAI22X1M U248 ( .A0(n243), .A1(n160), .B0(n37), .B1(n16), .Y(n156) );
  ADDFX1M U249 ( .A(n40), .B(n39), .CI(n38), .CO(n53), .S(n166) );
  XNOR2X2M U250 ( .A(n225), .B(Q_ERR[9]), .Y(n57) );
  OAI22X1M U251 ( .A0(n92), .A1(n42), .B0(n57), .B1(n149), .Y(n65) );
  XNOR2X2M U252 ( .A(n228), .B(Q_ERR[13]), .Y(n58) );
  OAI22X1M U253 ( .A0(n5), .A1(n47), .B0(n436), .B1(n6), .Y(n61) );
  XNOR2X2M U254 ( .A(n345), .B(Q_ERR[11]), .Y(n63) );
  OAI22X1M U257 ( .A0(n448), .A1(n56), .B0(n11), .B1(n70), .Y(n80) );
  XNOR2X2M U258 ( .A(n225), .B(Q_ERR[10]), .Y(n71) );
  OAI22X1M U259 ( .A0(n92), .A1(n57), .B0(n71), .B1(n149), .Y(n79) );
  XNOR2X2M U260 ( .A(n228), .B(Q_ERR[14]), .Y(n72) );
  OAI22X1M U261 ( .A0(n243), .A1(n58), .B0(n72), .B1(n16), .Y(n78) );
  OAI22X1M U262 ( .A0(n5), .A1(n6), .B0(n436), .B1(n4), .Y(n75) );
  XNOR2X2M U263 ( .A(n345), .B(Q_ERR[12]), .Y(n77) );
  XNOR2X2M U265 ( .A(n225), .B(Q_ERR[11]), .Y(n87) );
  OAI22X1M U266 ( .A0(n92), .A1(n71), .B0(n87), .B1(n149), .Y(n95) );
  XNOR2X2M U267 ( .A(Kcal[1]), .B(Q_ERR[15]), .Y(n88) );
  ADDFX1M U268 ( .A(n75), .B(n74), .CI(n73), .CO(n98), .S(n81) );
  OAI22X1M U269 ( .A0(n5), .A1(n4), .B0(n436), .B1(n3), .Y(n91) );
  XNOR2X2M U270 ( .A(n345), .B(Q_ERR[13]), .Y(n93) );
  ADDFX1M U272 ( .A(n80), .B(n79), .CI(n78), .CO(n89), .S(n83) );
  ADDFX2M U273 ( .A(n83), .B(n82), .CI(n81), .CO(n295), .S(n294) );
  NOR2X4M U274 ( .A(n296), .B(n295), .Y(n299) );
  XNOR2X2M U275 ( .A(n225), .B(Q_ERR[12]), .Y(n101) );
  OAI22X1M U276 ( .A0(n92), .A1(n87), .B0(n101), .B1(n149), .Y(n109) );
  XNOR2X2M U277 ( .A(Kcal[1]), .B(Q_ERR[16]), .Y(n102) );
  ADDFX1M U278 ( .A(n91), .B(n90), .CI(n89), .CO(n112), .S(n97) );
  XNOR2X2M U279 ( .A(Kcal[7]), .B(Q_ERR[10]), .Y(n106) );
  OAI22X1M U280 ( .A0(n5), .A1(n3), .B0(n436), .B1(n106), .Y(n105) );
  XNOR2X2M U281 ( .A(n345), .B(Q_ERR[14]), .Y(n107) );
  ADDFX2M U283 ( .A(n99), .B(n98), .CI(n97), .CO(n303), .S(n296) );
  NOR2X2M U284 ( .A(n304), .B(n303), .Y(n114) );
  OAI22X1M U285 ( .A0(n448), .A1(n100), .B0(n11), .B1(n115), .Y(n125) );
  XNOR2X2M U286 ( .A(n225), .B(Q_ERR[13]), .Y(n116) );
  OAI22X1M U287 ( .A0(n92), .A1(n101), .B0(n116), .B1(n149), .Y(n124) );
  XNOR2X2M U288 ( .A(Kcal[1]), .B(Q_ERR[17]), .Y(n117) );
  ADDFX1M U289 ( .A(n105), .B(n104), .CI(n103), .CO(n127), .S(n111) );
  OAI22X1M U290 ( .A0(n5), .A1(n106), .B0(n436), .B1(n121), .Y(n120) );
  XNOR2X2M U291 ( .A(n345), .B(Q_ERR[15]), .Y(n122) );
  ADDFX2M U293 ( .A(n113), .B(n112), .CI(n111), .CO(n305), .S(n304) );
  NOR2X2M U294 ( .A(n114), .B(n309), .Y(n144) );
  OAI22X1M U295 ( .A0(n448), .A1(n115), .B0(n11), .B1(n129), .Y(n139) );
  XNOR2X2M U296 ( .A(n225), .B(Q_ERR[14]), .Y(n130) );
  OAI22X1M U297 ( .A0(n92), .A1(n116), .B0(n130), .B1(n149), .Y(n138) );
  XNOR2X2M U298 ( .A(Kcal[1]), .B(Q_ERR[18]), .Y(n131) );
  ADDFX1M U300 ( .A(n120), .B(n119), .CI(n118), .CO(n141), .S(n126) );
  XNOR2X2M U301 ( .A(n345), .B(Q_ERR[16]), .Y(n136) );
  NOR2X2M U303 ( .A(n311), .B(n310), .Y(n143) );
  XNOR2X2M U304 ( .A(Kcal[5]), .B(Q_ERR[15]), .Y(n327) );
  OAI22X1M U305 ( .A0(n243), .A1(n131), .B0(n328), .B1(n16), .Y(n334) );
  XNOR2X2M U306 ( .A(n345), .B(Q_ERR[17]), .Y(n333) );
  ADDFX2M U308 ( .A(n142), .B(n141), .CI(n140), .CO(n312), .S(n311) );
  NAND2X2M U309 ( .A(n144), .B(n319), .Y(n321) );
  NOR2X4M U310 ( .A(n145), .B(n321), .Y(n325) );
  ADDFX1M U311 ( .A(n148), .B(n147), .CI(n146), .CO(n38), .S(n171) );
  XNOR2X2M U312 ( .A(Kcal[7]), .B(Q_ERR[2]), .Y(n151) );
  OAI22X1M U313 ( .A0(n5), .A1(n151), .B0(n436), .B1(n7), .Y(n165) );
  XNOR2X2M U314 ( .A(n345), .B(Q_ERR[6]), .Y(n152) );
  OAI22X1M U315 ( .A0(n10), .A1(n152), .B0(n150), .B1(n356), .Y(n164) );
  XNOR2X2M U316 ( .A(Kcal[7]), .B(Q_ERR[1]), .Y(n176) );
  OAI22X1M U317 ( .A0(n5), .A1(n176), .B0(n436), .B1(n151), .Y(n181) );
  XNOR2X2M U318 ( .A(n345), .B(Q_ERR[5]), .Y(n179) );
  OAI22X1M U319 ( .A0(n10), .A1(n179), .B0(n152), .B1(n356), .Y(n180) );
  ADDFX1M U320 ( .A(n155), .B(n154), .CI(n153), .CO(n167), .S(n169) );
  XNOR2X2M U321 ( .A(n225), .B(Q_ERR[3]), .Y(n178) );
  OAI22X1M U322 ( .A0(n92), .A1(n178), .B0(n159), .B1(n149), .Y(n185) );
  XNOR2X2M U323 ( .A(n228), .B(Q_ERR[7]), .Y(n162) );
  OAI22X1M U325 ( .A0(n5), .A1(n435), .B0(n436), .B1(n161), .Y(n190) );
  XNOR2X2M U326 ( .A(Kcal[1]), .B(Q_ERR[6]), .Y(n241) );
  ADDFX2M U329 ( .A(n168), .B(n167), .CI(n166), .CO(n286), .S(n276) );
  ADDFX2M U330 ( .A(n171), .B(n170), .CI(n169), .CO(n275), .S(n274) );
  ADDFX1M U331 ( .A(n175), .B(n174), .CI(n173), .CO(n273), .S(n269) );
  XNOR2X2M U332 ( .A(Kcal[5]), .B(Q_ERR[2]), .Y(n191) );
  XNOR2X2M U334 ( .A(n345), .B(Q_ERR[4]), .Y(n192) );
  OAI22X1M U335 ( .A0(n10), .A1(n192), .B0(n179), .B1(n356), .Y(n193) );
  ADDFX1M U336 ( .A(n185), .B(n184), .CI(n183), .CO(n174), .S(n186) );
  NOR2X2M U337 ( .A(n269), .B(n268), .Y(n272) );
  ADDHX1M U339 ( .A(n190), .B(n189), .CO(n183), .S(n240) );
  XNOR2X2M U340 ( .A(n225), .B(Q_ERR[1]), .Y(n223) );
  OAI22X1M U341 ( .A0(n92), .A1(n223), .B0(n191), .B1(n149), .Y(n247) );
  XNOR2X2M U342 ( .A(n345), .B(Q_ERR[3]), .Y(n221) );
  OAI22X1M U343 ( .A0(n10), .A1(n221), .B0(n192), .B1(n356), .Y(n246) );
  NOR2X2M U345 ( .A(n267), .B(n266), .Y(n196) );
  NOR2X2M U346 ( .A(n272), .B(n196), .Y(n197) );
  XNOR2X2M U347 ( .A(Kcal[1]), .B(Q_ERR[2]), .Y(n206) );
  AND2X1M U349 ( .A(n34), .B(n199), .Y(n202) );
  NOR2BXLM U350 ( .AN(n226), .B(n356), .Y(n200) );
  AND2X1M U351 ( .A(n2), .B(n200), .Y(n201) );
  AOI21XLM U352 ( .A0(n2), .A1(n202), .B0(n201), .Y(n211) );
  NAND2BXLM U353 ( .AN(n226), .B(n345), .Y(n204) );
  OAI22X1M U354 ( .A0(n10), .A1(n376), .B0(n356), .B1(n204), .Y(n215) );
  XNOR2XLM U355 ( .A(n345), .B(n226), .Y(n205) );
  XNOR2X2M U356 ( .A(n345), .B(Q_ERR[1]), .Y(n212) );
  OAI22X1M U357 ( .A0(n10), .A1(n205), .B0(n212), .B1(n356), .Y(n214) );
  XNOR2X2M U358 ( .A(n228), .B(Q_ERR[3]), .Y(n213) );
  NOR2XLM U359 ( .A(n208), .B(n207), .Y(n210) );
  NAND2XLM U360 ( .A(n208), .B(n207), .Y(n209) );
  OAI21X1M U361 ( .A0(n211), .A1(n210), .B0(n209), .Y(n220) );
  XNOR2X2M U362 ( .A(n345), .B(Q_ERR[2]), .Y(n222) );
  XNOR2X2M U363 ( .A(Kcal[1]), .B(Q_ERR[4]), .Y(n229) );
  OAI22X1M U364 ( .A0(n243), .A1(n213), .B0(n229), .B1(n16), .Y(n230) );
  ADDHX1M U365 ( .A(n215), .B(n214), .CO(n216), .S(n208) );
  OR2X1M U366 ( .A(n217), .B(n216), .Y(n219) );
  AND2X1M U367 ( .A(n217), .B(n216), .Y(n218) );
  XNOR2XLM U369 ( .A(Kcal[5]), .B(n226), .Y(n224) );
  OAI22X1M U370 ( .A0(n92), .A1(n415), .B0(n149), .B1(n227), .Y(n245) );
  XNOR2X2M U371 ( .A(n228), .B(Q_ERR[5]), .Y(n242) );
  ADDFX1M U373 ( .A(n232), .B(n231), .CI(n230), .CO(n233), .S(n217) );
  OAI21X2M U374 ( .A0(n237), .A1(n236), .B0(n235), .Y(n265) );
  ADDFX1M U375 ( .A(n240), .B(n239), .CI(n238), .CO(n266), .S(n259) );
  ADDHX1M U377 ( .A(n245), .B(n244), .CO(n250), .S(n252) );
  ADDFX1M U378 ( .A(n248), .B(n247), .CI(n246), .CO(n239), .S(n249) );
  NOR2X2M U379 ( .A(n259), .B(n258), .Y(n262) );
  NOR2X2M U382 ( .A(n262), .B(n255), .Y(n264) );
  OAI21X2M U383 ( .A0(n262), .A1(n261), .B0(n260), .Y(n263) );
  AOI21X2M U384 ( .A0(n265), .A1(n264), .B0(n263), .Y(n284) );
  OAI21X2M U385 ( .A0(n272), .A1(n271), .B0(n270), .Y(n281) );
  NAND2X2M U386 ( .A(n276), .B(n275), .Y(n277) );
  OAI21X2M U387 ( .A0(n279), .A1(n278), .B0(n277), .Y(n280) );
  AOI21X2M U388 ( .A0(n282), .A1(n281), .B0(n280), .Y(n283) );
  OAI21X2M U389 ( .A0(n292), .A1(n291), .B0(n290), .Y(n301) );
  OAI21X2M U390 ( .A0(n299), .A1(n298), .B0(n297), .Y(n300) );
  OAI21X2M U391 ( .A0(n309), .A1(n308), .B0(n307), .Y(n318) );
  OAI21X2M U393 ( .A0(n316), .A1(n315), .B0(n314), .Y(n317) );
  XNOR2X2M U394 ( .A(Kcal[5]), .B(Q_ERR[16]), .Y(n341) );
  XNOR2X2M U396 ( .A(Kcal[7]), .B(Q_ERR[14]), .Y(n340) );
  OAI22X1M U397 ( .A0(n5), .A1(n332), .B0(n436), .B1(n340), .Y(n344) );
  XNOR2X2M U398 ( .A(n345), .B(Q_ERR[18]), .Y(n346) );
  NOR2X2M U401 ( .A(n367), .B(n366), .Y(n460) );
  XNOR2X2M U402 ( .A(Kcal[5]), .B(Q_ERR[17]), .Y(n355) );
  OAI22X1M U403 ( .A0(n92), .A1(n341), .B0(n355), .B1(n149), .Y(n361) );
  XNOR2X2M U404 ( .A(n345), .B(Q_ERR[19]), .Y(n357) );
  OAI22X1M U405 ( .A0(n10), .A1(n346), .B0(n357), .B1(n377), .Y(n359) );
  OAI22X2M U406 ( .A0(n448), .A1(n347), .B0(n11), .B1(n354), .Y(n394) );
  NOR2X4M U408 ( .A(n369), .B(n368), .Y(n477) );
  OAI22X1M U409 ( .A0(n448), .A1(n354), .B0(n11), .B1(n381), .Y(n385) );
  XNOR2X2M U410 ( .A(Kcal[5]), .B(Q_ERR[18]), .Y(n375) );
  OAI22X1M U412 ( .A0(n10), .A1(n357), .B0(n356), .B1(n376), .Y(n383) );
  ADDFX2M U413 ( .A(n365), .B(n364), .CI(n363), .CO(n370), .S(n369) );
  XNOR2X2M U419 ( .A(Kcal[5]), .B(Q_ERR[19]), .Y(n397) );
  AO21XLM U421 ( .A0(n10), .A1(n377), .B0(n376), .Y(n392) );
  XNOR2X2M U422 ( .A(Kcal[7]), .B(Q_ERR[17]), .Y(n395) );
  OAI22X1M U423 ( .A0(n5), .A1(n1), .B0(n436), .B1(n395), .Y(n400) );
  XNOR2X2M U425 ( .A(Kcal[7]), .B(Q_ERR[18]), .Y(n414) );
  OAI22X1M U426 ( .A0(n5), .A1(n395), .B0(n436), .B1(n414), .Y(n413) );
  OAI22X1M U427 ( .A0(n92), .A1(n397), .B0(n149), .B1(n415), .Y(n412) );
  OAI22X2M U428 ( .A0(n448), .A1(n398), .B0(n11), .B1(n410), .Y(n425) );
  NOR2X2M U430 ( .A(n406), .B(n405), .Y(n462) );
  OAI22X1M U433 ( .A0(n5), .A1(n414), .B0(n436), .B1(n421), .Y(n424) );
  AO21XLM U434 ( .A0(n92), .A1(n149), .B0(n415), .Y(n423) );
  OAI22X1M U435 ( .A0(n5), .A1(n421), .B0(n420), .B1(n435), .Y(n433) );
  NOR2X2M U437 ( .A(n430), .B(n429), .Y(n486) );
  AO21XLM U439 ( .A0(n5), .A1(n436), .B0(n435), .Y(n444) );
  DLY1X1M U444 ( .A(test_se), .Y(n503) );
  SDFFRQX1M \DCW_reg[8]  ( .D(DCW_MUL[28]), .SI(test_si2), .SE(n506), .CK(CLK), 
        .RN(n498), .Q(n382) );
  XNOR2X2M U3 ( .A(Kcal[7]), .B(Q_ERR[16]), .Y(n1) );
  XNOR2X2M U5 ( .A(Kcal[7]), .B(Q_ERR[9]), .Y(n3) );
  XNOR2X2M U8 ( .A(Kcal[7]), .B(Q_ERR[8]), .Y(n4) );
  XNOR2X2M U11 ( .A(Kcal[7]), .B(Q_ERR[7]), .Y(n6) );
  XNOR2X2M U12 ( .A(Kcal[7]), .B(Q_ERR[3]), .Y(n7) );
  OA22XLM U14 ( .A0(n243), .A1(Q_ERR[1]), .B0(n206), .B1(n16), .Y(n8) );
  CLKINVX1M U15 ( .A(n9), .Y(n134) );
  NOR2XLM U16 ( .A(n436), .B(n135), .Y(n12) );
  NOR2XLM U17 ( .A(n5), .B(n121), .Y(n62) );
  NOR2X1M U18 ( .A(n12), .B(n62), .Y(n9) );
  XNOR2X2M U19 ( .A(Kcal[7]), .B(Q_ERR[12]), .Y(n135) );
  OAI22X1M U22 ( .A0(n92), .A1(n375), .B0(n397), .B1(n149), .Y(n393) );
  INVX8M U28 ( .A(n76), .Y(n92) );
  ADDFXLM U30 ( .A(n344), .B(n343), .CI(n342), .CO(n364), .S(n351) );
  ADDFXLM U31 ( .A(n46), .B(n45), .CI(n44), .CO(n68), .S(n52) );
  OAI22X1M U32 ( .A0(n10), .A1(n21), .B0(n48), .B1(n356), .Y(n45) );
  NAND2X2M U33 ( .A(n367), .B(n366), .Y(n473) );
  CLKINVX32M U34 ( .A(n13), .Y(n76) );
  NAND2X12M U36 ( .A(n14), .B(n149), .Y(n13) );
  ADDFHX4M U37 ( .A(n134), .B(n133), .CI(n132), .CO(n338), .S(n140) );
  OAI22X1M U38 ( .A0(n10), .A1(n122), .B0(n136), .B1(n356), .Y(n133) );
  OAI22X2M U39 ( .A0(n243), .A1(n206), .B0(n213), .B1(n16), .Y(n207) );
  OAI22X1M U40 ( .A0(n243), .A1(n117), .B0(n131), .B1(n16), .Y(n137) );
  OAI22X1M U41 ( .A0(n243), .A1(n102), .B0(n117), .B1(n16), .Y(n123) );
  OAI22X1M U42 ( .A0(n243), .A1(n27), .B0(n26), .B1(n16), .Y(n28) );
  OAI22X1M U43 ( .A0(n243), .A1(n241), .B0(n162), .B1(n16), .Y(n189) );
  NAND2X12M U45 ( .A(Kcal[1]), .B(n16), .Y(n243) );
  CLKBUFX32M U46 ( .A(n416), .Y(n149) );
  XNOR2X8M U48 ( .A(Kcal[8]), .B(Kcal[7]), .Y(n19) );
  XOR2X8M U49 ( .A(Kcal[7]), .B(Kcal[6]), .Y(n17) );
  XNOR2X2M U50 ( .A(Kcal[7]), .B(Q_ERR[13]), .Y(n332) );
  XNOR2X2M U51 ( .A(Kcal[7]), .B(Q_ERR[15]), .Y(n360) );
  XNOR2X2M U53 ( .A(Kcal[7]), .B(Q_ERR[6]), .Y(n47) );
  XNOR2X2M U54 ( .A(Kcal[7]), .B(Q_ERR[11]), .Y(n121) );
  ADDFHXLM U55 ( .A(n394), .B(n393), .CI(n392), .CO(n409), .S(n404) );
  INVX6M U56 ( .A(n394), .Y(n379) );
  OAI22X1M U57 ( .A0(n10), .A1(n136), .B0(n333), .B1(n377), .Y(n330) );
  INVX14M U59 ( .A(n32), .Y(n10) );
  XNOR2X1M U65 ( .A(Kcal[3]), .B(Kcal[4]), .Y(n416) );
  XOR2X3M U70 ( .A(n472), .B(n471), .Y(DCW_MUL[22]) );
  AOI21X1M U74 ( .A0(n476), .A1(n468), .B0(n467), .Y(n472) );
  CLKBUFX12M U75 ( .A(n382), .Y(DCW[8]) );
  XOR2X8M U76 ( .A(n454), .B(n453), .Y(DCW_MUL[28]) );
  INVXLM U79 ( .A(Q_ERR[14]), .Y(n381) );
  CLKBUFX8M U80 ( .A(n377), .Y(n356) );
  CLKINVX1M U81 ( .A(Kcal[7]), .Y(n435) );
  INVXLM U82 ( .A(n482), .Y(n419) );
  OAI22XLM U83 ( .A0(n243), .A1(n229), .B0(n242), .B1(n16), .Y(n244) );
  OAI22XLM U89 ( .A0(n243), .A1(n162), .B0(n160), .B1(n16), .Y(n184) );
  INVXLM U90 ( .A(n8), .Y(n2) );
  INVXLM U91 ( .A(Q_ERR[15]), .Y(n398) );
  INVXLM U93 ( .A(Q_ERR[11]), .Y(n326) );
  INVXLM U95 ( .A(Kcal[1]), .Y(n15) );
  INVXLM U96 ( .A(Q_ERR[12]), .Y(n347) );
  INVXLM U97 ( .A(Q_ERR[16]), .Y(n410) );
  ADDFXLM U98 ( .A(n425), .B(n424), .CI(n423), .CO(n431), .S(n426) );
  ADDFXLM U99 ( .A(n413), .B(n412), .CI(n411), .CO(n427), .S(n408) );
  INVXLM U100 ( .A(n425), .Y(n411) );
  ADDFXLM U101 ( .A(n385), .B(n384), .CI(n383), .CO(n399), .S(n388) );
  OAI22XLM U102 ( .A0(n92), .A1(n355), .B0(n375), .B1(n149), .Y(n384) );
  ADDFXLM U103 ( .A(n446), .B(n445), .CI(n444), .CO(n450), .S(n437) );
  OAI22XLM U104 ( .A0(n448), .A1(n434), .B0(n11), .B1(n447), .Y(n445) );
  OR2X1M U105 ( .A(n438), .B(n437), .Y(n442) );
  INVXLM U106 ( .A(n440), .Y(n441) );
  CLKNAND2X2M U109 ( .A(n371), .B(n370), .Y(n469) );
  NAND2X1M U110 ( .A(n369), .B(n368), .Y(n478) );
  CLKINVX1M U111 ( .A(n455), .Y(n391) );
  INVXLM U113 ( .A(n226), .Y(n35) );
  INVXLM U116 ( .A(Q_ERR[5]), .Y(n56) );
  INVXLM U118 ( .A(n198), .Y(n199) );
  INVXLM U120 ( .A(Q_ERR[2]), .Y(n23) );
  INVXLM U122 ( .A(Q_ERR[3]), .Y(n22) );
  INVXLM U124 ( .A(Q_ERR[4]), .Y(n41) );
  INVXLM U132 ( .A(Q_ERR[7]), .Y(n86) );
  INVXLM U134 ( .A(Q_ERR[6]), .Y(n70) );
  INVXLM U135 ( .A(Q_ERR[8]), .Y(n100) );
  INVXLM U137 ( .A(Q_ERR[9]), .Y(n115) );
  OAI22XLM U138 ( .A0(n10), .A1(n48), .B0(n63), .B1(n356), .Y(n60) );
  OAI22XLM U139 ( .A0(n10), .A1(n107), .B0(n122), .B1(n377), .Y(n119) );
  ADDFXLM U140 ( .A(n195), .B(n194), .CI(n193), .CO(n188), .S(n238) );
  OAI22XLM U141 ( .A0(n92), .A1(n191), .B0(n178), .B1(n149), .Y(n194) );
  ADDFXLM U142 ( .A(n251), .B(n250), .CI(n249), .CO(n258), .S(n257) );
  OAI22XLM U144 ( .A0(n243), .A1(n242), .B0(n241), .B1(n16), .Y(n251) );
  ADDFXLM U145 ( .A(n254), .B(n253), .CI(n252), .CO(n256), .S(n234) );
  OAI22XLM U146 ( .A0(n10), .A1(n93), .B0(n107), .B1(n356), .Y(n104) );
  OAI22XLM U150 ( .A0(n10), .A1(n63), .B0(n77), .B1(n377), .Y(n74) );
  OAI22XLM U151 ( .A0(n10), .A1(n77), .B0(n93), .B1(n377), .Y(n90) );
  CLKINVX1M U152 ( .A(Kcal[5]), .Y(n415) );
  INVXLM U153 ( .A(Q_ERR[13]), .Y(n354) );
  INVXLM U154 ( .A(Q_ERR[10]), .Y(n129) );
  ADDFX1M U155 ( .A(n69), .B(n68), .CI(n67), .CO(n293), .S(n289) );
  NAND2XLM U156 ( .A(n313), .B(n312), .Y(n314) );
  NOR2X2M U160 ( .A(n313), .B(n312), .Y(n316) );
  ADDFXLM U165 ( .A(n188), .B(n187), .CI(n186), .CO(n268), .S(n267) );
  NOR2X1M U190 ( .A(n274), .B(n273), .Y(n172) );
  AOI21X1M U195 ( .A0(n220), .A1(n219), .B0(n218), .Y(n237) );
  NOR2X3M U197 ( .A(n306), .B(n305), .Y(n309) );
  INVXLM U202 ( .A(Q_ERR[17]), .Y(n422) );
  ADDFXLM U207 ( .A(n380), .B(n379), .CI(n378), .CO(n403), .S(n386) );
  ADDFXLM U208 ( .A(n401), .B(n400), .CI(n399), .CO(n407), .S(n402) );
  ADDFXLM U209 ( .A(n350), .B(n349), .CI(n348), .CO(n358), .S(n353) );
  OAI22XLM U210 ( .A0(n92), .A1(n327), .B0(n341), .B1(n149), .Y(n349) );
  OAI22XLM U211 ( .A0(n10), .A1(n333), .B0(n346), .B1(n377), .Y(n343) );
  ADDFXLM U212 ( .A(n331), .B(n330), .CI(n329), .CO(n352), .S(n337) );
  NOR2X1M U213 ( .A(n55), .B(n292), .Y(n85) );
  CLKBUFX8M U223 ( .A(n420), .Y(n436) );
  INVXLM U237 ( .A(Q_ERR[18]), .Y(n434) );
  INVXLM U240 ( .A(Q_ERR[19]), .Y(n447) );
  ADDFXLM U255 ( .A(n433), .B(n432), .CI(n431), .CO(n438), .S(n430) );
  INVXLM U256 ( .A(n446), .Y(n432) );
  ADDFXLM U264 ( .A(n428), .B(n427), .CI(n426), .CO(n429), .S(n417) );
  ADDFXLM U271 ( .A(n409), .B(n408), .CI(n407), .CO(n418), .S(n406) );
  ADDFXLM U282 ( .A(n388), .B(n387), .CI(n386), .CO(n389), .S(n371) );
  ADDFXLM U292 ( .A(n404), .B(n403), .CI(n402), .CO(n405), .S(n390) );
  ADDFX1M U299 ( .A(n339), .B(n338), .CI(n337), .CO(n366), .S(n313) );
  ADDFX1M U302 ( .A(n353), .B(n352), .CI(n351), .CO(n368), .S(n367) );
  NAND2XLM U307 ( .A(n438), .B(n437), .Y(n440) );
  NAND2X1M U324 ( .A(n430), .B(n429), .Y(n487) );
  INVXLM U327 ( .A(n473), .Y(n474) );
  NAND2XLM U328 ( .A(n418), .B(n417), .Y(n482) );
  OR2X1M U333 ( .A(n418), .B(n417), .Y(n483) );
  NAND2X1M U338 ( .A(n406), .B(n405), .Y(n463) );
  NAND2XLM U344 ( .A(n390), .B(n389), .Y(n455) );
  NAND2XLM U348 ( .A(n468), .B(n470), .Y(n374) );
  AOI21X1M U368 ( .A0(n467), .A1(n470), .B0(n372), .Y(n373) );
  INVXLM U372 ( .A(n469), .Y(n372) );
  OR2X1M U376 ( .A(n390), .B(n389), .Y(n456) );
  CLKINVX1M U380 ( .A(n459), .Y(n476) );
  INVXLM U381 ( .A(n460), .Y(n475) );
  XOR2XLM U392 ( .A(n490), .B(n489), .Y(DCW_MUL[26]) );
  NAND2XLM U395 ( .A(n488), .B(n487), .Y(n489) );
  INVXLM U399 ( .A(n486), .Y(n488) );
  NAND2XLM U400 ( .A(n452), .B(n451), .Y(n453) );
  NAND2XLM U407 ( .A(n450), .B(n449), .Y(n451) );
  NAND2XLM U411 ( .A(n470), .B(n469), .Y(n471) );
  XNOR2XLM U414 ( .A(n485), .B(n484), .Y(DCW_MUL[25]) );
  NAND2XLM U415 ( .A(n483), .B(n482), .Y(n484) );
  CLKBUFX1M U416 ( .A(n503), .Y(n504) );
  XOR2XLM U417 ( .A(n466), .B(n465), .Y(DCW_MUL[24]) );
  NAND2XLM U418 ( .A(n464), .B(n463), .Y(n465) );
  INVXLM U420 ( .A(n462), .Y(n464) );
  CLKBUFX1M U424 ( .A(n503), .Y(n505) );
  XNOR2XLM U429 ( .A(n458), .B(n457), .Y(DCW_MUL[23]) );
  NAND2XLM U431 ( .A(n456), .B(n455), .Y(n457) );
  CLKBUFX3M U432 ( .A(RST), .Y(n498) );
  CLKBUFX1M U436 ( .A(n503), .Y(n506) );
  XNOR2XLM U438 ( .A(n476), .B(n461), .Y(DCW_MUL[20]) );
  NAND2XLM U440 ( .A(n475), .B(n473), .Y(n461) );
endmodule


module CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 ( CLK, 
        RST, DSM_out, FCW, FRAC_IN, INTEGER_IN, MMD_CNTRL, test_si, test_se );
  input [26:0] FCW;
  output [19:0] FRAC_IN;
  output [6:0] INTEGER_IN;
  output [7:0] MMD_CNTRL;
  input CLK, RST, DSM_out, test_si, test_se;
  wire   n74, n75, n76, n77, n78, n79, n80, n4, N1, N2, N3, N4, N5, N6, N7, N8,
         n2, n5, n6, n7, n8, n9, n10, n19, n21, n23, n25, n27, n29, n31, n33,
         n35, n37, n39, n41, n43, n45, n47, n49, n51, n53, n55, n57, n59, n61,
         n63, n65, n67, n69, n71, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n110, n111, n112, n113, n114, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n1;

  SDFFSX1M \INTEGER_IN_reg[6]  ( .D(n71), .SI(n82), .SE(n116), .CK(CLK), .SN(
        n2), .Q(n81), .QN(n74) );
  SDFFSX1M \INTEGER_IN_reg[5]  ( .D(n69), .SI(n83), .SE(n111), .CK(CLK), .SN(
        n2), .Q(n82), .QN(n75) );
  SDFFSX1M \INTEGER_IN_reg[4]  ( .D(n67), .SI(n84), .SE(n118), .CK(CLK), .SN(
        n2), .Q(n83), .QN(n76) );
  SDFFSX1M \INTEGER_IN_reg[3]  ( .D(n65), .SI(n85), .SE(n111), .CK(CLK), .SN(
        n2), .Q(n84), .QN(n77) );
  SDFFSX1M \INTEGER_IN_reg[2]  ( .D(n63), .SI(n86), .SE(n110), .CK(CLK), .SN(
        n2), .Q(n85), .QN(n78) );
  SDFFSX1M \INTEGER_IN_reg[1]  ( .D(n61), .SI(n87), .SE(n127), .CK(CLK), .SN(
        n2), .Q(n86), .QN(n79) );
  SDFFSX1M \INTEGER_IN_reg[0]  ( .D(n59), .SI(n88), .SE(n110), .CK(CLK), .SN(
        n2), .Q(n87), .QN(n80) );
  SDFFSX1M \FRAC_IN_reg[19]  ( .D(n57), .SI(n89), .SE(n119), .CK(CLK), .SN(n2), 
        .Q(n88), .QN(FRAC_IN[19]) );
  SDFFSX1M \FRAC_IN_reg[18]  ( .D(n55), .SI(n90), .SE(n118), .CK(CLK), .SN(n2), 
        .Q(n89), .QN(FRAC_IN[18]) );
  SDFFSX1M \FRAC_IN_reg[17]  ( .D(n53), .SI(n91), .SE(n112), .CK(CLK), .SN(n2), 
        .Q(n90), .QN(FRAC_IN[17]) );
  SDFFSX1M \FRAC_IN_reg[16]  ( .D(n51), .SI(n92), .SE(n123), .CK(CLK), .SN(n2), 
        .Q(n91), .QN(FRAC_IN[16]) );
  SDFFSX1M \FRAC_IN_reg[15]  ( .D(n49), .SI(n93), .SE(n110), .CK(CLK), .SN(n2), 
        .Q(n92), .QN(FRAC_IN[15]) );
  SDFFSX1M \FRAC_IN_reg[14]  ( .D(n47), .SI(n94), .SE(n123), .CK(CLK), .SN(n2), 
        .Q(n93), .QN(FRAC_IN[14]) );
  SDFFSX1M \FRAC_IN_reg[13]  ( .D(n45), .SI(n95), .SE(n122), .CK(CLK), .SN(n2), 
        .Q(n94), .QN(FRAC_IN[13]) );
  SDFFSX1M \FRAC_IN_reg[12]  ( .D(n43), .SI(n96), .SE(n124), .CK(CLK), .SN(n2), 
        .Q(n95), .QN(FRAC_IN[12]) );
  SDFFSX1M \FRAC_IN_reg[11]  ( .D(n41), .SI(n97), .SE(n122), .CK(CLK), .SN(n2), 
        .Q(n96), .QN(FRAC_IN[11]) );
  SDFFSX1M \FRAC_IN_reg[10]  ( .D(n39), .SI(n98), .SE(n116), .CK(CLK), .SN(n2), 
        .Q(n97), .QN(FRAC_IN[10]) );
  SDFFSX1M \FRAC_IN_reg[9]  ( .D(n37), .SI(n99), .SE(n111), .CK(CLK), .SN(n2), 
        .Q(n98), .QN(FRAC_IN[9]) );
  SDFFSX1M \FRAC_IN_reg[8]  ( .D(n35), .SI(n100), .SE(n124), .CK(CLK), .SN(n2), 
        .Q(n99), .QN(FRAC_IN[8]) );
  SDFFSX1M \FRAC_IN_reg[7]  ( .D(n33), .SI(n101), .SE(n121), .CK(CLK), .SN(n2), 
        .Q(n100), .QN(FRAC_IN[7]) );
  SDFFSX1M \FRAC_IN_reg[6]  ( .D(n31), .SI(n102), .SE(n118), .CK(CLK), .SN(n2), 
        .Q(n101), .QN(FRAC_IN[6]) );
  SDFFSX1M \FRAC_IN_reg[5]  ( .D(n29), .SI(n103), .SE(n121), .CK(CLK), .SN(n2), 
        .Q(n102), .QN(FRAC_IN[5]) );
  SDFFSX1M \FRAC_IN_reg[4]  ( .D(n27), .SI(n104), .SE(n120), .CK(CLK), .SN(n2), 
        .Q(n103), .QN(FRAC_IN[4]) );
  SDFFSX1M \FRAC_IN_reg[3]  ( .D(n25), .SI(n105), .SE(n125), .CK(CLK), .SN(n2), 
        .Q(n104), .QN(FRAC_IN[3]) );
  SDFFSX1M \FRAC_IN_reg[2]  ( .D(n23), .SI(n106), .SE(n120), .CK(CLK), .SN(n2), 
        .Q(n105), .QN(FRAC_IN[2]) );
  SDFFSX1M \FRAC_IN_reg[1]  ( .D(n21), .SI(n107), .SE(n112), .CK(CLK), .SN(n2), 
        .Q(n106), .QN(FRAC_IN[1]) );
  SDFFSX1M \FRAC_IN_reg[0]  ( .D(n19), .SI(test_si), .SE(n117), .CK(CLK), .SN(
        n2), .Q(n107), .QN(FRAC_IN[0]) );
  SDFFRHQX8M \MMD_CNTRL_reg[2]  ( .D(N3), .SI(MMD_CNTRL[1]), .SE(n124), .CK(
        CLK), .RN(RST), .Q(MMD_CNTRL[2]) );
  SDFFRHQX8M \MMD_CNTRL_reg[1]  ( .D(N2), .SI(MMD_CNTRL[0]), .SE(n117), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[1]) );
  SDFFRHQX8M \MMD_CNTRL_reg[3]  ( .D(N4), .SI(MMD_CNTRL[2]), .SE(n123), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[3]) );
  SDFFRHQX8M \MMD_CNTRL_reg[4]  ( .D(N5), .SI(MMD_CNTRL[3]), .SE(n120), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[4]) );
  SDFFRHQX8M \MMD_CNTRL_reg[5]  ( .D(N6), .SI(MMD_CNTRL[4]), .SE(n117), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[5]) );
  SDFFRHQX8M \MMD_CNTRL_reg[7]  ( .D(N8), .SI(MMD_CNTRL[6]), .SE(n122), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[7]) );
  SDFFRHQX8M \MMD_CNTRL_reg[6]  ( .D(N7), .SI(MMD_CNTRL[5]), .SE(n119), .CK(
        CLK), .RN(n2), .Q(MMD_CNTRL[6]) );
  OA21XLM U3 ( .A0(n5), .A1(n77), .B0(n9), .Y(N4) );
  CLKBUFX12M U5 ( .A(RST), .Y(n2) );
  AOI2B1XLM U36 ( .A1N(n76), .A0(n9), .B0(n8), .Y(N5) );
  AOI2B1XLM U37 ( .A1N(n79), .A0(n7), .B0(n6), .Y(N2) );
  OA21XLM U38 ( .A0(n80), .A1(DSM_out), .B0(n7), .Y(N1) );
  NOR2BX2M U77 ( .AN(n76), .B(n9), .Y(n8) );
  DLY1X1M U82 ( .A(n127), .Y(n112) );
  INVXLM U84 ( .A(n125), .Y(n113) );
  INVXLM U85 ( .A(n125), .Y(n114) );
  DLY1X1M U87 ( .A(n125), .Y(n116) );
  DLY1X1M U90 ( .A(n125), .Y(n119) );
  DLY1X1M U94 ( .A(n125), .Y(n123) );
  DLY1X1M U95 ( .A(n125), .Y(n124) );
  INVXLM U96 ( .A(n113), .Y(n126) );
  INVXLM U97 ( .A(n114), .Y(n127) );
  INVXLM U98 ( .A(n113), .Y(n128) );
  SDFFRQX1M \MMD_CNTRL_reg[0]  ( .D(N1), .SI(n81), .SE(n121), .CK(CLK), .RN(
        RST), .Q(n4) );
  INVXLM U4 ( .A(n4), .Y(n1) );
  CLKINVX8M U6 ( .A(n1), .Y(MMD_CNTRL[0]) );
  NAND2X1M U7 ( .A(n8), .B(n75), .Y(n10) );
  NAND2X1M U8 ( .A(n5), .B(n77), .Y(n9) );
  NAND2XLM U9 ( .A(n80), .B(DSM_out), .Y(n7) );
  AND2X1M U10 ( .A(n78), .B(n6), .Y(n5) );
  AND3X1M U11 ( .A(n80), .B(DSM_out), .C(n79), .Y(n6) );
  AOI2B1XLM U12 ( .A1N(n74), .A0(n10), .B0(N8), .Y(N7) );
  NOR2BX1M U13 ( .AN(n74), .B(n10), .Y(N8) );
  OA21XLM U14 ( .A0(n8), .A1(n75), .B0(n10), .Y(N6) );
  AOI2BB1XLM U15 ( .A0N(n78), .A1N(n6), .B0(n5), .Y(N3) );
  CLKBUFX1M U16 ( .A(n119), .Y(n117) );
  INVXLM U17 ( .A(FCW[0]), .Y(n19) );
  INVXLM U18 ( .A(FCW[1]), .Y(n21) );
  INVXLM U19 ( .A(FCW[2]), .Y(n23) );
  CLKBUFX2M U20 ( .A(test_se), .Y(n125) );
  INVXLM U21 ( .A(FCW[3]), .Y(n25) );
  CLKBUFX1M U22 ( .A(n112), .Y(n120) );
  INVXLM U23 ( .A(FCW[4]), .Y(n27) );
  INVXLM U24 ( .A(FCW[5]), .Y(n29) );
  INVXLM U25 ( .A(FCW[6]), .Y(n31) );
  CLKBUFX1M U26 ( .A(n126), .Y(n121) );
  INVXLM U27 ( .A(FCW[7]), .Y(n33) );
  INVXLM U28 ( .A(FCW[8]), .Y(n35) );
  INVXLM U29 ( .A(FCW[9]), .Y(n37) );
  INVXLM U30 ( .A(FCW[10]), .Y(n39) );
  INVXLM U31 ( .A(FCW[11]), .Y(n41) );
  INVXLM U32 ( .A(FCW[12]), .Y(n43) );
  CLKBUFX1M U33 ( .A(n126), .Y(n122) );
  INVXLM U34 ( .A(FCW[13]), .Y(n45) );
  INVXLM U35 ( .A(FCW[14]), .Y(n47) );
  INVXLM U39 ( .A(FCW[15]), .Y(n49) );
  INVXLM U40 ( .A(FCW[16]), .Y(n51) );
  INVXLM U41 ( .A(FCW[17]), .Y(n53) );
  INVXLM U42 ( .A(FCW[18]), .Y(n55) );
  INVXLM U43 ( .A(FCW[19]), .Y(n57) );
  INVXLM U44 ( .A(FCW[20]), .Y(n59) );
  INVXLM U45 ( .A(FCW[21]), .Y(n61) );
  CLKBUFX1M U46 ( .A(n128), .Y(n110) );
  INVXLM U47 ( .A(FCW[22]), .Y(n63) );
  INVXLM U48 ( .A(FCW[23]), .Y(n65) );
  CLKBUFX1M U49 ( .A(n116), .Y(n118) );
  INVXLM U50 ( .A(FCW[24]), .Y(n67) );
  CLKBUFX1M U51 ( .A(n128), .Y(n111) );
  INVXLM U52 ( .A(FCW[25]), .Y(n69) );
  INVXLM U53 ( .A(FCW[26]), .Y(n71) );
endmodule


module LMS_in_width4_K_width9_err_width20_test_1 ( CLK, RST, TDC_OUT, Q_ERR, 
        Kcal_UNSIGN, OV_FL, UN_FL, test_si, test_so, test_se );
  input [3:0] TDC_OUT;
  input [19:0] Q_ERR;
  output [8:0] Kcal_UNSIGN;
  input CLK, RST, test_si, test_se;
  output OV_FL, UN_FL, test_so;
  wire   n528, CORR_OUT_24, N30, N31, N32, N34, N36, N38, N40, N42, N44, N46,
         N47, N48, N49, N50, N51, N52, N53, \DP_OP_6J1_122_2730/n473 ,
         \DP_OP_6J1_122_2730/n465 , \DP_OP_6J1_122_2730/n457 ,
         \DP_OP_6J1_122_2730/n449 , \DP_OP_6J1_122_2730/n441 ,
         \DP_OP_6J1_122_2730/n433 , \DP_OP_6J1_122_2730/n425 ,
         \DP_OP_6J1_122_2730/n417 , \DP_OP_6J1_122_2730/n348 , n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n14, n15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n525, n526,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n543, n544, n545, n546, n548, n549, n550, n551, n552, n1, n2;
  wire   [15:0] CORR_OUT;
  assign test_so = \DP_OP_6J1_122_2730/n348 ;

  SDFFSX1M \CORR_OUT_reg[3]  ( .D(n17), .SI(n538), .SE(n549), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n465 ), .QN(CORR_OUT[3]) );
  SDFFSX1M \CORR_OUT_reg[7]  ( .D(n11), .SI(n536), .SE(n548), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n449 ), .QN(CORR_OUT[7]) );
  SDFFSX1M \CORR_OUT_reg[5]  ( .D(n18), .SI(n537), .SE(n550), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n457 ), .QN(CORR_OUT[5]) );
  SDFFSX1M \CORR_OUT_reg[15]  ( .D(n10), .SI(n532), .SE(n551), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n417 ), .QN(CORR_OUT[15]) );
  SDFFSX1M \CORR_OUT_reg[13]  ( .D(n9), .SI(n533), .SE(n548), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n425 ), .QN(CORR_OUT[13]) );
  SDFFSX1M \CORR_OUT_reg[9]  ( .D(n8), .SI(n535), .SE(n548), .CK(CLK), .SN(RST), .Q(\DP_OP_6J1_122_2730/n441 ), .QN(CORR_OUT[9]) );
  SDFFSX1M \CORR_OUT_reg[11]  ( .D(n7), .SI(n534), .SE(n544), .CK(CLK), .SN(
        RST), .Q(\DP_OP_6J1_122_2730/n433 ), .QN(CORR_OUT[11]) );
  SDFFSX1M \CORR_OUT_reg[24]  ( .D(n6), .SI(n529), .SE(n552), .CK(CLK), .SN(
        n526), .Q(\DP_OP_6J1_122_2730/n348 ), .QN(CORR_OUT_24) );
  SDFFRX1M \CORR_OUT_reg[0]  ( .D(N30), .SI(test_si), .SE(n545), .CK(CLK), 
        .RN(n526), .Q(CORR_OUT[0]), .QN(\DP_OP_6J1_122_2730/n473 ) );
  SDFFRX1M \CORR_OUT_reg[1]  ( .D(N31), .SI(\DP_OP_6J1_122_2730/n473 ), .SE(
        n543), .CK(CLK), .RN(n526), .Q(CORR_OUT[1]), .QN(n539) );
  SDFFRX1M \CORR_OUT_reg[2]  ( .D(N32), .SI(n539), .SE(n552), .CK(CLK), .RN(
        n526), .Q(CORR_OUT[2]), .QN(n538) );
  SDFFRX1M \CORR_OUT_reg[4]  ( .D(N34), .SI(\DP_OP_6J1_122_2730/n465 ), .SE(
        n550), .CK(CLK), .RN(RST), .Q(CORR_OUT[4]), .QN(n537) );
  SDFFRX1M \CORR_OUT_reg[6]  ( .D(N36), .SI(\DP_OP_6J1_122_2730/n457 ), .SE(
        n551), .CK(CLK), .RN(n526), .Q(CORR_OUT[6]), .QN(n536) );
  SDFFRX1M \CORR_OUT_reg[10]  ( .D(N40), .SI(\DP_OP_6J1_122_2730/n441 ), .SE(
        n545), .CK(CLK), .RN(n526), .Q(CORR_OUT[10]), .QN(n534) );
  SDFFRX1M \CORR_OUT_reg[8]  ( .D(N38), .SI(\DP_OP_6J1_122_2730/n449 ), .SE(
        n549), .CK(CLK), .RN(RST), .Q(CORR_OUT[8]), .QN(n535) );
  SDFFRX1M \CORR_OUT_reg[12]  ( .D(N42), .SI(\DP_OP_6J1_122_2730/n433 ), .SE(
        n546), .CK(CLK), .RN(RST), .Q(CORR_OUT[12]), .QN(n533) );
  SDFFRX1M \CORR_OUT_reg[18]  ( .D(N48), .SI(n265), .SE(n550), .CK(CLK), .RN(
        n526), .Q(Kcal_UNSIGN[2]), .QN(n530) );
  SDFFRX1M \CORR_OUT_reg[16]  ( .D(N46), .SI(CORR_OUT[15]), .SE(n546), .CK(CLK), .RN(n526), .Q(Kcal_UNSIGN[0]), .QN(n531) );
  SDFFRX1M \CORR_OUT_reg[14]  ( .D(N44), .SI(\DP_OP_6J1_122_2730/n425 ), .SE(
        test_se), .CK(CLK), .RN(n526), .Q(CORR_OUT[14]), .QN(n532) );
  SDFFRHQX8M \CORR_OUT_reg[21]  ( .D(N51), .SI(n282), .SE(n551), .CK(CLK), 
        .RN(n526), .Q(Kcal_UNSIGN[5]) );
  SDFFRHQX8M \CORR_OUT_reg[17]  ( .D(N47), .SI(n531), .SE(n549), .CK(CLK), 
        .RN(n526), .Q(Kcal_UNSIGN[1]) );
  SDFFRX1M \CORR_OUT_reg[23]  ( .D(N53), .SI(n15), .SE(n544), .CK(CLK), .RN(
        n526), .Q(n529), .QN(n525) );
  SDFFRQX2M \CORR_OUT_reg[22]  ( .D(N52), .SI(n19), .SE(n543), .CK(CLK), .RN(
        n526), .Q(Kcal_UNSIGN[6]) );
  SDFFRQX2M \CORR_OUT_reg[20]  ( .D(N50), .SI(n274), .SE(n544), .CK(CLK), .RN(
        n526), .Q(Kcal_UNSIGN[4]) );
  SDFFRQX4M \CORR_OUT_reg[19]  ( .D(N49), .SI(n530), .SE(n545), .CK(CLK), .RN(
        n526), .Q(Kcal_UNSIGN[3]) );
  INVX2M U3 ( .A(n316), .Y(n457) );
  NOR2X2M U4 ( .A(n379), .B(n340), .Y(n358) );
  NAND2X2M U6 ( .A(n392), .B(n281), .Y(n372) );
  NOR2X2M U7 ( .A(n385), .B(n386), .Y(n392) );
  NAND2X2M U8 ( .A(n267), .B(n266), .Y(n384) );
  NOR2X4M U10 ( .A(n223), .B(n222), .Y(n408) );
  NOR2X4M U11 ( .A(n121), .B(n120), .Y(n453) );
  INVX2M U12 ( .A(Kcal_UNSIGN[4]), .Y(n282) );
  MXI2XLM U13 ( .A(n183), .B(n184), .S0(n154), .Y(n159) );
  MXI2X1M U14 ( .A(n203), .B(n204), .S0(n174), .Y(n179) );
  MXI2X1M U15 ( .A(n91), .B(n92), .S0(n57), .Y(n62) );
  MXI2X1M U16 ( .A(n163), .B(n164), .S0(n134), .Y(n139) );
  MXI2X1M U17 ( .A(n183), .B(n184), .S0(n142), .Y(n151) );
  MXI2X1M U19 ( .A(n203), .B(n204), .S0(n162), .Y(n171) );
  MXI2X1M U20 ( .A(n4), .B(n25), .S0(n76), .Y(n57) );
  MXI2X1M U21 ( .A(n254), .B(n1), .S0(n35), .Y(n36) );
  MXI2X2M U22 ( .A(TDC_OUT[1]), .B(n25), .S0(n233), .Y(n194) );
  CLKINVX1M U26 ( .A(Q_ERR[3]), .Y(n24) );
  CLKINVX1M U27 ( .A(Q_ERR[11]), .Y(n109) );
  INVX6M U28 ( .A(n34), .Y(n253) );
  INVX4M U29 ( .A(n34), .Y(n234) );
  MXI2X1M U31 ( .A(n163), .B(n164), .S0(n110), .Y(n131) );
  AOI21XLM U32 ( .A0(n400), .A1(n393), .B0(n338), .Y(n339) );
  MXI2X1M U33 ( .A(n257), .B(n256), .S0(n255), .Y(n264) );
  CLKINVX1M U34 ( .A(Kcal_UNSIGN[3]), .Y(n274) );
  NOR2X2M U36 ( .A(n123), .B(n122), .Y(n458) );
  NOR2X2M U37 ( .A(n219), .B(n218), .Y(n295) );
  AOI21XLM U38 ( .A0(n350), .A1(n374), .B0(n328), .Y(n329) );
  NAND2X2M U40 ( .A(n485), .B(n217), .Y(n305) );
  NAND2XLM U42 ( .A(n367), .B(n366), .Y(n368) );
  NAND2XLM U43 ( .A(n423), .B(n422), .Y(n424) );
  XNOR2XLM U44 ( .A(n382), .B(n381), .Y(n383) );
  XNOR2XLM U45 ( .A(n303), .B(n302), .Y(n304) );
  NAND2XLM U46 ( .A(n5), .B(n12), .Y(n14) );
  NAND2XLM U47 ( .A(n312), .B(n498), .Y(n9) );
  BUFX10M U48 ( .A(n232), .Y(n398) );
  NAND2X2M U50 ( .A(n464), .B(n404), .Y(n308) );
  OR2X2M U51 ( .A(n372), .B(n285), .Y(n287) );
  CLKINVX4M U52 ( .A(n372), .Y(n347) );
  NAND2X2M U54 ( .A(n313), .B(n384), .Y(n314) );
  NAND2X2M U58 ( .A(n416), .B(n415), .Y(n417) );
  NAND2X2M U61 ( .A(n473), .B(n472), .Y(n474) );
  INVX2M U65 ( .A(n392), .Y(n379) );
  INVX2M U71 ( .A(n399), .Y(n338) );
  NAND2X1M U74 ( .A(n354), .B(n353), .Y(n355) );
  NAND2BX2M U82 ( .AN(n128), .B(n25), .Y(n90) );
  NAND2BX2M U83 ( .AN(n252), .B(TDC_OUT[0]), .Y(n202) );
  BUFX14M U88 ( .A(TDC_OUT[0]), .Y(n25) );
  XNOR2X2M U89 ( .A(n356), .B(n355), .Y(n357) );
  NAND2X2M U90 ( .A(n304), .B(n498), .Y(n8) );
  XNOR2X2M U93 ( .A(n369), .B(n368), .Y(n370) );
  XNOR2X2M U94 ( .A(n335), .B(n334), .Y(n336) );
  INVX6M U102 ( .A(n294), .Y(n492) );
  NAND2X2M U104 ( .A(n347), .B(n374), .Y(n330) );
  INVX2M U118 ( .A(n385), .Y(n313) );
  NAND2X1M U136 ( .A(n374), .B(n373), .Y(n375) );
  MXI2X1M U153 ( .A(n254), .B(n253), .S0(n188), .Y(n189) );
  MXI2X1M U155 ( .A(n1), .B(n4), .S0(n168), .Y(n158) );
  MXI2X1M U157 ( .A(n1), .B(n4), .S0(n188), .Y(n178) );
  MXI2X1M U158 ( .A(n2), .B(n4), .S0(n76), .Y(n61) );
  NAND2BX2M U159 ( .AN(n233), .B(n25), .Y(n182) );
  MXI2X1M U164 ( .A(n253), .B(n4), .S0(n53), .Y(n46) );
  AND2X1M U166 ( .A(n22), .B(Q_ERR[1]), .Y(n23) );
  INVX2M U167 ( .A(CORR_OUT_24), .Y(Kcal_UNSIGN[8]) );
  INVX2M U168 ( .A(Kcal_UNSIGN[6]), .Y(n15) );
  NAND2X2M U174 ( .A(n315), .B(n498), .Y(n10) );
  OAI21X2M U175 ( .A0(n398), .A1(n364), .B0(n363), .Y(n369) );
  XOR2X2M U176 ( .A(n398), .B(n314), .Y(n315) );
  AOI21X4M U179 ( .A0(n294), .A1(n231), .B0(n230), .Y(n232) );
  OAI21X6M U180 ( .A0(n316), .A1(n127), .B0(n126), .Y(n294) );
  AOI21X2M U184 ( .A0(n227), .A1(n406), .B0(n226), .Y(n228) );
  NOR2X4M U186 ( .A(n478), .B(n479), .Y(n485) );
  ADDFX2M U192 ( .A(\DP_OP_6J1_122_2730/n425 ), .B(n200), .CI(n199), .CO(n242), 
        .S(n205) );
  ADDFX2M U193 ( .A(n238), .B(n237), .CI(n236), .CO(n250), .S(n241) );
  ADDFX2M U194 ( .A(\DP_OP_6J1_122_2730/n465 ), .B(n88), .CI(n87), .CO(n104), 
        .S(n93) );
  ADDFX2M U195 ( .A(n80), .B(n79), .CI(n78), .CO(n94), .S(n83) );
  MXI2X1M U197 ( .A(n183), .B(n184), .S0(n158), .Y(n177) );
  CLKMX2X2M U198 ( .A(n204), .B(n203), .S0(n254), .Y(n236) );
  MXI2X1M U199 ( .A(n91), .B(n92), .S0(n61), .Y(n85) );
  MXI2X1M U200 ( .A(n257), .B(n256), .S0(n202), .Y(n237) );
  MXI2X1M U203 ( .A(n247), .B(n248), .S0(n235), .Y(n251) );
  MXI2X1M U205 ( .A(n203), .B(n204), .S0(n189), .Y(n207) );
  MXI2X1M U206 ( .A(n203), .B(n204), .S0(n178), .Y(n197) );
  MXI2X1M U208 ( .A(n183), .B(n184), .S0(n169), .Y(n187) );
  MXI2X1M U217 ( .A(n143), .B(n144), .S0(n129), .Y(n147) );
  MXI2X1M U220 ( .A(n257), .B(n256), .S0(n244), .Y(n262) );
  NAND2BX2M U225 ( .AN(n168), .B(n25), .Y(n142) );
  MXI2X1M U226 ( .A(n254), .B(n1), .S0(n128), .Y(n129) );
  MXI2X1M U227 ( .A(n254), .B(n2), .S0(n168), .Y(n169) );
  MXI2X1M U228 ( .A(n254), .B(n1), .S0(n233), .Y(n235) );
  MXI2X1M U231 ( .A(n4), .B(n25), .S0(n53), .Y(n33) );
  NOR2X6M U233 ( .A(n295), .B(n471), .Y(n404) );
  XNOR2X2M U234 ( .A(n418), .B(n417), .Y(n419) );
  NOR2X4M U235 ( .A(n301), .B(n493), .Y(n217) );
  AO21X2M U236 ( .A0(Q_ERR[6]), .A1(Q_ERR[5]), .B0(n63), .Y(n112) );
  AO21X2M U237 ( .A0(Q_ERR[18]), .A1(Q_ERR[17]), .B0(n201), .Y(n256) );
  AO21X2M U238 ( .A0(Q_ERR[12]), .A1(Q_ERR[11]), .B0(n141), .Y(n184) );
  MXI2X1M U239 ( .A(n111), .B(n112), .S0(n82), .Y(n87) );
  MXI2X1M U240 ( .A(n4), .B(n25), .S0(n96), .Y(n82) );
  AO21X2M U241 ( .A0(Q_ERR[4]), .A1(Q_ERR[3]), .B0(n49), .Y(n92) );
  NOR2X2M U242 ( .A(n271), .B(n270), .Y(n337) );
  NOR2X2M U243 ( .A(n52), .B(n51), .Y(n421) );
  NAND2X2M U244 ( .A(n449), .B(n125), .Y(n127) );
  AO21X2M U245 ( .A0(Q_ERR[10]), .A1(Q_ERR[9]), .B0(n109), .Y(n164) );
  AO21X2M U246 ( .A0(Q_ERR[8]), .A1(Q_ERR[7]), .B0(n89), .Y(n144) );
  AOI21X4M U247 ( .A0(n427), .A1(n75), .B0(n74), .Y(n316) );
  NOR2X2M U248 ( .A(n117), .B(n116), .Y(n324) );
  OR2X1M U250 ( .A(n40), .B(n39), .Y(n42) );
  CLKINVX1M U252 ( .A(Q_ERR[0]), .Y(n35) );
  MXI2X1M U253 ( .A(n4), .B(n25), .S0(n188), .Y(n174) );
  AO21X2M U254 ( .A0(Q_ERR[14]), .A1(Q_ERR[13]), .B0(n161), .Y(n204) );
  MXI2X1M U255 ( .A(n247), .B(n248), .S0(n182), .Y(n191) );
  AO21X2M U256 ( .A0(Q_ERR[16]), .A1(Q_ERR[15]), .B0(n181), .Y(n248) );
  MXI2X1M U257 ( .A(n247), .B(n248), .S0(n194), .Y(n199) );
  MXI2X1M U258 ( .A(n111), .B(n112), .S0(n64), .Y(n79) );
  NOR2X2M U259 ( .A(n279), .B(n337), .Y(n281) );
  MXI2X1M U260 ( .A(TDC_OUT[2]), .B(n4), .S0(n252), .Y(n244) );
  NAND2XLM U261 ( .A(n32), .B(n23), .Y(n30) );
  NAND2X2M U263 ( .A(n404), .B(n227), .Y(n229) );
  OR2X1M U265 ( .A(n15), .B(Kcal_UNSIGN[7]), .Y(n354) );
  NAND2XLM U266 ( .A(n289), .B(n288), .Y(n290) );
  MXI2X1M U270 ( .A(n4), .B(n25), .S0(n148), .Y(n134) );
  MXI2X1M U271 ( .A(n254), .B(n253), .S0(n252), .Y(n255) );
  INVX8M U294 ( .A(TDC_OUT[2]), .Y(n34) );
  MXI2X1M U295 ( .A(n253), .B(n4), .S0(n35), .Y(n21) );
  MXI2X1M U296 ( .A(n44), .B(n45), .S0(n21), .Y(n27) );
  AO21X2M U299 ( .A0(Q_ERR[2]), .A1(Q_ERR[1]), .B0(n24), .Y(n66) );
  OAI21X4M U300 ( .A0(Q_ERR[2]), .A1(Q_ERR[1]), .B0(n24), .Y(n65) );
  XNOR2X4M U301 ( .A(Q_ERR[2]), .B(Q_ERR[1]), .Y(n53) );
  NAND2X2M U302 ( .A(n28), .B(n27), .Y(n29) );
  OAI21X2M U303 ( .A0(n31), .A1(n30), .B0(n29), .Y(n43) );
  MXI2X1M U304 ( .A(n65), .B(n66), .S0(n33), .Y(n48) );
  MXI2X1M U305 ( .A(n44), .B(n45), .S0(n36), .Y(n47) );
  ADDHX1M U306 ( .A(n38), .B(n37), .CO(n39), .S(n28) );
  AOI21X2M U308 ( .A0(n43), .A1(n42), .B0(n41), .Y(n420) );
  ADDHX1M U309 ( .A(n48), .B(n47), .CO(n58), .S(n40) );
  OAI21X4M U310 ( .A0(Q_ERR[4]), .A1(Q_ERR[3]), .B0(n49), .Y(n91) );
  XNOR2X4M U311 ( .A(Q_ERR[4]), .B(Q_ERR[3]), .Y(n76) );
  OAI21X4M U313 ( .A0(n420), .A1(n421), .B0(n422), .Y(n427) );
  ADDFX2M U317 ( .A(CORR_OUT[1]), .B(\DP_OP_6J1_122_2730/n473 ), .CI(n62), 
        .CO(n84), .S(n67) );
  OAI21X4M U318 ( .A0(Q_ERR[6]), .A1(Q_ERR[5]), .B0(n63), .Y(n111) );
  XNOR2X4M U319 ( .A(Q_ERR[6]), .B(Q_ERR[5]), .Y(n96) );
  NAND2BX2M U320 ( .AN(n96), .B(n25), .Y(n64) );
  NOR2X2M U323 ( .A(n432), .B(n434), .Y(n75) );
  NAND2X2M U324 ( .A(n71), .B(n70), .Y(n431) );
  OAI21X2M U326 ( .A0(n434), .A1(n431), .B0(n435), .Y(n74) );
  ADDFX2M U327 ( .A(n85), .B(n84), .CI(n83), .CO(n116), .S(n73) );
  OAI21X4M U328 ( .A0(Q_ERR[8]), .A1(Q_ERR[7]), .B0(n89), .Y(n143) );
  XNOR2X4M U329 ( .A(Q_ERR[8]), .B(Q_ERR[7]), .Y(n128) );
  ADDFX2M U330 ( .A(n95), .B(n94), .CI(n93), .CO(n118), .S(n117) );
  NOR2X4M U331 ( .A(n119), .B(n118), .Y(n443) );
  NOR2X4M U332 ( .A(n324), .B(n443), .Y(n449) );
  MXI2X2M U333 ( .A(n4), .B(n25), .S0(n128), .Y(n102) );
  MXI2X2M U334 ( .A(n143), .B(n144), .S0(n102), .Y(n107) );
  ADDFX2M U335 ( .A(n105), .B(n104), .CI(n103), .CO(n120), .S(n119) );
  MXI2X1M U336 ( .A(n2), .B(n4), .S0(n128), .Y(n106) );
  MXI2X1M U337 ( .A(n143), .B(n144), .S0(n106), .Y(n137) );
  ADDFX2M U338 ( .A(\DP_OP_6J1_122_2730/n457 ), .B(n108), .CI(n107), .CO(n136), 
        .S(n113) );
  OAI21X4M U339 ( .A0(Q_ERR[10]), .A1(Q_ERR[9]), .B0(n109), .Y(n163) );
  XNOR2X4M U340 ( .A(Q_ERR[10]), .B(Q_ERR[9]), .Y(n148) );
  NAND2BX2M U341 ( .AN(n148), .B(n25), .Y(n110) );
  NOR2X4M U343 ( .A(n453), .B(n458), .Y(n125) );
  NAND2X2M U344 ( .A(n117), .B(n116), .Y(n440) );
  NAND2X2M U345 ( .A(n119), .B(n118), .Y(n444) );
  OAI21X4M U346 ( .A0(n443), .A1(n440), .B0(n444), .Y(n451) );
  NAND2X2M U347 ( .A(n121), .B(n120), .Y(n452) );
  OAI21X2M U348 ( .A0(n458), .A1(n452), .B0(n459), .Y(n124) );
  AOI21X4M U349 ( .A0(n125), .A1(n451), .B0(n124), .Y(n126) );
  ADDFX2M U350 ( .A(n132), .B(n131), .CI(n130), .CO(n146), .S(n135) );
  OAI21X4M U354 ( .A0(Q_ERR[12]), .A1(Q_ERR[11]), .B0(n141), .Y(n183) );
  XNOR2X4M U355 ( .A(Q_ERR[12]), .B(Q_ERR[11]), .Y(n168) );
  NOR2X4M U357 ( .A(n211), .B(n210), .Y(n479) );
  ADDFX2M U358 ( .A(n152), .B(n151), .CI(n150), .CO(n166), .S(n155) );
  MXI2X2M U359 ( .A(n4), .B(n25), .S0(n168), .Y(n154) );
  ADDFX2M U360 ( .A(n157), .B(n156), .CI(n155), .CO(n212), .S(n211) );
  ADDFX2M U361 ( .A(\DP_OP_6J1_122_2730/n441 ), .B(n160), .CI(n159), .CO(n176), 
        .S(n165) );
  OAI21X4M U362 ( .A0(Q_ERR[14]), .A1(Q_ERR[13]), .B0(n161), .Y(n203) );
  XNOR2X4M U363 ( .A(Q_ERR[14]), .B(Q_ERR[13]), .Y(n188) );
  NAND2BX2M U364 ( .AN(n188), .B(n25), .Y(n162) );
  ADDFX2M U365 ( .A(n167), .B(n166), .CI(n165), .CO(n214), .S(n213) );
  NOR2X4M U366 ( .A(n215), .B(n214), .Y(n493) );
  ADDFX2M U367 ( .A(n177), .B(n176), .CI(n175), .CO(n218), .S(n215) );
  OAI21X4M U368 ( .A0(Q_ERR[16]), .A1(Q_ERR[15]), .B0(n181), .Y(n247) );
  XNOR2X4M U369 ( .A(Q_ERR[16]), .B(Q_ERR[15]), .Y(n233) );
  ADDFX2M U370 ( .A(n187), .B(n186), .CI(n185), .CO(n220), .S(n219) );
  NOR2X4M U371 ( .A(n221), .B(n220), .Y(n471) );
  ADDFX2M U372 ( .A(n197), .B(n196), .CI(n195), .CO(n222), .S(n221) );
  MXI2X1M U373 ( .A(n253), .B(n4), .S0(n233), .Y(n198) );
  OAI21X4M U374 ( .A0(Q_ERR[18]), .A1(Q_ERR[17]), .B0(n201), .Y(n257) );
  XNOR2X4M U375 ( .A(Q_ERR[18]), .B(Q_ERR[17]), .Y(n252) );
  ADDFX2M U376 ( .A(n207), .B(n206), .CI(n205), .CO(n224), .S(n223) );
  NOR2X4M U378 ( .A(n305), .B(n229), .Y(n231) );
  NAND2X2M U379 ( .A(n209), .B(n208), .Y(n477) );
  OAI21X4M U381 ( .A0(n479), .A1(n477), .B0(n480), .Y(n489) );
  NAND2X2M U382 ( .A(n213), .B(n212), .Y(n486) );
  OAI21X2M U384 ( .A0(n493), .A1(n486), .B0(n494), .Y(n216) );
  AOI21X6M U385 ( .A0(n217), .A1(n489), .B0(n216), .Y(n306) );
  NAND2X2M U386 ( .A(n219), .B(n218), .Y(n465) );
  OAI21X4M U388 ( .A0(n471), .A1(n465), .B0(n472), .Y(n406) );
  OAI21X4M U391 ( .A0(n306), .A1(n229), .B0(n228), .Y(n230) );
  MXI2X2M U392 ( .A(n4), .B(n25), .S0(n252), .Y(n240) );
  MXI2X2M U393 ( .A(n257), .B(n256), .S0(n240), .Y(n245) );
  ADDFX2M U394 ( .A(n243), .B(n242), .CI(n241), .CO(n266), .S(n225) );
  NOR2X4M U395 ( .A(n267), .B(n266), .Y(n385) );
  ADDFX2M U396 ( .A(\DP_OP_6J1_122_2730/n417 ), .B(n246), .CI(n245), .CO(n261), 
        .S(n249) );
  MX2X2M U397 ( .A(n248), .B(n247), .S0(n254), .Y(n258) );
  ADDFX2M U398 ( .A(n251), .B(n250), .CI(n249), .CO(n268), .S(n267) );
  NOR2X4M U399 ( .A(n269), .B(n268), .Y(n386) );
  NOR2X2M U401 ( .A(n282), .B(Kcal_UNSIGN[3]), .Y(n365) );
  ADDFX2M U403 ( .A(CORR_OUT[15]), .B(Kcal_UNSIGN[0]), .CI(n258), .CO(n263), 
        .S(n260) );
  OR2X4M U405 ( .A(n273), .B(n272), .Y(n400) );
  ADDFX2M U407 ( .A(n262), .B(n261), .CI(n260), .CO(n271), .S(n269) );
  ADDFX2M U408 ( .A(n265), .B(n264), .CI(n263), .CO(n273), .S(n270) );
  NOR2X2M U410 ( .A(n15), .B(Kcal_UNSIGN[4]), .Y(n331) );
  NOR2X2M U411 ( .A(n327), .B(n331), .Y(n349) );
  OAI21X4M U413 ( .A0(n386), .A1(n384), .B0(n387), .Y(n395) );
  OAI21X2M U418 ( .A0(n279), .A1(n380), .B0(n278), .Y(n280) );
  AOI21X4M U419 ( .A0(n281), .A1(n395), .B0(n280), .Y(n371) );
  OA21X2M U422 ( .A0(n371), .A1(n285), .B0(n284), .Y(n286) );
  OAI21X2M U423 ( .A0(n398), .A1(n287), .B0(n286), .Y(n291) );
  OR2X1M U424 ( .A(\DP_OP_6J1_122_2730/n348 ), .B(Kcal_UNSIGN[6]), .Y(n289) );
  NAND2XLM U425 ( .A(\DP_OP_6J1_122_2730/n348 ), .B(Kcal_UNSIGN[6]), .Y(n288)
         );
  XNOR2X2M U426 ( .A(n291), .B(n290), .Y(n293) );
  OAI21X2M U428 ( .A0(n492), .A1(n305), .B0(n306), .Y(n297) );
  OAI21X2M U432 ( .A0(n492), .A1(n300), .B0(n299), .Y(n303) );
  AOI21X2M U437 ( .A0(n468), .A1(n404), .B0(n406), .Y(n307) );
  OAI21X2M U438 ( .A0(n492), .A1(n308), .B0(n307), .Y(n311) );
  XNOR2X2M U440 ( .A(n311), .B(n310), .Y(n312) );
  AOI21X2M U443 ( .A0(n457), .A1(n449), .B0(n451), .Y(n319) );
  INVX4M U448 ( .A(n371), .Y(n350) );
  OAI21X2M U449 ( .A0(n398), .A1(n330), .B0(n329), .Y(n335) );
  AND2X2M U450 ( .A(n336), .B(n498), .Y(N52) );
  INVX2M U452 ( .A(n380), .Y(n393) );
  OAI21X2M U454 ( .A0(n398), .A1(n342), .B0(n341), .Y(n345) );
  NAND2X2M U455 ( .A(n361), .B(n359), .Y(n344) );
  XNOR2X2M U456 ( .A(n345), .B(n344), .Y(n346) );
  AND2X2M U457 ( .A(n346), .B(n498), .Y(N49) );
  OAI21X2M U459 ( .A0(n398), .A1(n352), .B0(n351), .Y(n356) );
  AND2X2M U460 ( .A(n357), .B(n498), .Y(N53) );
  NAND2X2M U461 ( .A(n358), .B(n361), .Y(n364) );
  AOI21X2M U462 ( .A0(n362), .A1(n361), .B0(n360), .Y(n363) );
  OAI21X2M U464 ( .A0(n398), .A1(n372), .B0(n371), .Y(n376) );
  XNOR2X2M U465 ( .A(n376), .B(n375), .Y(n377) );
  AND2X2M U466 ( .A(n377), .B(n498), .Y(N51) );
  OAI21X2M U467 ( .A0(n398), .A1(n379), .B0(n378), .Y(n382) );
  NAND2X2M U468 ( .A(n394), .B(n380), .Y(n381) );
  AND2X2M U469 ( .A(n383), .B(n498), .Y(N47) );
  OAI21X2M U470 ( .A0(n398), .A1(n385), .B0(n384), .Y(n390) );
  OAI21X2M U472 ( .A0(n398), .A1(n397), .B0(n396), .Y(n402) );
  INVX2M U476 ( .A(n406), .Y(n409) );
  OAI21X2M U479 ( .A0(n492), .A1(n413), .B0(n412), .Y(n418) );
  AND2X2M U480 ( .A(n419), .B(n498), .Y(N44) );
  OAI21X2M U489 ( .A0(n492), .A1(n470), .B0(n469), .Y(n475) );
  XNOR2X2M U490 ( .A(n475), .B(n474), .Y(n476) );
  AND2X2M U491 ( .A(n476), .B(n498), .Y(N42) );
  DLY1X1M U506 ( .A(test_se), .Y(n548) );
  DLY1X1M U510 ( .A(test_se), .Y(n552) );
  CLKBUFX1M U5 ( .A(test_se), .Y(n546) );
  MXI2X1M U9 ( .A(n65), .B(n66), .S0(n54), .Y(n69) );
  ADDFHX2M U18 ( .A(n115), .B(n114), .CI(n113), .CO(n122), .S(n121) );
  NOR2X3M U23 ( .A(n408), .B(n414), .Y(n227) );
  NOR2X3M U24 ( .A(n225), .B(n224), .Y(n414) );
  INVX1M U25 ( .A(n27), .Y(n31) );
  ADDFX2M U30 ( .A(n60), .B(n59), .CI(n58), .CO(n70), .S(n52) );
  OAI21X3M U35 ( .A0(n414), .A1(n407), .B0(n415), .Y(n226) );
  INVX1M U39 ( .A(n301), .Y(n488) );
  NOR2X3M U41 ( .A(n213), .B(n212), .Y(n301) );
  CLKBUFX40M U49 ( .A(n234), .Y(n1) );
  CLKBUFX40M U53 ( .A(n234), .Y(n2) );
  MXI2X1M U55 ( .A(n143), .B(n144), .S0(n90), .Y(n99) );
  NAND2X1M U56 ( .A(n123), .B(n122), .Y(n459) );
  OAI21XLM U57 ( .A0(n409), .A1(n408), .B0(n407), .Y(n410) );
  ADDFHX2M U59 ( .A(n147), .B(n146), .CI(n145), .CO(n210), .S(n209) );
  ADDFX2M U60 ( .A(n137), .B(n136), .CI(n135), .CO(n208), .S(n123) );
  OAI21X3M U62 ( .A0(n378), .A1(n340), .B0(n339), .Y(n362) );
  CLKNAND2X2M U63 ( .A(n394), .B(n400), .Y(n340) );
  AOI21X1M U64 ( .A0(n468), .A1(n411), .B0(n410), .Y(n412) );
  NOR2X2M U66 ( .A(n405), .B(n408), .Y(n411) );
  OAI21X1M U67 ( .A0(n359), .A1(n365), .B0(n366), .Y(n276) );
  NOR2X3M U68 ( .A(n71), .B(n70), .Y(n432) );
  ADDFHX4M U69 ( .A(n69), .B(n68), .CI(n67), .CO(n72), .S(n71) );
  AOI21X4M U70 ( .A0(n277), .A1(n338), .B0(n276), .Y(n278) );
  CLKNAND2X4M U72 ( .A(n277), .B(n400), .Y(n279) );
  NOR2X4M U73 ( .A(n343), .B(n365), .Y(n277) );
  CLKINVX20M U75 ( .A(n32), .Y(n4) );
  INVX8M U76 ( .A(TDC_OUT[1]), .Y(n32) );
  INVX12M U77 ( .A(n306), .Y(n468) );
  OAI21X1M U78 ( .A0(n454), .A1(n453), .B0(n452), .Y(n455) );
  CLKNAND2X8M U79 ( .A(n411), .B(n464), .Y(n413) );
  INVX16M U80 ( .A(n525), .Y(Kcal_UNSIGN[7]) );
  ADDFXLM U81 ( .A(CORR_OUT[11]), .B(CORR_OUT[12]), .CI(n193), .CO(n200), .S(
        n192) );
  INVXLM U84 ( .A(n248), .Y(n193) );
  CLKINVX1M U85 ( .A(Q_ERR[17]), .Y(n181) );
  ADDFXLM U86 ( .A(CORR_OUT[5]), .B(CORR_OUT[6]), .CI(n133), .CO(n140), .S(
        n132) );
  INVXLM U87 ( .A(n164), .Y(n133) );
  ADDFXLM U91 ( .A(CORR_OUT[0]), .B(CORR_OUT[2]), .CI(n81), .CO(n88), .S(n80)
         );
  INVXLM U92 ( .A(n112), .Y(n81) );
  MX2XLM U95 ( .A(n144), .B(n143), .S0(n254), .Y(n150) );
  CLKBUFX12M U96 ( .A(TDC_OUT[3]), .Y(n254) );
  CLKINVX1M U97 ( .A(Q_ERR[13]), .Y(n141) );
  ADDFXLM U98 ( .A(CORR_OUT[7]), .B(CORR_OUT[8]), .CI(n153), .CO(n160), .S(
        n152) );
  INVXLM U99 ( .A(n184), .Y(n153) );
  CLKINVX1M U100 ( .A(Q_ERR[15]), .Y(n161) );
  ADDFXLM U101 ( .A(CORR_OUT[9]), .B(CORR_OUT[10]), .CI(n173), .CO(n180), .S(
        n172) );
  INVXLM U103 ( .A(n204), .Y(n173) );
  CLKINVX1M U105 ( .A(Q_ERR[9]), .Y(n89) );
  ADDFXLM U106 ( .A(CORR_OUT[3]), .B(CORR_OUT[4]), .CI(n101), .CO(n108), .S(
        n100) );
  INVXLM U107 ( .A(n144), .Y(n101) );
  CLKINVX1M U108 ( .A(Q_ERR[5]), .Y(n49) );
  INVX1M U109 ( .A(Q_ERR[1]), .Y(n45) );
  NAND2X1M U110 ( .A(n45), .B(Q_ERR[0]), .Y(n44) );
  MX2XLM U111 ( .A(n112), .B(n111), .S0(n254), .Y(n130) );
  MX2XLM U112 ( .A(n66), .B(n65), .S0(n254), .Y(n78) );
  MXI2XLM U113 ( .A(n163), .B(n164), .S0(n138), .Y(n157) );
  MXI2XLM U114 ( .A(n253), .B(n4), .S0(n148), .Y(n138) );
  CLKINVX3M U115 ( .A(n305), .Y(n464) );
  MXI2XLM U116 ( .A(n247), .B(n248), .S0(n198), .Y(n243) );
  MXI2XLM U117 ( .A(n111), .B(n112), .S0(n86), .Y(n105) );
  MXI2XLM U119 ( .A(n253), .B(n4), .S0(n96), .Y(n86) );
  INVXLM U120 ( .A(n359), .Y(n360) );
  NAND2XLM U121 ( .A(n282), .B(Kcal_UNSIGN[3]), .Y(n366) );
  INVXLM U122 ( .A(n373), .Y(n328) );
  CLKINVX2M U123 ( .A(n337), .Y(n394) );
  NAND2X1M U124 ( .A(n269), .B(n268), .Y(n387) );
  INVXLM U125 ( .A(n386), .Y(n388) );
  NAND2XLM U126 ( .A(n392), .B(n394), .Y(n397) );
  AOI21XLM U127 ( .A0(n395), .A1(n394), .B0(n393), .Y(n396) );
  CLKNAND2X2M U128 ( .A(n273), .B(n272), .Y(n399) );
  NAND2X1M U129 ( .A(n52), .B(n51), .Y(n422) );
  INVXLM U130 ( .A(n421), .Y(n423) );
  AND2X1M U131 ( .A(n40), .B(n39), .Y(n41) );
  NOR2XLM U132 ( .A(n348), .B(n283), .Y(n284) );
  INVXLM U133 ( .A(n353), .Y(n283) );
  INVX1M U134 ( .A(n295), .Y(n467) );
  INVXLM U135 ( .A(n485), .Y(n300) );
  INVXLM U137 ( .A(n489), .Y(n299) );
  NAND2X1M U138 ( .A(n223), .B(n222), .Y(n407) );
  INVXLM U139 ( .A(n408), .Y(n309) );
  INVXLM U140 ( .A(n453), .Y(n317) );
  CLKINVX1M U141 ( .A(Q_ERR[19]), .Y(n201) );
  ADDFXLM U142 ( .A(CORR_OUT[13]), .B(CORR_OUT[14]), .CI(n239), .CO(n246), .S(
        n238) );
  INVXLM U143 ( .A(n256), .Y(n239) );
  CLKINVX1M U144 ( .A(Q_ERR[7]), .Y(n63) );
  ADDFX1M U145 ( .A(n172), .B(n171), .CI(n170), .CO(n186), .S(n175) );
  MX2XLM U146 ( .A(n164), .B(n163), .S0(n254), .Y(n170) );
  ADDFX1M U147 ( .A(n192), .B(n191), .CI(n190), .CO(n206), .S(n195) );
  MX2XLM U148 ( .A(n184), .B(n183), .S0(n254), .Y(n190) );
  ADDFX1M U149 ( .A(\DP_OP_6J1_122_2730/n433 ), .B(n180), .CI(n179), .CO(n196), 
        .S(n185) );
  ADDFXLM U150 ( .A(n100), .B(n99), .CI(n98), .CO(n114), .S(n103) );
  MX2XLM U151 ( .A(n92), .B(n91), .S0(n254), .Y(n98) );
  ADDFX1M U152 ( .A(\DP_OP_6J1_122_2730/n449 ), .B(n140), .CI(n139), .CO(n156), 
        .S(n145) );
  NOR2X1M U154 ( .A(n275), .B(n274), .Y(n343) );
  NOR2X1M U156 ( .A(n282), .B(Kcal_UNSIGN[5]), .Y(n327) );
  INVXLM U160 ( .A(n404), .Y(n405) );
  ADDFX1M U161 ( .A(Kcal_UNSIGN[2]), .B(Kcal_UNSIGN[1]), .CI(n259), .CO(n275), 
        .S(n272) );
  MX2XLM U162 ( .A(n256), .B(n257), .S0(n254), .Y(n259) );
  NOR2X3M U163 ( .A(n73), .B(n72), .Y(n434) );
  MXI2XLM U165 ( .A(n254), .B(n253), .S0(n53), .Y(n54) );
  ADDFX1M U169 ( .A(\DP_OP_6J1_122_2730/n473 ), .B(n56), .CI(n55), .CO(n68), 
        .S(n51) );
  INVXLM U170 ( .A(n92), .Y(n56) );
  MXI2XLM U171 ( .A(n91), .B(n92), .S0(n50), .Y(n55) );
  NAND2BX1M U172 ( .AN(n76), .B(n25), .Y(n50) );
  MX2XLM U173 ( .A(n45), .B(n44), .S0(n254), .Y(n60) );
  MXI2XLM U177 ( .A(n65), .B(n66), .S0(n46), .Y(n59) );
  INVXLM U178 ( .A(n25), .Y(n22) );
  INVXLM U181 ( .A(n66), .Y(n38) );
  MXI2XLM U182 ( .A(n65), .B(n66), .S0(n26), .Y(n37) );
  NAND2BXLM U183 ( .AN(n53), .B(n25), .Y(n26) );
  OAI21X1M U185 ( .A0(n331), .A1(n373), .B0(n332), .Y(n348) );
  NAND2XLM U187 ( .A(n349), .B(n354), .Y(n285) );
  MXI2XLM U188 ( .A(n163), .B(n164), .S0(n149), .Y(n167) );
  MXI2XLM U189 ( .A(n254), .B(n253), .S0(n148), .Y(n149) );
  MXI2XLM U190 ( .A(n111), .B(n112), .S0(n97), .Y(n115) );
  MXI2XLM U191 ( .A(n254), .B(n253), .S0(n96), .Y(n97) );
  MXI2XLM U196 ( .A(n91), .B(n92), .S0(n77), .Y(n95) );
  MXI2XLM U201 ( .A(n254), .B(n2), .S0(n76), .Y(n77) );
  INVX1M U202 ( .A(n358), .Y(n342) );
  INVXLM U204 ( .A(n362), .Y(n341) );
  NAND2X1M U207 ( .A(n275), .B(n274), .Y(n359) );
  CLKINVX1M U209 ( .A(n343), .Y(n361) );
  INVXLM U210 ( .A(n365), .Y(n367) );
  NAND2XLM U211 ( .A(n15), .B(Kcal_UNSIGN[4]), .Y(n332) );
  INVXLM U212 ( .A(n331), .Y(n333) );
  NAND2X1M U213 ( .A(n347), .B(n349), .Y(n352) );
  AOI21XLM U214 ( .A0(n350), .A1(n349), .B0(n348), .Y(n351) );
  NAND2XLM U215 ( .A(n15), .B(Kcal_UNSIGN[7]), .Y(n353) );
  INVX1M U216 ( .A(n395), .Y(n378) );
  NAND2X1M U218 ( .A(n271), .B(n270), .Y(n380) );
  NAND2X1M U219 ( .A(n282), .B(Kcal_UNSIGN[5]), .Y(n373) );
  CLKINVX1M U221 ( .A(n327), .Y(n374) );
  NAND2X1M U222 ( .A(n225), .B(n224), .Y(n415) );
  INVXLM U223 ( .A(n414), .Y(n416) );
  NAND2XLM U224 ( .A(n464), .B(n467), .Y(n470) );
  AOI21XLM U229 ( .A0(n468), .A1(n467), .B0(n466), .Y(n469) );
  INVXLM U230 ( .A(n465), .Y(n466) );
  NAND2X1M U232 ( .A(n221), .B(n220), .Y(n472) );
  INVXLM U249 ( .A(n471), .Y(n473) );
  NAND2X1M U251 ( .A(n211), .B(n210), .Y(n480) );
  INVXLM U262 ( .A(n479), .Y(n481) );
  AOI21XLM U264 ( .A0(n489), .A1(n488), .B0(n487), .Y(n490) );
  INVXLM U267 ( .A(n486), .Y(n487) );
  NAND2XLM U268 ( .A(n485), .B(n488), .Y(n491) );
  NAND2X1M U269 ( .A(n215), .B(n214), .Y(n494) );
  INVXLM U272 ( .A(n493), .Y(n495) );
  INVXLM U273 ( .A(n451), .Y(n454) );
  NOR2XLM U274 ( .A(n450), .B(n453), .Y(n456) );
  INVXLM U275 ( .A(n449), .Y(n450) );
  INVXLM U276 ( .A(n458), .Y(n460) );
  INVXLM U277 ( .A(n440), .Y(n441) );
  INVXLM U278 ( .A(n443), .Y(n445) );
  NAND2X1M U279 ( .A(n73), .B(n72), .Y(n435) );
  INVXLM U280 ( .A(n434), .Y(n436) );
  INVXLM U281 ( .A(n427), .Y(n433) );
  NOR2X3M U282 ( .A(n209), .B(n208), .Y(n478) );
  INVXLM U283 ( .A(n324), .Y(n442) );
  CLKBUFX12M U284 ( .A(n292), .Y(n498) );
  NOR2XLM U285 ( .A(UN_FL), .B(OV_FL), .Y(n292) );
  CLKINVX8M U286 ( .A(n14), .Y(UN_FL) );
  AND4XLM U287 ( .A(n19), .B(n525), .C(Kcal_UNSIGN[3]), .D(CORR_OUT_24), .Y(n5) );
  AND2X1M U288 ( .A(n282), .B(n15), .Y(n12) );
  CLKINVX8M U289 ( .A(n528), .Y(OV_FL) );
  OR3X1M U290 ( .A(n15), .B(n282), .C(n20), .Y(n528) );
  NAND4BXLM U291 ( .AN(CORR_OUT_24), .B(Kcal_UNSIGN[7]), .C(Kcal_UNSIGN[5]), 
        .D(Kcal_UNSIGN[3]), .Y(n20) );
  AND2X1M U292 ( .A(n370), .B(n498), .Y(N50) );
  INVXLM U293 ( .A(Kcal_UNSIGN[5]), .Y(n19) );
  NAND2XLM U297 ( .A(n333), .B(n332), .Y(n334) );
  AND2X1M U298 ( .A(n391), .B(n498), .Y(N46) );
  XNOR2X1M U307 ( .A(n390), .B(n389), .Y(n391) );
  NAND2XLM U312 ( .A(n388), .B(n387), .Y(n389) );
  INVXLM U314 ( .A(Kcal_UNSIGN[1]), .Y(n265) );
  AND2X1M U315 ( .A(n403), .B(n498), .Y(N48) );
  XNOR2X1M U316 ( .A(n402), .B(n401), .Y(n403) );
  NAND2XLM U321 ( .A(n400), .B(n399), .Y(n401) );
  AND2X1M U322 ( .A(n484), .B(n498), .Y(N38) );
  XNOR2XLM U325 ( .A(n483), .B(n482), .Y(n484) );
  NAND2XLM U342 ( .A(n481), .B(n480), .Y(n482) );
  OAI21X1M U351 ( .A0(n492), .A1(n478), .B0(n477), .Y(n483) );
  AND2X1M U352 ( .A(n499), .B(n498), .Y(N40) );
  XNOR2XLM U353 ( .A(n497), .B(n496), .Y(n499) );
  NAND2XLM U356 ( .A(n495), .B(n494), .Y(n496) );
  OAI21X1M U377 ( .A0(n492), .A1(n491), .B0(n490), .Y(n497) );
  AND2X1M U380 ( .A(n463), .B(n498), .Y(N36) );
  XOR2XLM U383 ( .A(n462), .B(n461), .Y(n463) );
  NAND2XLM U387 ( .A(n460), .B(n459), .Y(n461) );
  AOI21X1M U389 ( .A0(n457), .A1(n456), .B0(n455), .Y(n462) );
  AND2X1M U390 ( .A(n448), .B(n498), .Y(N34) );
  XOR2XLM U400 ( .A(n447), .B(n446), .Y(n448) );
  NAND2XLM U402 ( .A(n445), .B(n444), .Y(n446) );
  AOI21X1M U404 ( .A0(n457), .A1(n442), .B0(n441), .Y(n447) );
  AND2X1M U406 ( .A(n439), .B(n498), .Y(N32) );
  XNOR2XLM U409 ( .A(n438), .B(n437), .Y(n439) );
  NAND2XLM U412 ( .A(n436), .B(n435), .Y(n437) );
  OAI21XLM U414 ( .A0(n433), .A1(n432), .B0(n431), .Y(n438) );
  CLKBUFX1M U415 ( .A(n552), .Y(n543) );
  AND2X1M U416 ( .A(n430), .B(n498), .Y(N31) );
  XOR2XLM U417 ( .A(n433), .B(n429), .Y(n430) );
  NAND2XLM U420 ( .A(n428), .B(n431), .Y(n429) );
  INVXLM U421 ( .A(n432), .Y(n428) );
  CLKBUFX1M U427 ( .A(n546), .Y(n545) );
  AND2X1M U429 ( .A(n426), .B(n498), .Y(N30) );
  XNOR2XLM U430 ( .A(n425), .B(n424), .Y(n426) );
  INVXLM U431 ( .A(n420), .Y(n425) );
  NAND2X1M U433 ( .A(n293), .B(n498), .Y(n6) );
  CLKBUFX1M U434 ( .A(test_se), .Y(n544) );
  NAND2XLM U435 ( .A(n298), .B(n498), .Y(n7) );
  XNOR2X1M U436 ( .A(n297), .B(n296), .Y(n298) );
  NAND2XLM U439 ( .A(n467), .B(n465), .Y(n296) );
  NAND2XLM U441 ( .A(n488), .B(n486), .Y(n302) );
  NAND2XLM U442 ( .A(n309), .B(n407), .Y(n310) );
  CLKBUFX1M U444 ( .A(test_se), .Y(n551) );
  CLKBUFX1M U445 ( .A(n543), .Y(n550) );
  NAND2XLM U446 ( .A(n320), .B(n498), .Y(n18) );
  XOR2X1M U447 ( .A(n319), .B(n318), .Y(n320) );
  NAND2XLM U451 ( .A(n317), .B(n452), .Y(n318) );
  NAND2XLM U453 ( .A(n323), .B(n498), .Y(n11) );
  XOR2XLM U458 ( .A(n492), .B(n322), .Y(n323) );
  NAND2XLM U463 ( .A(n321), .B(n477), .Y(n322) );
  INVXLM U471 ( .A(n478), .Y(n321) );
  CLKBUFX8M U473 ( .A(RST), .Y(n526) );
  CLKBUFX1M U474 ( .A(test_se), .Y(n549) );
  NAND2XLM U475 ( .A(n326), .B(n498), .Y(n17) );
  XNOR2XLM U477 ( .A(n457), .B(n325), .Y(n326) );
  NAND2XLM U478 ( .A(n442), .B(n440), .Y(n325) );
endmodule


module DIG_FEEDBCK ( FB_CLK, RST, TDC_OUT, FCW, SI, SE, scan_clk, scan_rst, 
        test_mode, SO, LMS_OV_FL, LMS_UN_FL, MMD_CNTRL, DCW );
  input [3:0] TDC_OUT;
  input [26:0] FCW;
  output [7:0] MMD_CNTRL;
  output [8:0] DCW;
  input FB_CLK, RST, SI, SE, scan_clk, scan_rst, test_mode;
  output SO, LMS_OV_FL, LMS_UN_FL;
  wire   CLK_M, DSM_out, n1, n5, n7;
  wire   [19:0] FRAC_IN;
  wire   [19:0] Q_ERR_SIGN;
  wire   [19:0] Q_ERR_UNSIGN;
  wire   [8:0] Kcal;
  assign SO = DCW[8];

  mux2X1_1 U0_clk ( .IN_0(FB_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_0 U0_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(n1) );
  DSM_1ST_ORDER_in_width20_test_1 U0_DSM ( .CLK(CLK_M), .RST(n1), .DSM_IN(
        FRAC_IN), .Q_ERR_SIGN(Q_ERR_SIGN), .Q_ERR(Q_ERR_UNSIGN), .DSM_out(
        DSM_out), .test_si(DCW[7]), .test_se(SE) );
  CALC_DCW_DCW_WIDTH9_err_width20_K_width9_test_1 U0_DCW ( .CLK(CLK_M), .RST(
        n1), .Q_ERR(Q_ERR_UNSIGN), .Kcal(Kcal), .DCW(DCW), .test_si2(n5), 
        .test_si1(MMD_CNTRL[7]), .test_se(SE) );
  CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8_test_1 U0_CNT_MMD ( 
        .CLK(CLK_M), .RST(n1), .DSM_out(DSM_out), .FCW(FCW), .FRAC_IN(FRAC_IN), 
        .MMD_CNTRL(MMD_CNTRL), .test_si(SI), .test_se(SE) );
  LMS_in_width4_K_width9_err_width20_test_1 U0_LMS ( .CLK(CLK_M), .RST(n1), 
        .TDC_OUT(TDC_OUT), .Q_ERR(Q_ERR_SIGN), .Kcal_UNSIGN(Kcal), .OV_FL(
        LMS_OV_FL), .UN_FL(LMS_UN_FL), .test_si(Q_ERR_UNSIGN[19]), .test_so(n5), .test_se(n7) );
  CLKBUFX2M U1 ( .A(SE), .Y(n7) );
endmodule

