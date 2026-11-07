/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 05:00:18 2026
/////////////////////////////////////////////////////////////


module DSM_1ST_ORDER_in_width20 ( CLK, RST, DSM_IN, Q_ERR_SIGN, Q_ERR, DSM_out
 );
  input [19:0] DSM_IN;
  output [19:0] Q_ERR_SIGN;
  output [19:0] Q_ERR;
  input CLK, RST;
  output DSM_out;
  wire   \add_x_1/n20 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100;
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

  DFFRQX1M DSM_out_reg ( .D(Q_IN[20]), .CK(CLK), .RN(RST), .Q(DSM_out) );
  DFFRQX4M \Q_ERR_SIGN_reg[1]  ( .D(Q_IN[1]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[1]) );
  DFFRQX4M \Q_ERR_SIGN_reg[7]  ( .D(Q_IN[7]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[7]) );
  DFFRX1M \Q_ERR_SIGN_reg[19]  ( .D(Q_IN[19]), .CK(CLK), .RN(RST), .QN(
        Q_ERR_SIGN[19]) );
  DFFSX2M \Q_ERR_SIGN_reg[0]  ( .D(\add_x_1/n20 ), .CK(CLK), .SN(RST), .QN(
        Q_ERR_SIGN[0]) );
  DFFRQX4M \Q_ERR_SIGN_reg[13]  ( .D(Q_IN[13]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[13]) );
  DFFRQX4M \Q_ERR_SIGN_reg[15]  ( .D(Q_IN[15]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[15]) );
  DFFRQX4M \Q_ERR_SIGN_reg[17]  ( .D(Q_IN[17]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[17]) );
  DFFRQX4M \Q_ERR_SIGN_reg[8]  ( .D(Q_IN[8]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[8]) );
  DFFRQX4M \Q_ERR_SIGN_reg[2]  ( .D(Q_IN[2]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[2]) );
  DFFRQX4M \Q_ERR_reg[19]  ( .D(Q_IN[19]), .CK(CLK), .RN(RST), .Q(Q_ERR[19])
         );
  DFFRQX4M \Q_ERR_SIGN_reg[14]  ( .D(Q_IN[14]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[14]) );
  DFFRQX4M \Q_ERR_SIGN_reg[11]  ( .D(Q_IN[11]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[11]) );
  DFFRQX4M \Q_ERR_SIGN_reg[9]  ( .D(Q_IN[9]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[9]) );
  DFFRQX4M \Q_ERR_SIGN_reg[16]  ( .D(Q_IN[16]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[16]) );
  DFFRQX4M \Q_ERR_SIGN_reg[18]  ( .D(Q_IN[18]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[18]) );
  DFFRQX4M \Q_ERR_SIGN_reg[5]  ( .D(Q_IN[5]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[5]) );
  DFFRQX4M \Q_ERR_SIGN_reg[3]  ( .D(Q_IN[3]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[3]) );
  DFFRQX4M \Q_ERR_SIGN_reg[12]  ( .D(Q_IN[12]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[12]) );
  DFFRQX4M \Q_ERR_SIGN_reg[10]  ( .D(Q_IN[10]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[10]) );
  DFFRQX4M \Q_ERR_SIGN_reg[6]  ( .D(Q_IN[6]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[6]) );
  DFFRQX4M \Q_ERR_SIGN_reg[4]  ( .D(Q_IN[4]), .CK(CLK), .RN(RST), .Q(
        Q_ERR_SIGN[4]) );
  CLKINVX1M U3 ( .A(n41), .Y(n17) );
  CLKINVX1M U4 ( .A(n57), .Y(n15) );
  NOR2X2M U5 ( .A(Q_ERR_SIGN[6]), .B(DSM_IN[6]), .Y(n74) );
  AOI21X4M U6 ( .A0(n35), .A1(n7), .B0(n18), .Y(n32) );
  XNOR2X2M U7 ( .A(n35), .B(n34), .Y(Q_IN[16]) );
  XOR2XLM U8 ( .A(n72), .B(n71), .Y(Q_IN[7]) );
  XOR2XLM U9 ( .A(n83), .B(n82), .Y(Q_IN[5]) );
  OAI21X1M U10 ( .A0(n83), .A1(n79), .B0(n80), .Y(n78) );
  NAND2XLM U11 ( .A(n76), .B(n75), .Y(n77) );
  NAND2XLM U12 ( .A(n81), .B(n80), .Y(n82) );
  NAND2XLM U13 ( .A(n30), .B(n29), .Y(n31) );
  INVX2M U14 ( .A(n49), .Y(n16) );
  INVX2M U15 ( .A(n33), .Y(n18) );
  INVX2M U16 ( .A(n65), .Y(n14) );
  INVX2M U17 ( .A(n25), .Y(n19) );
  NAND2XLM U18 ( .A(n4), .B(n100), .Y(\add_x_1/n20 ) );
  CLKINVX1M U19 ( .A(n23), .Y(n20) );
  NAND2X2M U20 ( .A(Q_ERR[19]), .B(DSM_IN[19]), .Y(n22) );
  OR2X2M U21 ( .A(Q_ERR_SIGN[8]), .B(DSM_IN[8]), .Y(n9) );
  AOI21X4M U22 ( .A0(n27), .A1(n1), .B0(n19), .Y(n24) );
  XNOR2X2M U23 ( .A(n27), .B(n26), .Y(Q_IN[18]) );
  XOR2X2M U24 ( .A(n32), .B(n31), .Y(Q_IN[17]) );
  AOI21X4M U25 ( .A0(n43), .A1(n8), .B0(n17), .Y(n40) );
  OAI21X4M U26 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  OAI21X4M U27 ( .A0(n56), .A1(n52), .B0(n53), .Y(n51) );
  AOI21X4M U28 ( .A0(n59), .A1(n5), .B0(n15), .Y(n56) );
  XOR2X1M U29 ( .A(n64), .B(n63), .Y(Q_IN[9]) );
  XNOR2X1M U30 ( .A(n67), .B(n66), .Y(Q_IN[8]) );
  OAI21X4M U31 ( .A0(n72), .A1(n68), .B0(n69), .Y(n67) );
  INVX2M U32 ( .A(n73), .Y(n83) );
  AOI21X4M U33 ( .A0(n13), .A1(n73), .B0(n12), .Y(n72) );
  OAI21X2M U34 ( .A0(n80), .A1(n74), .B0(n75), .Y(n12) );
  CLKINVX2M U35 ( .A(n89), .Y(n11) );
  NAND2X2M U36 ( .A(Q_ERR_SIGN[0]), .B(DSM_IN[0]), .Y(n100) );
  OR2X2M U37 ( .A(Q_ERR_SIGN[16]), .B(DSM_IN[16]), .Y(n7) );
  NAND2X2M U38 ( .A(Q_ERR_SIGN[1]), .B(DSM_IN[1]), .Y(n97) );
  OR2X2M U39 ( .A(Q_ERR_SIGN[12]), .B(DSM_IN[12]), .Y(n6) );
  OR2X2M U40 ( .A(Q_ERR_SIGN[14]), .B(DSM_IN[14]), .Y(n8) );
  NAND2X2M U41 ( .A(Q_ERR_SIGN[3]), .B(DSM_IN[3]), .Y(n89) );
  NAND2X2M U42 ( .A(Q_ERR_SIGN[12]), .B(DSM_IN[12]), .Y(n49) );
  NAND2X2M U43 ( .A(Q_ERR_SIGN[9]), .B(DSM_IN[9]), .Y(n61) );
  OR2X2M U44 ( .A(Q_ERR_SIGN[10]), .B(DSM_IN[10]), .Y(n5) );
  OR2X2M U45 ( .A(Q_ERR_SIGN[18]), .B(DSM_IN[18]), .Y(n1) );
  XOR2X2M U46 ( .A(n24), .B(n21), .Y(Q_IN[19]) );
  OAI21X6M U47 ( .A0(n32), .A1(n28), .B0(n29), .Y(n27) );
  XOR2X1M U48 ( .A(n40), .B(n39), .Y(Q_IN[15]) );
  OAI21X6M U49 ( .A0(n40), .A1(n36), .B0(n37), .Y(n35) );
  XNOR2X1M U50 ( .A(n43), .B(n42), .Y(Q_IN[14]) );
  XOR2X1M U51 ( .A(n48), .B(n47), .Y(Q_IN[13]) );
  XNOR2X1M U52 ( .A(n51), .B(n50), .Y(Q_IN[12]) );
  XOR2X1M U53 ( .A(n56), .B(n55), .Y(Q_IN[11]) );
  XNOR2X1M U54 ( .A(n59), .B(n58), .Y(Q_IN[10]) );
  XNOR2X1M U55 ( .A(n78), .B(n77), .Y(Q_IN[6]) );
  AOI21X2M U56 ( .A0(n91), .A1(n2), .B0(n11), .Y(n87) );
  NAND2X1M U57 ( .A(n20), .B(n22), .Y(n21) );
  INVX1M U58 ( .A(n100), .Y(n98) );
  NOR2X2M U59 ( .A(n79), .B(n74), .Y(n13) );
  AOI21X4M U60 ( .A0(n67), .A1(n9), .B0(n14), .Y(n64) );
  OAI21X2M U61 ( .A0(n24), .A1(n23), .B0(n22), .Y(Q_IN[20]) );
  NOR2X2M U62 ( .A(Q_ERR_SIGN[4]), .B(DSM_IN[4]), .Y(n84) );
  OAI21X2M U63 ( .A0(n87), .A1(n84), .B0(n85), .Y(n73) );
  OR2X1M U64 ( .A(Q_ERR_SIGN[3]), .B(DSM_IN[3]), .Y(n2) );
  NAND2X2M U65 ( .A(Q_ERR_SIGN[18]), .B(DSM_IN[18]), .Y(n25) );
  NAND2X2M U66 ( .A(Q_ERR_SIGN[16]), .B(DSM_IN[16]), .Y(n33) );
  NOR2X2M U67 ( .A(Q_ERR_SIGN[9]), .B(DSM_IN[9]), .Y(n60) );
  NOR2X2M U68 ( .A(Q_ERR_SIGN[11]), .B(DSM_IN[11]), .Y(n52) );
  NAND2X2M U69 ( .A(Q_ERR_SIGN[11]), .B(DSM_IN[11]), .Y(n53) );
  NAND2X2M U70 ( .A(Q_ERR_SIGN[14]), .B(DSM_IN[14]), .Y(n41) );
  CLKINVX1M U71 ( .A(n97), .Y(n10) );
  NAND2X2M U72 ( .A(Q_ERR_SIGN[4]), .B(DSM_IN[4]), .Y(n85) );
  NAND2X2M U73 ( .A(Q_ERR_SIGN[8]), .B(DSM_IN[8]), .Y(n65) );
  NOR2X2M U74 ( .A(Q_ERR_SIGN[5]), .B(DSM_IN[5]), .Y(n79) );
  NAND2X2M U75 ( .A(Q_ERR_SIGN[5]), .B(DSM_IN[5]), .Y(n80) );
  NAND2X2M U76 ( .A(Q_ERR_SIGN[6]), .B(DSM_IN[6]), .Y(n75) );
  NAND2X2M U77 ( .A(Q_ERR_SIGN[10]), .B(DSM_IN[10]), .Y(n57) );
  OAI21X2M U78 ( .A0(n64), .A1(n60), .B0(n61), .Y(n59) );
  NOR2X2M U79 ( .A(Q_ERR_SIGN[17]), .B(DSM_IN[17]), .Y(n28) );
  NAND2X2M U80 ( .A(Q_ERR_SIGN[17]), .B(DSM_IN[17]), .Y(n29) );
  NOR2X2M U81 ( .A(Q_ERR_SIGN[15]), .B(DSM_IN[15]), .Y(n36) );
  NAND2X2M U82 ( .A(Q_ERR_SIGN[15]), .B(DSM_IN[15]), .Y(n37) );
  NOR2X2M U83 ( .A(Q_ERR_SIGN[13]), .B(DSM_IN[13]), .Y(n44) );
  NAND2X2M U84 ( .A(Q_ERR_SIGN[13]), .B(DSM_IN[13]), .Y(n45) );
  NOR2X2M U85 ( .A(Q_ERR_SIGN[7]), .B(DSM_IN[7]), .Y(n68) );
  NOR2X2M U86 ( .A(Q_ERR[19]), .B(DSM_IN[19]), .Y(n23) );
  XNOR2XLM U87 ( .A(n91), .B(n90), .Y(Q_IN[3]) );
  NAND2XLM U88 ( .A(n2), .B(n89), .Y(n90) );
  CLKINVX1M U89 ( .A(n79), .Y(n81) );
  NAND2XLM U90 ( .A(n1), .B(n25), .Y(n26) );
  NAND2XLM U91 ( .A(n7), .B(n33), .Y(n34) );
  NAND2XLM U92 ( .A(n62), .B(n61), .Y(n63) );
  CLKINVX1M U93 ( .A(n60), .Y(n62) );
  NAND2XLM U94 ( .A(n54), .B(n53), .Y(n55) );
  CLKINVX1M U95 ( .A(n52), .Y(n54) );
  NAND2XLM U96 ( .A(n8), .B(n41), .Y(n42) );
  XOR2XLM U97 ( .A(n96), .B(n95), .Y(Q_IN[2]) );
  NAND2XLM U98 ( .A(n94), .B(n93), .Y(n96) );
  CLKINVX1M U99 ( .A(n92), .Y(n94) );
  NAND2XLM U100 ( .A(n86), .B(n85), .Y(n88) );
  CLKINVX1M U101 ( .A(n84), .Y(n86) );
  NAND2XLM U102 ( .A(n9), .B(n65), .Y(n66) );
  CLKINVX1M U103 ( .A(n74), .Y(n76) );
  NAND2XLM U104 ( .A(n5), .B(n57), .Y(n58) );
  NAND2XLM U105 ( .A(n6), .B(n49), .Y(n50) );
  CLKINVX1M U106 ( .A(n28), .Y(n30) );
  NAND2XLM U107 ( .A(n38), .B(n37), .Y(n39) );
  NAND2XLM U108 ( .A(n46), .B(n45), .Y(n47) );
  CLKINVX1M U109 ( .A(n44), .Y(n46) );
  NAND2XLM U110 ( .A(n70), .B(n69), .Y(n71) );
  CLKINVX1M U111 ( .A(n68), .Y(n70) );
  XNOR2XLM U112 ( .A(n99), .B(n98), .Y(Q_IN[1]) );
  NAND2XLM U113 ( .A(n3), .B(n97), .Y(n99) );
  OR2X1M U114 ( .A(Q_ERR_SIGN[1]), .B(DSM_IN[1]), .Y(n3) );
  OR2X1M U115 ( .A(Q_ERR_SIGN[0]), .B(DSM_IN[0]), .Y(n4) );
  NAND2X2M U116 ( .A(Q_ERR_SIGN[7]), .B(DSM_IN[7]), .Y(n69) );
  CLKINVX1M U117 ( .A(n36), .Y(n38) );
  AOI21X2M U118 ( .A0(n3), .A1(n98), .B0(n10), .Y(n95) );
  AOI21X2M U119 ( .A0(n51), .A1(n6), .B0(n16), .Y(n48) );
  XOR2XLM U120 ( .A(n88), .B(n87), .Y(Q_IN[4]) );
  NOR2X2M U121 ( .A(Q_ERR_SIGN[2]), .B(DSM_IN[2]), .Y(n92) );
  NAND2X2M U122 ( .A(Q_ERR_SIGN[2]), .B(DSM_IN[2]), .Y(n93) );
  OAI21X4M U123 ( .A0(n92), .A1(n95), .B0(n93), .Y(n91) );
