/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 03:31:02 2026
/////////////////////////////////////////////////////////////


module DLF_in_width4_coeff_width4_out_width15 ( DLF_IN, KP, KI, CLK, RST, 
        DLF_Ext_En, DLF_Ext_Data, OV_FL, UN_FL, DLF_OUT );
  input [3:0] DLF_IN;
  input [3:0] KP;
  input [3:0] KI;
  input [14:0] DLF_Ext_Data;
  output [14:0] DLF_OUT;
  input CLK, RST, DLF_Ext_En;
  output OV_FL, UN_FL;
  wire   n362, I_path_19, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361;
  wire   [3:0] DLF_IN_FLOP;
  wire   [20:0] acc_out;

  DFFRQX1M \DLF_IN_FLOP_reg[0]  ( .D(DLF_IN[0]), .CK(CLK), .RN(RST), .Q(
        DLF_IN_FLOP[0]) );
  DFFRQX1M \acc_out_reg[20]  ( .D(N48), .CK(CLK), .RN(RST), .Q(acc_out[20]) );
  DFFRQX1M \acc_out_reg[19]  ( .D(N47), .CK(CLK), .RN(RST), .Q(acc_out[19]) );
  DFFRQX1M \acc_out_reg[18]  ( .D(N46), .CK(CLK), .RN(RST), .Q(acc_out[18]) );
  DFFRQX1M \acc_out_reg[17]  ( .D(N45), .CK(CLK), .RN(RST), .Q(acc_out[17]) );
  DFFRQX1M \acc_out_reg[16]  ( .D(N44), .CK(CLK), .RN(RST), .Q(acc_out[16]) );
  DFFRQX1M \acc_out_reg[15]  ( .D(N43), .CK(CLK), .RN(RST), .Q(acc_out[15]) );
  DFFRQX1M \acc_out_reg[14]  ( .D(N42), .CK(CLK), .RN(RST), .Q(acc_out[14]) );
  DFFRQX1M \acc_out_reg[12]  ( .D(N40), .CK(CLK), .RN(RST), .Q(acc_out[12]) );
  DFFRQX1M \acc_out_reg[10]  ( .D(N38), .CK(CLK), .RN(RST), .Q(acc_out[10]) );
  DFFRQX1M \acc_out_reg[7]  ( .D(N35), .CK(CLK), .RN(RST), .Q(acc_out[7]) );
  DFFRQX1M \acc_out_reg[6]  ( .D(N34), .CK(CLK), .RN(RST), .Q(acc_out[6]) );
  DFFRQX1M \acc_out_reg[3]  ( .D(N31), .CK(CLK), .RN(RST), .Q(acc_out[3]) );
  DFFRQX1M \acc_out_reg[2]  ( .D(N30), .CK(CLK), .RN(RST), .Q(acc_out[2]) );
  DFFRQX1M \acc_out_reg[1]  ( .D(N29), .CK(CLK), .RN(RST), .Q(acc_out[1]) );
  DFFRQX1M \acc_out_reg[0]  ( .D(N28), .CK(CLK), .RN(RST), .Q(acc_out[0]) );
  DFFRQX1M \DLF_IN_FLOP_reg[3]  ( .D(DLF_IN[3]), .CK(CLK), .RN(RST), .Q(
        I_path_19) );
  DFFRQX2M \DLF_IN_FLOP_reg[2]  ( .D(DLF_IN[2]), .CK(CLK), .RN(RST), .Q(
        DLF_IN_FLOP[2]) );
  DFFRQX2M \acc_out_reg[11]  ( .D(N39), .CK(CLK), .RN(RST), .Q(acc_out[11]) );
  DFFRQX2M \acc_out_reg[13]  ( .D(N41), .CK(CLK), .RN(RST), .Q(acc_out[13]) );
  DFFRQX2M \acc_out_reg[9]  ( .D(N37), .CK(CLK), .RN(RST), .Q(acc_out[9]) );
  DFFRQX2M \acc_out_reg[5]  ( .D(N33), .CK(CLK), .RN(RST), .Q(acc_out[5]) );
  DFFRQX2M \acc_out_reg[4]  ( .D(N32), .CK(CLK), .RN(RST), .Q(acc_out[4]) );
  DFFRQX2M \acc_out_reg[8]  ( .D(N36), .CK(CLK), .RN(RST), .Q(acc_out[8]) );
  DFFRQX2M \DLF_IN_FLOP_reg[1]  ( .D(DLF_IN[1]), .CK(CLK), .RN(RST), .Q(
        DLF_IN_FLOP[1]) );
  XNOR2X2M U3 ( .A(n360), .B(n359), .Y(n361) );
  XOR2X4M U4 ( .A(n190), .B(n359), .Y(n305) );
  INVX2M U5 ( .A(n313), .Y(n310) );
  NOR2X2M U6 ( .A(n85), .B(acc_out[9]), .Y(n94) );
  INVX2M U7 ( .A(n100), .Y(n70) );
  AOI22X1M U8 ( .A0(KI[0]), .A1(DLF_IN_FLOP[0]), .B0(DLF_IN_FLOP[1]), .B1(n200), .Y(n206) );
  BUFX5M U9 ( .A(I_path_19), .Y(n355) );
  NAND2XLM U10 ( .A(n48), .B(acc_out[4]), .Y(n51) );
  INVX4M U11 ( .A(KP[3]), .Y(n125) );
  AOI21XLM U12 ( .A0(n159), .A1(n158), .B0(n157), .Y(n160) );
  NAND2XLM U13 ( .A(n150), .B(acc_out[15]), .Y(n156) );
  NAND2XLM U14 ( .A(n75), .B(n93), .Y(n76) );
  AOI21XLM U15 ( .A0(n148), .A1(n154), .B0(n158), .Y(n152) );
  CLKINVX1M U16 ( .A(n279), .Y(n280) );
  NAND2XLM U17 ( .A(n330), .B(acc_out[16]), .Y(n333) );
  CLKINVX1M U18 ( .A(n356), .Y(n185) );
  NAND2XLM U19 ( .A(n170), .B(n172), .Y(n168) );
  NAND2XLM U20 ( .A(n220), .B(acc_out[0]), .Y(n221) );
  NOR2XLM U21 ( .A(n353), .B(n14), .Y(N31) );
  NOR2X1M U22 ( .A(n353), .B(n222), .Y(N28) );
  XNOR2X1M U23 ( .A(n320), .B(n316), .Y(n317) );
  XOR2X1M U24 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1M U25 ( .A(n78), .B(n76), .Y(n77) );
  INVX2M U26 ( .A(n171), .Y(n169) );
  AOI21X2M U27 ( .A0(n16), .A1(n252), .B0(n251), .Y(n253) );
  INVX2M U28 ( .A(n132), .Y(n122) );
  INVX1M U29 ( .A(n133), .Y(n116) );
  NAND2X1M U30 ( .A(n16), .B(n8), .Y(n254) );
  CLKINVX2M U31 ( .A(n250), .Y(n251) );
  INVX2M U32 ( .A(n294), .Y(n295) );
  NAND2X1M U33 ( .A(n182), .B(n180), .Y(n178) );
  INVX1M U34 ( .A(n68), .Y(n59) );
  INVX1M U35 ( .A(n114), .Y(n107) );
  INVX2M U36 ( .A(n261), .Y(n262) );
  INVX1M U37 ( .A(n136), .Y(n128) );
  INVX2M U38 ( .A(n156), .Y(n157) );
  NAND2XLM U39 ( .A(n159), .B(n156), .Y(n151) );
  CLKINVX2M U40 ( .A(n207), .Y(n223) );
  INVX2M U41 ( .A(n318), .Y(n319) );
  NAND2X2M U42 ( .A(n106), .B(acc_out[11]), .Y(n112) );
  NAND2X2M U43 ( .A(n85), .B(acc_out[9]), .Y(n92) );
  INVX1M U44 ( .A(n111), .Y(n102) );
  INVX1M U45 ( .A(n246), .Y(n252) );
  NAND2X2M U46 ( .A(n49), .B(acc_out[5]), .Y(n50) );
  NAND2X2M U47 ( .A(n144), .B(acc_out[14]), .Y(n147) );
  OAI2BB1X2M U48 ( .A0N(n267), .A1N(n329), .B0(n257), .Y(n258) );
  AOI31X2M U49 ( .A0(n313), .A1(n265), .A2(n309), .B0(n264), .Y(n266) );
  INVX1M U50 ( .A(n348), .Y(n179) );
  CLKNAND2X2M U51 ( .A(n72), .B(n80), .Y(n73) );
  CLKNAND2X2M U52 ( .A(KP[1]), .B(n201), .Y(n30) );
  NAND2XLM U53 ( .A(n355), .B(acc_out[20]), .Y(n188) );
  INVX2M U54 ( .A(n105), .Y(n80) );
  INVX1M U55 ( .A(DLF_IN_FLOP[2]), .Y(n28) );
  INVX2M U56 ( .A(KI[0]), .Y(n200) );
  BUFX4M U57 ( .A(KI[3]), .Y(n313) );
  NOR2BX2M U58 ( .AN(n354), .B(n353), .Y(N47) );
  NOR2BX2M U59 ( .AN(n302), .B(n353), .Y(N41) );
  NOR2BX2M U60 ( .AN(n342), .B(n353), .Y(N45) );
  OAI21X2M U61 ( .A0(n358), .A1(n357), .B0(n356), .Y(n360) );
  NOR2BX2M U62 ( .AN(n347), .B(n353), .Y(N46) );
  NOR2BX2M U63 ( .AN(n317), .B(n353), .Y(N42) );
  XOR2X2M U64 ( .A(n358), .B(n352), .Y(n354) );
  NOR2BX2M U65 ( .AN(n332), .B(n353), .Y(N44) );
  NOR2BX2M U66 ( .AN(n325), .B(n353), .Y(N43) );
  OR3X8M U67 ( .A(UN_FL), .B(OV_FL), .C(n303), .Y(n353) );
  XOR2X1M U68 ( .A(n345), .B(n341), .Y(n342) );
  XNOR2X1M U69 ( .A(n335), .B(n331), .Y(n332) );
  OAI21X4M U70 ( .A0(n328), .A1(n327), .B0(n326), .Y(n335) );
  XOR2X1M U71 ( .A(n328), .B(n324), .Y(n325) );
  OR2X4M U72 ( .A(n305), .B(n195), .Y(n362) );
  OAI21X4M U73 ( .A0(n308), .A1(n307), .B0(n306), .Y(n320) );
  AOI21X6M U74 ( .A0(n183), .A1(n182), .B0(n181), .Y(n184) );
  AOI21X4M U75 ( .A0(n281), .A1(n15), .B0(n280), .Y(n289) );
  NAND2X8M U76 ( .A(n173), .B(n172), .Y(n183) );
  AOI21X2M U77 ( .A0(n123), .A1(n122), .B0(n121), .Y(n130) );
  OAI21X1M U78 ( .A0(n78), .A1(n90), .B0(n93), .Y(n88) );
  OAI21X2M U79 ( .A0(n140), .A1(n111), .B0(n113), .Y(n109) );
  NAND2X6M U80 ( .A(n171), .B(n170), .Y(n173) );
  XOR2X1M U81 ( .A(n140), .B(n103), .Y(n104) );
  AOI21X4M U82 ( .A0(n263), .A1(n9), .B0(n262), .Y(n274) );
  INVX1M U83 ( .A(n255), .Y(n248) );
  INVX1M U84 ( .A(n239), .Y(n229) );
  AOI21X4M U85 ( .A0(n55), .A1(n54), .B0(n53), .Y(n100) );
  CLKINVX2M U86 ( .A(n135), .Y(n121) );
  NAND2X1M U87 ( .A(n62), .B(n67), .Y(n63) );
  INVX2M U88 ( .A(n138), .Y(n115) );
  AOI21X1M U89 ( .A0(n223), .A1(n3), .B0(n209), .Y(n210) );
  OAI21X1M U90 ( .A0(n237), .A1(n236), .B0(n235), .Y(n238) );
  CLKINVX1M U91 ( .A(n225), .Y(n209) );
  AOI21X2M U92 ( .A0(n44), .A1(n43), .B0(n42), .Y(n45) );
  CLKINVX2M U93 ( .A(n66), .Y(n60) );
  NAND2X1M U94 ( .A(n102), .B(n113), .Y(n103) );
  AND2X1M U95 ( .A(n41), .B(acc_out[3]), .Y(n42) );
  NAND2X2M U96 ( .A(n268), .B(acc_out[9]), .Y(n272) );
  NAND2X2M U97 ( .A(n283), .B(acc_out[11]), .Y(n287) );
  NAND2X1M U98 ( .A(n208), .B(acc_out[3]), .Y(n225) );
  INVX2M U99 ( .A(n71), .Y(n166) );
  CLKINVX2M U100 ( .A(n333), .Y(n334) );
  INVX2M U101 ( .A(n282), .Y(n321) );
  OAI2BB1X2M U102 ( .A0N(n267), .A1N(n337), .B0(n266), .Y(n268) );
  NAND2X2M U103 ( .A(n315), .B(acc_out[14]), .Y(n318) );
  AND2X1M U104 ( .A(n40), .B(acc_out[2]), .Y(n43) );
  NAND2X1M U105 ( .A(n241), .B(acc_out[6]), .Y(n246) );
  NOR3X2M U106 ( .A(n313), .B(n312), .C(n275), .Y(n202) );
  AND2X1M U107 ( .A(n35), .B(acc_out[0]), .Y(n38) );
  AND2X1M U108 ( .A(n36), .B(acc_out[1]), .Y(n37) );
  AOI31X1M U109 ( .A0(n313), .A1(n256), .A2(n309), .B0(n264), .Y(n257) );
  NAND2X2M U110 ( .A(n81), .B(n80), .Y(n83) );
  NAND2X6M U111 ( .A(n125), .B(n355), .Y(n124) );
  NOR2BX8M U112 ( .AN(n361), .B(n353), .Y(N48) );
  NOR2BX1M U113 ( .AN(n260), .B(n353), .Y(N36) );
  NOR2BX1M U114 ( .AN(n271), .B(n353), .Y(N37) );
  NOR2BX1M U115 ( .AN(n286), .B(n353), .Y(N39) );
  NOR2BX1M U116 ( .AN(n245), .B(n353), .Y(N35) );
  NOR2X1M U117 ( .A(n353), .B(n2), .Y(N32) );
  NOR2BX1M U118 ( .AN(n293), .B(n353), .Y(N40) );
  NOR2X1M U119 ( .A(n353), .B(n6), .Y(N33) );
  NOR2X1M U120 ( .A(n353), .B(n13), .Y(N30) );
  NOR2BX1M U121 ( .AN(n278), .B(n353), .Y(N38) );
  XNOR2X1M U122 ( .A(n351), .B(n346), .Y(n347) );
  NOR2X1M U123 ( .A(n353), .B(n12), .Y(N29) );
  NOR2BX1M U124 ( .AN(n249), .B(n353), .Y(N34) );
  INVX12M U125 ( .A(n362), .Y(OV_FL) );
  AOI21X2M U126 ( .A0(n187), .A1(n186), .B0(n185), .Y(n190) );
  AO22X1M U127 ( .A0(n153), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[9]), .Y(
        DLF_OUT[9]) );
  XOR2X1M U128 ( .A(n152), .B(n151), .Y(n153) );
  XOR2X1M U129 ( .A(n130), .B(n129), .Y(n131) );
  XNOR2X1M U130 ( .A(n88), .B(n87), .Y(n89) );
  AO22X1M U131 ( .A0(n65), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[1]), .Y(
        DLF_OUT[1]) );
  XNOR2X1M U132 ( .A(n123), .B(n119), .Y(n120) );
  XNOR2X1M U133 ( .A(n109), .B(n108), .Y(n110) );
  XNOR2X1M U134 ( .A(n148), .B(n145), .Y(n146) );
  AO22X1M U135 ( .A0(n58), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[0]), .Y(
        DLF_OUT[0]) );
  XNOR2X1M U136 ( .A(n70), .B(n57), .Y(n58) );
  AOI21X1M U137 ( .A0(n70), .A1(n60), .B0(n59), .Y(n64) );
  AO21X4M U138 ( .A0(n165), .A1(n164), .B0(n163), .Y(n171) );
  OAI21X2M U139 ( .A0(n255), .A1(n254), .B0(n253), .Y(n263) );
  AOI21X2M U140 ( .A0(n97), .A1(n96), .B0(n95), .Y(n98) );
  AOI21X2M U141 ( .A0(n240), .A1(n239), .B0(n238), .Y(n255) );
  NAND2X1M U142 ( .A(n122), .B(n135), .Y(n119) );
  NAND2X1M U143 ( .A(n60), .B(n68), .Y(n57) );
  OAI21X2M U144 ( .A0(n47), .A1(n46), .B0(n45), .Y(n54) );
  NAND2X1M U145 ( .A(n107), .B(n112), .Y(n108) );
  NAND2X1M U146 ( .A(n128), .B(n134), .Y(n129) );
  NAND2X1M U147 ( .A(n86), .B(n92), .Y(n87) );
  OR2X2M U148 ( .A(n167), .B(acc_out[16]), .Y(n170) );
  OAI21X2M U149 ( .A0(n117), .A1(n125), .B0(n124), .Y(n118) );
  OAI211X4M U150 ( .A0(n166), .A1(n84), .B0(n73), .C0(n82), .Y(n74) );
  NAND2X1M U151 ( .A(n154), .B(n147), .Y(n145) );
  OR2X2M U152 ( .A(n150), .B(acc_out[15]), .Y(n159) );
  OR2X2M U153 ( .A(n144), .B(acc_out[14]), .Y(n154) );
  OR2X2M U154 ( .A(n177), .B(acc_out[17]), .Y(n182) );
  NAND2X1M U155 ( .A(n339), .B(acc_out[17]), .Y(n343) );
  NAND2X1M U156 ( .A(n179), .B(n349), .Y(n346) );
  INVX4M U157 ( .A(n124), .Y(n141) );
  OR2X1M U158 ( .A(n355), .B(acc_out[19]), .Y(n186) );
  INVX4M U159 ( .A(n303), .Y(n304) );
  BUFX4M U160 ( .A(KI[2]), .Y(n312) );
  CLKAND2X16M U161 ( .A(n191), .B(n305), .Y(UN_FL) );
  AOI21X4M U162 ( .A0(n351), .A1(n179), .B0(n350), .Y(n358) );
  INVX2M U163 ( .A(n314), .Y(n275) );
  NOR2X2M U164 ( .A(n48), .B(acc_out[4]), .Y(n22) );
  AO22X1M U165 ( .A0(n120), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[6]), .Y(
        DLF_OUT[6]) );
  AO22X1M U166 ( .A0(n192), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[12]), .Y(
        DLF_OUT[12]) );
  OAI21X2M U167 ( .A0(n162), .A1(n161), .B0(n160), .Y(n163) );
  CLKINVX1M U168 ( .A(n90), .Y(n75) );
  AO22X1M U169 ( .A0(n131), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[7]), .Y(
        DLF_OUT[7]) );
  OAI2BB2X1M U170 ( .B0(n11), .B1(n303), .A0N(n303), .A1N(DLF_Ext_Data[10]), 
        .Y(DLF_OUT[10]) );
  AO22X1M U171 ( .A0(n194), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[13]), .Y(
        DLF_OUT[13]) );
  OR2X1M U172 ( .A(n41), .B(acc_out[3]), .Y(n44) );
  NAND2X4M U173 ( .A(n29), .B(n355), .Y(n24) );
  NAND2XLM U174 ( .A(n44), .B(n33), .Y(n47) );
  OR2X1M U175 ( .A(n40), .B(acc_out[2]), .Y(n33) );
  AOI21XLM U176 ( .A0(n39), .A1(n38), .B0(n37), .Y(n46) );
  OR2X1M U177 ( .A(n36), .B(acc_out[1]), .Y(n39) );
  MXI2X2M U178 ( .A(n79), .B(n81), .S0(KP[2]), .Y(n126) );
  NOR2X2M U179 ( .A(n132), .B(n136), .Y(n139) );
  NAND2X2M U180 ( .A(KP[2]), .B(KP[3]), .Y(n175) );
  NOR2X2M U181 ( .A(n216), .B(acc_out[5]), .Y(n236) );
  OAI21X2M U182 ( .A0(n212), .A1(n211), .B0(n210), .Y(n239) );
  NAND2XLM U183 ( .A(n10), .B(n3), .Y(n211) );
  NAND2XLM U184 ( .A(n265), .B(n309), .Y(n196) );
  AOI21X2M U185 ( .A0(n18), .A1(n232), .B0(n199), .Y(n212) );
  CLKINVX1M U186 ( .A(n231), .Y(n199) );
  NOR2XLM U187 ( .A(n234), .B(n236), .Y(n240) );
  AO21XLM U188 ( .A0(n338), .A1(n337), .B0(n336), .Y(n339) );
  CLKINVX1M U189 ( .A(n69), .Y(n62) );
  CLKINVX1M U190 ( .A(n94), .Y(n86) );
  XNOR2X4M U191 ( .A(n187), .B(n352), .Y(n194) );
  OR2X1M U192 ( .A(n258), .B(acc_out[8]), .Y(n9) );
  CLKINVX1M U193 ( .A(n236), .Y(n217) );
  AOI21X2M U194 ( .A0(n296), .A1(n5), .B0(n295), .Y(n308) );
  OR2X1M U195 ( .A(n198), .B(acc_out[1]), .Y(n18) );
  CLKINVX1M U196 ( .A(n221), .Y(n232) );
  OR2X1M U197 ( .A(n208), .B(acc_out[3]), .Y(n3) );
  CLKINVX1M U198 ( .A(n212), .Y(n224) );
  OR2X1M U199 ( .A(n241), .B(acc_out[6]), .Y(n8) );
  OR2X1M U200 ( .A(n242), .B(acc_out[7]), .Y(n16) );
  OAI21X2M U201 ( .A0(n274), .A1(n273), .B0(n272), .Y(n281) );
  OR2X1M U202 ( .A(n276), .B(acc_out[10]), .Y(n15) );
  OAI21X2M U203 ( .A0(n289), .A1(n288), .B0(n287), .Y(n296) );
  OR2X1M U204 ( .A(n291), .B(acc_out[12]), .Y(n5) );
  OR2X1M U205 ( .A(n315), .B(acc_out[14]), .Y(n7) );
  AOI21X2M U206 ( .A0(n320), .A1(n7), .B0(n319), .Y(n328) );
  OR2X1M U207 ( .A(n330), .B(acc_out[16]), .Y(n4) );
  AOI21X2M U208 ( .A0(n335), .A1(n4), .B0(n334), .Y(n345) );
  OAI21X2M U209 ( .A0(n345), .A1(n344), .B0(n343), .Y(n351) );
  CLKINVX1M U210 ( .A(n349), .Y(n350) );
  OR2X1M U211 ( .A(I_path_19), .B(acc_out[20]), .Y(n189) );
  AO22X1M U212 ( .A0(n77), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[2]), .Y(
        DLF_OUT[2]) );
  AO22X1M U213 ( .A0(n89), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[3]), .Y(
        DLF_OUT[3]) );
  AO22X1M U214 ( .A0(n104), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[4]), .Y(
        DLF_OUT[4]) );
  AO22X1M U215 ( .A0(n110), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[5]), .Y(
        DLF_OUT[5]) );
  AO22X1M U216 ( .A0(n146), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[8]), .Y(
        DLF_OUT[8]) );
  AO22X1M U217 ( .A0(n193), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[11]), .Y(
        DLF_OUT[11]) );
  AOI22XLM U218 ( .A0(n305), .A1(n304), .B0(n303), .B1(DLF_Ext_Data[14]), .Y(
        DLF_OUT[14]) );
  XNOR2XLM U219 ( .A(n263), .B(n259), .Y(n260) );
  NAND2XLM U220 ( .A(n9), .B(n261), .Y(n259) );
  NAND2XLM U221 ( .A(n228), .B(n237), .Y(n230) );
  CLKINVX1M U222 ( .A(n234), .Y(n228) );
  NAND2XLM U223 ( .A(n217), .B(n235), .Y(n218) );
  OAI21XLM U224 ( .A0(n234), .A1(n229), .B0(n237), .Y(n219) );
  NAND2XLM U225 ( .A(n269), .B(n272), .Y(n270) );
  CLKINVX1M U226 ( .A(n273), .Y(n269) );
  XOR2XLM U227 ( .A(n308), .B(n301), .Y(n302) );
  NAND2XLM U228 ( .A(n300), .B(n306), .Y(n301) );
  CLKINVX1M U229 ( .A(n307), .Y(n300) );
  XOR2XLM U230 ( .A(n289), .B(n285), .Y(n286) );
  NAND2XLM U231 ( .A(n284), .B(n287), .Y(n285) );
  NAND2XLM U232 ( .A(n18), .B(n231), .Y(n233) );
  NAND2XLM U233 ( .A(n10), .B(n207), .Y(n203) );
  NAND2XLM U234 ( .A(n3), .B(n225), .Y(n226) );
  AOI21XLM U235 ( .A0(n224), .A1(n10), .B0(n223), .Y(n227) );
  XNOR2XLM U236 ( .A(n248), .B(n247), .Y(n249) );
  XOR2XLM U237 ( .A(n244), .B(n243), .Y(n245) );
  NAND2XLM U238 ( .A(n16), .B(n250), .Y(n243) );
  AOI21XLM U239 ( .A0(n248), .A1(n8), .B0(n252), .Y(n244) );
  XNOR2XLM U240 ( .A(n281), .B(n277), .Y(n278) );
  NAND2XLM U241 ( .A(n15), .B(n279), .Y(n277) );
  XNOR2XLM U242 ( .A(n296), .B(n292), .Y(n293) );
  NAND2XLM U243 ( .A(n5), .B(n294), .Y(n292) );
  NAND2XLM U244 ( .A(n323), .B(n326), .Y(n324) );
  CLKINVX1M U245 ( .A(n327), .Y(n323) );
  NAND2XLM U246 ( .A(n340), .B(n343), .Y(n341) );
  CLKINVX1M U247 ( .A(n344), .Y(n340) );
  NOR2XLM U248 ( .A(n355), .B(acc_out[19]), .Y(n357) );
  AOI21X4M U249 ( .A0(n313), .A1(n312), .B0(n311), .Y(n336) );
  OAI31X4M U250 ( .A0(n312), .A1(n310), .A2(n275), .B0(n297), .Y(n276) );
  NOR2BXLM U251 ( .AN(n72), .B(n34), .Y(n35) );
  MXI2X2M U252 ( .A(n71), .B(n72), .S0(KP[2]), .Y(n117) );
  NOR3X4M U253 ( .A(KP[0]), .B(KP[1]), .C(n201), .Y(n72) );
  OAI222X4M U254 ( .A0(n311), .A1(KI[0]), .B0(n311), .B1(KI[1]), .C0(n215), 
        .C1(n214), .Y(n337) );
  AOI22X2M U255 ( .A0(KI[0]), .A1(DLF_IN_FLOP[1]), .B0(DLF_IN_FLOP[2]), .B1(
        n200), .Y(n204) );
  MXI2X2M U256 ( .A(DLF_IN_FLOP[1]), .B(DLF_IN_FLOP[0]), .S0(KP[0]), .Y(n26)
         );
  NAND2X2M U257 ( .A(n202), .B(acc_out[2]), .Y(n207) );
  NAND2X2M U258 ( .A(n198), .B(acc_out[1]), .Y(n231) );
  NAND2XLM U259 ( .A(n8), .B(n246), .Y(n247) );
  NAND2X2M U260 ( .A(n242), .B(acc_out[7]), .Y(n250) );
  NAND2X2M U261 ( .A(n258), .B(acc_out[8]), .Y(n261) );
  NAND2X2M U262 ( .A(n291), .B(acc_out[12]), .Y(n294) );
  NAND2X2M U263 ( .A(n276), .B(acc_out[10]), .Y(n279) );
  NAND2X2M U264 ( .A(n101), .B(acc_out[10]), .Y(n113) );
  NOR2X2M U265 ( .A(n213), .B(acc_out[4]), .Y(n234) );
  NAND2X2M U266 ( .A(n213), .B(acc_out[4]), .Y(n237) );
  NAND2XLM U267 ( .A(n4), .B(n333), .Y(n331) );
  NOR2X2M U268 ( .A(n339), .B(acc_out[17]), .Y(n344) );
  NAND2X2M U269 ( .A(n216), .B(acc_out[5]), .Y(n235) );
  NOR2X2M U270 ( .A(n268), .B(acc_out[9]), .Y(n273) );
  NOR2X4M U271 ( .A(n127), .B(acc_out[13]), .Y(n136) );
  NOR2X2M U272 ( .A(n299), .B(acc_out[13]), .Y(n307) );
  NAND2X2M U273 ( .A(n299), .B(acc_out[13]), .Y(n306) );
  NAND2X2M U274 ( .A(n322), .B(acc_out[15]), .Y(n326) );
  NOR2X2M U275 ( .A(n322), .B(acc_out[15]), .Y(n327) );
  AO21X2M U276 ( .A0(n338), .A1(n321), .B0(n336), .Y(n322) );
  NOR2X2M U277 ( .A(n106), .B(acc_out[11]), .Y(n114) );
  NAND2XLM U278 ( .A(n256), .B(n309), .Y(n197) );
  NOR3X4M U279 ( .A(KI[1]), .B(KI[0]), .C(n201), .Y(n256) );
  OAI211X4M U280 ( .A0(DLF_IN_FLOP[1]), .A1(n32), .B0(n31), .C0(n30), .Y(n143)
         );
  AOI31X2M U281 ( .A0(n32), .A1(n29), .A2(n28), .B0(n27), .Y(n31) );
  NOR2X2M U282 ( .A(n283), .B(acc_out[11]), .Y(n288) );
  OAI31X4M U283 ( .A0(n312), .A1(n282), .A2(n310), .B0(n297), .Y(n283) );
  XNOR2XLM U284 ( .A(n230), .B(n229), .Y(n2) );
  XOR2XLM U285 ( .A(n219), .B(n218), .Y(n6) );
  OR2X2M U286 ( .A(n202), .B(acc_out[2]), .Y(n10) );
  XNOR2X2M U287 ( .A(n169), .B(n168), .Y(n11) );
  XOR2XLM U288 ( .A(n233), .B(n232), .Y(n12) );
  XOR2XLM U289 ( .A(n224), .B(n203), .Y(n13) );
  XNOR2XLM U290 ( .A(n227), .B(n226), .Y(n14) );
  NOR2X2M U291 ( .A(n355), .B(acc_out[18]), .Y(n348) );
  BUFX6M U292 ( .A(DLF_Ext_En), .Y(n303) );
  OR2X1M U293 ( .A(n220), .B(acc_out[0]), .Y(n17) );
  NAND2XLM U294 ( .A(n17), .B(n221), .Y(n222) );
  INVX2M U295 ( .A(n24), .Y(n19) );
  NAND2X2M U296 ( .A(n97), .B(n91), .Y(n99) );
  CLKINVX1M U297 ( .A(n288), .Y(n284) );
  NAND2XLM U298 ( .A(n7), .B(n318), .Y(n316) );
  XOR2XLM U299 ( .A(n274), .B(n270), .Y(n271) );
  AND2X2M U300 ( .A(KP[0]), .B(KP[1]), .Y(n27) );
  INVX2M U301 ( .A(KP[0]), .Y(n32) );
  INVX2M U302 ( .A(KP[1]), .Y(n29) );
  AOI31X2M U303 ( .A0(KP[1]), .A1(DLF_IN_FLOP[2]), .A2(n32), .B0(n19), .Y(n20)
         );
  OAI2BB1X2M U304 ( .A0N(DLF_IN_FLOP[1]), .A1N(n27), .B0(n20), .Y(n71) );
  INVX2M U305 ( .A(DLF_IN_FLOP[0]), .Y(n201) );
  NOR2X2M U306 ( .A(n117), .B(KP[3]), .Y(n48) );
  INVX4M U307 ( .A(n355), .Y(n311) );
  NAND2X2M U308 ( .A(n27), .B(DLF_IN_FLOP[2]), .Y(n21) );
  OAI211X2M U309 ( .A0(KP[0]), .A1(n311), .B0(n24), .C0(n21), .Y(n79) );
  NOR2X2M U310 ( .A(n26), .B(KP[1]), .Y(n81) );
  NOR2X2M U311 ( .A(n126), .B(KP[3]), .Y(n49) );
  NOR2X2M U312 ( .A(n49), .B(acc_out[5]), .Y(n52) );
  NOR2X2M U313 ( .A(n22), .B(n52), .Y(n55) );
  NAND3X2M U314 ( .A(n29), .B(KP[0]), .C(DLF_IN_FLOP[2]), .Y(n23) );
  OAI21X2M U315 ( .A0(n24), .A1(KP[0]), .B0(n23), .Y(n25) );
  AOI2B1X4M U316 ( .A1N(n26), .A0(KP[1]), .B0(n25), .Y(n149) );
  INVX2M U317 ( .A(KP[2]), .Y(n142) );
  NAND2X2M U318 ( .A(n142), .B(n125), .Y(n34) );
  NOR2X2M U319 ( .A(n149), .B(n34), .Y(n41) );
  NOR2X2M U320 ( .A(n143), .B(n34), .Y(n40) );
  NOR2BX2M U321 ( .AN(n81), .B(n34), .Y(n36) );
  OAI21X2M U322 ( .A0(n52), .A1(n51), .B0(n50), .Y(n53) );
  NAND2BX2M U323 ( .AN(KP[3]), .B(KP[2]), .Y(n84) );
  NAND2X2M U324 ( .A(n141), .B(n142), .Y(n82) );
  OAI21X2M U325 ( .A0(n143), .A1(n84), .B0(n82), .Y(n56) );
  NOR2X2M U326 ( .A(n56), .B(acc_out[6]), .Y(n66) );
  NAND2X2M U327 ( .A(n56), .B(acc_out[6]), .Y(n68) );
  OAI21X2M U328 ( .A0(n149), .A1(n84), .B0(n82), .Y(n61) );
  NOR2X2M U329 ( .A(n61), .B(acc_out[7]), .Y(n69) );
  NAND2X2M U330 ( .A(n61), .B(acc_out[7]), .Y(n67) );
  NOR2X2M U331 ( .A(n69), .B(n66), .Y(n91) );
  OAI21X2M U332 ( .A0(n69), .A1(n68), .B0(n67), .Y(n96) );
  AOI21X2M U333 ( .A0(n70), .A1(n91), .B0(n96), .Y(n78) );
  NAND2BX2M U334 ( .AN(KP[2]), .B(KP[3]), .Y(n105) );
  NOR2X2M U335 ( .A(n74), .B(acc_out[8]), .Y(n90) );
  NAND2X2M U336 ( .A(acc_out[8]), .B(n74), .Y(n93) );
  INVX2M U337 ( .A(n79), .Y(n176) );
  OAI211X2M U338 ( .A0(n176), .A1(n84), .B0(n83), .C0(n82), .Y(n85) );
  NOR2X2M U339 ( .A(n90), .B(n94), .Y(n97) );
  OAI21X2M U340 ( .A0(n94), .A1(n93), .B0(n92), .Y(n95) );
  OAI21X4M U341 ( .A0(n100), .A1(n99), .B0(n98), .Y(n165) );
  INVX2M U342 ( .A(n165), .Y(n140) );
  OAI21X2M U343 ( .A0(n143), .A1(n105), .B0(n124), .Y(n101) );
  NOR2X2M U344 ( .A(n101), .B(acc_out[10]), .Y(n111) );
  OAI21X2M U345 ( .A0(n149), .A1(n105), .B0(n124), .Y(n106) );
  NOR2X2M U346 ( .A(n114), .B(n111), .Y(n133) );
  OAI21X2M U347 ( .A0(n114), .A1(n113), .B0(n112), .Y(n138) );
  OAI21X2M U348 ( .A0(n140), .A1(n116), .B0(n115), .Y(n123) );
  NOR2X2M U349 ( .A(n118), .B(acc_out[12]), .Y(n132) );
  NAND2X2M U350 ( .A(n118), .B(acc_out[12]), .Y(n135) );
  OAI21X2M U351 ( .A0(n126), .A1(n125), .B0(n124), .Y(n127) );
  NAND2X2M U352 ( .A(n127), .B(acc_out[13]), .Y(n134) );
  NAND2X2M U353 ( .A(n139), .B(n133), .Y(n155) );
  OAI21X2M U354 ( .A0(n136), .A1(n135), .B0(n134), .Y(n137) );
  AOI21X4M U355 ( .A0(n139), .A1(n138), .B0(n137), .Y(n162) );
  OAI21X2M U356 ( .A0(n140), .A1(n155), .B0(n162), .Y(n148) );
  AOI21X4M U357 ( .A0(n355), .A1(n142), .B0(n141), .Y(n174) );
  OAI21X2M U358 ( .A0(n143), .A1(n175), .B0(n174), .Y(n144) );
  INVX2M U359 ( .A(n147), .Y(n158) );
  OAI21X2M U360 ( .A0(n149), .A1(n175), .B0(n174), .Y(n150) );
  NAND2X2M U361 ( .A(n159), .B(n154), .Y(n161) );
  NOR2X2M U362 ( .A(n155), .B(n161), .Y(n164) );
  OAI21X2M U363 ( .A0(n166), .A1(n175), .B0(n174), .Y(n167) );
  NAND2X2M U364 ( .A(n167), .B(acc_out[16]), .Y(n172) );
  OAI21X2M U365 ( .A0(n176), .A1(n175), .B0(n174), .Y(n177) );
  NAND2X2M U366 ( .A(n177), .B(acc_out[17]), .Y(n180) );
  XNOR2X4M U367 ( .A(n183), .B(n178), .Y(n193) );
  NAND2X2M U368 ( .A(n355), .B(acc_out[18]), .Y(n349) );
  INVX2M U369 ( .A(n180), .Y(n181) );
  CLKXOR2X2M U370 ( .A(n346), .B(n184), .Y(n192) );
  OAI21X6M U371 ( .A0(n184), .A1(n348), .B0(n349), .Y(n187) );
  NAND2X2M U372 ( .A(n355), .B(acc_out[19]), .Y(n356) );
  NAND2X2M U373 ( .A(n186), .B(n356), .Y(n352) );
  NOR4X2M U374 ( .A(n194), .B(n193), .C(n192), .D(n11), .Y(n191) );
  NAND2X2M U375 ( .A(n189), .B(n188), .Y(n359) );
  NAND3X4M U376 ( .A(n194), .B(n193), .C(n192), .Y(n195) );
  NOR2X2M U377 ( .A(KI[1]), .B(n206), .Y(n265) );
  INVX4M U378 ( .A(n312), .Y(n309) );
  NOR2X2M U379 ( .A(n313), .B(n196), .Y(n198) );
  NOR2X2M U380 ( .A(n313), .B(n197), .Y(n220) );
  INVX2M U381 ( .A(KI[1]), .Y(n214) );
  OAI32X4M U382 ( .A0(n214), .A1(KI[0]), .A2(n201), .B0(n204), .B1(KI[1]), .Y(
        n314) );
  AOI22X2M U383 ( .A0(KI[1]), .A1(n204), .B0(n311), .B1(n214), .Y(n329) );
  AOI22X1M U384 ( .A0(n312), .A1(n256), .B0(n329), .B1(n309), .Y(n290) );
  NOR2X2M U385 ( .A(n313), .B(n290), .Y(n213) );
  NAND2X2M U386 ( .A(DLF_IN_FLOP[2]), .B(KI[0]), .Y(n215) );
  AOI221X1M U387 ( .A0(KI[0]), .A1(n215), .B0(n311), .B1(n215), .C0(KI[1]), 
        .Y(n205) );
  AOI2BB1X2M U388 ( .A0N(n206), .A1N(n214), .B0(n205), .Y(n282) );
  NOR3X2M U389 ( .A(n313), .B(n312), .C(n282), .Y(n208) );
  AOI22X1M U390 ( .A0(n312), .A1(n265), .B0(n337), .B1(n309), .Y(n298) );
  NOR2X2M U391 ( .A(n313), .B(n298), .Y(n216) );
  NOR2X4M U392 ( .A(n313), .B(n309), .Y(n267) );
  NOR3X4M U393 ( .A(n313), .B(n312), .C(n311), .Y(n264) );
  AO21XLM U394 ( .A0(n267), .A1(n314), .B0(n264), .Y(n241) );
  AO21XLM U395 ( .A0(n267), .A1(n321), .B0(n264), .Y(n242) );
  NAND2X2M U396 ( .A(n355), .B(n310), .Y(n297) );
  OAI21X2M U397 ( .A0(n310), .A1(n290), .B0(n297), .Y(n291) );
  OAI21X2M U398 ( .A0(n298), .A1(n310), .B0(n297), .Y(n299) );
  NOR2X4M U399 ( .A(n310), .B(n309), .Y(n338) );
  AO21XLM U400 ( .A0(n314), .A1(n338), .B0(n336), .Y(n315) );
  AO21XLM U401 ( .A0(n338), .A1(n329), .B0(n336), .Y(n330) );
