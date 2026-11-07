/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 13 06:29:03 2026
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
  wire   n286, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n284, n285,
         n289, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n303, n304, n305, n307, n309, n2, n13, n52;
  wire   [3:0] DLF_IN_FLOP;
  wire   [20:0] acc_out;
  assign test_so = acc_out[20];

  SDFFRQX1M \DLF_IN_FLOP_reg[0]  ( .D(DLF_IN[0]), .SI(test_si), .SE(n289), 
        .CK(CLK), .RN(n285), .Q(DLF_IN_FLOP[0]) );
  SDFFSQX4M \DLF_IN_FLOP_reg[3]  ( .D(n282), .SI(n307), .SE(n298), .CK(CLK), 
        .SN(n285), .Q(n284) );
  SDFFRQX2M \DLF_IN_FLOP_reg[1]  ( .D(DLF_IN[1]), .SI(n192), .SE(n291), .CK(
        CLK), .RN(RST), .Q(DLF_IN_FLOP[1]) );
  XOR3XLM U3 ( .A(acc_out[20]), .B(n3), .C(n253), .Y(n254) );
  OR2X4M U4 ( .A(n278), .B(n164), .Y(n286) );
  XOR2X4M U5 ( .A(n161), .B(n160), .Y(n278) );
  CLKXOR2X2M U6 ( .A(n152), .B(n151), .Y(n171) );
  INVX4M U14 ( .A(n68), .Y(n76) );
  NAND2X6M U15 ( .A(n66), .B(n3), .Y(n68) );
  INVX2M U17 ( .A(KP[2]), .Y(n77) );
  NAND2XLM U22 ( .A(n29), .B(n18), .Y(n32) );
  NAND2XLM U26 ( .A(n94), .B(n92), .Y(n90) );
  OAI21XLM U29 ( .A0(n185), .A1(n181), .B0(n182), .Y(n169) );
  AOI31XLM U30 ( .A0(n228), .A1(n202), .A2(n225), .B0(n201), .Y(n203) );
  XNOR2XLM U32 ( .A(n83), .B(n80), .Y(n81) );
  NOR2XLM U33 ( .A(n228), .B(n221), .Y(n268) );
  NAND2XLM U34 ( .A(n159), .B(n158), .Y(n160) );
  CLKXOR2X2M U35 ( .A(n137), .B(n117), .Y(n153) );
  CLKAND2X16M U36 ( .A(n162), .B(n278), .Y(UN_FL) );
  XNOR2X1M U39 ( .A(n95), .B(n90), .Y(n91) );
  AND2X1M U52 ( .A(n26), .B(acc_out[3]), .Y(n27) );
  OR2X1M U53 ( .A(n25), .B(acc_out[2]), .Y(n18) );
  AND2X1M U54 ( .A(n25), .B(acc_out[2]), .Y(n28) );
  NAND2X4M U55 ( .A(n76), .B(n77), .Y(n53) );
  AND2X1M U58 ( .A(n20), .B(acc_out[0]), .Y(n23) );
  OR2X1M U59 ( .A(n21), .B(acc_out[1]), .Y(n24) );
  AND2X1M U60 ( .A(n21), .B(acc_out[1]), .Y(n22) );
  NAND2X2M U63 ( .A(KP[1]), .B(n192), .Y(n15) );
  NAND2XLM U64 ( .A(n3), .B(acc_out[20]), .Y(n158) );
  ADDFX2M U75 ( .A(acc_out[6]), .B(n271), .CI(n270), .CO(n273), .S(n272) );
  ADDFX2M U76 ( .A(acc_out[5]), .B(n268), .CI(n267), .CO(n270), .S(n269) );
  INVX2M U85 ( .A(n43), .Y(n114) );
  AOI22X1M U93 ( .A0(n227), .A1(n197), .B0(n237), .B1(n225), .Y(n216) );
  AOI31X2M U95 ( .A0(n17), .A1(n14), .A2(n304), .B0(n12), .Y(n16) );
  INVX2M U98 ( .A(n69), .Y(n51) );
  ADDFX2M U100 ( .A(n3), .B(acc_out[18]), .CI(n250), .CO(n252), .S(n249) );
  AND2X1M U101 ( .A(n211), .B(n281), .Y(N38) );
  AND2X1M U102 ( .A(n281), .B(n275), .Y(N35) );
  AND2X1M U103 ( .A(n200), .B(n281), .Y(N36) );
  AND2X1M U104 ( .A(n219), .B(n281), .Y(N40) );
  AND2X1M U105 ( .A(n281), .B(n269), .Y(N33) );
  AND2X1M U106 ( .A(n207), .B(n281), .Y(N37) );
  AND2X1M U107 ( .A(n281), .B(n280), .Y(N28) );
  AND2X1M U108 ( .A(n281), .B(n260), .Y(N29) );
  AND2X1M U109 ( .A(n215), .B(n281), .Y(N39) );
  AND2X1M U110 ( .A(n281), .B(n266), .Y(N31) );
  AND2X1M U111 ( .A(n281), .B(n263), .Y(N30) );
  AND2X1M U112 ( .A(n281), .B(n272), .Y(N34) );
  AND2X1M U113 ( .A(n281), .B(n257), .Y(N32) );
  AND2X1M U114 ( .A(n224), .B(n281), .Y(N41) );
  ADDFX2M U115 ( .A(acc_out[16]), .B(n245), .CI(n244), .CO(n247), .S(n240) );
  ADDFX2M U116 ( .A(acc_out[15]), .B(n239), .CI(n238), .CO(n244), .S(n236) );
  ADDFX2M U118 ( .A(acc_out[13]), .B(n231), .CI(n230), .CO(n234), .S(n224) );
  ADDFX2M U120 ( .A(acc_out[12]), .B(n223), .CI(n222), .CO(n230), .S(n219) );
  NAND3X4M U121 ( .A(n2), .B(n163), .C(n171), .Y(n164) );
  ADDFX2M U128 ( .A(acc_out[10]), .B(n214), .CI(n213), .CO(n217), .S(n211) );
  ADDFX2M U131 ( .A(acc_out[9]), .B(n210), .CI(n209), .CO(n213), .S(n207) );
  OAI21X6M U135 ( .A0(n137), .A1(n136), .B0(n135), .Y(n146) );
  AOI21X4M U137 ( .A0(n113), .A1(n112), .B0(n111), .Y(n137) );
  OAI21X1M U142 ( .A0(n129), .A1(n125), .B0(n130), .Y(n74) );
  NAND2X1M U158 ( .A(n156), .B(n154), .Y(n147) );
  INVX4M U164 ( .A(KP[1]), .Y(n14) );
  BUFX4M U166 ( .A(KI[2]), .Y(n227) );
  AOI21X4M U167 ( .A0(n75), .A1(n119), .B0(n74), .Y(n110) );
  NOR4BX4M U168 ( .AN(n153), .B(n2), .C(n163), .D(n171), .Y(n162) );
  NOR2X2M U169 ( .A(n103), .B(n109), .Y(n112) );
  OR2X1M U171 ( .A(n3), .B(acc_out[20]), .Y(n159) );
  NOR2X2M U175 ( .A(n42), .B(acc_out[7]), .Y(n96) );
  NOR2X2M U177 ( .A(n73), .B(acc_out[13]), .Y(n129) );
  AOI22XLM U185 ( .A0(n278), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[14]), .Y(
        DLF_OUT[14]) );
  OAI222X1M U188 ( .A0(n284), .A1(KI[0]), .B0(n284), .B1(KI[1]), .C0(n195), 
        .C1(n194), .Y(n242) );
  NOR2BXLM U194 ( .AN(n44), .B(n19), .Y(n20) );
  AOI31X2M U200 ( .A0(KP[1]), .A1(n307), .A2(n17), .B0(n4), .Y(n5) );
  NOR3X4M U203 ( .A(KP[0]), .B(KP[1]), .C(n192), .Y(n44) );
  OAI211X2M U207 ( .A0(KP[0]), .A1(n284), .B0(n9), .C0(n6), .Y(n50) );
  MXI2X2M U208 ( .A(DLF_IN_FLOP[1]), .B(DLF_IN_FLOP[0]), .S0(KP[0]), .Y(n11)
         );
  AOI2B1X4M U213 ( .A1N(n11), .A0(KP[1]), .B0(n10), .Y(n84) );
  NOR2X2M U215 ( .A(n84), .B(n19), .Y(n26) );
  OR2X2M U216 ( .A(n26), .B(acc_out[3]), .Y(n29) );
  NOR2X2M U218 ( .A(n78), .B(n19), .Y(n25) );
  NOR2BX2M U219 ( .AN(n13), .B(n19), .Y(n21) );
  OAI21X2M U224 ( .A0(n84), .A1(n55), .B0(n53), .Y(n42) );
  OAI21X2M U230 ( .A0(n96), .A1(n92), .B0(n97), .Y(n59) );
  NOR2X2M U233 ( .A(n46), .B(acc_out[8]), .Y(n173) );
  NOR2X2M U236 ( .A(n173), .B(n175), .Y(n60) );
  NAND2X2M U237 ( .A(n60), .B(n56), .Y(n62) );
  AOI21X2M U239 ( .A0(n60), .A1(n59), .B0(n58), .Y(n61) );
  NOR2X2M U245 ( .A(n52), .B(acc_out[10]), .Y(n181) );
  OAI21X2M U250 ( .A0(n165), .A1(n182), .B0(n166), .Y(n119) );
  AO22X1M U258 ( .A0(n91), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[0]), .Y(
        DLF_OUT[0]) );
  OAI21X2M U261 ( .A0(n110), .A1(n109), .B0(n108), .Y(n111) );
  NOR2X2M U262 ( .A(n115), .B(acc_out[16]), .Y(n136) );
  XNOR2X4M U264 ( .A(n146), .B(n142), .Y(n163) );
  AOI21X6M U265 ( .A0(n146), .A1(n145), .B0(n144), .Y(n152) );
  AOI21X4M U268 ( .A0(n157), .A1(n156), .B0(n155), .Y(n161) );
  INVX4M U270 ( .A(n227), .Y(n225) );
  AOI22X2M U271 ( .A0(KI[0]), .A1(DLF_IN_FLOP[1]), .B0(n303), .B1(n189), .Y(
        n191) );
  AOI22X2M U273 ( .A0(KI[1]), .A1(n191), .B0(n284), .B1(n194), .Y(n237) );
  NOR3X4M U274 ( .A(KI[1]), .B(KI[0]), .C(n192), .Y(n197) );
  NOR3X4M U275 ( .A(n228), .B(n227), .C(n284), .Y(n201) );
  AOI221X1M U277 ( .A0(KI[0]), .A1(n195), .B0(n284), .B1(n195), .C0(KI[1]), 
        .Y(n190) );
  AO21XLM U279 ( .A0(n204), .A1(n233), .B0(n201), .Y(n274) );
  OAI32X4M U280 ( .A0(n194), .A1(KI[0]), .A2(n192), .B0(n191), .B1(KI[1]), .Y(
        n229) );
  AO21XLM U281 ( .A0(n204), .A1(n229), .B0(n201), .Y(n271) );
  OAI31X1M U288 ( .A0(n227), .A1(n226), .A2(n208), .B0(n220), .Y(n214) );
  AO21XLM U290 ( .A0(n229), .A1(n243), .B0(n241), .Y(n235) );
  AO21XLM U291 ( .A0(n243), .A1(n233), .B0(n241), .Y(n239) );
  AO21XLM U293 ( .A0(n243), .A1(n237), .B0(n241), .Y(n245) );
  AO21XLM U295 ( .A0(n243), .A1(n1), .B0(n241), .Y(n248) );
  ADDFX2M U299 ( .A(n3), .B(acc_out[19]), .CI(n252), .CO(n253), .S(n251) );
  ADDHX1M U303 ( .A(n279), .B(acc_out[0]), .CO(n258), .S(n280) );
  INVXLM U320 ( .A(n303), .Y(n304) );
  INVXLM U321 ( .A(n309), .Y(n305) );
  INVXLM U323 ( .A(n305), .Y(n307) );
  INVXLM U325 ( .A(n304), .Y(n309) );
  SDFFRQX1M \DLF_IN_FLOP_reg[2]  ( .D(DLF_IN[2]), .SI(DLF_IN_FLOP[1]), .SE(
        n298), .CK(CLK), .RN(RST), .Q(n303) );
  SDFFRQX1M \acc_out_reg[7]  ( .D(N35), .SI(acc_out[6]), .SE(n291), .CK(CLK), 
        .RN(RST), .Q(acc_out[7]) );
  SDFFRQX1M \acc_out_reg[6]  ( .D(N34), .SI(acc_out[5]), .SE(n300), .CK(CLK), 
        .RN(n285), .Q(acc_out[6]) );
  SDFFRQX1M \acc_out_reg[5]  ( .D(N33), .SI(acc_out[4]), .SE(n300), .CK(CLK), 
        .RN(n285), .Q(acc_out[5]) );
  SDFFRQX1M \acc_out_reg[3]  ( .D(N31), .SI(acc_out[2]), .SE(n295), .CK(CLK), 
        .RN(RST), .Q(acc_out[3]) );
  SDFFRQX1M \acc_out_reg[2]  ( .D(N30), .SI(acc_out[1]), .SE(n289), .CK(CLK), 
        .RN(n285), .Q(acc_out[2]) );
  SDFFRQX1M \acc_out_reg[1]  ( .D(N29), .SI(acc_out[0]), .SE(n299), .CK(CLK), 
        .RN(RST), .Q(acc_out[1]) );
  SDFFRQX1M \acc_out_reg[0]  ( .D(N28), .SI(n3), .SE(n291), .CK(CLK), .RN(n285), .Q(acc_out[0]) );
  SDFFRQX1M \acc_out_reg[16]  ( .D(N44), .SI(acc_out[15]), .SE(n294), .CK(CLK), 
        .RN(RST), .Q(acc_out[16]) );
  SDFFRQX1M \acc_out_reg[15]  ( .D(N43), .SI(acc_out[14]), .SE(n293), .CK(CLK), 
        .RN(RST), .Q(acc_out[15]) );
  SDFFRQX1M \acc_out_reg[14]  ( .D(N42), .SI(acc_out[13]), .SE(n292), .CK(CLK), 
        .RN(n285), .Q(acc_out[14]) );
  SDFFRQX1M \acc_out_reg[13]  ( .D(N41), .SI(acc_out[12]), .SE(n297), .CK(CLK), 
        .RN(n285), .Q(acc_out[13]) );
  SDFFRQX1M \acc_out_reg[12]  ( .D(N40), .SI(acc_out[11]), .SE(n296), .CK(CLK), 
        .RN(RST), .Q(acc_out[12]) );
  SDFFRQX1M \acc_out_reg[11]  ( .D(N39), .SI(acc_out[10]), .SE(n296), .CK(CLK), 
        .RN(RST), .Q(acc_out[11]) );
  SDFFRQX1M \acc_out_reg[10]  ( .D(N38), .SI(acc_out[9]), .SE(n297), .CK(CLK), 
        .RN(n285), .Q(acc_out[10]) );
  SDFFRQX1M \acc_out_reg[9]  ( .D(N37), .SI(acc_out[8]), .SE(n296), .CK(CLK), 
        .RN(n285), .Q(acc_out[9]) );
  SDFFRQX1M \acc_out_reg[8]  ( .D(N36), .SI(acc_out[7]), .SE(n297), .CK(CLK), 
        .RN(n285), .Q(acc_out[8]) );
  SDFFRQX1M \acc_out_reg[17]  ( .D(N45), .SI(acc_out[16]), .SE(n289), .CK(CLK), 
        .RN(RST), .Q(acc_out[17]) );
  SDFFRQX1M \acc_out_reg[18]  ( .D(N46), .SI(acc_out[17]), .SE(n294), .CK(CLK), 
        .RN(n285), .Q(acc_out[18]) );
  SDFFRQX1M \acc_out_reg[19]  ( .D(N47), .SI(acc_out[18]), .SE(n295), .CK(CLK), 
        .RN(RST), .Q(acc_out[19]) );
  SDFFRQX1M \acc_out_reg[20]  ( .D(N48), .SI(acc_out[19]), .SE(n299), .CK(CLK), 
        .RN(n285), .Q(acc_out[20]) );
  SDFFRQX2M \acc_out_reg[4]  ( .D(N32), .SI(acc_out[3]), .SE(n295), .CK(CLK), 
        .RN(n285), .Q(acc_out[4]) );
  XNOR2X8M U7 ( .A(n157), .B(n147), .Y(n2) );
  NOR2X2M U8 ( .A(n11), .B(KP[1]), .Y(n13) );
  ADDFX1M U9 ( .A(acc_out[14]), .B(n235), .CI(n234), .CO(n238), .S(n232) );
  NOR3X2M U10 ( .A(n228), .B(n227), .C(n208), .Y(n262) );
  CLKINVX4M U11 ( .A(n229), .Y(n208) );
  CLKBUFX6M U12 ( .A(KI[3]), .Y(n228) );
  INVX3M U13 ( .A(KI[1]), .Y(n194) );
  CLKINVX4M U16 ( .A(n212), .Y(n233) );
  OAI31X1M U18 ( .A0(n227), .A1(n212), .A2(n226), .B0(n220), .Y(n218) );
  AOI2BB1X4M U19 ( .A0N(n193), .A1N(n194), .B0(n190), .Y(n212) );
  NOR2X2M U20 ( .A(n122), .B(n129), .Y(n75) );
  OAI21X1M U21 ( .A0(n172), .A1(n175), .B0(n176), .Y(n58) );
  NAND2X1M U23 ( .A(n57), .B(acc_out[9]), .Y(n176) );
  ADDFXLM U24 ( .A(acc_out[1]), .B(n259), .CI(n258), .CO(n261), .S(n260) );
  NOR2XLM U25 ( .A(n33), .B(acc_out[4]), .Y(n7) );
  NAND2XLM U27 ( .A(n33), .B(acc_out[4]), .Y(n36) );
  CLKINVX1M U28 ( .A(n50), .Y(n140) );
  NAND2X2M U31 ( .A(n79), .B(acc_out[14]), .Y(n82) );
  NAND2X1M U37 ( .A(n41), .B(acc_out[6]), .Y(n92) );
  NOR2X1M U38 ( .A(n41), .B(acc_out[6]), .Y(n89) );
  NOR2X3M U40 ( .A(n57), .B(acc_out[9]), .Y(n175) );
  OAI211X4M U41 ( .A0(n114), .A1(n55), .B0(n45), .C0(n53), .Y(n46) );
  INVX1M U42 ( .A(n104), .Y(n105) );
  OAI211X8M U43 ( .A0(DLF_IN_FLOP[1]), .A1(n17), .B0(n16), .C0(n15), .Y(n78)
         );
  CLKNAND2X2M U44 ( .A(KP[2]), .B(KP[3]), .Y(n139) );
  NOR2X2M U45 ( .A(n65), .B(KP[3]), .Y(n33) );
  NAND2BX2M U46 ( .AN(KP[3]), .B(KP[2]), .Y(n55) );
  NAND2BX2M U47 ( .AN(KP[2]), .B(KP[3]), .Y(n69) );
  INVX4M U48 ( .A(KP[3]), .Y(n66) );
  MXI2X3M U49 ( .A(n43), .B(n44), .S0(KP[2]), .Y(n65) );
  OAI2BB1X4M U50 ( .A0N(DLF_IN_FLOP[1]), .A1N(n12), .B0(n5), .Y(n43) );
  MXI2X2M U51 ( .A(n50), .B(n13), .S0(KP[2]), .Y(n67) );
  OAI21X2M U56 ( .A0(n78), .A1(n69), .B0(n68), .Y(n70) );
  OAI21X2M U57 ( .A0(n78), .A1(n55), .B0(n53), .Y(n41) );
  OAI211X8M U61 ( .A0(n140), .A1(n55), .B0(n54), .C0(n53), .Y(n57) );
  NOR2X3M U62 ( .A(n71), .B(acc_out[11]), .Y(n165) );
  NAND2X1M U65 ( .A(n71), .B(acc_out[11]), .Y(n166) );
  OAI21X2M U66 ( .A0(n84), .A1(n69), .B0(n68), .Y(n71) );
  OAI21X2M U67 ( .A0(n78), .A1(n139), .B0(n138), .Y(n79) );
  BUFX6M U68 ( .A(n70), .Y(n52) );
  OAI21X6M U69 ( .A0(n67), .A1(n66), .B0(n68), .Y(n73) );
  OAI21X6M U70 ( .A0(n65), .A1(n66), .B0(n68), .Y(n72) );
  OAI21X3M U71 ( .A0(n84), .A1(n139), .B0(n138), .Y(n85) );
  AOI21X8M U72 ( .A0(n3), .A1(n77), .B0(n76), .Y(n138) );
  NAND2X5M U73 ( .A(n75), .B(n118), .Y(n103) );
  NOR3X4M U74 ( .A(n228), .B(n227), .C(n212), .Y(n265) );
  OAI21X8M U77 ( .A0(n63), .A1(n62), .B0(n61), .Y(n113) );
  CLKINVX24M U78 ( .A(n63), .Y(n95) );
  AOI21X8M U79 ( .A0(n40), .A1(n39), .B0(n38), .Y(n63) );
  NOR2X12M U80 ( .A(n228), .B(n196), .Y(n259) );
  NOR2X5M U81 ( .A(n7), .B(n37), .Y(n40) );
  OAI21X6M U82 ( .A0(n37), .A1(n36), .B0(n35), .Y(n38) );
  NOR2X2M U83 ( .A(n34), .B(acc_out[5]), .Y(n37) );
  NOR2X6M U84 ( .A(n228), .B(n198), .Y(n279) );
  CLKNAND2X16M U86 ( .A(n197), .B(n225), .Y(n198) );
  OAI21X3M U87 ( .A0(n32), .A1(n31), .B0(n30), .Y(n39) );
  AOI21X1M U88 ( .A0(n29), .A1(n28), .B0(n27), .Y(n30) );
  AO22X8M U89 ( .A0(n180), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[3]), .Y(
        DLF_OUT[3]) );
  XNOR2X4M U90 ( .A(n179), .B(n178), .Y(n180) );
  AOI21X1M U91 ( .A0(n95), .A1(n94), .B0(n93), .Y(n100) );
  AOI22X4M U92 ( .A0(n227), .A1(n202), .B0(n1), .B1(n225), .Y(n221) );
  CLKNAND2X8M U94 ( .A(n202), .B(n225), .Y(n196) );
  NOR2X3M U96 ( .A(KI[1]), .B(n193), .Y(n202) );
  AOI22X4M U97 ( .A0(KI[0]), .A1(DLF_IN_FLOP[0]), .B0(DLF_IN_FLOP[1]), .B1(
        n189), .Y(n193) );
  INVX4M U99 ( .A(KI[0]), .Y(n189) );
  AO22X8M U117 ( .A0(n101), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[1]), .Y(
        DLF_OUT[1]) );
  XOR2X4M U119 ( .A(n100), .B(n99), .Y(n101) );
  INVXLM U122 ( .A(n143), .Y(n144) );
  AO22XLM U123 ( .A0(n88), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[9]), .Y(
        DLF_OUT[9]) );
  XOR2XLM U124 ( .A(n87), .B(n86), .Y(n88) );
  NAND2XLM U125 ( .A(n107), .B(n104), .Y(n86) );
  CLKNAND2X2M U126 ( .A(n107), .B(n102), .Y(n109) );
  NOR2X3M U127 ( .A(n228), .B(n225), .Y(n204) );
  CLKBUFX1M U129 ( .A(n242), .Y(n1) );
  NAND2XLM U130 ( .A(n150), .B(n149), .Y(n151) );
  INVXLM U132 ( .A(n148), .Y(n150) );
  OAI21XLM U133 ( .A0(n226), .A1(n216), .B0(n220), .Y(n223) );
  AO22XLM U134 ( .A0(n163), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[11]), .Y(
        DLF_OUT[11]) );
  CLKNAND2X2M U136 ( .A(n77), .B(n66), .Y(n19) );
  INVXLM U138 ( .A(n9), .Y(n4) );
  CLKNAND2X2M U139 ( .A(n12), .B(n309), .Y(n6) );
  CLKNAND2X4M U140 ( .A(n14), .B(n3), .Y(n9) );
  NAND2XLM U141 ( .A(n116), .B(n135), .Y(n117) );
  INVXLM U143 ( .A(n136), .Y(n116) );
  NAND2XLM U144 ( .A(n145), .B(n143), .Y(n142) );
  OAI2BB1XLM U145 ( .A0N(n204), .A1N(n1), .B0(n203), .Y(n210) );
  OAI21XLM U146 ( .A0(n221), .A1(n226), .B0(n220), .Y(n231) );
  AO22XLM U147 ( .A0(n81), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[8]), .Y(
        DLF_OUT[8]) );
  NAND2XLM U148 ( .A(n102), .B(n82), .Y(n80) );
  AO22XLM U149 ( .A0(n171), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[12]), .Y(
        DLF_OUT[12]) );
  NOR2X1M U150 ( .A(n67), .B(KP[3]), .Y(n34) );
  AOI21X1M U151 ( .A0(n24), .A1(n23), .B0(n22), .Y(n31) );
  NAND2XLM U152 ( .A(n34), .B(acc_out[5]), .Y(n35) );
  CLKAND2X2M U153 ( .A(KP[0]), .B(KP[1]), .Y(n12) );
  INVX1M U154 ( .A(KP[0]), .Y(n17) );
  OAI21X1M U155 ( .A0(n9), .A1(KP[0]), .B0(n8), .Y(n10) );
  NAND3XLM U156 ( .A(n14), .B(KP[0]), .C(n303), .Y(n8) );
  AOI21XLM U157 ( .A0(n107), .A1(n106), .B0(n105), .Y(n108) );
  OAI21X1M U159 ( .A0(n114), .A1(n139), .B0(n138), .Y(n115) );
  OAI21X1M U160 ( .A0(n140), .A1(n139), .B0(n138), .Y(n141) );
  NAND2X1M U161 ( .A(n303), .B(KI[0]), .Y(n195) );
  INVXLM U162 ( .A(n89), .Y(n94) );
  NAND2XLM U163 ( .A(n44), .B(n51), .Y(n45) );
  NOR2X1M U165 ( .A(n96), .B(n89), .Y(n56) );
  NAND2XLM U170 ( .A(n13), .B(n51), .Y(n54) );
  NOR2X1M U172 ( .A(n72), .B(acc_out[12]), .Y(n122) );
  NOR2X1M U173 ( .A(n165), .B(n181), .Y(n118) );
  INVXLM U174 ( .A(n82), .Y(n106) );
  NAND2X1M U176 ( .A(n115), .B(acc_out[16]), .Y(n135) );
  NAND2XLM U178 ( .A(n141), .B(acc_out[17]), .Y(n143) );
  OR2X1M U179 ( .A(n141), .B(acc_out[17]), .Y(n145) );
  NOR2X1M U180 ( .A(n3), .B(acc_out[18]), .Y(n148) );
  NAND2X1M U181 ( .A(n3), .B(acc_out[18]), .Y(n149) );
  NAND2XLM U182 ( .A(n3), .B(acc_out[19]), .Y(n154) );
  OAI21X4M U183 ( .A0(n152), .A1(n148), .B0(n149), .Y(n157) );
  OR2X1M U184 ( .A(n3), .B(acc_out[19]), .Y(n156) );
  INVXLM U186 ( .A(n154), .Y(n155) );
  NAND2X1M U187 ( .A(n3), .B(n226), .Y(n220) );
  CLKINVX2M U189 ( .A(n228), .Y(n226) );
  NOR2X3M U190 ( .A(n226), .B(n225), .Y(n243) );
  AOI21X3M U191 ( .A0(n228), .A1(n227), .B0(n284), .Y(n241) );
  NAND2XLM U192 ( .A(n42), .B(acc_out[7]), .Y(n97) );
  INVXLM U193 ( .A(n96), .Y(n98) );
  INVXLM U195 ( .A(n92), .Y(n93) );
  INVXLM U196 ( .A(n173), .Y(n47) );
  NAND2X1M U197 ( .A(n46), .B(acc_out[8]), .Y(n172) );
  AOI21X1M U198 ( .A0(n95), .A1(n56), .B0(n59), .Y(n174) );
  INVXLM U199 ( .A(n175), .Y(n177) );
  OAI21XLM U201 ( .A0(n174), .A1(n173), .B0(n172), .Y(n179) );
  INVXLM U202 ( .A(n181), .Y(n183) );
  NAND2X1M U204 ( .A(n52), .B(acc_out[10]), .Y(n182) );
  INVX1M U205 ( .A(n113), .Y(n185) );
  INVXLM U206 ( .A(n165), .Y(n167) );
  NAND2X1M U209 ( .A(n72), .B(acc_out[12]), .Y(n125) );
  INVXLM U210 ( .A(n122), .Y(n127) );
  OAI21X1M U211 ( .A0(n185), .A1(n121), .B0(n120), .Y(n128) );
  INVXLM U212 ( .A(n119), .Y(n120) );
  INVXLM U214 ( .A(n118), .Y(n121) );
  NAND2XLM U217 ( .A(n73), .B(acc_out[13]), .Y(n130) );
  INVXLM U220 ( .A(n129), .Y(n131) );
  AOI21XLM U221 ( .A0(n128), .A1(n127), .B0(n126), .Y(n133) );
  INVXLM U222 ( .A(n125), .Y(n126) );
  OR2X1M U223 ( .A(n79), .B(acc_out[14]), .Y(n102) );
  OAI21X1M U225 ( .A0(n185), .A1(n103), .B0(n110), .Y(n83) );
  NAND2XLM U226 ( .A(n85), .B(acc_out[15]), .Y(n104) );
  OR2X1M U227 ( .A(n85), .B(acc_out[15]), .Y(n107) );
  AOI21XLM U228 ( .A0(n83), .A1(n102), .B0(n106), .Y(n87) );
  CLKBUFX6M U229 ( .A(DLF_Ext_En), .Y(n276) );
  CLKINVX6M U231 ( .A(n276), .Y(n277) );
  ADDFXLM U232 ( .A(acc_out[2]), .B(n262), .CI(n261), .CO(n264), .S(n263) );
  ADDFXLM U234 ( .A(acc_out[3]), .B(n265), .CI(n264), .CO(n255), .S(n266) );
  ADDFXLM U235 ( .A(acc_out[4]), .B(n256), .CI(n255), .CO(n267), .S(n257) );
  NOR2XLM U238 ( .A(n228), .B(n216), .Y(n256) );
  ADDFXLM U240 ( .A(acc_out[7]), .B(n274), .CI(n273), .CO(n205), .S(n275) );
  ADDFXLM U241 ( .A(acc_out[8]), .B(n206), .CI(n205), .CO(n209), .S(n200) );
  OAI2BB1XLM U242 ( .A0N(n204), .A1N(n237), .B0(n188), .Y(n206) );
  AOI31XLM U243 ( .A0(n228), .A1(n197), .A2(n225), .B0(n201), .Y(n188) );
  ADDFXLM U244 ( .A(acc_out[11]), .B(n218), .CI(n217), .CO(n222), .S(n215) );
  CLKBUFX1M U246 ( .A(test_se), .Y(n292) );
  ADDFXLM U247 ( .A(acc_out[17]), .B(n248), .CI(n247), .CO(n250), .S(n246) );
  CLKBUFX8M U248 ( .A(n199), .Y(n281) );
  NOR3X1M U249 ( .A(UN_FL), .B(OV_FL), .C(n276), .Y(n199) );
  INVX10M U251 ( .A(n286), .Y(OV_FL) );
  NAND2XLM U252 ( .A(n98), .B(n97), .Y(n99) );
  AO22XLM U253 ( .A0(n49), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[2]), .Y(
        DLF_OUT[2]) );
  XOR2XLM U254 ( .A(n174), .B(n48), .Y(n49) );
  NAND2XLM U255 ( .A(n47), .B(n172), .Y(n48) );
  NAND2XLM U256 ( .A(n177), .B(n176), .Y(n178) );
  AO22XLM U257 ( .A0(n186), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[4]), .Y(
        DLF_OUT[4]) );
  XOR2XLM U259 ( .A(n185), .B(n184), .Y(n186) );
  NAND2XLM U260 ( .A(n183), .B(n182), .Y(n184) );
  AO22XLM U263 ( .A0(n170), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[5]), .Y(
        DLF_OUT[5]) );
  XNOR2XLM U266 ( .A(n169), .B(n168), .Y(n170) );
  NAND2XLM U267 ( .A(n167), .B(n166), .Y(n168) );
  AO22XLM U269 ( .A0(n124), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[6]), .Y(
        DLF_OUT[6]) );
  XNOR2XLM U272 ( .A(n128), .B(n123), .Y(n124) );
  NAND2XLM U276 ( .A(n127), .B(n125), .Y(n123) );
  AO22XLM U278 ( .A0(n134), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[7]), .Y(
        DLF_OUT[7]) );
  XOR2XLM U282 ( .A(n133), .B(n132), .Y(n134) );
  NAND2XLM U283 ( .A(n131), .B(n130), .Y(n132) );
  AO22XLM U284 ( .A0(n153), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[10]), .Y(
        DLF_OUT[10]) );
  AO22XLM U285 ( .A0(n2), .A1(n277), .B0(n276), .B1(DLF_Ext_Data[13]), .Y(
        DLF_OUT[13]) );
  AND2X1M U286 ( .A(n254), .B(n281), .Y(N48) );
  CLKINVX2M U287 ( .A(DLF_IN_FLOP[0]), .Y(n192) );
  INVXLM U289 ( .A(DLF_IN[3]), .Y(n282) );
  CLKBUFX1M U292 ( .A(n293), .Y(n298) );
  CLKBUFX1M U294 ( .A(n298), .Y(n291) );
  CLKINVX6M U296 ( .A(n284), .Y(n3) );
  CLKBUFX1M U297 ( .A(n294), .Y(n299) );
  CLKBUFX1M U298 ( .A(n293), .Y(n300) );
  CLKBUFX1M U300 ( .A(n292), .Y(n296) );
  CLKBUFX1M U301 ( .A(n292), .Y(n297) );
  AND2X1M U302 ( .A(n232), .B(n281), .Y(N42) );
  CLKBUFX1M U304 ( .A(test_se), .Y(n293) );
  AND2X1M U305 ( .A(n236), .B(n281), .Y(N43) );
  AND2X1M U306 ( .A(n240), .B(n281), .Y(N44) );
  AND2X1M U307 ( .A(n246), .B(n281), .Y(N45) );
  CLKBUFX1M U308 ( .A(test_se), .Y(n294) );
  AND2X1M U309 ( .A(n249), .B(n281), .Y(N46) );
  CLKBUFX1M U310 ( .A(n300), .Y(n295) );
  AND2X1M U311 ( .A(n251), .B(n281), .Y(N47) );
  CLKBUFX6M U312 ( .A(RST), .Y(n285) );
  CLKBUFX1M U313 ( .A(n299), .Y(n289) );