endmodule


module CALC_DCW_DCW_WIDTH9_err_width20_K_width9 ( CLK, RST, Q_ERR, Kcal, DCW
 );
  input [19:0] Q_ERR;
  input [8:0] Kcal;
  output [8:0] DCW;
  input CLK, RST;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487;
  wire   [28:20] DCW_MUL;

  DFFRHQX8M \DCW_reg[8]  ( .D(DCW_MUL[28]), .CK(CLK), .RN(RST), .Q(DCW[8]) );
  DFFRHQX8M \DCW_reg[7]  ( .D(DCW_MUL[27]), .CK(CLK), .RN(RST), .Q(DCW[7]) );
  DFFRHQX8M \DCW_reg[0]  ( .D(DCW_MUL[20]), .CK(CLK), .RN(RST), .Q(DCW[0]) );
  DFFRHQX8M \DCW_reg[1]  ( .D(DCW_MUL[21]), .CK(CLK), .RN(RST), .Q(DCW[1]) );
  DFFRHQX8M \DCW_reg[2]  ( .D(DCW_MUL[22]), .CK(CLK), .RN(RST), .Q(DCW[2]) );
  DFFRHQX8M \DCW_reg[3]  ( .D(DCW_MUL[23]), .CK(CLK), .RN(RST), .Q(DCW[3]) );
  DFFRHQX8M \DCW_reg[4]  ( .D(DCW_MUL[24]), .CK(CLK), .RN(RST), .Q(DCW[4]) );
  DFFRHQX8M \DCW_reg[5]  ( .D(DCW_MUL[25]), .CK(CLK), .RN(RST), .Q(DCW[5]) );
  DFFRHQX8M \DCW_reg[6]  ( .D(DCW_MUL[26]), .CK(CLK), .RN(RST), .Q(DCW[6]) );
  INVX2M U3 ( .A(n452), .Y(n469) );
  ADDFX2M U4 ( .A(n385), .B(n384), .CI(n383), .CO(n386), .S(n367) );
  NOR2X2M U5 ( .A(n78), .B(n293), .Y(n296) );
  NOR2X2M U6 ( .A(n307), .B(n306), .Y(n310) );
  OAI22X1M U7 ( .A0(n441), .A1(n18), .B0(n5), .B1(n17), .Y(n25) );
  INVX4M U8 ( .A(n14), .Y(n327) );
  INVX4M U9 ( .A(Kcal[1]), .Y(n356) );
  OAI22X2M U10 ( .A0(n97), .A1(Q_ERR[1]), .B0(n203), .B1(n10), .Y(n199) );
  CLKINVX1M U11 ( .A(n8), .Y(n1) );
  CLKINVX1M U12 ( .A(n1), .Y(n2) );
  OAI22XLM U13 ( .A0(n97), .A1(n203), .B0(n210), .B1(n10), .Y(n8) );
  CLKBUFX4M U14 ( .A(n340), .Y(n201) );
  OAI22XLM U15 ( .A0(n4), .A1(n172), .B0(n433), .B1(n171), .Y(n190) );
  OAI22XLM U16 ( .A0(n97), .A1(n82), .B0(n96), .B1(n10), .Y(n103) );
  OAI22XLM U17 ( .A0(n97), .A1(n37), .B0(n52), .B1(n10), .Y(n58) );
  OAI22XLM U18 ( .A0(n327), .A1(n219), .B0(n218), .B1(n373), .Y(n248) );
  OAI22XLM U19 ( .A0(n3), .A1(n379), .B0(n413), .B1(n394), .Y(n397) );
  OAI22XLM U20 ( .A0(n4), .A1(n335), .B0(n433), .B1(n350), .Y(n358) );
  CLKINVX1M U21 ( .A(n422), .Y(n408) );
  NAND2XLM U22 ( .A(n443), .B(n442), .Y(n444) );
  NAND2XLM U23 ( .A(n481), .B(n480), .Y(n482) );
  NAND2X8M U24 ( .A(n12), .B(n393), .Y(n3) );
  NAND2X8M U25 ( .A(n9), .B(n417), .Y(n4) );
  AOI21X2M U26 ( .A0(n296), .A1(n295), .B0(n294), .Y(n316) );
  NAND2X2M U27 ( .A(n457), .B(n456), .Y(n458) );
  NAND2X2M U28 ( .A(n468), .B(n466), .Y(n454) );
  INVX2M U29 ( .A(n448), .Y(n388) );
  INVX2M U30 ( .A(n475), .Y(n416) );
  NAND2X2M U31 ( .A(n449), .B(n448), .Y(n450) );
  INVX2M U32 ( .A(n466), .Y(n467) );
  INVX2M U33 ( .A(n453), .Y(n468) );
  NAND2X1M U34 ( .A(n300), .B(n299), .Y(n301) );
  NAND2X2M U35 ( .A(n415), .B(n414), .Y(n475) );
  INVX2M U36 ( .A(n484), .Y(n436) );
  NAND2X2M U37 ( .A(n387), .B(n386), .Y(n448) );
  NAND2X2M U38 ( .A(n435), .B(n434), .Y(n484) );
  NAND2X2M U39 ( .A(n445), .B(n444), .Y(n446) );
  ADDFX2M U40 ( .A(n123), .B(n122), .CI(n121), .CO(n304), .S(n300) );
  OR2X1M U41 ( .A(n443), .B(n442), .Y(n445) );
  ADDFX2M U42 ( .A(n358), .B(n357), .CI(n356), .CO(n375), .S(n361) );
  ADDFX1M U43 ( .A(n120), .B(n119), .CI(n118), .CO(n127), .S(n123) );
  ADDFX2M U44 ( .A(n345), .B(n344), .CI(n343), .CO(n352), .S(n348) );
  INVX1M U45 ( .A(Q_ERR[19]), .Y(n440) );
  XNOR2X2M U46 ( .A(n478), .B(n477), .Y(DCW_MUL[25]) );
  XOR2X2M U47 ( .A(n474), .B(n473), .Y(DCW_MUL[21]) );
  XOR2X2M U48 ( .A(n465), .B(n464), .Y(DCW_MUL[22]) );
  XNOR2X2M U49 ( .A(n451), .B(n450), .Y(DCW_MUL[23]) );
  XNOR2X2M U50 ( .A(n469), .B(n454), .Y(DCW_MUL[20]) );
  OAI21X4M U51 ( .A0(n316), .A1(n315), .B0(n314), .Y(n317) );
  AOI21X4M U52 ( .A0(n313), .A1(n312), .B0(n311), .Y(n314) );
  NAND2X4M U53 ( .A(n139), .B(n313), .Y(n315) );
  NAND2X2M U54 ( .A(n472), .B(n471), .Y(n473) );
  INVX2M U55 ( .A(n470), .Y(n472) );
  INVX2M U56 ( .A(n455), .Y(n457) );
  INVX2M U57 ( .A(n479), .Y(n481) );
  NAND2X2M U58 ( .A(n476), .B(n475), .Y(n477) );
  NAND2X1M U59 ( .A(n305), .B(n304), .Y(n309) );
  NAND2X1M U60 ( .A(n270), .B(n269), .Y(n271) );
  NAND2X2M U61 ( .A(n485), .B(n484), .Y(n486) );
  ADDFX2M U62 ( .A(n398), .B(n397), .CI(n396), .CO(n404), .S(n399) );
  ADDFX2M U63 ( .A(n377), .B(n376), .CI(n375), .CO(n400), .S(n383) );
  ADDFX2M U64 ( .A(n410), .B(n409), .CI(n408), .CO(n424), .S(n405) );
  ADDFX2M U65 ( .A(n422), .B(n421), .CI(n420), .CO(n428), .S(n423) );
  ADDFX1M U66 ( .A(n134), .B(n133), .CI(n132), .CO(n323), .S(n137) );
  INVX2M U67 ( .A(n439), .Y(n429) );
  INVX2M U68 ( .A(n391), .Y(n376) );
  ADDFX2M U69 ( .A(n382), .B(n381), .CI(n380), .CO(n396), .S(n385) );
  ADDFX1M U70 ( .A(n25), .B(n24), .CI(n23), .CO(n38), .S(n163) );
  ADDFX2M U71 ( .A(n391), .B(n390), .CI(n389), .CO(n406), .S(n401) );
  OR2X2M U72 ( .A(n441), .B(n440), .Y(n442) );
  OAI22X1M U73 ( .A0(n3), .A1(n394), .B0(n393), .B1(n412), .Y(n409) );
  OAI22X1M U74 ( .A0(n374), .A1(n116), .B0(n130), .B1(n373), .Y(n129) );
  XOR2X1M U75 ( .A(n6), .B(Kcal[6]), .Y(n9) );
  XOR2X1M U76 ( .A(n340), .B(Kcal[2]), .Y(n11) );
  XOR2X1M U77 ( .A(Kcal[5]), .B(Kcal[4]), .Y(n12) );
  INVX2M U78 ( .A(Kcal[5]), .Y(n412) );
  INVX2M U79 ( .A(Q_ERR[15]), .Y(n395) );
  INVX2M U80 ( .A(Q_ERR[16]), .Y(n407) );
  INVX8M U81 ( .A(Kcal[0]), .Y(n10) );
  INVX2M U82 ( .A(Q_ERR[17]), .Y(n419) );
  INVX2M U83 ( .A(Q_ERR[18]), .Y(n431) );
  INVX1M U84 ( .A(Q_ERR[11]), .Y(n320) );
  INVX1M U85 ( .A(Q_ERR[10]), .Y(n124) );
  INVX2M U86 ( .A(Q_ERR[12]), .Y(n342) );
  INVX2M U87 ( .A(Q_ERR[13]), .Y(n349) );
  INVX1M U88 ( .A(Q_ERR[14]), .Y(n378) );
  XOR2X4M U89 ( .A(n447), .B(n446), .Y(DCW_MUL[28]) );
  XOR2X1M U90 ( .A(n483), .B(n482), .Y(DCW_MUL[26]) );
  XOR2X1M U91 ( .A(n459), .B(n458), .Y(DCW_MUL[24]) );
  AOI21X4M U92 ( .A0(n259), .A1(n258), .B0(n257), .Y(n278) );
  OR2X2M U93 ( .A(n415), .B(n414), .Y(n476) );
  NOR2X4M U94 ( .A(n283), .B(n282), .Y(n286) );
  OR2X2M U95 ( .A(n387), .B(n386), .Y(n449) );
  OR2X2M U96 ( .A(n435), .B(n434), .Y(n485) );
  ADDFX2M U97 ( .A(n425), .B(n424), .CI(n423), .CO(n426), .S(n414) );
  ADDFX2M U98 ( .A(n325), .B(n324), .CI(n323), .CO(n347), .S(n332) );
  ADDFX2M U99 ( .A(n129), .B(n128), .CI(n127), .CO(n333), .S(n135) );
  ADDFX2M U100 ( .A(n353), .B(n376), .CI(n352), .CO(n384), .S(n359) );
  ADDFX2M U101 ( .A(n339), .B(n338), .CI(n337), .CO(n360), .S(n346) );
  ADDFX2M U102 ( .A(n100), .B(n99), .CI(n98), .CO(n122), .S(n106) );
  ADDFX2M U103 ( .A(n430), .B(n429), .CI(n428), .CO(n435), .S(n427) );
  ADDFX2M U104 ( .A(n439), .B(n438), .CI(n437), .CO(n443), .S(n434) );
  OAI22X1M U105 ( .A0(n327), .A1(n326), .B0(n341), .B1(n373), .Y(n339) );
  OAI22X1M U106 ( .A0(n374), .A1(n130), .B0(n326), .B1(n373), .Y(n325) );
  OAI22X1M U107 ( .A0(n374), .A1(n341), .B0(n355), .B1(n373), .Y(n353) );
  BUFX10M U108 ( .A(n13), .Y(n5) );
  NAND2X8M U109 ( .A(Kcal[1]), .B(n10), .Y(n97) );
  INVX12M U110 ( .A(n432), .Y(n6) );
  AOI21X6M U111 ( .A0(n487), .A1(n485), .B0(n436), .Y(n447) );
  NAND2X12M U112 ( .A(n5), .B(Kcal[8]), .Y(n441) );
  CLKINVX1M U113 ( .A(n222), .Y(n29) );
  CLKINVX1M U114 ( .A(Q_ERR[1]), .Y(n28) );
  CLKINVX1M U115 ( .A(Q_ERR[7]), .Y(n80) );
  CLKINVX1M U116 ( .A(Q_ERR[8]), .Y(n94) );
  AND2X2M U117 ( .A(n11), .B(n354), .Y(n14) );
  NAND2BXLM U118 ( .AN(n222), .B(Kcal[5]), .Y(n223) );
  CLKINVX1M U119 ( .A(Q_ERR[9]), .Y(n110) );
  NOR2BXLM U120 ( .AN(n222), .B(n413), .Y(n227) );
  NAND2BXLM U121 ( .AN(n222), .B(n6), .Y(n156) );
  NOR2BXLM U122 ( .AN(n222), .B(n433), .Y(n242) );
  NOR2BXLM U123 ( .AN(n222), .B(n5), .Y(n177) );
  ADDFX2M U124 ( .A(n153), .B(n152), .CI(n151), .CO(n148), .S(n170) );
  OAI22XLM U125 ( .A0(n441), .A1(n80), .B0(n5), .B1(n94), .Y(n105) );
  OAI22XLM U126 ( .A0(n374), .A1(n86), .B0(n101), .B1(n373), .Y(n100) );
  OAI22XLM U127 ( .A0(n97), .A1(n22), .B0(n21), .B1(n10), .Y(n23) );
  NAND2XLM U128 ( .A(n298), .B(n297), .Y(n302) );
  NOR2XLM U129 ( .A(n229), .B(n228), .Y(n231) );
  NAND2XLM U130 ( .A(n229), .B(n228), .Y(n230) );
  NAND2XLM U131 ( .A(n253), .B(n252), .Y(n254) );
  NOR2XLM U132 ( .A(n251), .B(n250), .Y(n249) );
  NAND2XLM U133 ( .A(n261), .B(n260), .Y(n265) );
  NAND2XLM U134 ( .A(n263), .B(n262), .Y(n264) );
  NOR2X2M U135 ( .A(n270), .B(n269), .Y(n273) );
  NAND2XLM U136 ( .A(n283), .B(n282), .Y(n284) );
  INVX4M U137 ( .A(Kcal[7]), .Y(n432) );
  OR2X2M U138 ( .A(n367), .B(n366), .Y(n463) );
  OAI21X8M U139 ( .A0(n452), .A1(n370), .B0(n369), .Y(n451) );
  AOI21X4M U140 ( .A0(n276), .A1(n275), .B0(n274), .Y(n277) );
  OAI22X2M U141 ( .A0(n441), .A1(n419), .B0(n5), .B1(n431), .Y(n439) );
  CLKINVX1M U142 ( .A(Q_ERR[3]), .Y(n17) );
  CLKINVX1M U143 ( .A(Q_ERR[5]), .Y(n50) );
  CLKINVX1M U144 ( .A(Q_ERR[2]), .Y(n18) );
  CLKINVX1M U145 ( .A(Q_ERR[4]), .Y(n35) );
  CLKINVX1M U146 ( .A(Q_ERR[6]), .Y(n64) );
  INVX6M U147 ( .A(n356), .Y(n209) );
  NAND2BXLM U148 ( .AN(n222), .B(n209), .Y(n193) );
  XNOR2XLM U149 ( .A(n6), .B(n222), .Y(n172) );
  OAI22XLM U150 ( .A0(n3), .A1(n221), .B0(n413), .B1(n220), .Y(n247) );
  NAND2XLM U151 ( .A(n251), .B(n250), .Y(n255) );
  NOR2X2M U152 ( .A(n453), .B(n470), .Y(n461) );
  XNOR2X4M U153 ( .A(Kcal[8]), .B(n6), .Y(n13) );
  OAI22X1M U154 ( .A0(n441), .A1(n17), .B0(n5), .B1(n35), .Y(n45) );
  XNOR2X4M U155 ( .A(Kcal[5]), .B(Kcal[6]), .Y(n417) );
  XNOR2X2M U156 ( .A(n6), .B(Q_ERR[5]), .Y(n19) );
  BUFX8M U157 ( .A(n417), .Y(n433) );
  XNOR2X2M U158 ( .A(n6), .B(Q_ERR[6]), .Y(n36) );
  OAI22X1M U159 ( .A0(n4), .A1(n19), .B0(n433), .B1(n36), .Y(n44) );
  XNOR2X2M U160 ( .A(n209), .B(Q_ERR[11]), .Y(n21) );
  XNOR2X2M U161 ( .A(n209), .B(Q_ERR[12]), .Y(n37) );
  OAI22X1M U162 ( .A0(n97), .A1(n21), .B0(n37), .B1(n10), .Y(n43) );
  INVX4M U163 ( .A(Kcal[3]), .Y(n372) );
  INVX8M U164 ( .A(n372), .Y(n340) );
  XNOR2X4M U165 ( .A(n209), .B(Kcal[2]), .Y(n354) );
  XNOR2X2M U166 ( .A(n340), .B(Q_ERR[8]), .Y(n26) );
  XNOR2X2M U167 ( .A(n201), .B(Q_ERR[9]), .Y(n15) );
  BUFX8M U168 ( .A(n354), .Y(n373) );
  OAI22X1M U169 ( .A0(n327), .A1(n26), .B0(n15), .B1(n373), .Y(n34) );
  XNOR2X4M U170 ( .A(n340), .B(Kcal[4]), .Y(n393) );
  XNOR2X2M U171 ( .A(Kcal[5]), .B(Q_ERR[6]), .Y(n27) );
  BUFX8M U172 ( .A(n393), .Y(n413) );
  XNOR2X2M U173 ( .A(Kcal[5]), .B(Q_ERR[7]), .Y(n16) );
  OAI22X1M U174 ( .A0(n3), .A1(n27), .B0(n413), .B1(n16), .Y(n33) );
  OAI22X1M U175 ( .A0(n441), .A1(n28), .B0(n5), .B1(n18), .Y(n143) );
  XNOR2X2M U176 ( .A(n6), .B(Q_ERR[3]), .Y(n30) );
  XNOR2X2M U177 ( .A(n6), .B(Q_ERR[4]), .Y(n20) );
  OAI22X1M U178 ( .A0(n4), .A1(n30), .B0(n433), .B1(n20), .Y(n142) );
  XNOR2X2M U179 ( .A(n209), .B(Q_ERR[9]), .Y(n31) );
  XNOR2X2M U180 ( .A(n209), .B(Q_ERR[10]), .Y(n22) );
  OAI22X1M U181 ( .A0(n97), .A1(n31), .B0(n22), .B1(n10), .Y(n141) );
  INVX6M U182 ( .A(n14), .Y(n374) );
  XNOR2X2M U183 ( .A(n201), .B(Q_ERR[10]), .Y(n41) );
  OAI22X1M U184 ( .A0(n374), .A1(n15), .B0(n41), .B1(n373), .Y(n40) );
  XNOR2X2M U185 ( .A(Kcal[5]), .B(Q_ERR[8]), .Y(n42) );
  OAI22X1M U186 ( .A0(n3), .A1(n16), .B0(n413), .B1(n42), .Y(n39) );
  OAI22X1M U187 ( .A0(n4), .A1(n20), .B0(n433), .B1(n19), .Y(n24) );
  XNOR2X2M U188 ( .A(n201), .B(Q_ERR[7]), .Y(n144) );
  OAI22X1M U189 ( .A0(n374), .A1(n144), .B0(n26), .B1(n373), .Y(n150) );
  XNOR2X2M U190 ( .A(Kcal[5]), .B(Q_ERR[5]), .Y(n145) );
  OAI22X1M U191 ( .A0(n3), .A1(n145), .B0(n413), .B1(n27), .Y(n149) );
  CLKBUFX4M U192 ( .A(Q_ERR[0]), .Y(n222) );
  OAI22X1M U193 ( .A0(n441), .A1(n29), .B0(n5), .B1(n28), .Y(n153) );
  XNOR2X2M U194 ( .A(n6), .B(Q_ERR[2]), .Y(n146) );
  OAI22X1M U195 ( .A0(n4), .A1(n146), .B0(n433), .B1(n30), .Y(n152) );
  XNOR2X2M U196 ( .A(n209), .B(Q_ERR[8]), .Y(n155) );
  OAI22X1M U197 ( .A0(n97), .A1(n155), .B0(n31), .B1(n10), .Y(n151) );
  ADDFX1M U198 ( .A(n34), .B(n33), .CI(n32), .CO(n47), .S(n161) );
  NOR2X2M U199 ( .A(n281), .B(n280), .Y(n49) );
  OAI22X1M U200 ( .A0(n441), .A1(n35), .B0(n5), .B1(n50), .Y(n60) );
  XNOR2X2M U201 ( .A(n6), .B(Q_ERR[7]), .Y(n51) );
  OAI22X1M U202 ( .A0(n4), .A1(n36), .B0(n433), .B1(n51), .Y(n59) );
  XNOR2X2M U203 ( .A(n209), .B(Q_ERR[13]), .Y(n52) );
  ADDFX1M U204 ( .A(n40), .B(n39), .CI(n38), .CO(n62), .S(n46) );
  XNOR2X2M U205 ( .A(n201), .B(Q_ERR[11]), .Y(n56) );
  OAI22X1M U206 ( .A0(n374), .A1(n41), .B0(n56), .B1(n373), .Y(n55) );
  XNOR2X2M U207 ( .A(Kcal[5]), .B(Q_ERR[9]), .Y(n57) );
  OAI22X1M U208 ( .A0(n3), .A1(n42), .B0(n413), .B1(n57), .Y(n54) );
  ADDFX1M U209 ( .A(n45), .B(n44), .CI(n43), .CO(n53), .S(n48) );
  ADDFX2M U210 ( .A(n48), .B(n47), .CI(n46), .CO(n282), .S(n281) );
  NOR2X2M U211 ( .A(n49), .B(n286), .Y(n79) );
  OAI22X1M U212 ( .A0(n441), .A1(n50), .B0(n5), .B1(n64), .Y(n74) );
  XNOR2X2M U213 ( .A(n6), .B(Q_ERR[8]), .Y(n65) );
  OAI22X1M U214 ( .A0(n4), .A1(n51), .B0(n433), .B1(n65), .Y(n73) );
  XNOR2X2M U215 ( .A(n209), .B(Q_ERR[14]), .Y(n66) );
  OAI22X1M U216 ( .A0(n97), .A1(n52), .B0(n66), .B1(n10), .Y(n72) );
  ADDFX1M U217 ( .A(n55), .B(n54), .CI(n53), .CO(n76), .S(n61) );
  XNOR2X2M U218 ( .A(n201), .B(Q_ERR[12]), .Y(n70) );
  OAI22X1M U219 ( .A0(n327), .A1(n56), .B0(n70), .B1(n373), .Y(n69) );
  XNOR2X2M U220 ( .A(Kcal[5]), .B(Q_ERR[10]), .Y(n71) );
  OAI22X1M U221 ( .A0(n3), .A1(n57), .B0(n413), .B1(n71), .Y(n68) );
  ADDFX1M U222 ( .A(n60), .B(n59), .CI(n58), .CO(n67), .S(n63) );
  ADDFX2M U223 ( .A(n63), .B(n62), .CI(n61), .CO(n287), .S(n283) );
  NOR2X2M U224 ( .A(n288), .B(n287), .Y(n78) );
  OAI22X1M U225 ( .A0(n441), .A1(n64), .B0(n5), .B1(n80), .Y(n90) );
  XNOR2X2M U226 ( .A(n6), .B(Q_ERR[9]), .Y(n81) );
  OAI22X1M U227 ( .A0(n4), .A1(n65), .B0(n433), .B1(n81), .Y(n89) );
  XNOR2X2M U228 ( .A(Kcal[1]), .B(Q_ERR[15]), .Y(n82) );
  OAI22X1M U229 ( .A0(n97), .A1(n66), .B0(n82), .B1(n10), .Y(n88) );
  ADDFX1M U230 ( .A(n69), .B(n68), .CI(n67), .CO(n92), .S(n75) );
  XNOR2X2M U231 ( .A(n201), .B(Q_ERR[13]), .Y(n86) );
  OAI22X1M U232 ( .A0(n374), .A1(n70), .B0(n86), .B1(n373), .Y(n85) );
  XNOR2X2M U233 ( .A(Kcal[5]), .B(Q_ERR[11]), .Y(n87) );
  OAI22X1M U234 ( .A0(n3), .A1(n71), .B0(n413), .B1(n87), .Y(n84) );
  ADDFX1M U235 ( .A(n74), .B(n73), .CI(n72), .CO(n83), .S(n77) );
  ADDFX2M U236 ( .A(n77), .B(n76), .CI(n75), .CO(n289), .S(n288) );
  NOR2X4M U237 ( .A(n290), .B(n289), .Y(n293) );
  NAND2X2M U238 ( .A(n79), .B(n296), .Y(n140) );
  XNOR2X2M U239 ( .A(n6), .B(Q_ERR[10]), .Y(n95) );
  OAI22X1M U240 ( .A0(n4), .A1(n81), .B0(n433), .B1(n95), .Y(n104) );
  XNOR2X2M U241 ( .A(Kcal[1]), .B(Q_ERR[16]), .Y(n96) );
  ADDFX1M U242 ( .A(n85), .B(n84), .CI(n83), .CO(n107), .S(n91) );
  XNOR2X2M U243 ( .A(n201), .B(Q_ERR[14]), .Y(n101) );
  XNOR2X2M U244 ( .A(Kcal[5]), .B(Q_ERR[12]), .Y(n102) );
  OAI22X1M U245 ( .A0(n3), .A1(n87), .B0(n413), .B1(n102), .Y(n99) );
  ADDFX1M U246 ( .A(n90), .B(n89), .CI(n88), .CO(n98), .S(n93) );
  ADDFX2M U247 ( .A(n93), .B(n92), .CI(n91), .CO(n297), .S(n290) );
  NOR2X2M U248 ( .A(n298), .B(n297), .Y(n109) );
  OAI22X1M U249 ( .A0(n441), .A1(n94), .B0(n5), .B1(n110), .Y(n120) );
  XNOR2X2M U250 ( .A(n6), .B(Q_ERR[11]), .Y(n111) );
  OAI22X1M U251 ( .A0(n4), .A1(n95), .B0(n433), .B1(n111), .Y(n119) );
  XNOR2X2M U252 ( .A(Kcal[1]), .B(Q_ERR[17]), .Y(n112) );
  OAI22X1M U253 ( .A0(n97), .A1(n96), .B0(n112), .B1(n10), .Y(n118) );
  XNOR2X2M U254 ( .A(n340), .B(Q_ERR[15]), .Y(n116) );
  OAI22X1M U255 ( .A0(n327), .A1(n101), .B0(n116), .B1(n373), .Y(n115) );
  XNOR2X2M U256 ( .A(Kcal[5]), .B(Q_ERR[13]), .Y(n117) );
  OAI22X1M U257 ( .A0(n3), .A1(n102), .B0(n413), .B1(n117), .Y(n114) );
  ADDFX1M U258 ( .A(n105), .B(n104), .CI(n103), .CO(n113), .S(n108) );
  ADDFX2M U259 ( .A(n108), .B(n107), .CI(n106), .CO(n299), .S(n298) );
  NOR2X2M U260 ( .A(n300), .B(n299), .Y(n303) );
  NOR2X2M U261 ( .A(n109), .B(n303), .Y(n139) );
  OAI22X1M U262 ( .A0(n441), .A1(n110), .B0(n5), .B1(n124), .Y(n134) );
  XNOR2X2M U263 ( .A(n6), .B(Q_ERR[12]), .Y(n125) );
  OAI22X1M U264 ( .A0(n4), .A1(n111), .B0(n433), .B1(n125), .Y(n133) );
  XNOR2X2M U265 ( .A(Kcal[1]), .B(Q_ERR[18]), .Y(n126) );
  OAI22X1M U266 ( .A0(n97), .A1(n112), .B0(n126), .B1(n10), .Y(n132) );
  ADDFX1M U267 ( .A(n115), .B(n114), .CI(n113), .CO(n136), .S(n121) );
  XNOR2X2M U268 ( .A(n340), .B(Q_ERR[16]), .Y(n130) );
  XNOR2X2M U269 ( .A(Kcal[5]), .B(Q_ERR[14]), .Y(n131) );
  OAI22X1M U270 ( .A0(n3), .A1(n117), .B0(n413), .B1(n131), .Y(n128) );
  NOR2X2M U271 ( .A(n305), .B(n304), .Y(n138) );
  OAI22X1M U272 ( .A0(n441), .A1(n124), .B0(n5), .B1(n320), .Y(n331) );
  XNOR2X2M U273 ( .A(n6), .B(Q_ERR[13]), .Y(n321) );
  OAI22X1M U274 ( .A0(n4), .A1(n125), .B0(n433), .B1(n321), .Y(n330) );
  XNOR2X2M U275 ( .A(Kcal[1]), .B(Q_ERR[19]), .Y(n322) );
  OAI22X1M U276 ( .A0(n97), .A1(n126), .B0(n322), .B1(n10), .Y(n329) );
  XNOR2X2M U277 ( .A(n340), .B(Q_ERR[17]), .Y(n326) );
  XNOR2X2M U278 ( .A(Kcal[5]), .B(Q_ERR[15]), .Y(n328) );
  OAI22X1M U279 ( .A0(n3), .A1(n131), .B0(n413), .B1(n328), .Y(n324) );
  ADDFX2M U280 ( .A(n137), .B(n136), .CI(n135), .CO(n306), .S(n305) );
  NOR2X4M U281 ( .A(n138), .B(n310), .Y(n313) );
  NOR2X4M U282 ( .A(n140), .B(n315), .Y(n319) );
  ADDFX1M U283 ( .A(n143), .B(n142), .CI(n141), .CO(n32), .S(n166) );
  XNOR2X2M U284 ( .A(n201), .B(Q_ERR[6]), .Y(n147) );
  OAI22X1M U285 ( .A0(n374), .A1(n147), .B0(n144), .B1(n373), .Y(n160) );
  XNOR2X2M U286 ( .A(Kcal[5]), .B(Q_ERR[4]), .Y(n154) );
  OAI22X1M U287 ( .A0(n3), .A1(n154), .B0(n413), .B1(n145), .Y(n159) );
  XNOR2X2M U288 ( .A(n6), .B(Q_ERR[1]), .Y(n171) );
  OAI22X1M U289 ( .A0(n4), .A1(n171), .B0(n433), .B1(n146), .Y(n176) );
  XNOR2X2M U290 ( .A(n201), .B(Q_ERR[5]), .Y(n174) );
  OAI22X1M U291 ( .A0(n327), .A1(n174), .B0(n147), .B1(n373), .Y(n175) );
  ADDFX1M U292 ( .A(n150), .B(n149), .CI(n148), .CO(n162), .S(n164) );
  XNOR2X2M U293 ( .A(Kcal[5]), .B(Q_ERR[3]), .Y(n173) );
  OAI22X1M U294 ( .A0(n3), .A1(n173), .B0(n413), .B1(n154), .Y(n180) );
  XNOR2X2M U295 ( .A(n209), .B(Q_ERR[7]), .Y(n157) );
  OAI22X1M U296 ( .A0(n97), .A1(n157), .B0(n155), .B1(n10), .Y(n179) );
  OAI22X1M U297 ( .A0(n4), .A1(n432), .B0(n433), .B1(n156), .Y(n185) );
  XNOR2X2M U298 ( .A(n209), .B(Q_ERR[6]), .Y(n236) );
  OAI22X1M U299 ( .A0(n97), .A1(n236), .B0(n157), .B1(n10), .Y(n184) );
  ADDFX1M U300 ( .A(n160), .B(n159), .CI(n158), .CO(n165), .S(n168) );
  NOR2X2M U301 ( .A(n268), .B(n267), .Y(n167) );
  ADDFX2M U302 ( .A(n163), .B(n162), .CI(n161), .CO(n280), .S(n270) );
  ADDFX2M U303 ( .A(n166), .B(n165), .CI(n164), .CO(n269), .S(n268) );
  NOR2X4M U304 ( .A(n167), .B(n273), .Y(n276) );
  ADDFX2M U305 ( .A(n170), .B(n169), .CI(n168), .CO(n267), .S(n263) );
  XNOR2X2M U306 ( .A(Kcal[5]), .B(Q_ERR[2]), .Y(n186) );
  OAI22X1M U307 ( .A0(n3), .A1(n186), .B0(n413), .B1(n173), .Y(n189) );
  XNOR2X2M U308 ( .A(n340), .B(Q_ERR[4]), .Y(n187) );
  OAI22X1M U309 ( .A0(n374), .A1(n187), .B0(n174), .B1(n373), .Y(n188) );
  ADDFX1M U310 ( .A(n177), .B(n176), .CI(n175), .CO(n158), .S(n182) );
  ADDFX1M U311 ( .A(n180), .B(n179), .CI(n178), .CO(n169), .S(n181) );
  NOR2X2M U312 ( .A(n263), .B(n262), .Y(n266) );
  ADDFX1M U313 ( .A(n183), .B(n182), .CI(n181), .CO(n262), .S(n261) );
  ADDHX1M U314 ( .A(n185), .B(n184), .CO(n178), .S(n235) );
  XNOR2X2M U315 ( .A(Kcal[5]), .B(Q_ERR[1]), .Y(n220) );
  OAI22X1M U316 ( .A0(n3), .A1(n220), .B0(n413), .B1(n186), .Y(n241) );
  XNOR2X2M U317 ( .A(n201), .B(Q_ERR[3]), .Y(n218) );
  OAI22X1M U318 ( .A0(n374), .A1(n218), .B0(n187), .B1(n373), .Y(n240) );
  ADDFX1M U319 ( .A(n190), .B(n189), .CI(n188), .CO(n183), .S(n233) );
  NOR2X2M U320 ( .A(n261), .B(n260), .Y(n191) );
  NOR2X2M U321 ( .A(n266), .B(n191), .Y(n192) );
  NAND2X2M U322 ( .A(n276), .B(n192), .Y(n279) );
  XNOR2X2M U323 ( .A(n209), .B(Q_ERR[2]), .Y(n203) );
  OAI22XLM U324 ( .A0(n97), .A1(n222), .B0(Q_ERR[1]), .B1(n10), .Y(n195) );
  CLKINVX1M U325 ( .A(n193), .Y(n194) );
  AND2X1M U326 ( .A(n195), .B(n194), .Y(n198) );
  NOR2BXLM U327 ( .AN(n222), .B(n373), .Y(n196) );
  AND2X1M U328 ( .A(n199), .B(n196), .Y(n197) );
  AOI21XLM U329 ( .A0(n199), .A1(n198), .B0(n197), .Y(n207) );
  NAND2BXLM U330 ( .AN(n222), .B(n201), .Y(n200) );
  OAI22XLM U331 ( .A0(n327), .A1(n372), .B0(n373), .B1(n200), .Y(n212) );
  XNOR2XLM U332 ( .A(n340), .B(n222), .Y(n202) );
  XNOR2X2M U333 ( .A(n201), .B(Q_ERR[1]), .Y(n208) );
  OAI22X1M U334 ( .A0(n374), .A1(n202), .B0(n208), .B1(n373), .Y(n211) );
  XNOR2X2M U335 ( .A(n209), .B(Q_ERR[3]), .Y(n210) );
  NOR2XLM U336 ( .A(n204), .B(n2), .Y(n206) );
  NAND2XLM U337 ( .A(n204), .B(n2), .Y(n205) );
  OAI21X1M U338 ( .A0(n207), .A1(n206), .B0(n205), .Y(n217) );
  XNOR2X2M U339 ( .A(n340), .B(Q_ERR[2]), .Y(n219) );
  OAI22X1M U340 ( .A0(n374), .A1(n208), .B0(n219), .B1(n373), .Y(n226) );
  XNOR2X2M U341 ( .A(n209), .B(Q_ERR[4]), .Y(n224) );
  OAI22X1M U342 ( .A0(n97), .A1(n210), .B0(n224), .B1(n10), .Y(n225) );
  ADDHX1M U343 ( .A(n212), .B(n211), .CO(n213), .S(n204) );
  OR2X1M U344 ( .A(n214), .B(n213), .Y(n216) );
  AND2X1M U345 ( .A(n214), .B(n213), .Y(n215) );
  AOI21X2M U346 ( .A0(n217), .A1(n216), .B0(n215), .Y(n232) );
  XNOR2XLM U347 ( .A(Kcal[5]), .B(n222), .Y(n221) );
  OAI22X1M U348 ( .A0(n3), .A1(n412), .B0(n413), .B1(n223), .Y(n239) );
  XNOR2X2M U349 ( .A(n209), .B(Q_ERR[5]), .Y(n237) );
  OAI22X1M U350 ( .A0(n97), .A1(n224), .B0(n237), .B1(n10), .Y(n238) );
  ADDFX1M U351 ( .A(n227), .B(n226), .CI(n225), .CO(n228), .S(n214) );
  OAI21X2M U352 ( .A0(n232), .A1(n231), .B0(n230), .Y(n259) );
  ADDFX2M U353 ( .A(n235), .B(n234), .CI(n233), .CO(n260), .S(n253) );
  OAI22X1M U354 ( .A0(n97), .A1(n237), .B0(n236), .B1(n10), .Y(n245) );
  ADDHX1M U355 ( .A(n239), .B(n238), .CO(n244), .S(n246) );
  ADDFX1M U356 ( .A(n242), .B(n241), .CI(n240), .CO(n234), .S(n243) );
  NOR2X2M U357 ( .A(n253), .B(n252), .Y(n256) );
  ADDFX1M U358 ( .A(n245), .B(n244), .CI(n243), .CO(n252), .S(n251) );
  ADDFX1M U359 ( .A(n248), .B(n247), .CI(n246), .CO(n250), .S(n229) );
  NOR2X2M U360 ( .A(n256), .B(n249), .Y(n258) );
  OAI21X2M U361 ( .A0(n256), .A1(n255), .B0(n254), .Y(n257) );
  OAI21X2M U362 ( .A0(n266), .A1(n265), .B0(n264), .Y(n275) );
  NAND2X2M U363 ( .A(n268), .B(n267), .Y(n272) );
  OAI21X2M U364 ( .A0(n273), .A1(n272), .B0(n271), .Y(n274) );
  OAI21X4M U365 ( .A0(n279), .A1(n278), .B0(n277), .Y(n318) );
  NAND2X2M U366 ( .A(n281), .B(n280), .Y(n285) );
  OAI21X2M U367 ( .A0(n286), .A1(n285), .B0(n284), .Y(n295) );
  NAND2X2M U368 ( .A(n288), .B(n287), .Y(n292) );
  NAND2X2M U369 ( .A(n290), .B(n289), .Y(n291) );
  OAI21X2M U370 ( .A0(n293), .A1(n292), .B0(n291), .Y(n294) );
  OAI21X2M U371 ( .A0(n303), .A1(n302), .B0(n301), .Y(n312) );
  NAND2X2M U372 ( .A(n307), .B(n306), .Y(n308) );
  OAI21X2M U373 ( .A0(n310), .A1(n309), .B0(n308), .Y(n311) );
  AOI21X8M U374 ( .A0(n319), .A1(n318), .B0(n317), .Y(n452) );
  OAI22X1M U375 ( .A0(n441), .A1(n320), .B0(n5), .B1(n342), .Y(n345) );
  XNOR2X2M U376 ( .A(n6), .B(Q_ERR[14]), .Y(n335) );
  OAI22X1M U377 ( .A0(n4), .A1(n321), .B0(n433), .B1(n335), .Y(n344) );
  OAI22X1M U378 ( .A0(n97), .A1(n322), .B0(n356), .B1(n10), .Y(n343) );
  XNOR2X2M U379 ( .A(n340), .B(Q_ERR[18]), .Y(n341) );
  XNOR2X2M U380 ( .A(Kcal[5]), .B(Q_ERR[16]), .Y(n336) );
  OAI22X1M U381 ( .A0(n3), .A1(n328), .B0(n413), .B1(n336), .Y(n338) );
  ADDFX2M U382 ( .A(n331), .B(n330), .CI(n329), .CO(n337), .S(n334) );
  ADDFX2M U383 ( .A(n334), .B(n333), .CI(n332), .CO(n362), .S(n307) );
  NOR2X2M U384 ( .A(n363), .B(n362), .Y(n453) );
  XNOR2X2M U385 ( .A(n6), .B(Q_ERR[15]), .Y(n350) );
  XNOR2X2M U386 ( .A(Kcal[5]), .B(Q_ERR[17]), .Y(n351) );
  OAI22X1M U387 ( .A0(n3), .A1(n336), .B0(n413), .B1(n351), .Y(n357) );
  XNOR2X2M U388 ( .A(n340), .B(Q_ERR[19]), .Y(n355) );
  OAI22X2M U389 ( .A0(n441), .A1(n342), .B0(n5), .B1(n349), .Y(n391) );
  ADDFX2M U390 ( .A(n348), .B(n347), .CI(n346), .CO(n364), .S(n363) );
  NOR2X4M U391 ( .A(n365), .B(n364), .Y(n470) );
  OAI22X1M U392 ( .A0(n441), .A1(n349), .B0(n5), .B1(n378), .Y(n382) );
  XNOR2X2M U393 ( .A(n6), .B(Q_ERR[16]), .Y(n371) );
  OAI22X1M U394 ( .A0(n4), .A1(n350), .B0(n433), .B1(n371), .Y(n381) );
  XNOR2X2M U395 ( .A(Kcal[5]), .B(Q_ERR[18]), .Y(n379) );
  OAI22X1M U396 ( .A0(n3), .A1(n351), .B0(n413), .B1(n379), .Y(n380) );
  OAI22X1M U397 ( .A0(n374), .A1(n355), .B0(n354), .B1(n372), .Y(n377) );
  ADDFX2M U398 ( .A(n361), .B(n360), .CI(n359), .CO(n366), .S(n365) );
  NAND2X2M U399 ( .A(n461), .B(n463), .Y(n370) );
  NAND2X2M U400 ( .A(n363), .B(n362), .Y(n466) );
  NAND2X2M U401 ( .A(n365), .B(n364), .Y(n471) );
  OAI21X2M U402 ( .A0(n470), .A1(n466), .B0(n471), .Y(n460) );
  NAND2X2M U403 ( .A(n367), .B(n366), .Y(n462) );
  INVX2M U404 ( .A(n462), .Y(n368) );
  AOI21X2M U405 ( .A0(n460), .A1(n463), .B0(n368), .Y(n369) );
  XNOR2X2M U406 ( .A(n6), .B(Q_ERR[17]), .Y(n392) );
  OAI22X1M U407 ( .A0(n4), .A1(n371), .B0(n433), .B1(n392), .Y(n390) );
  AO21XLM U408 ( .A0(n374), .A1(n373), .B0(n372), .Y(n389) );
  OAI22X1M U409 ( .A0(n441), .A1(n378), .B0(n5), .B1(n395), .Y(n398) );
  XNOR2X2M U410 ( .A(Kcal[5]), .B(Q_ERR[19]), .Y(n394) );
  AOI21X8M U411 ( .A0(n451), .A1(n449), .B0(n388), .Y(n459) );
  XNOR2X2M U412 ( .A(n6), .B(Q_ERR[18]), .Y(n411) );
  OAI22X1M U413 ( .A0(n4), .A1(n392), .B0(n433), .B1(n411), .Y(n410) );
  OAI22X2M U414 ( .A0(n441), .A1(n395), .B0(n5), .B1(n407), .Y(n422) );
  ADDFX2M U415 ( .A(n401), .B(n400), .CI(n399), .CO(n402), .S(n387) );
  NOR2X2M U416 ( .A(n403), .B(n402), .Y(n455) );
  NAND2X2M U417 ( .A(n403), .B(n402), .Y(n456) );
  OAI21X8M U418 ( .A0(n459), .A1(n455), .B0(n456), .Y(n478) );
  ADDFX2M U419 ( .A(n406), .B(n405), .CI(n404), .CO(n415), .S(n403) );
  OAI22X1M U420 ( .A0(n441), .A1(n407), .B0(n5), .B1(n419), .Y(n425) );
  XNOR2X2M U421 ( .A(n6), .B(Q_ERR[19]), .Y(n418) );
  OAI22X1M U422 ( .A0(n4), .A1(n411), .B0(n433), .B1(n418), .Y(n421) );
  AO21XLM U423 ( .A0(n3), .A1(n413), .B0(n412), .Y(n420) );
  AOI21X8M U424 ( .A0(n478), .A1(n476), .B0(n416), .Y(n483) );
  OAI22X1M U425 ( .A0(n4), .A1(n418), .B0(n417), .B1(n432), .Y(n430) );
  NOR2X2M U426 ( .A(n427), .B(n426), .Y(n479) );
  NAND2X2M U427 ( .A(n427), .B(n426), .Y(n480) );
  OAI21X8M U428 ( .A0(n483), .A1(n479), .B0(n480), .Y(n487) );
  OAI22X1M U429 ( .A0(n441), .A1(n431), .B0(n5), .B1(n440), .Y(n438) );
  AO21XLM U430 ( .A0(n4), .A1(n433), .B0(n432), .Y(n437) );
  AOI21X2M U431 ( .A0(n469), .A1(n461), .B0(n460), .Y(n465) );
  NAND2X2M U432 ( .A(n463), .B(n462), .Y(n464) );
  AOI21X2M U433 ( .A0(n469), .A1(n468), .B0(n467), .Y(n474) );
  XNOR2X2M U434 ( .A(n487), .B(n486), .Y(DCW_MUL[27]) );