endmodule


module DSM_MASH_1_1_IN_W15 ( CLK, RST, DSM_IN, DSM_OUT );
  input [14:0] DSM_IN;
  output [4:0] DSM_OUT;
  input CLK, RST;
  wire   out_stage_2, out_stage_2_del, N3, N4, N5, N6, N7, \intadd_0/n4 ,
         \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23;
  wire   [9:0] Q_ERR_1;
  wire   [14:0] Q_IN_1;
  wire   [9:0] Q_ERR_2;
  wire   [10:0] Q_IN_2;
  wire   [4:0] out_stage_1;

  DFFRQX1M \out_stage_1_reg[4]  ( .D(Q_IN_1[14]), .CK(CLK), .RN(RST), .Q(
        out_stage_1[4]) );
  DFFRQX1M \out_stage_1_reg[3]  ( .D(Q_IN_1[13]), .CK(CLK), .RN(RST), .Q(
        out_stage_1[3]) );
  DFFRQX1M \out_stage_1_reg[2]  ( .D(Q_IN_1[12]), .CK(CLK), .RN(RST), .Q(
        out_stage_1[2]) );
  DFFRQX1M \out_stage_1_reg[1]  ( .D(Q_IN_1[11]), .CK(CLK), .RN(RST), .Q(
        out_stage_1[1]) );
  DFFRQX1M \out_stage_1_reg[0]  ( .D(Q_IN_1[10]), .CK(CLK), .RN(RST), .Q(
        out_stage_1[0]) );
  DFFRQX1M \Q_ERR_1_reg[9]  ( .D(Q_IN_1[9]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[9]) );
  DFFRQX1M \Q_ERR_1_reg[8]  ( .D(Q_IN_1[8]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[8]) );
  DFFRQX1M \Q_ERR_1_reg[7]  ( .D(Q_IN_1[7]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[7]) );
  DFFRQX1M \Q_ERR_1_reg[6]  ( .D(Q_IN_1[6]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[6]) );
  DFFRQX1M \Q_ERR_1_reg[5]  ( .D(Q_IN_1[5]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[5]) );
  DFFRQX1M \Q_ERR_1_reg[4]  ( .D(Q_IN_1[4]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[4]) );
  DFFRQX1M \Q_ERR_1_reg[3]  ( .D(Q_IN_1[3]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[3]) );
  DFFRQX1M \Q_ERR_1_reg[2]  ( .D(Q_IN_1[2]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[2]) );
  DFFRQX1M \Q_ERR_1_reg[1]  ( .D(Q_IN_1[1]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[1]) );
  DFFRQX1M \Q_ERR_1_reg[0]  ( .D(Q_IN_1[0]), .CK(CLK), .RN(RST), .Q(Q_ERR_1[0]) );
  DFFRQX1M out_stage_2_reg ( .D(Q_IN_2[10]), .CK(CLK), .RN(RST), .Q(
        out_stage_2) );
  DFFRQX1M \Q_ERR_2_reg[9]  ( .D(Q_IN_2[9]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[9]) );
  DFFRQX1M \Q_ERR_2_reg[8]  ( .D(Q_IN_2[8]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[8]) );
  DFFRQX1M \Q_ERR_2_reg[7]  ( .D(Q_IN_2[7]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[7]) );
  DFFRQX1M \Q_ERR_2_reg[6]  ( .D(Q_IN_2[6]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[6]) );
  DFFRQX1M \Q_ERR_2_reg[5]  ( .D(Q_IN_2[5]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[5]) );
  DFFRQX1M \Q_ERR_2_reg[4]  ( .D(Q_IN_2[4]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[4]) );
  DFFRQX1M \Q_ERR_2_reg[3]  ( .D(Q_IN_2[3]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[3]) );
  DFFRQX1M \Q_ERR_2_reg[2]  ( .D(Q_IN_2[2]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[2]) );
  DFFRQX1M \Q_ERR_2_reg[1]  ( .D(Q_IN_2[1]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[1]) );
  DFFRQX1M \Q_ERR_2_reg[0]  ( .D(Q_IN_2[0]), .CK(CLK), .RN(RST), .Q(Q_ERR_2[0]) );
  DFFRHQX8M \DSM_OUT_reg[0]  ( .D(N3), .CK(CLK), .RN(RST), .Q(DSM_OUT[0]) );
  DFFRHQX8M \DSM_OUT_reg[1]  ( .D(N4), .CK(CLK), .RN(RST), .Q(DSM_OUT[1]) );
  DFFRHQX8M \DSM_OUT_reg[2]  ( .D(N5), .CK(CLK), .RN(RST), .Q(DSM_OUT[2]) );
  DFFRHQX8M \DSM_OUT_reg[3]  ( .D(N6), .CK(CLK), .RN(RST), .Q(DSM_OUT[3]) );
  DFFRHQX8M \DSM_OUT_reg[4]  ( .D(N7), .CK(CLK), .RN(RST), .Q(DSM_OUT[4]) );
  DFFRQX2M out_stage_2_del_reg ( .D(out_stage_2), .CK(CLK), .RN(RST), .Q(
        out_stage_2_del) );
  ADDFX1M \intadd_0/U5  ( .A(out_stage_2), .B(out_stage_1[0]), .CI(
        out_stage_2_del), .CO(\intadd_0/n4 ), .S(N3) );
  ADDFX1M \intadd_0/U4  ( .A(out_stage_2_del), .B(out_stage_1[1]), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(N4) );
  ADDFX1M \intadd_0/U3  ( .A(out_stage_2_del), .B(out_stage_1[2]), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(N5) );
  ADDFX1M \intadd_0/U2  ( .A(out_stage_2_del), .B(out_stage_1[3]), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(N6) );
  ADDFX2M U3 ( .A(Q_IN_1[7]), .B(Q_ERR_2[7]), .CI(n21), .CO(n22), .S(Q_IN_2[7]) );
  ADDFX2M U4 ( .A(Q_IN_1[9]), .B(Q_ERR_2[9]), .CI(n23), .CO(Q_IN_2[10]), .S(
        Q_IN_2[9]) );
  ADDFX2M U5 ( .A(Q_IN_1[8]), .B(Q_ERR_2[8]), .CI(n22), .CO(n23), .S(Q_IN_2[8]) );
  ADDFX2M U6 ( .A(Q_ERR_1[1]), .B(DSM_IN[1]), .CI(n13), .CO(n14), .S(Q_IN_1[1]) );
  XOR2X1M U7 ( .A(n7), .B(DSM_IN[14]), .Y(Q_IN_1[14]) );
  ADDHX1M U8 ( .A(DSM_IN[13]), .B(n6), .CO(n7), .S(Q_IN_1[13]) );
  ADDFX1M U9 ( .A(Q_IN_1[6]), .B(Q_ERR_2[6]), .CI(n15), .CO(n21), .S(Q_IN_2[6]) );
  ADDFX1M U10 ( .A(Q_IN_1[5]), .B(Q_ERR_2[5]), .CI(n16), .CO(n15), .S(
        Q_IN_2[5]) );
  ADDFX1M U11 ( .A(Q_IN_1[4]), .B(Q_ERR_2[4]), .CI(n17), .CO(n16), .S(
        Q_IN_2[4]) );
  ADDFX2M U12 ( .A(Q_ERR_1[5]), .B(DSM_IN[5]), .CI(n8), .CO(n12), .S(Q_IN_1[5]) );
  ADDFX2M U13 ( .A(Q_ERR_1[4]), .B(DSM_IN[4]), .CI(n4), .CO(n8), .S(Q_IN_1[4])
         );
  ADDFX1M U14 ( .A(Q_IN_1[3]), .B(Q_ERR_2[3]), .CI(n18), .CO(n17), .S(
        Q_IN_2[3]) );
  ADDFX1M U15 ( .A(Q_IN_1[1]), .B(Q_ERR_2[1]), .CI(n20), .CO(n19), .S(
        Q_IN_2[1]) );
  ADDFX2M U16 ( .A(Q_ERR_1[8]), .B(DSM_IN[8]), .CI(n10), .CO(n9), .S(Q_IN_1[8]) );
  ADDFX1M U17 ( .A(Q_IN_1[2]), .B(Q_ERR_2[2]), .CI(n19), .CO(n18), .S(
        Q_IN_2[2]) );
  ADDFX2M U18 ( .A(Q_ERR_1[3]), .B(DSM_IN[3]), .CI(n3), .CO(n4), .S(Q_IN_1[3])
         );
  ADDFX2M U19 ( .A(Q_ERR_1[2]), .B(DSM_IN[2]), .CI(n14), .CO(n3), .S(Q_IN_1[2]) );
  ADDHX1M U20 ( .A(DSM_IN[11]), .B(n1), .CO(n5), .S(Q_IN_1[11]) );
  ADDHX1M U21 ( .A(DSM_IN[10]), .B(n2), .CO(n1), .S(Q_IN_1[10]) );
  ADDHX1M U22 ( .A(DSM_IN[12]), .B(n5), .CO(n6), .S(Q_IN_1[12]) );
  ADDHX1M U23 ( .A(DSM_IN[0]), .B(Q_ERR_1[0]), .CO(n13), .S(Q_IN_1[0]) );
  ADDFX2M U24 ( .A(Q_ERR_1[9]), .B(DSM_IN[9]), .CI(n9), .CO(n2), .S(Q_IN_1[9])
         );
  ADDFX2M U25 ( .A(Q_ERR_1[7]), .B(DSM_IN[7]), .CI(n11), .CO(n10), .S(
        Q_IN_1[7]) );
  ADDFX2M U26 ( .A(Q_ERR_1[6]), .B(DSM_IN[6]), .CI(n12), .CO(n11), .S(
        Q_IN_1[6]) );
  XOR3XLM U27 ( .A(out_stage_2_del), .B(out_stage_1[4]), .C(\intadd_0/n1 ), 
        .Y(N7) );
  ADDHX1M U28 ( .A(Q_ERR_2[0]), .B(Q_IN_1[0]), .CO(n20), .S(Q_IN_2[0]) );