endmodule


module DSM_MASH_1_1_IN_W15_test_1 ( CLK, RST, DSM_IN, DSM_OUT, test_si, 
        test_se );
  input [14:0] DSM_IN;
  output [4:0] DSM_OUT;
  input CLK, RST, test_si, test_se;
  wire   n29, out_stage_2, out_stage_2_del, N3, N4, N5, N6, N7, \intadd_0/n4 ,
         \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n28, n35, n36, n39, n40, n41, n44, n46,
         n47, n48, n49, n50, n51;
  wire   [9:0] Q_ERR_1;
  wire   [14:0] Q_IN_1;
  wire   [9:0] Q_ERR_2;
  wire   [10:0] Q_IN_2;
  wire   [4:0] out_stage_1;

  DFFRQX2M out_stage_2_del_reg ( .D(out_stage_2), .CK(CLK), .RN(n35), .Q(
        out_stage_2_del) );
  XOR2XLM U4 ( .A(n6), .B(DSM_IN[14]), .Y(Q_IN_1[14]) );
  ADDFX2M U5 ( .A(Q_ERR_1[8]), .B(DSM_IN[8]), .CI(n11), .CO(n10), .S(Q_IN_1[8]) );
  ADDHX1M U6 ( .A(DSM_IN[13]), .B(n5), .CO(n6), .S(Q_IN_1[13]) );
  CLKINVX1M U20 ( .A(n28), .Y(n1) );
  ADDHX1M U28 ( .A(DSM_IN[0]), .B(n1), .CO(n15), .S(n25) );
  ADDHX1M U29 ( .A(DSM_IN[11]), .B(n2), .CO(n4), .S(Q_IN_1[11]) );
  ADDHX1M U30 ( .A(DSM_IN[10]), .B(n3), .CO(n2), .S(Q_IN_1[10]) );
  ADDHX1M U31 ( .A(DSM_IN[12]), .B(n4), .CO(n5), .S(Q_IN_1[12]) );
  ADDFX2M U34 ( .A(Q_ERR_1[9]), .B(DSM_IN[9]), .CI(n10), .CO(n3), .S(Q_IN_1[9]) );
  XOR3XLM U37 ( .A(out_stage_2_del), .B(out_stage_1[4]), .C(\intadd_0/n1 ), 
        .Y(N7) );
  ADDHX1M U38 ( .A(Q_ERR_2[0]), .B(n25), .CO(n21), .S(Q_IN_2[0]) );
  DLY1X1M U47 ( .A(n44), .Y(n46) );
  DLY1X1M U50 ( .A(test_se), .Y(n49) );
  DLY1X1M U52 ( .A(n44), .Y(n51) );
  SDFFSQX1M \Q_ERR_1_reg[0]  ( .D(n26), .SI(DSM_OUT[3]), .SE(n49), .CK(CLK), 
        .SN(n36), .Q(n28) );
  ADDFXLM \intadd_0/U5  ( .A(out_stage_2), .B(out_stage_1[0]), .CI(
        out_stage_2_del), .CO(\intadd_0/n4 ), .S(N3) );
  ADDFXLM \intadd_0/U4  ( .A(out_stage_2_del), .B(out_stage_1[1]), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(N4) );
  ADDFXLM \intadd_0/U3  ( .A(out_stage_2_del), .B(out_stage_1[2]), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(N5) );
  ADDFXLM \intadd_0/U2  ( .A(out_stage_2_del), .B(out_stage_1[3]), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(N6) );
  SDFFRQX1M \DSM_OUT_reg[4]  ( .D(N7), .SI(out_stage_2_del), .SE(n48), .CK(CLK), .RN(RST), .Q(n29) );
  SDFFRQX1M \Q_ERR_2_reg[0]  ( .D(Q_IN_2[0]), .SI(Q_ERR_1[9]), .SE(n51), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[0]) );
  SDFFRQX1M \Q_ERR_1_reg[1]  ( .D(Q_IN_1[1]), .SI(n28), .SE(n41), .CK(CLK), 
        .RN(n36), .Q(Q_ERR_1[1]) );
  SDFFRQX1M \Q_ERR_1_reg[2]  ( .D(Q_IN_1[2]), .SI(Q_ERR_1[1]), .SE(n50), .CK(
        CLK), .RN(n36), .Q(Q_ERR_1[2]) );
  SDFFRQX1M \Q_ERR_2_reg[1]  ( .D(Q_IN_2[1]), .SI(Q_ERR_2[0]), .SE(n39), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[1]) );
  SDFFRQX1M \Q_ERR_1_reg[3]  ( .D(Q_IN_1[3]), .SI(Q_ERR_1[2]), .SE(n51), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[3]) );
  SDFFRQX1M \Q_ERR_2_reg[2]  ( .D(Q_IN_2[2]), .SI(Q_ERR_2[1]), .SE(n46), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[2]) );
  SDFFRQX1M \Q_ERR_1_reg[4]  ( .D(Q_IN_1[4]), .SI(Q_ERR_1[3]), .SE(n40), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[4]) );
  SDFFRQX1M \Q_ERR_2_reg[3]  ( .D(Q_IN_2[3]), .SI(Q_ERR_2[2]), .SE(n39), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[3]) );
  SDFFRQX1M \Q_ERR_1_reg[5]  ( .D(Q_IN_1[5]), .SI(Q_ERR_1[4]), .SE(n47), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[5]) );
  SDFFRQX1M \Q_ERR_2_reg[4]  ( .D(Q_IN_2[4]), .SI(Q_ERR_2[3]), .SE(n46), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[4]) );
  SDFFRQX1M \Q_ERR_1_reg[6]  ( .D(Q_IN_1[6]), .SI(Q_ERR_1[5]), .SE(n49), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[6]) );
  SDFFRQX1M \Q_ERR_2_reg[5]  ( .D(Q_IN_2[5]), .SI(Q_ERR_2[4]), .SE(n47), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[5]) );
  SDFFRQX1M \Q_ERR_1_reg[7]  ( .D(Q_IN_1[7]), .SI(Q_ERR_1[6]), .SE(n50), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[7]) );
  SDFFRQX1M \Q_ERR_1_reg[8]  ( .D(Q_IN_1[8]), .SI(Q_ERR_1[7]), .SE(n44), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[8]) );
  SDFFRQX1M \Q_ERR_2_reg[6]  ( .D(Q_IN_2[6]), .SI(Q_ERR_2[5]), .SE(n51), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[6]) );
  SDFFRQX1M \Q_ERR_1_reg[9]  ( .D(Q_IN_1[9]), .SI(Q_ERR_1[8]), .SE(n41), .CK(
        CLK), .RN(n35), .Q(Q_ERR_1[9]) );
  SDFFRQX1M \Q_ERR_2_reg[7]  ( .D(Q_IN_2[7]), .SI(Q_ERR_2[6]), .SE(n47), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[7]) );
  SDFFRQX1M \out_stage_1_reg[0]  ( .D(Q_IN_1[10]), .SI(Q_ERR_2[9]), .SE(n41), 
        .CK(CLK), .RN(n35), .Q(out_stage_1[0]) );
  SDFFRQX1M \out_stage_1_reg[1]  ( .D(Q_IN_1[11]), .SI(out_stage_1[0]), .SE(
        n47), .CK(CLK), .RN(n35), .Q(out_stage_1[1]) );
  SDFFRQX1M \Q_ERR_2_reg[8]  ( .D(Q_IN_2[8]), .SI(Q_ERR_2[7]), .SE(test_se), 
        .CK(CLK), .RN(n36), .Q(Q_ERR_2[8]) );
  SDFFRQX1M \out_stage_1_reg[2]  ( .D(Q_IN_1[12]), .SI(out_stage_1[1]), .SE(
        n39), .CK(CLK), .RN(n35), .Q(out_stage_1[2]) );
  SDFFRQX1M out_stage_2_reg ( .D(Q_IN_2[10]), .SI(out_stage_1[4]), .SE(n40), 
        .CK(CLK), .RN(n36), .Q(out_stage_2) );
  SDFFRQX1M \Q_ERR_2_reg[9]  ( .D(Q_IN_2[9]), .SI(Q_ERR_2[8]), .SE(n40), .CK(
        CLK), .RN(n36), .Q(Q_ERR_2[9]) );
  SDFFRQX1M \out_stage_1_reg[3]  ( .D(Q_IN_1[13]), .SI(out_stage_1[2]), .SE(
        n46), .CK(CLK), .RN(n35), .Q(out_stage_1[3]) );
  SDFFRQX1M \out_stage_1_reg[4]  ( .D(Q_IN_1[14]), .SI(out_stage_1[3]), .SE(
        n44), .CK(CLK), .RN(n35), .Q(out_stage_1[4]) );
  SDFFRHQX8M \DSM_OUT_reg[3]  ( .D(N6), .SI(DSM_OUT[2]), .SE(n48), .CK(CLK), 
        .RN(RST), .Q(DSM_OUT[3]) );
  SDFFRHQX8M \DSM_OUT_reg[2]  ( .D(N5), .SI(DSM_OUT[1]), .SE(n48), .CK(CLK), 
        .RN(RST), .Q(DSM_OUT[2]) );
  SDFFRHQX8M \DSM_OUT_reg[1]  ( .D(N4), .SI(DSM_OUT[0]), .SE(n47), .CK(CLK), 
        .RN(RST), .Q(DSM_OUT[1]) );
  SDFFRHQX8M \DSM_OUT_reg[0]  ( .D(N3), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DSM_OUT[0]) );
  CLKBUFX2M U3 ( .A(n44), .Y(n47) );
  CLKBUFX12M U7 ( .A(n29), .Y(DSM_OUT[4]) );
  INVXLM U8 ( .A(n25), .Y(n26) );
  CLKBUFX1M U9 ( .A(n44), .Y(n48) );
  ADDFXLM U10 ( .A(Q_IN_1[1]), .B(Q_ERR_2[1]), .CI(n21), .CO(n20), .S(
        Q_IN_2[1]) );
  ADDFXLM U11 ( .A(Q_IN_1[2]), .B(Q_ERR_2[2]), .CI(n20), .CO(n18), .S(
        Q_IN_2[2]) );
  ADDFXLM U12 ( .A(Q_IN_1[3]), .B(Q_ERR_2[3]), .CI(n18), .CO(n19), .S(
        Q_IN_2[3]) );
  ADDFXLM U13 ( .A(Q_IN_1[4]), .B(Q_ERR_2[4]), .CI(n19), .CO(n17), .S(
        Q_IN_2[4]) );
  ADDFXLM U14 ( .A(Q_IN_1[5]), .B(Q_ERR_2[5]), .CI(n17), .CO(n16), .S(
        Q_IN_2[5]) );
  ADDFXLM U15 ( .A(Q_IN_1[6]), .B(Q_ERR_2[6]), .CI(n16), .CO(n22), .S(
        Q_IN_2[6]) );
  ADDFXLM U16 ( .A(Q_IN_1[7]), .B(Q_ERR_2[7]), .CI(n22), .CO(n23), .S(
        Q_IN_2[7]) );
  ADDFXLM U17 ( .A(Q_IN_1[8]), .B(Q_ERR_2[8]), .CI(n23), .CO(n24), .S(
        Q_IN_2[8]) );
  ADDFXLM U18 ( .A(Q_IN_1[9]), .B(Q_ERR_2[9]), .CI(n24), .CO(Q_IN_2[10]), .S(
        Q_IN_2[9]) );
  ADDFXLM U19 ( .A(Q_ERR_1[1]), .B(DSM_IN[1]), .CI(n15), .CO(n14), .S(
        Q_IN_1[1]) );
  CLKBUFX6M U21 ( .A(RST), .Y(n36) );
  ADDFXLM U22 ( .A(Q_ERR_1[2]), .B(DSM_IN[2]), .CI(n14), .CO(n13), .S(
        Q_IN_1[2]) );
  ADDFXLM U23 ( .A(Q_ERR_1[3]), .B(DSM_IN[3]), .CI(n13), .CO(n8), .S(Q_IN_1[3]) );
  CLKBUFX1M U24 ( .A(n50), .Y(n40) );
  ADDFXLM U25 ( .A(Q_ERR_1[4]), .B(DSM_IN[4]), .CI(n8), .CO(n7), .S(Q_IN_1[4])
         );
  ADDFXLM U26 ( .A(Q_ERR_1[5]), .B(DSM_IN[5]), .CI(n7), .CO(n9), .S(Q_IN_1[5])
         );
  ADDFXLM U27 ( .A(Q_ERR_1[6]), .B(DSM_IN[6]), .CI(n9), .CO(n12), .S(Q_IN_1[6]) );
  CLKBUFX1M U32 ( .A(n44), .Y(n50) );
  ADDFXLM U33 ( .A(Q_ERR_1[7]), .B(DSM_IN[7]), .CI(n12), .CO(n11), .S(
        Q_IN_1[7]) );
  CLKBUFX2M U35 ( .A(test_se), .Y(n44) );
  CLKBUFX1M U36 ( .A(n49), .Y(n41) );
  CLKBUFX1M U39 ( .A(n47), .Y(n39) );
  CLKBUFX6M U40 ( .A(RST), .Y(n35) );
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
  wire   CLK_M, RST_M, n1, n2, n3, n4, n6;
  wire   [14:0] Mash_IN;
  assign SO = DAC_IN[4];

  BUFX8M U1 ( .A(KP[1]), .Y(n4) );
  BUFX4M U2 ( .A(KI[0]), .Y(n1) );
  BUFX10M U3 ( .A(KP[0]), .Y(n3) );
  BUFX4M U4 ( .A(KI[1]), .Y(n2) );
  mux2X1_1 U0_clk ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_0 U0_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_M)
         );
  DLF_in_width4_coeff_width4_out_width15_test_1 U0_DLF ( .DLF_IN(TDC_OUT), 
        .KP({KP[3:2], n4, n3}), .KI({KI[3:2], n2, n1}), .CLK(CLK_M), .RST(
        RST_M), .DLF_Ext_En(DLF_Ext_En), .DLF_Ext_Data(DLF_Ext_Data), .OV_FL(
        OV_FL), .UN_FL(UN_FL), .DLF_OUT(Mash_IN), .test_si(SI), .test_so(n6), 
        .test_se(SE) );
  DSM_MASH_1_1_IN_W15_test_1 U0_MASH ( .CLK(CLK_M), .RST(RST_M), .DSM_IN(
        Mash_IN), .DSM_OUT(DAC_IN), .test_si(n6), .test_se(SE) );
endmodule