endmodule


module CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8 ( CLK, RST, 
        DSM_out, FCW, FRAC_IN, INTEGER_IN, MMD_CNTRL );
  input [26:0] FCW;
  output [19:0] FRAC_IN;
  output [6:0] INTEGER_IN;
  output [7:0] MMD_CNTRL;
  input CLK, RST, DSM_out;
  wire   n7, n8, n9, n10, n11, n12, n13, N1, N2, N3, N4, N5, N6, N7, N8, n1,
         n2, n3, n4, n5, n6;

  DFFRQX1M \INTEGER_IN_reg[6]  ( .D(FCW[26]), .CK(CLK), .RN(RST), .Q(n7) );
  DFFRQX1M \INTEGER_IN_reg[5]  ( .D(FCW[25]), .CK(CLK), .RN(RST), .Q(n8) );
  DFFRQX1M \INTEGER_IN_reg[4]  ( .D(FCW[24]), .CK(CLK), .RN(RST), .Q(n9) );
  DFFRQX1M \INTEGER_IN_reg[3]  ( .D(FCW[23]), .CK(CLK), .RN(RST), .Q(n10) );
  DFFRQX1M \INTEGER_IN_reg[2]  ( .D(FCW[22]), .CK(CLK), .RN(RST), .Q(n11) );
  DFFRQX1M \INTEGER_IN_reg[1]  ( .D(FCW[21]), .CK(CLK), .RN(RST), .Q(n12) );
  DFFRQX1M \INTEGER_IN_reg[0]  ( .D(FCW[20]), .CK(CLK), .RN(RST), .Q(n13) );
  DFFRQX1M \FRAC_IN_reg[19]  ( .D(FCW[19]), .CK(CLK), .RN(RST), .Q(FRAC_IN[19]) );
  DFFRQX1M \FRAC_IN_reg[18]  ( .D(FCW[18]), .CK(CLK), .RN(RST), .Q(FRAC_IN[18]) );
  DFFRQX1M \FRAC_IN_reg[17]  ( .D(FCW[17]), .CK(CLK), .RN(RST), .Q(FRAC_IN[17]) );
  DFFRQX1M \FRAC_IN_reg[16]  ( .D(FCW[16]), .CK(CLK), .RN(RST), .Q(FRAC_IN[16]) );
  DFFRQX1M \FRAC_IN_reg[15]  ( .D(FCW[15]), .CK(CLK), .RN(RST), .Q(FRAC_IN[15]) );
  DFFRQX1M \FRAC_IN_reg[14]  ( .D(FCW[14]), .CK(CLK), .RN(RST), .Q(FRAC_IN[14]) );
  DFFRQX1M \FRAC_IN_reg[13]  ( .D(FCW[13]), .CK(CLK), .RN(RST), .Q(FRAC_IN[13]) );
  DFFRQX1M \FRAC_IN_reg[12]  ( .D(FCW[12]), .CK(CLK), .RN(RST), .Q(FRAC_IN[12]) );
  DFFRQX1M \FRAC_IN_reg[11]  ( .D(FCW[11]), .CK(CLK), .RN(RST), .Q(FRAC_IN[11]) );
  DFFRQX1M \FRAC_IN_reg[10]  ( .D(FCW[10]), .CK(CLK), .RN(RST), .Q(FRAC_IN[10]) );
  DFFRQX1M \FRAC_IN_reg[9]  ( .D(FCW[9]), .CK(CLK), .RN(RST), .Q(FRAC_IN[9])
         );
  DFFRQX1M \FRAC_IN_reg[8]  ( .D(FCW[8]), .CK(CLK), .RN(RST), .Q(FRAC_IN[8])
         );
  DFFRQX1M \FRAC_IN_reg[7]  ( .D(FCW[7]), .CK(CLK), .RN(RST), .Q(FRAC_IN[7])
         );
  DFFRQX1M \FRAC_IN_reg[6]  ( .D(FCW[6]), .CK(CLK), .RN(RST), .Q(FRAC_IN[6])
         );
  DFFRQX1M \FRAC_IN_reg[5]  ( .D(FCW[5]), .CK(CLK), .RN(RST), .Q(FRAC_IN[5])
         );
  DFFRQX1M \FRAC_IN_reg[4]  ( .D(FCW[4]), .CK(CLK), .RN(RST), .Q(FRAC_IN[4])
         );
  DFFRQX1M \FRAC_IN_reg[3]  ( .D(FCW[3]), .CK(CLK), .RN(RST), .Q(FRAC_IN[3])
         );
  DFFRQX1M \FRAC_IN_reg[2]  ( .D(FCW[2]), .CK(CLK), .RN(RST), .Q(FRAC_IN[2])
         );
  DFFRQX1M \FRAC_IN_reg[1]  ( .D(FCW[1]), .CK(CLK), .RN(RST), .Q(FRAC_IN[1])
         );
  DFFRQX1M \FRAC_IN_reg[0]  ( .D(FCW[0]), .CK(CLK), .RN(RST), .Q(FRAC_IN[0])
         );
  DFFRHQX8M \MMD_CNTRL_reg[0]  ( .D(N1), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[0])
         );
  DFFRHQX8M \MMD_CNTRL_reg[1]  ( .D(N2), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[1])
         );
  DFFRHQX8M \MMD_CNTRL_reg[2]  ( .D(N3), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[2])
         );
  DFFRHQX8M \MMD_CNTRL_reg[3]  ( .D(N4), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[3])
         );
  DFFRHQX8M \MMD_CNTRL_reg[4]  ( .D(N5), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[4])
         );
  DFFRHQX8M \MMD_CNTRL_reg[5]  ( .D(N6), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[5])
         );
  DFFRHQX8M \MMD_CNTRL_reg[6]  ( .D(N7), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[6])
         );
  DFFRHQX8M \MMD_CNTRL_reg[7]  ( .D(N8), .CK(CLK), .RN(RST), .Q(MMD_CNTRL[7])
         );
  AOI2B1X1M U3 ( .A1N(n9), .A0(n5), .B0(n4), .Y(N5) );
  AOI2BB1X1M U4 ( .A0N(n11), .A1N(n2), .B0(n1), .Y(N3) );
  AOI2B1X1M U5 ( .A1N(n7), .A0(n6), .B0(N8), .Y(N7) );
  OA21X1M U6 ( .A0(n4), .A1(n8), .B0(n6), .Y(N6) );
  NAND2X1M U7 ( .A(n13), .B(DSM_out), .Y(n3) );
  OA21XLM U8 ( .A0(n1), .A1(n10), .B0(n5), .Y(N4) );
  AOI2B1XLM U9 ( .A1N(n12), .A0(n3), .B0(n2), .Y(N2) );
  OA21XLM U10 ( .A0(n13), .A1(DSM_out), .B0(n3), .Y(N1) );
  AND3X2M U11 ( .A(n13), .B(DSM_out), .C(n12), .Y(n2) );
  AND2X2M U12 ( .A(n11), .B(n2), .Y(n1) );
  NAND2X2M U13 ( .A(n1), .B(n10), .Y(n5) );
  NOR2BX2M U14 ( .AN(n9), .B(n5), .Y(n4) );
  NAND2X2M U15 ( .A(n4), .B(n8), .Y(n6) );
  NOR2BX2M U16 ( .AN(n7), .B(n6), .Y(N8) );