endmodule


module DIG_FEEDFWD ( REF_CLK, RST, DLF_Ext_En, DLF_Ext_Data, TDC_OUT, KP, KI, 
        DAC_IN, OV_FL, UN_FL );
  input [14:0] DLF_Ext_Data;
  input [3:0] TDC_OUT;
  input [3:0] KP;
  input [3:0] KI;
  output [4:0] DAC_IN;
  input REF_CLK, RST, DLF_Ext_En;
  output OV_FL, UN_FL;
  wire   n1, n2, n3, n4, n5;
  wire   [14:0] Mash_IN;

  DLF_in_width4_coeff_width4_out_width15 U0_DLF ( .DLF_IN(TDC_OUT), .KP({n5, 
        KP[2], n4, n3}), .KI({KI[3:2], n2, n1}), .CLK(REF_CLK), .RST(RST), 
        .DLF_Ext_En(DLF_Ext_En), .DLF_Ext_Data(DLF_Ext_Data), .OV_FL(OV_FL), 
        .UN_FL(UN_FL), .DLF_OUT(Mash_IN) );
  DSM_MASH_1_1_IN_W15 U0_MASH ( .CLK(REF_CLK), .RST(RST), .DSM_IN(Mash_IN), 
        .DSM_OUT(DAC_IN) );
  BUFX6M U1 ( .A(KP[0]), .Y(n3) );
  BUFX10M U2 ( .A(KP[1]), .Y(n4) );
  BUFX4M U3 ( .A(KI[1]), .Y(n2) );
  BUFX5M U4 ( .A(KP[3]), .Y(n5) );
  BUFX4M U5 ( .A(KI[0]), .Y(n1) );
endmodule