endmodule


module LMS_in_width4_K_width9_err_width20 ( CLK, RST, TDC_OUT, Q_ERR, 
        Kcal_UNSIGN, OV_FL, UN_FL );
  input [3:0] TDC_OUT;
  input [19:0] Q_ERR;
  output [8:0] Kcal_UNSIGN;
  input CLK, RST;
  output OV_FL, UN_FL;
  wire   n499, n500, n501, CORR_OUT_24, N30, N31, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         N52, N53, N54, \DP_OP_6J1_122_2730/n647 , \DP_OP_6J1_122_2730/n646 ,
         \DP_OP_6J1_122_2730/n411 , n2, n3, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
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
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498;
  wire   [15:0] CORR_OUT;
  assign Kcal_UNSIGN[7] = \DP_OP_6J1_122_2730/n647 ;
  assign Kcal_UNSIGN[5] = \DP_OP_6J1_122_2730/n646 ;

  DFFRQX1M \CORR_OUT_reg[0]  ( .D(N30), .CK(CLK), .RN(RST), .Q(CORR_OUT[0]) );
  DFFRQX1M \CORR_OUT_reg[1]  ( .D(N31), .CK(CLK), .RN(RST), .Q(CORR_OUT[1]) );
  DFFRQX1M \CORR_OUT_reg[3]  ( .D(N33), .CK(CLK), .RN(RST), .Q(CORR_OUT[3]) );
  DFFRQX1M \CORR_OUT_reg[2]  ( .D(N32), .CK(CLK), .RN(RST), .Q(CORR_OUT[2]) );
  DFFRQX1M \CORR_OUT_reg[7]  ( .D(N37), .CK(CLK), .RN(RST), .Q(CORR_OUT[7]) );
  DFFRQX1M \CORR_OUT_reg[5]  ( .D(N35), .CK(CLK), .RN(RST), .Q(CORR_OUT[5]) );
  DFFRQX1M \CORR_OUT_reg[6]  ( .D(N36), .CK(CLK), .RN(RST), .Q(CORR_OUT[6]) );
  DFFRQX1M \CORR_OUT_reg[4]  ( .D(N34), .CK(CLK), .RN(RST), .Q(CORR_OUT[4]) );
  DFFRQX1M \CORR_OUT_reg[15]  ( .D(N45), .CK(CLK), .RN(RST), .Q(CORR_OUT[15])
         );
  DFFRQX1M \CORR_OUT_reg[10]  ( .D(N40), .CK(CLK), .RN(RST), .Q(CORR_OUT[10])
         );
  DFFRQX1M \CORR_OUT_reg[9]  ( .D(N39), .CK(CLK), .RN(RST), .Q(CORR_OUT[9]) );
  DFFRQX1M \CORR_OUT_reg[8]  ( .D(N38), .CK(CLK), .RN(RST), .Q(CORR_OUT[8]) );
  DFFRQX1M \CORR_OUT_reg[11]  ( .D(N41), .CK(CLK), .RN(RST), .Q(CORR_OUT[11])
         );
  DFFRQX1M \CORR_OUT_reg[12]  ( .D(N42), .CK(CLK), .RN(RST), .Q(CORR_OUT[12])
         );
  DFFRQX1M \CORR_OUT_reg[13]  ( .D(N43), .CK(CLK), .RN(RST), .Q(CORR_OUT[13])
         );
  DFFRQX1M \CORR_OUT_reg[23]  ( .D(N53), .CK(CLK), .RN(RST), .Q(n499) );
  DFFRQX1M \CORR_OUT_reg[21]  ( .D(N51), .CK(CLK), .RN(RST), .Q(n500) );
  DFFRQX1M \CORR_OUT_reg[18]  ( .D(N48), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[2]) );
  DFFRQX1M \CORR_OUT_reg[16]  ( .D(N46), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[0]) );
  DFFRQX1M \CORR_OUT_reg[19]  ( .D(N49), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[3]) );
  DFFRQX1M \CORR_OUT_reg[14]  ( .D(N44), .CK(CLK), .RN(RST), .Q(CORR_OUT[14])
         );
  DFFRX4M \CORR_OUT_reg[17]  ( .D(N47), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[1]), 
        .QN(\DP_OP_6J1_122_2730/n411 ) );
  DFFRQX2M \CORR_OUT_reg[22]  ( .D(N52), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[6]) );
  DFFRQX2M \CORR_OUT_reg[20]  ( .D(N50), .CK(CLK), .RN(RST), .Q(Kcal_UNSIGN[4]) );
  DFFRX2M \CORR_OUT_reg[24]  ( .D(N54), .CK(CLK), .RN(RST), .Q(CORR_OUT_24), 
        .QN(Kcal_UNSIGN[8]) );
  INVX2M U3 ( .A(n387), .Y(n412) );
  INVX4M U4 ( .A(n419), .Y(n492) );
  INVX2M U5 ( .A(n491), .Y(n474) );
  INVX2M U6 ( .A(n290), .Y(n358) );
  NOR2X4M U7 ( .A(n423), .B(n350), .Y(n356) );
  NOR2X2M U8 ( .A(n216), .B(n215), .Y(n439) );
  NOR2X2M U9 ( .A(n210), .B(n209), .Y(n429) );
  NOR2X2M U10 ( .A(n109), .B(n108), .Y(n388) );
  NOR2X2M U11 ( .A(n61), .B(n60), .Y(n379) );
  ADDFX2M U12 ( .A(n75), .B(n74), .CI(n73), .CO(n108), .S(n63) );
  ADDFX1M U13 ( .A(n234), .B(n233), .CI(n232), .CO(n249), .S(n237) );
  ADDFX2M U14 ( .A(\DP_OP_6J1_122_2730/n411 ), .B(n263), .CI(n262), .CO(n271), 
        .S(n268) );
  INVX2M U15 ( .A(Kcal_UNSIGN[4]), .Y(n281) );
  MXI2X1M U16 ( .A(TDC_OUT[1]), .B(n14), .S0(n251), .Y(n236) );
  MXI2X1M U17 ( .A(n103), .B(n104), .S0(n72), .Y(n77) );
  MXI2XLM U18 ( .A(n246), .B(n247), .S0(n177), .Y(n186) );
  MXI2XLM U19 ( .A(n136), .B(n137), .S0(n81), .Y(n90) );
  MXI2XLM U20 ( .A(n157), .B(n158), .S0(n102), .Y(n123) );
  MXI2XLM U21 ( .A(n240), .B(n14), .S0(n87), .Y(n72) );
  MXI2XLM U22 ( .A(n193), .B(n14), .S0(n120), .Y(n93) );
  MXI2X1M U23 ( .A(n193), .B(n14), .S0(n230), .Y(n189) );
  INVX4M U24 ( .A(n23), .Y(n252) );
  BUFX8M U25 ( .A(TDC_OUT[3]), .Y(n253) );
  BUFX12M U26 ( .A(TDC_OUT[0]), .Y(n14) );
  INVX3M U27 ( .A(TDC_OUT[2]), .Y(n23) );
  INVX2M U28 ( .A(n500), .Y(n7) );
  CLKINVX1M U29 ( .A(n104), .Y(n71) );
  INVX6M U30 ( .A(n21), .Y(n193) );
  MXI2X1M U31 ( .A(n253), .B(n252), .S0(n251), .Y(n254) );
  MXI2X1M U32 ( .A(n246), .B(n247), .S0(n189), .Y(n195) );
  MX2XLM U33 ( .A(n83), .B(n82), .S0(n253), .Y(n89) );
  CLKINVX1M U34 ( .A(n475), .Y(n478) );
  MXI2X1M U35 ( .A(n256), .B(n255), .S0(n254), .Y(n263) );
  NOR2X2M U36 ( .A(n408), .B(n413), .Y(n117) );
  NOR2XLM U37 ( .A(n320), .B(n319), .Y(n321) );
  NAND2XLM U38 ( .A(n281), .B(n274), .Y(n339) );
  AOI21X4M U39 ( .A0(n214), .A1(n456), .B0(n213), .Y(n490) );
  INVX10M U40 ( .A(n7), .Y(\DP_OP_6J1_122_2730/n646 ) );
  OAI21X2M U41 ( .A0(n427), .A1(n325), .B0(n324), .Y(n329) );
  NAND2XLM U42 ( .A(n311), .B(n310), .Y(n312) );
  NAND2XLM U43 ( .A(n375), .B(n378), .Y(n376) );
  XOR2XLM U44 ( .A(n402), .B(n401), .Y(n403) );
  AND2X8M U45 ( .A(n2), .B(n3), .Y(UN_FL) );
  BUFX14M U46 ( .A(n229), .Y(n427) );
  NAND2X2M U47 ( .A(n474), .B(n472), .Y(n450) );
  NAND2X2M U48 ( .A(n445), .B(n444), .Y(n446) );
  NAND2X2M U49 ( .A(n356), .B(n358), .Y(n361) );
  NAND2X2M U50 ( .A(n486), .B(n485), .Y(n487) );
  NAND2X2M U51 ( .A(n468), .B(n467), .Y(n469) );
  NAND2X2M U52 ( .A(n494), .B(n493), .Y(n495) );
  NAND2X2M U53 ( .A(n358), .B(n346), .Y(n347) );
  NAND2X2M U54 ( .A(n352), .B(n351), .Y(n353) );
  INVX2M U55 ( .A(n356), .Y(n345) );
  NAND2X2M U56 ( .A(n460), .B(n459), .Y(n461) );
  NAND2X2M U57 ( .A(n451), .B(n476), .Y(n452) );
  NAND2X2M U58 ( .A(n435), .B(n434), .Y(n436) );
  NAND2X2M U59 ( .A(n455), .B(n460), .Y(n432) );
  INVX2M U60 ( .A(n388), .Y(n397) );
  NAND2X2M U61 ( .A(n370), .B(n369), .Y(n371) );
  INVX2M U62 ( .A(n346), .Y(n357) );
  INVX2M U63 ( .A(n395), .Y(n396) );
  INVX2M U64 ( .A(n439), .Y(n494) );
  INVX2M U65 ( .A(n429), .Y(n460) );
  INVX2M U66 ( .A(n459), .Y(n430) );
  INVX2M U67 ( .A(n493), .Y(n440) );
  INVX2M U68 ( .A(n362), .Y(n291) );
  NAND2X2M U69 ( .A(n334), .B(n332), .Y(n297) );
  INVX2M U70 ( .A(n332), .Y(n333) );
  INVX2M U71 ( .A(n296), .Y(n334) );
  INVX8M U72 ( .A(n501), .Y(OV_FL) );
  CLKINVX2M U73 ( .A(n310), .Y(n282) );
  INVX2M U74 ( .A(n300), .Y(n311) );
  INVX2M U75 ( .A(n274), .Y(n272) );
  NAND2BX2M U76 ( .AN(n251), .B(TDC_OUT[0]), .Y(n199) );
  INVX2M U77 ( .A(CORR_OUT[0]), .Y(n52) );
  INVX2M U78 ( .A(Q_ERR[19]), .Y(n198) );
  XNOR2X2M U79 ( .A(n496), .B(n495), .Y(n498) );
  XOR2X2M U80 ( .A(n427), .B(n426), .Y(n428) );
  XNOR2X2M U81 ( .A(n437), .B(n436), .Y(n438) );
  XNOR2X2M U82 ( .A(n470), .B(n469), .Y(n471) );
  XNOR2X2M U83 ( .A(n462), .B(n461), .Y(n463) );
  XOR2X2M U84 ( .A(n492), .B(n421), .Y(n422) );
  XNOR2X2M U85 ( .A(n412), .B(n389), .Y(n390) );
  NAND2X2M U86 ( .A(n301), .B(n311), .Y(n284) );
  NAND2X2M U87 ( .A(n474), .B(n494), .Y(n442) );
  INVX2M U88 ( .A(n335), .Y(n294) );
  NAND2X2M U89 ( .A(n301), .B(n316), .Y(n306) );
  INVX4M U90 ( .A(n317), .Y(n301) );
  OAI21X2M U91 ( .A0(n409), .A1(n408), .B0(n407), .Y(n410) );
  XOR2X2M U92 ( .A(n380), .B(n376), .Y(n377) );
  OAI21X6M U93 ( .A0(n387), .A1(n119), .B0(n118), .Y(n419) );
  OR2X2M U94 ( .A(n317), .B(n322), .Y(n325) );
  NOR2X2M U95 ( .A(n405), .B(n408), .Y(n411) );
  AOI21X2M U96 ( .A0(n359), .A1(n358), .B0(n357), .Y(n360) );
  NAND2X2M U97 ( .A(n420), .B(n464), .Y(n421) );
  INVX2M U98 ( .A(n374), .Y(n380) );
  NAND2X2M U99 ( .A(n397), .B(n395), .Y(n389) );
  XNOR2X2M U100 ( .A(n372), .B(n371), .Y(n373) );
  NAND2X2M U101 ( .A(n425), .B(n424), .Y(n426) );
  INVX2M U102 ( .A(n456), .Y(n457) );
  INVX2M U103 ( .A(n455), .Y(n458) );
  AOI21X2M U104 ( .A0(n456), .A1(n460), .B0(n430), .Y(n431) );
  INVX2M U105 ( .A(n465), .Y(n420) );
  INVX2M U106 ( .A(n367), .Y(n372) );
  INVX2M U107 ( .A(n381), .Y(n383) );
  INVX2M U108 ( .A(n408), .Y(n391) );
  INVX2M U109 ( .A(n413), .Y(n415) );
  INVX2M U110 ( .A(n398), .Y(n400) );
  INVX2M U111 ( .A(n484), .Y(n486) );
  INVX2M U112 ( .A(n350), .Y(n352) );
  INVX2M U113 ( .A(n423), .Y(n425) );
  INVX2M U114 ( .A(n443), .Y(n445) );
  INVX2M U115 ( .A(n477), .Y(n451) );
  INVX2M U116 ( .A(n466), .Y(n468) );
  INVX2M U117 ( .A(n433), .Y(n435) );
  INVX2M U118 ( .A(n368), .Y(n370) );
  INVX2M U119 ( .A(n379), .Y(n375) );
  NAND2X2M U120 ( .A(n363), .B(n362), .Y(n364) );
  NOR2X4M U121 ( .A(n63), .B(n62), .Y(n381) );
  NOR2X2M U122 ( .A(UN_FL), .B(OV_FL), .Y(n288) );
  NAND2X1M U123 ( .A(n285), .B(n302), .Y(n286) );
  NAND2X1M U124 ( .A(n340), .B(n339), .Y(n341) );
  NAND2X1M U125 ( .A(n315), .B(n318), .Y(n307) );
  ADDFX1M U126 ( .A(CORR_OUT[11]), .B(CORR_OUT[12]), .CI(n188), .CO(n196), .S(
        n187) );
  ADDFX1M U127 ( .A(CORR_OUT[7]), .B(CORR_OUT[8]), .CI(n146), .CO(n153), .S(
        n145) );
  ADDFX1M U128 ( .A(CORR_OUT[13]), .B(CORR_OUT[14]), .CI(n235), .CO(n244), .S(
        n234) );
  NAND2X1M U129 ( .A(n5), .B(\DP_OP_6J1_122_2730/n647 ), .Y(n318) );
  CLKMX2X2M U130 ( .A(n34), .B(n33), .S0(n253), .Y(n49) );
  INVX2M U131 ( .A(n247), .Y(n188) );
  AND2X1M U132 ( .A(n10), .B(n33), .Y(n11) );
  INVX2M U133 ( .A(n179), .Y(n146) );
  INVX2M U134 ( .A(n158), .Y(n125) );
  INVX2M U135 ( .A(n137), .Y(n92) );
  INVX1M U136 ( .A(n83), .Y(n45) );
  INVX2M U137 ( .A(n255), .Y(n235) );
  CLKMX2X2M U138 ( .A(n179), .B(n178), .S0(n253), .Y(n185) );
  MXI2X1M U139 ( .A(n256), .B(n255), .S0(n199), .Y(n233) );
  INVX2M U140 ( .A(n201), .Y(n167) );
  NAND2X1M U141 ( .A(n327), .B(n326), .Y(n328) );
  NAND2BX2M U142 ( .AN(n42), .B(n14), .Y(n15) );
  NAND2X1M U143 ( .A(n5), .B(Kcal_UNSIGN[4]), .Y(n302) );
  NAND2BX2M U144 ( .AN(n66), .B(n14), .Y(n39) );
  INVX2M U145 ( .A(Q_ERR[7]), .Y(n53) );
  INVX2M U146 ( .A(Q_ERR[5]), .Y(n38) );
  INVX2M U147 ( .A(Q_ERR[17]), .Y(n176) );
  INVX1M U148 ( .A(CORR_OUT[5]), .Y(n100) );
  INVX2M U149 ( .A(Q_ERR[13]), .Y(n134) );
  INVX2M U150 ( .A(Q_ERR[9]), .Y(n80) );
  INVX1M U151 ( .A(CORR_OUT[11]), .Y(n175) );
  INVX2M U152 ( .A(Q_ERR[3]), .Y(n13) );
  INVX1M U153 ( .A(CORR_OUT[7]), .Y(n133) );
  INVX1M U154 ( .A(Q_ERR[0]), .Y(n24) );
  INVX4M U155 ( .A(n499), .Y(n6) );
  INVX2M U156 ( .A(Q_ERR[11]), .Y(n101) );
  INVX2M U157 ( .A(Kcal_UNSIGN[6]), .Y(n5) );
  INVX2M U158 ( .A(Q_ERR[15]), .Y(n155) );
  INVX1M U159 ( .A(CORR_OUT[15]), .Y(n245) );
  AND2X2M U160 ( .A(n349), .B(n497), .Y(N47) );
  XOR2X2M U161 ( .A(n417), .B(n416), .Y(n418) );
  XOR2X2M U162 ( .A(n393), .B(n392), .Y(n394) );
  AOI21X4M U163 ( .A0(n419), .A1(n228), .B0(n227), .Y(n229) );
  AOI21X4M U164 ( .A0(n280), .A1(n359), .B0(n279), .Y(n323) );
  INVX1M U165 ( .A(n404), .Y(n405) );
  INVX1M U166 ( .A(n406), .Y(n409) );
  OAI21X6M U167 ( .A0(n350), .A1(n424), .B0(n351), .Y(n359) );
  AOI21X2M U168 ( .A0(n276), .A1(n291), .B0(n275), .Y(n277) );
  BUFX10M U169 ( .A(n288), .Y(n497) );
  ADDFX2M U170 ( .A(n175), .B(n174), .CI(n173), .CO(n191), .S(n180) );
  ADDFX2M U171 ( .A(n91), .B(n90), .CI(n89), .CO(n106), .S(n94) );
  ADDFX2M U172 ( .A(n166), .B(n165), .CI(n164), .CO(n181), .S(n169) );
  ADDFX2M U173 ( .A(n187), .B(n186), .CI(n185), .CO(n203), .S(n190) );
  ADDFX2M U174 ( .A(n59), .B(n58), .CI(n57), .CO(n62), .S(n61) );
  ADDFX2M U175 ( .A(n245), .B(n244), .CI(n243), .CO(n260), .S(n248) );
  ADDFX2M U176 ( .A(n133), .B(n132), .CI(n131), .CO(n149), .S(n138) );
  ADDFX2M U177 ( .A(n145), .B(n144), .CI(n143), .CO(n160), .S(n148) );
  NAND2X1M U178 ( .A(n316), .B(n315), .Y(n322) );
  ADDFX2M U179 ( .A(CORR_OUT[1]), .B(n52), .CI(n51), .CO(n74), .S(n57) );
  OR3X2M U180 ( .A(n5), .B(n281), .C(n8), .Y(n501) );
  MXI2X1M U181 ( .A(n103), .B(n104), .S0(n76), .Y(n96) );
  CLKMX2X2M U182 ( .A(n201), .B(n200), .S0(n253), .Y(n232) );
  MXI2X1M U183 ( .A(n157), .B(n158), .S0(n142), .Y(n161) );
  MXI2X1M U184 ( .A(n157), .B(n158), .S0(n130), .Y(n150) );
  MXI2X1M U185 ( .A(n246), .B(n247), .S0(n194), .Y(n239) );
  MXI2X1M U186 ( .A(n103), .B(n104), .S0(n88), .Y(n107) );
  MXI2X1M U187 ( .A(n178), .B(n179), .S0(n163), .Y(n182) );
  NAND4BX1M U188 ( .AN(CORR_OUT_24), .B(\DP_OP_6J1_122_2730/n647 ), .C(
        \DP_OP_6J1_122_2730/n646 ), .D(Kcal_UNSIGN[3]), .Y(n8) );
  MXI2X1M U189 ( .A(n55), .B(n56), .S0(n43), .Y(n59) );
  MXI2X1M U190 ( .A(n55), .B(n56), .S0(n15), .Y(n26) );
  CLKMX2X2M U191 ( .A(n158), .B(n157), .S0(n253), .Y(n164) );
  CLKMX2X2M U192 ( .A(n56), .B(n55), .S0(n253), .Y(n68) );
  MXI2X1M U193 ( .A(n200), .B(n201), .S0(n172), .Y(n192) );
  MXI2X1M U194 ( .A(n55), .B(n56), .S0(n35), .Y(n48) );
  MXI2X1M U195 ( .A(n256), .B(n255), .S0(n242), .Y(n261) );
  MXI2X1M U196 ( .A(n82), .B(n83), .S0(n39), .Y(n44) );
  MXI2X1M U197 ( .A(n82), .B(n83), .S0(n50), .Y(n75) );
  MXI2X1M U198 ( .A(n178), .B(n179), .S0(n151), .Y(n171) );
  MXI2X1M U199 ( .A(n82), .B(n83), .S0(n67), .Y(n86) );
  CLKMX2X2M U200 ( .A(n104), .B(n103), .S0(n253), .Y(n122) );
  MXI2X1M U201 ( .A(n200), .B(n201), .S0(n184), .Y(n204) );
  MXI2X1M U202 ( .A(n246), .B(n247), .S0(n231), .Y(n250) );
  MXI2X1M U203 ( .A(n136), .B(n137), .S0(n121), .Y(n140) );
  MXI2X1M U204 ( .A(n178), .B(n179), .S0(n135), .Y(n144) );
  CLKMX2X2M U205 ( .A(n137), .B(n136), .S0(n253), .Y(n143) );
  MXI2X1M U206 ( .A(n136), .B(n137), .S0(n97), .Y(n129) );
  MXI2X1M U207 ( .A(n253), .B(n252), .S0(n183), .Y(n184) );
  MXI2X1M U208 ( .A(n253), .B(n241), .S0(n66), .Y(n67) );
  AND4X1M U209 ( .A(n7), .B(n6), .C(Kcal_UNSIGN[3]), .D(CORR_OUT_24), .Y(n2)
         );
  MXI2X1M U210 ( .A(n241), .B(n240), .S0(n141), .Y(n130) );
  MXI2X1M U211 ( .A(n240), .B(n14), .S0(n42), .Y(n22) );
  MXI2X1M U212 ( .A(n241), .B(n240), .S0(n251), .Y(n242) );
  MXI2X1M U213 ( .A(n253), .B(n252), .S0(n42), .Y(n43) );
  MXI2X1M U214 ( .A(n253), .B(n241), .S0(n120), .Y(n121) );
  MXI2X1M U215 ( .A(n253), .B(n252), .S0(n141), .Y(n142) );
  MXI2X1M U216 ( .A(n252), .B(n240), .S0(n87), .Y(n76) );
  MXI2X1M U217 ( .A(n241), .B(n193), .S0(n230), .Y(n194) );
  MXI2X1M U218 ( .A(n253), .B(TDC_OUT[2]), .S0(n230), .Y(n231) );
  NAND2BX2M U219 ( .AN(n230), .B(n14), .Y(n177) );
  MXI2X1M U220 ( .A(n253), .B(n252), .S0(n87), .Y(n88) );
  BUFX2M U221 ( .A(Kcal_UNSIGN[3]), .Y(n274) );
  INVX1M U222 ( .A(CORR_OUT[13]), .Y(n197) );
  INVX1M U223 ( .A(CORR_OUT[9]), .Y(n154) );
  NOR2X4M U224 ( .A(n278), .B(n290), .Y(n280) );
  NAND2X4M U225 ( .A(n276), .B(n363), .Y(n278) );
  XNOR2X2M U226 ( .A(n329), .B(n328), .Y(n330) );
  AO21X2M U227 ( .A0(Q_ERR[12]), .A1(Q_ERR[11]), .B0(n134), .Y(n179) );
  AO21X2M U228 ( .A0(Q_ERR[18]), .A1(Q_ERR[17]), .B0(n198), .Y(n255) );
  AO21X2M U229 ( .A0(Q_ERR[6]), .A1(Q_ERR[5]), .B0(n53), .Y(n104) );
  NOR2X2M U230 ( .A(n269), .B(n268), .Y(n290) );
  INVX2M U231 ( .A(n323), .Y(n304) );
  OR2X2M U232 ( .A(n271), .B(n270), .Y(n363) );
  NAND2X2M U233 ( .A(n356), .B(n280), .Y(n317) );
  MXI2X1M U234 ( .A(n200), .B(n201), .S0(n168), .Y(n173) );
  MXI2X1M U235 ( .A(n240), .B(n14), .S0(n183), .Y(n168) );
  MXI2X1M U236 ( .A(n200), .B(n201), .S0(n156), .Y(n165) );
  NOR2X2M U237 ( .A(n477), .B(n484), .Y(n224) );
  AO21X2M U238 ( .A0(Q_ERR[16]), .A1(Q_ERR[15]), .B0(n176), .Y(n247) );
  MXI2X1M U239 ( .A(n157), .B(n158), .S0(n126), .Y(n131) );
  MXI2X1M U240 ( .A(n240), .B(n14), .S0(n141), .Y(n126) );
  AO21X2M U241 ( .A0(Q_ERR[8]), .A1(Q_ERR[7]), .B0(n80), .Y(n137) );
  MXI2X1M U242 ( .A(n82), .B(n83), .S0(n46), .Y(n51) );
  MXI2X1M U243 ( .A(n193), .B(n14), .S0(n66), .Y(n46) );
  NAND2X2M U244 ( .A(n472), .B(n224), .Y(n226) );
  NAND2XLM U245 ( .A(n12), .B(n11), .Y(n19) );
  CLKINVX1M U246 ( .A(n56), .Y(n27) );
  CLKINVX1M U247 ( .A(n338), .Y(n340) );
  OR2X1M U248 ( .A(n5), .B(\DP_OP_6J1_122_2730/n647 ), .Y(n315) );
  NOR2X2M U249 ( .A(n388), .B(n398), .Y(n404) );
  AND2X2M U250 ( .A(n281), .B(n5), .Y(n3) );
  AND2X2M U251 ( .A(n355), .B(n497), .Y(N46) );
  AND2X2M U252 ( .A(n366), .B(n497), .Y(N48) );
  MXI2X1M U253 ( .A(n178), .B(n179), .S0(n147), .Y(n152) );
  OAI21X4M U254 ( .A0(Q_ERR[12]), .A1(Q_ERR[11]), .B0(n134), .Y(n178) );
  XNOR2X4M U255 ( .A(Q_ERR[4]), .B(Q_ERR[3]), .Y(n66) );
  XNOR2X4M U256 ( .A(Q_ERR[6]), .B(Q_ERR[5]), .Y(n87) );
  XNOR2X4M U257 ( .A(Q_ERR[10]), .B(Q_ERR[9]), .Y(n141) );
  XNOR2X4M U258 ( .A(Q_ERR[12]), .B(Q_ERR[11]), .Y(n162) );
  XNOR2X4M U259 ( .A(Q_ERR[14]), .B(Q_ERR[13]), .Y(n183) );
  OAI21X4M U260 ( .A0(Q_ERR[2]), .A1(Q_ERR[1]), .B0(n13), .Y(n55) );
  AO21X2M U261 ( .A0(Q_ERR[14]), .A1(Q_ERR[13]), .B0(n155), .Y(n201) );
  AO21X2M U262 ( .A0(Q_ERR[10]), .A1(Q_ERR[9]), .B0(n101), .Y(n158) );
  MXI2X1M U263 ( .A(n256), .B(n255), .S0(n236), .Y(n243) );
  CLKINVX1M U264 ( .A(CORR_OUT[3]), .Y(n79) );
  CLKINVX1M U265 ( .A(n318), .Y(n319) );
  NOR2X2M U266 ( .A(n212), .B(n211), .Y(n433) );
  CLKINVX1M U267 ( .A(n303), .Y(n285) );
  OAI21X2M U268 ( .A0(n367), .A1(n368), .B0(n369), .Y(n374) );
  AND2X2M U269 ( .A(n343), .B(n497), .Y(N50) );
  INVX6M U270 ( .A(n6), .Y(\DP_OP_6J1_122_2730/n647 ) );
  INVX2M U271 ( .A(Q_ERR[1]), .Y(n34) );
  NAND2X2M U272 ( .A(n34), .B(Q_ERR[0]), .Y(n33) );
  INVX8M U273 ( .A(n23), .Y(n241) );
  INVX8M U274 ( .A(TDC_OUT[1]), .Y(n21) );
  MXI2X1M U275 ( .A(n241), .B(n193), .S0(n24), .Y(n9) );
  MXI2X1M U276 ( .A(n33), .B(n34), .S0(n9), .Y(n16) );
  CLKINVX1M U277 ( .A(n16), .Y(n20) );
  CLKINVX1M U278 ( .A(n193), .Y(n12) );
  CLKINVX1M U279 ( .A(n14), .Y(n10) );
  AO21X2M U280 ( .A0(Q_ERR[2]), .A1(Q_ERR[1]), .B0(n13), .Y(n56) );
  XNOR2X4M U281 ( .A(Q_ERR[2]), .B(Q_ERR[1]), .Y(n42) );
  NAND2X2M U282 ( .A(n17), .B(n16), .Y(n18) );
  OAI21X2M U283 ( .A0(n20), .A1(n19), .B0(n18), .Y(n32) );
  INVX8M U284 ( .A(n21), .Y(n240) );
  MXI2X1M U285 ( .A(n55), .B(n56), .S0(n22), .Y(n37) );
  MXI2X1M U286 ( .A(n253), .B(n252), .S0(n24), .Y(n25) );
  MXI2X1M U287 ( .A(n33), .B(n34), .S0(n25), .Y(n36) );
  ADDHX1M U288 ( .A(n27), .B(n26), .CO(n28), .S(n17) );
  OR2X2M U289 ( .A(n29), .B(n28), .Y(n31) );
  AND2X2M U290 ( .A(n29), .B(n28), .Y(n30) );
  AOI21X2M U291 ( .A0(n32), .A1(n31), .B0(n30), .Y(n367) );
  MXI2X1M U292 ( .A(n252), .B(n240), .S0(n42), .Y(n35) );
  ADDHX1M U293 ( .A(n37), .B(n36), .CO(n47), .S(n29) );
  AO21X2M U294 ( .A0(Q_ERR[4]), .A1(Q_ERR[3]), .B0(n38), .Y(n83) );
  OAI21X4M U295 ( .A0(Q_ERR[4]), .A1(Q_ERR[3]), .B0(n38), .Y(n82) );
  NOR2X2M U296 ( .A(n41), .B(n40), .Y(n368) );
  NAND2X2M U297 ( .A(n41), .B(n40), .Y(n369) );
  ADDFX2M U298 ( .A(n52), .B(n45), .CI(n44), .CO(n58), .S(n40) );
  ADDFX2M U299 ( .A(n49), .B(n48), .CI(n47), .CO(n60), .S(n41) );
  MXI2X1M U300 ( .A(n252), .B(n193), .S0(n66), .Y(n50) );
  OAI21X4M U301 ( .A0(Q_ERR[6]), .A1(Q_ERR[5]), .B0(n53), .Y(n103) );
  NAND2BX2M U302 ( .AN(n87), .B(n14), .Y(n54) );
  MXI2X2M U303 ( .A(n103), .B(n104), .S0(n54), .Y(n69) );
  NOR2X2M U304 ( .A(n379), .B(n381), .Y(n65) );
  NAND2X2M U305 ( .A(n61), .B(n60), .Y(n378) );
  NAND2X2M U306 ( .A(n63), .B(n62), .Y(n382) );
  OAI21X2M U307 ( .A0(n381), .A1(n378), .B0(n382), .Y(n64) );
  AOI21X4M U308 ( .A0(n374), .A1(n65), .B0(n64), .Y(n387) );
  ADDFX2M U309 ( .A(n70), .B(n69), .CI(n68), .CO(n85), .S(n73) );
  ADDFX1M U310 ( .A(CORR_OUT[0]), .B(CORR_OUT[2]), .CI(n71), .CO(n78), .S(n70)
         );
  ADDFX2M U311 ( .A(n79), .B(n78), .CI(n77), .CO(n95), .S(n84) );
  OAI21X4M U312 ( .A0(Q_ERR[8]), .A1(Q_ERR[7]), .B0(n80), .Y(n136) );
  XNOR2X4M U313 ( .A(Q_ERR[8]), .B(Q_ERR[7]), .Y(n120) );
  NAND2BX2M U314 ( .AN(n120), .B(n14), .Y(n81) );
  ADDFX2M U315 ( .A(n86), .B(n85), .CI(n84), .CO(n110), .S(n109) );
  NOR2X4M U316 ( .A(n111), .B(n110), .Y(n398) );
  ADDFX1M U317 ( .A(CORR_OUT[3]), .B(CORR_OUT[4]), .CI(n92), .CO(n99), .S(n91)
         );
  MXI2X2M U318 ( .A(n136), .B(n137), .S0(n93), .Y(n98) );
  ADDFX2M U319 ( .A(n96), .B(n95), .CI(n94), .CO(n112), .S(n111) );
  NOR2X4M U320 ( .A(n113), .B(n112), .Y(n408) );
  MXI2X1M U321 ( .A(n241), .B(n193), .S0(n120), .Y(n97) );
  ADDFX2M U322 ( .A(n100), .B(n99), .CI(n98), .CO(n128), .S(n105) );
  OAI21X4M U323 ( .A0(Q_ERR[10]), .A1(Q_ERR[9]), .B0(n101), .Y(n157) );
  NAND2BX2M U324 ( .AN(n141), .B(n14), .Y(n102) );
  ADDFX2M U325 ( .A(n107), .B(n106), .CI(n105), .CO(n114), .S(n113) );
  NOR2X4M U326 ( .A(n115), .B(n114), .Y(n413) );
  NAND2X4M U327 ( .A(n404), .B(n117), .Y(n119) );
  NAND2X2M U328 ( .A(n109), .B(n108), .Y(n395) );
  NAND2X2M U329 ( .A(n111), .B(n110), .Y(n399) );
  OAI21X4M U330 ( .A0(n398), .A1(n395), .B0(n399), .Y(n406) );
  NAND2X2M U331 ( .A(n113), .B(n112), .Y(n407) );
  NAND2X2M U332 ( .A(n115), .B(n114), .Y(n414) );
  OAI21X2M U333 ( .A0(n413), .A1(n407), .B0(n414), .Y(n116) );
  AOI21X4M U334 ( .A0(n117), .A1(n406), .B0(n116), .Y(n118) );
  ADDFX2M U335 ( .A(n124), .B(n123), .CI(n122), .CO(n139), .S(n127) );
  ADDFX1M U336 ( .A(CORR_OUT[5]), .B(CORR_OUT[6]), .CI(n125), .CO(n132), .S(
        n124) );
  ADDFX2M U337 ( .A(n129), .B(n128), .CI(n127), .CO(n205), .S(n115) );
  NOR2X4M U338 ( .A(n206), .B(n205), .Y(n465) );
  NAND2BX2M U339 ( .AN(n162), .B(n14), .Y(n135) );
  ADDFX2M U340 ( .A(n140), .B(n139), .CI(n138), .CO(n207), .S(n206) );
  NOR2X4M U341 ( .A(n208), .B(n207), .Y(n466) );
  NOR2X4M U342 ( .A(n465), .B(n466), .Y(n455) );
  MXI2X2M U343 ( .A(n240), .B(n14), .S0(n162), .Y(n147) );
  ADDFX2M U344 ( .A(n150), .B(n149), .CI(n148), .CO(n209), .S(n208) );
  MXI2X1M U345 ( .A(n241), .B(n193), .S0(n162), .Y(n151) );
  ADDFX2M U346 ( .A(n154), .B(n153), .CI(n152), .CO(n170), .S(n159) );
  OAI21X4M U347 ( .A0(Q_ERR[14]), .A1(Q_ERR[13]), .B0(n155), .Y(n200) );
  NAND2BX2M U348 ( .AN(n183), .B(n14), .Y(n156) );
  ADDFX2M U349 ( .A(n161), .B(n160), .CI(n159), .CO(n211), .S(n210) );
  NOR2X4M U350 ( .A(n429), .B(n433), .Y(n214) );
  NAND2X4M U351 ( .A(n455), .B(n214), .Y(n491) );
  MXI2X1M U352 ( .A(n253), .B(n241), .S0(n162), .Y(n163) );
  ADDFX1M U353 ( .A(CORR_OUT[9]), .B(CORR_OUT[10]), .CI(n167), .CO(n174), .S(
        n166) );
  ADDFX2M U354 ( .A(n171), .B(n170), .CI(n169), .CO(n215), .S(n212) );
  MXI2X1M U355 ( .A(n241), .B(n240), .S0(n183), .Y(n172) );
  OAI21X4M U356 ( .A0(Q_ERR[16]), .A1(Q_ERR[15]), .B0(n176), .Y(n246) );
  XNOR2X4M U357 ( .A(Q_ERR[16]), .B(Q_ERR[15]), .Y(n230) );
  ADDFX2M U358 ( .A(n182), .B(n181), .CI(n180), .CO(n217), .S(n216) );
  NOR2X4M U359 ( .A(n218), .B(n217), .Y(n443) );
  NOR2X4M U360 ( .A(n439), .B(n443), .Y(n472) );
  ADDFX2M U361 ( .A(n192), .B(n191), .CI(n190), .CO(n219), .S(n218) );
  NOR2X4M U362 ( .A(n220), .B(n219), .Y(n477) );
  ADDFX2M U363 ( .A(n197), .B(n196), .CI(n195), .CO(n238), .S(n202) );
  OAI21X4M U364 ( .A0(Q_ERR[18]), .A1(Q_ERR[17]), .B0(n198), .Y(n256) );
  XNOR2X4M U365 ( .A(Q_ERR[18]), .B(Q_ERR[17]), .Y(n251) );
  ADDFX2M U366 ( .A(n204), .B(n203), .CI(n202), .CO(n221), .S(n220) );
  NOR2X4M U367 ( .A(n222), .B(n221), .Y(n484) );
  NOR2X4M U368 ( .A(n491), .B(n226), .Y(n228) );
  NAND2X2M U369 ( .A(n206), .B(n205), .Y(n464) );
  NAND2X2M U370 ( .A(n208), .B(n207), .Y(n467) );
  OAI21X4M U371 ( .A0(n466), .A1(n464), .B0(n467), .Y(n456) );
  NAND2X2M U372 ( .A(n210), .B(n209), .Y(n459) );
  NAND2X2M U373 ( .A(n212), .B(n211), .Y(n434) );
  OAI21X2M U374 ( .A0(n433), .A1(n459), .B0(n434), .Y(n213) );
  NAND2X2M U375 ( .A(n216), .B(n215), .Y(n493) );
  NAND2X2M U376 ( .A(n218), .B(n217), .Y(n444) );
  OAI21X4M U377 ( .A0(n443), .A1(n493), .B0(n444), .Y(n475) );
  NAND2X2M U378 ( .A(n220), .B(n219), .Y(n476) );
  NAND2X2M U379 ( .A(n222), .B(n221), .Y(n485) );
  OAI21X2M U380 ( .A0(n484), .A1(n476), .B0(n485), .Y(n223) );
  AOI21X2M U381 ( .A0(n224), .A1(n475), .B0(n223), .Y(n225) );
  OAI21X4M U382 ( .A0(n490), .A1(n226), .B0(n225), .Y(n227) );
  ADDFX2M U383 ( .A(n239), .B(n238), .CI(n237), .CO(n264), .S(n222) );
  NOR2X4M U384 ( .A(n265), .B(n264), .Y(n423) );
  MX2X2M U385 ( .A(n247), .B(n246), .S0(n253), .Y(n257) );
  ADDFX2M U386 ( .A(n250), .B(n249), .CI(n248), .CO(n266), .S(n265) );
  NOR2X4M U387 ( .A(n267), .B(n266), .Y(n350) );
  MX2X2M U388 ( .A(n255), .B(n256), .S0(n253), .Y(n258) );
  NOR2X2M U389 ( .A(n273), .B(n272), .Y(n296) );
  NOR2X2M U390 ( .A(n281), .B(n274), .Y(n338) );
  NOR2X2M U391 ( .A(n296), .B(n338), .Y(n276) );
  ADDFX2M U392 ( .A(CORR_OUT[15]), .B(Kcal_UNSIGN[0]), .CI(n257), .CO(n262), 
        .S(n259) );
  ADDFX2M U393 ( .A(Kcal_UNSIGN[2]), .B(Kcal_UNSIGN[1]), .CI(n258), .CO(n273), 
        .S(n270) );
  ADDFX2M U394 ( .A(n261), .B(n260), .CI(n259), .CO(n269), .S(n267) );
  NOR2X2M U395 ( .A(n281), .B(\DP_OP_6J1_122_2730/n646 ), .Y(n300) );
  NAND2X2M U396 ( .A(n265), .B(n264), .Y(n424) );
  NAND2X2M U397 ( .A(n267), .B(n266), .Y(n351) );
  NAND2X2M U398 ( .A(n269), .B(n268), .Y(n346) );
  NAND2X2M U399 ( .A(n271), .B(n270), .Y(n362) );
  NAND2X2M U400 ( .A(n273), .B(n272), .Y(n332) );
  OAI21X2M U401 ( .A0(n332), .A1(n338), .B0(n339), .Y(n275) );
  OAI21X2M U402 ( .A0(n278), .A1(n346), .B0(n277), .Y(n279) );
  NAND2X2M U403 ( .A(n281), .B(\DP_OP_6J1_122_2730/n646 ), .Y(n310) );
  AOI21X2M U404 ( .A0(n304), .A1(n311), .B0(n282), .Y(n283) );
  OAI21X2M U405 ( .A0(n427), .A1(n284), .B0(n283), .Y(n287) );
  NOR2X2M U406 ( .A(n5), .B(Kcal_UNSIGN[4]), .Y(n303) );
  XNOR2X2M U407 ( .A(n287), .B(n286), .Y(n289) );
  AND2X2M U408 ( .A(n289), .B(n497), .Y(N52) );
  NAND2X2M U409 ( .A(n358), .B(n363), .Y(n293) );
  NOR2X2M U410 ( .A(n345), .B(n293), .Y(n331) );
  INVX2M U411 ( .A(n331), .Y(n295) );
  INVX2M U412 ( .A(n359), .Y(n344) );
  AOI21X2M U413 ( .A0(n363), .A1(n357), .B0(n291), .Y(n292) );
  OAI21X2M U414 ( .A0(n344), .A1(n293), .B0(n292), .Y(n335) );
  OAI21X2M U415 ( .A0(n427), .A1(n295), .B0(n294), .Y(n298) );
  XNOR2X2M U416 ( .A(n298), .B(n297), .Y(n299) );
  AND2X2M U417 ( .A(n299), .B(n497), .Y(N49) );
  NOR2X2M U418 ( .A(n300), .B(n303), .Y(n316) );
  OAI21X2M U419 ( .A0(n303), .A1(n310), .B0(n302), .Y(n320) );
  AOI21X2M U420 ( .A0(n304), .A1(n316), .B0(n320), .Y(n305) );
  OAI21X2M U421 ( .A0(n427), .A1(n306), .B0(n305), .Y(n308) );
  XNOR2X2M U422 ( .A(n308), .B(n307), .Y(n309) );
  AND2X2M U423 ( .A(n309), .B(n497), .Y(N53) );
  OAI21X2M U424 ( .A0(n427), .A1(n317), .B0(n323), .Y(n313) );
  XNOR2X2M U425 ( .A(n313), .B(n312), .Y(n314) );
  AND2X2M U426 ( .A(n314), .B(n497), .Y(N51) );
  OA21X2M U427 ( .A0(n323), .A1(n322), .B0(n321), .Y(n324) );
  OR2X1M U428 ( .A(Kcal_UNSIGN[8]), .B(Kcal_UNSIGN[6]), .Y(n327) );
  NAND2XLM U429 ( .A(Kcal_UNSIGN[8]), .B(Kcal_UNSIGN[6]), .Y(n326) );
  AND2X2M U430 ( .A(n330), .B(n497), .Y(N54) );
  NAND2X2M U431 ( .A(n331), .B(n334), .Y(n337) );
  AOI21X2M U432 ( .A0(n335), .A1(n334), .B0(n333), .Y(n336) );
  OAI21X2M U433 ( .A0(n427), .A1(n337), .B0(n336), .Y(n342) );
  XNOR2X2M U434 ( .A(n342), .B(n341), .Y(n343) );
  OAI21X2M U435 ( .A0(n427), .A1(n345), .B0(n344), .Y(n348) );
  XNOR2X2M U436 ( .A(n348), .B(n347), .Y(n349) );
  OAI21X2M U437 ( .A0(n427), .A1(n423), .B0(n424), .Y(n354) );
  XNOR2X2M U438 ( .A(n354), .B(n353), .Y(n355) );
  OAI21X2M U439 ( .A0(n427), .A1(n361), .B0(n360), .Y(n365) );
  XNOR2X2M U440 ( .A(n365), .B(n364), .Y(n366) );
  AND2X2M U441 ( .A(n373), .B(n497), .Y(N30) );
  AND2X2M U442 ( .A(n377), .B(n497), .Y(N31) );
  OAI21X2M U443 ( .A0(n380), .A1(n379), .B0(n378), .Y(n385) );
  NAND2X2M U444 ( .A(n383), .B(n382), .Y(n384) );
  XNOR2X2M U445 ( .A(n385), .B(n384), .Y(n386) );
  AND2X2M U446 ( .A(n386), .B(n497), .Y(N32) );
  AND2X2M U447 ( .A(n390), .B(n497), .Y(N33) );
  AOI21X2M U448 ( .A0(n412), .A1(n404), .B0(n406), .Y(n393) );
  NAND2X2M U449 ( .A(n391), .B(n407), .Y(n392) );
  AND2X2M U450 ( .A(n394), .B(n497), .Y(N35) );
  AOI21X2M U451 ( .A0(n412), .A1(n397), .B0(n396), .Y(n402) );
  NAND2X2M U452 ( .A(n400), .B(n399), .Y(n401) );
  AND2X2M U453 ( .A(n403), .B(n497), .Y(N34) );
  AOI21X2M U454 ( .A0(n412), .A1(n411), .B0(n410), .Y(n417) );
  NAND2X2M U455 ( .A(n415), .B(n414), .Y(n416) );
  AND2X2M U456 ( .A(n418), .B(n497), .Y(N36) );
  AND2X2M U457 ( .A(n422), .B(n497), .Y(N37) );
  AND2X2M U458 ( .A(n428), .B(n497), .Y(N45) );
  OAI21X2M U459 ( .A0(n492), .A1(n432), .B0(n431), .Y(n437) );
  AND2X2M U460 ( .A(n438), .B(n497), .Y(N40) );
  INVX4M U461 ( .A(n490), .Y(n481) );
  AOI21X2M U462 ( .A0(n481), .A1(n494), .B0(n440), .Y(n441) );
  OAI21X2M U463 ( .A0(n492), .A1(n442), .B0(n441), .Y(n447) );
  XNOR2X2M U464 ( .A(n447), .B(n446), .Y(n448) );
  AND2X2M U465 ( .A(n448), .B(n497), .Y(N42) );
  AOI21X2M U466 ( .A0(n481), .A1(n472), .B0(n475), .Y(n449) );
  OAI21X2M U467 ( .A0(n492), .A1(n450), .B0(n449), .Y(n453) );
  XNOR2X2M U468 ( .A(n453), .B(n452), .Y(n454) );
  AND2X2M U469 ( .A(n454), .B(n497), .Y(N43) );
  OAI21X2M U470 ( .A0(n492), .A1(n458), .B0(n457), .Y(n462) );
  AND2X2M U471 ( .A(n463), .B(n497), .Y(N39) );
  OAI21X2M U472 ( .A0(n492), .A1(n465), .B0(n464), .Y(n470) );
  AND2X2M U473 ( .A(n471), .B(n497), .Y(N38) );
  INVX2M U474 ( .A(n472), .Y(n473) );
  NOR2X2M U475 ( .A(n473), .B(n477), .Y(n480) );
  NAND2X2M U476 ( .A(n480), .B(n474), .Y(n483) );
  OAI21X2M U477 ( .A0(n478), .A1(n477), .B0(n476), .Y(n479) );
  AOI21X2M U478 ( .A0(n481), .A1(n480), .B0(n479), .Y(n482) );
  OAI21X2M U479 ( .A0(n492), .A1(n483), .B0(n482), .Y(n488) );
  XNOR2X2M U480 ( .A(n488), .B(n487), .Y(n489) );
  AND2X2M U481 ( .A(n489), .B(n497), .Y(N44) );
  OAI21X2M U482 ( .A0(n492), .A1(n491), .B0(n490), .Y(n496) );
  AND2X2M U483 ( .A(n498), .B(n497), .Y(N41) );
endmodule


module DIG_FEEDBCK ( FB_CLK, RST, TDC_OUT, FCW, LMS_OV_FL, LMS_UN_FL, 
        MMD_CNTRL, DCW );
  input [3:0] TDC_OUT;
  input [26:0] FCW;
  output [7:0] MMD_CNTRL;
  output [8:0] DCW;
  input FB_CLK, RST;
  output LMS_OV_FL, LMS_UN_FL;
  wire   DSM_out, n1;
  wire   [19:0] FRAC_IN;
  wire   [19:0] Q_ERR_SIGN;
  wire   [19:0] Q_ERR_UNSIGN;
  wire   [8:0] Kcal;

  DSM_1ST_ORDER_in_width20 U0_DSM ( .CLK(FB_CLK), .RST(RST), .DSM_IN(FRAC_IN), 
        .Q_ERR_SIGN(Q_ERR_SIGN), .Q_ERR(Q_ERR_UNSIGN), .DSM_out(DSM_out) );
  CALC_DCW_DCW_WIDTH9_err_width20_K_width9 U0_DCW ( .CLK(FB_CLK), .RST(RST), 
        .Q_ERR(Q_ERR_UNSIGN), .Kcal({Kcal[8:6], n1, Kcal[4:0]}), .DCW(DCW) );
  CNTRL_MMD_FCW_WIDTH27_FRAC_WIDTH20_INT_WIDTH7_CNTRL_WIDTH8 U0_CNT_MMD ( 
        .CLK(FB_CLK), .RST(RST), .DSM_out(DSM_out), .FCW(FCW), .FRAC_IN(
        FRAC_IN), .MMD_CNTRL(MMD_CNTRL) );
  LMS_in_width4_K_width9_err_width20 U0_LMS ( .CLK(FB_CLK), .RST(RST), 
        .TDC_OUT(TDC_OUT), .Q_ERR(Q_ERR_SIGN), .Kcal_UNSIGN({Kcal[8:6], n1, 
        Kcal[4:0]}), .OV_FL(LMS_OV_FL), .UN_FL(LMS_UN_FL) );
endmodule

