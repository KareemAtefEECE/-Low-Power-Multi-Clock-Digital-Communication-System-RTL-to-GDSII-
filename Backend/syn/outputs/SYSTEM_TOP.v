/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Aug 28 01:19:55 2025
/////////////////////////////////////////////////////////////


module Mux2x1_1 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_4 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_3 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_2 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_0 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_6 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module Mux2x1_5 ( in_0, in_1, sel, out );
  input in_0, in_1, sel;
  output out;
  wire   N0;

  MUX21X1 U2 ( .IN1(in_1), .IN2(in_0), .S(N0), .Q(out) );
  INVX1 U1 ( .INP(sel), .ZN(N0) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_rst[0] ;

  DFFARX1 \sync_rst_reg[0]  ( .D(1'b1), .CLK(CLK), .RSTB(RST), .Q(
        \sync_rst[0] ) );
  DFFARX1 \sync_rst_reg[1]  ( .D(\sync_rst[0] ), .CLK(CLK), .RSTB(RST), .Q(
        SYNC_RST) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_rst[0] ;

  DFFARX1 \sync_rst_reg[0]  ( .D(1'b1), .CLK(CLK), .RSTB(RST), .Q(
        \sync_rst[0] ) );
  DFFARX1 \sync_rst_reg[1]  ( .D(\sync_rst[0] ), .CLK(CLK), .RSTB(RST), .Q(
        SYNC_RST) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  XOR2X1 U1 ( .IN1(carry[6]), .IN2(A[6]), .Q(SUM[6]) );
  INVX0 U2 ( .INP(A[0]), .ZN(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_div_ratio, i_clk_en, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, odd_flag_toggle, div_clk, N6, N12, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, n11, n12, \add_25/carry[6] ,
         \add_25/carry[5] , \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , \add_25/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41;
  wire   [6:0] counter;
  wire   [6:0] toggle_at_half;

  DFFARX1 \counter_reg[0]  ( .D(N24), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[0]), .QN(n35) );
  DFFARX1 \counter_reg[6]  ( .D(N30), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[6]), .QN(n38) );
  DFFARX1 odd_flag_toggle_reg ( .D(n12), .CLK(i_ref_clk), .RSTB(n1), .Q(
        odd_flag_toggle) );
  DFFARX1 \counter_reg[5]  ( .D(N29), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[5]), .QN(n36) );
  DFFARX1 \counter_reg[4]  ( .D(N28), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[4]), .QN(n37) );
  DFFARX1 \counter_reg[3]  ( .D(N27), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[3]), .QN(n40) );
  DFFARX1 \counter_reg[2]  ( .D(N26), .CLK(i_ref_clk), .RSTB(n1), .Q(
        counter[2]), .QN(n41) );
  DFFARX1 \counter_reg[1]  ( .D(N25), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[1]), .QN(n39) );
  DFFARX1 div_clk_reg ( .D(n11), .CLK(i_ref_clk), .RSTB(n1), .Q(div_clk) );
  XOR3X1 U3 ( .IN1(n36), .IN2(toggle_at_half[5]), .IN3(\add_25/carry[5] ), .Q(
        n23) );
  XNOR3X1 U4 ( .IN1(n39), .IN2(toggle_at_half[1]), .IN3(\add_25/carry[1] ), 
        .Q(n20) );
  XNOR3X1 U5 ( .IN1(n40), .IN2(toggle_at_half[3]), .IN3(\add_25/carry[3] ), 
        .Q(n19) );
  XOR3X1 U6 ( .IN1(n37), .IN2(toggle_at_half[4]), .IN3(\add_25/carry[4] ), .Q(
        n24) );
  XNOR3X1 U7 ( .IN1(n41), .IN2(toggle_at_half[2]), .IN3(\add_25/carry[2] ), 
        .Q(n18) );
  NBUFFX2 U8 ( .INP(i_rst_n), .Z(n1) );
  XOR2X1 U13 ( .IN1(toggle_at_half[6]), .IN2(\add_25/carry[6] ), .Q(N12) );
  AND2X1 U14 ( .IN1(\add_25/carry[5] ), .IN2(toggle_at_half[5]), .Q(
        \add_25/carry[6] ) );
  AND2X1 U15 ( .IN1(\add_25/carry[4] ), .IN2(toggle_at_half[4]), .Q(
        \add_25/carry[5] ) );
  AND2X1 U16 ( .IN1(\add_25/carry[3] ), .IN2(toggle_at_half[3]), .Q(
        \add_25/carry[4] ) );
  AND2X1 U17 ( .IN1(\add_25/carry[2] ), .IN2(toggle_at_half[2]), .Q(
        \add_25/carry[3] ) );
  AND2X1 U18 ( .IN1(\add_25/carry[1] ), .IN2(toggle_at_half[1]), .Q(
        \add_25/carry[2] ) );
  AND2X1 U19 ( .IN1(i_div_ratio[0]), .IN2(toggle_at_half[0]), .Q(
        \add_25/carry[1] ) );
  XOR2X1 U20 ( .IN1(toggle_at_half[0]), .IN2(i_div_ratio[0]), .Q(N6) );
  AO21X1 U23 ( .IN1(i_div_ratio[2]), .IN2(i_div_ratio[1]), .IN3(n2), .Q(
        toggle_at_half[1]) );
  AO21X1 U25 ( .IN1(i_div_ratio[3]), .IN2(n7), .IN3(n3), .Q(toggle_at_half[2])
         );
  AO21X1 U27 ( .IN1(i_div_ratio[4]), .IN2(n8), .IN3(n4), .Q(toggle_at_half[3])
         );
  AO21X1 U29 ( .IN1(i_div_ratio[5]), .IN2(n9), .IN3(n5), .Q(toggle_at_half[4])
         );
  XNOR2X1 U30 ( .IN1(i_div_ratio[6]), .IN2(n10), .Q(toggle_at_half[5]) );
  XOR2X1 U32 ( .IN1(i_div_ratio[7]), .IN2(n6), .Q(toggle_at_half[6]) );
  MUX21X1 U33 ( .IN1(i_ref_clk), .IN2(div_clk), .S(N1), .Q(o_div_clk) );
  XOR2X1 U34 ( .IN1(n13), .IN2(odd_flag_toggle), .Q(n12) );
  XOR2X1 U35 ( .IN1(div_clk), .IN2(n13), .Q(n11) );
  AND2X1 U36 ( .IN1(N23), .IN2(n14), .Q(N30) );
  AND2X1 U37 ( .IN1(N22), .IN2(n14), .Q(N29) );
  AND2X1 U38 ( .IN1(N21), .IN2(n14), .Q(N28) );
  AND2X1 U39 ( .IN1(N20), .IN2(n14), .Q(N27) );
  AND2X1 U40 ( .IN1(N19), .IN2(n14), .Q(N26) );
  AND2X1 U41 ( .IN1(N18), .IN2(n14), .Q(N25) );
  AND2X1 U42 ( .IN1(N17), .IN2(n14), .Q(N24) );
  MUX21X1 U44 ( .IN1(n15), .IN2(n16), .S(odd_flag_toggle), .Q(n13) );
  NAND4X0 U46 ( .IN1(n21), .IN2(n22), .IN3(n23), .IN4(n24), .QN(n17) );
  XOR2X1 U47 ( .IN1(n38), .IN2(N12), .Q(n22) );
  XOR2X1 U48 ( .IN1(n35), .IN2(N6), .Q(n21) );
  XNOR2X1 U50 ( .IN1(n37), .IN2(toggle_at_half[4]), .Q(n28) );
  XNOR2X1 U51 ( .IN1(n35), .IN2(toggle_at_half[0]), .Q(n27) );
  XNOR2X1 U52 ( .IN1(n36), .IN2(toggle_at_half[5]), .Q(n26) );
  NAND4X0 U53 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .QN(n25) );
  XOR2X1 U54 ( .IN1(toggle_at_half[2]), .IN2(n41), .Q(n32) );
  XOR2X1 U55 ( .IN1(toggle_at_half[3]), .IN2(n40), .Q(n31) );
  XOR2X1 U56 ( .IN1(toggle_at_half[1]), .IN2(n39), .Q(n30) );
  XOR2X1 U57 ( .IN1(toggle_at_half[6]), .IN2(n38), .Q(n29) );
  AND2X1 U58 ( .IN1(i_clk_en), .IN2(n33), .Q(N1) );
  OR4X1 U59 ( .IN1(i_div_ratio[3]), .IN2(i_div_ratio[2]), .IN3(i_div_ratio[1]), 
        .IN4(n34), .Q(n33) );
  OR4X1 U60 ( .IN1(i_div_ratio[5]), .IN2(i_div_ratio[4]), .IN3(i_div_ratio[7]), 
        .IN4(i_div_ratio[6]), .Q(n34) );
  INVX1 U9 ( .INP(n5), .ZN(n10) );
  INVX1 U10 ( .INP(n2), .ZN(n7) );
  INVX1 U11 ( .INP(n3), .ZN(n8) );
  INVX1 U12 ( .INP(n4), .ZN(n9) );
  INVX1 U21 ( .INP(i_div_ratio[1]), .ZN(toggle_at_half[0]) );
  NOR2X2 U22 ( .IN1(i_div_ratio[2]), .IN2(i_div_ratio[1]), .QN(n2) );
  NOR2X2 U24 ( .IN1(n7), .IN2(i_div_ratio[3]), .QN(n3) );
  NOR2X2 U26 ( .IN1(n8), .IN2(i_div_ratio[4]), .QN(n4) );
  NOR2X2 U28 ( .IN1(n9), .IN2(i_div_ratio[5]), .QN(n5) );
  NOR2X2 U31 ( .IN1(i_div_ratio[6]), .IN2(n10), .QN(n6) );
  INVX1 U43 ( .INP(n13), .ZN(n14) );
  NOR4X1 U45 ( .IN1(n17), .IN2(n18), .IN3(n19), .IN4(n20), .QN(n16) );
  NOR4X1 U49 ( .IN1(n25), .IN2(n26), .IN3(n27), .IN4(n28), .QN(n15) );
  ClkDiv_0_DW01_inc_0 add_30 ( .A(counter), .SUM({N23, N22, N21, N20, N19, N18, 
        N17}) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  XOR2X1 U1 ( .IN1(carry[6]), .IN2(A[6]), .Q(SUM[6]) );
  INVX0 U2 ( .INP(A[0]), .ZN(SUM[0]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_div_ratio, i_clk_en, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, odd_flag_toggle, div_clk, N6, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, N30, \add_25/carry[6] ,
         \add_25/carry[5] , \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , \add_25/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42;
  wire   [6:0] counter;
  wire   [6:0] toggle_at_half;

  DFFARX1 \counter_reg[0]  ( .D(N24), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[0]), .QN(n34) );
  DFFARX1 \counter_reg[6]  ( .D(N30), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[6]), .QN(n37) );
  DFFARX1 odd_flag_toggle_reg ( .D(n41), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        odd_flag_toggle) );
  DFFARX1 \counter_reg[5]  ( .D(N29), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[5]), .QN(n35) );
  DFFARX1 \counter_reg[4]  ( .D(N28), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[4]), .QN(n36) );
  DFFARX1 \counter_reg[3]  ( .D(N27), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[3]), .QN(n39) );
  DFFARX1 \counter_reg[2]  ( .D(N26), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[2]), .QN(n40) );
  DFFARX1 \counter_reg[1]  ( .D(N25), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(
        counter[1]), .QN(n38) );
  DFFARX1 div_clk_reg ( .D(n42), .CLK(i_ref_clk), .RSTB(i_rst_n), .Q(div_clk)
         );
  XOR3X1 U3 ( .IN1(n37), .IN2(toggle_at_half[6]), .IN3(\add_25/carry[6] ), .Q(
        n21) );
  XOR3X1 U4 ( .IN1(n35), .IN2(toggle_at_half[5]), .IN3(\add_25/carry[5] ), .Q(
        n22) );
  XNOR3X1 U5 ( .IN1(n38), .IN2(toggle_at_half[1]), .IN3(\add_25/carry[1] ), 
        .Q(n19) );
  XNOR3X1 U6 ( .IN1(n39), .IN2(toggle_at_half[3]), .IN3(\add_25/carry[3] ), 
        .Q(n18) );
  XOR3X1 U7 ( .IN1(n36), .IN2(toggle_at_half[4]), .IN3(\add_25/carry[4] ), .Q(
        n23) );
  XNOR3X1 U8 ( .IN1(n40), .IN2(toggle_at_half[2]), .IN3(\add_25/carry[2] ), 
        .Q(n17) );
  AND2X1 U13 ( .IN1(\add_25/carry[5] ), .IN2(toggle_at_half[5]), .Q(
        \add_25/carry[6] ) );
  AND2X1 U14 ( .IN1(\add_25/carry[4] ), .IN2(toggle_at_half[4]), .Q(
        \add_25/carry[5] ) );
  AND2X1 U15 ( .IN1(\add_25/carry[3] ), .IN2(toggle_at_half[3]), .Q(
        \add_25/carry[4] ) );
  AND2X1 U16 ( .IN1(\add_25/carry[2] ), .IN2(toggle_at_half[2]), .Q(
        \add_25/carry[3] ) );
  AND2X1 U17 ( .IN1(\add_25/carry[1] ), .IN2(toggle_at_half[1]), .Q(
        \add_25/carry[2] ) );
  AND2X1 U18 ( .IN1(i_div_ratio[0]), .IN2(toggle_at_half[0]), .Q(
        \add_25/carry[1] ) );
  XOR2X1 U19 ( .IN1(toggle_at_half[0]), .IN2(i_div_ratio[0]), .Q(N6) );
  AO21X1 U22 ( .IN1(i_div_ratio[2]), .IN2(i_div_ratio[1]), .IN3(n1), .Q(
        toggle_at_half[1]) );
  AO21X1 U24 ( .IN1(i_div_ratio[3]), .IN2(n6), .IN3(n2), .Q(toggle_at_half[2])
         );
  AO21X1 U26 ( .IN1(i_div_ratio[4]), .IN2(n7), .IN3(n3), .Q(toggle_at_half[3])
         );
  AO21X1 U28 ( .IN1(i_div_ratio[5]), .IN2(n8), .IN3(n4), .Q(toggle_at_half[4])
         );
  XNOR2X1 U29 ( .IN1(i_div_ratio[6]), .IN2(n9), .Q(toggle_at_half[5]) );
  XOR2X1 U31 ( .IN1(i_div_ratio[7]), .IN2(n5), .Q(toggle_at_half[6]) );
  MUX21X1 U32 ( .IN1(i_ref_clk), .IN2(div_clk), .S(N1), .Q(o_div_clk) );
  XOR2X1 U33 ( .IN1(n10), .IN2(odd_flag_toggle), .Q(n41) );
  XOR2X1 U34 ( .IN1(div_clk), .IN2(n10), .Q(n42) );
  AND2X1 U35 ( .IN1(N23), .IN2(n13), .Q(N30) );
  AND2X1 U36 ( .IN1(N22), .IN2(n13), .Q(N29) );
  AND2X1 U37 ( .IN1(N21), .IN2(n13), .Q(N28) );
  AND2X1 U38 ( .IN1(N20), .IN2(n13), .Q(N27) );
  AND2X1 U39 ( .IN1(N19), .IN2(n13), .Q(N26) );
  AND2X1 U40 ( .IN1(N18), .IN2(n13), .Q(N25) );
  AND2X1 U41 ( .IN1(N17), .IN2(n13), .Q(N24) );
  MUX21X1 U43 ( .IN1(n14), .IN2(n15), .S(odd_flag_toggle), .Q(n10) );
  NAND4X0 U45 ( .IN1(n20), .IN2(n21), .IN3(n22), .IN4(n23), .QN(n16) );
  XOR2X1 U46 ( .IN1(n34), .IN2(N6), .Q(n20) );
  XNOR2X1 U48 ( .IN1(n36), .IN2(toggle_at_half[4]), .Q(n27) );
  XNOR2X1 U49 ( .IN1(n34), .IN2(toggle_at_half[0]), .Q(n26) );
  XNOR2X1 U50 ( .IN1(n35), .IN2(toggle_at_half[5]), .Q(n25) );
  NAND4X0 U51 ( .IN1(n28), .IN2(n29), .IN3(n30), .IN4(n31), .QN(n24) );
  XOR2X1 U52 ( .IN1(toggle_at_half[2]), .IN2(n40), .Q(n31) );
  XOR2X1 U53 ( .IN1(toggle_at_half[3]), .IN2(n39), .Q(n30) );
  XOR2X1 U54 ( .IN1(toggle_at_half[1]), .IN2(n38), .Q(n29) );
  XOR2X1 U55 ( .IN1(toggle_at_half[6]), .IN2(n37), .Q(n28) );
  AND2X1 U56 ( .IN1(i_clk_en), .IN2(n32), .Q(N1) );
  OR4X1 U57 ( .IN1(i_div_ratio[3]), .IN2(i_div_ratio[2]), .IN3(i_div_ratio[1]), 
        .IN4(n33), .Q(n32) );
  OR4X1 U58 ( .IN1(i_div_ratio[5]), .IN2(i_div_ratio[4]), .IN3(i_div_ratio[7]), 
        .IN4(i_div_ratio[6]), .Q(n33) );
  INVX1 U9 ( .INP(n1), .ZN(n6) );
  INVX1 U10 ( .INP(n4), .ZN(n9) );
  INVX1 U11 ( .INP(n2), .ZN(n7) );
  INVX1 U12 ( .INP(n3), .ZN(n8) );
  INVX1 U20 ( .INP(i_div_ratio[1]), .ZN(toggle_at_half[0]) );
  NOR2X2 U21 ( .IN1(i_div_ratio[2]), .IN2(i_div_ratio[1]), .QN(n1) );
  NOR2X2 U23 ( .IN1(n6), .IN2(i_div_ratio[3]), .QN(n2) );
  NOR2X2 U25 ( .IN1(n7), .IN2(i_div_ratio[4]), .QN(n3) );
  NOR2X2 U27 ( .IN1(n8), .IN2(i_div_ratio[5]), .QN(n4) );
  NOR2X2 U30 ( .IN1(i_div_ratio[6]), .IN2(n9), .QN(n5) );
  INVX1 U42 ( .INP(n10), .ZN(n13) );
  NOR4X1 U44 ( .IN1(n16), .IN2(n17), .IN3(n18), .IN4(n19), .QN(n15) );
  NOR4X1 U47 ( .IN1(n24), .IN2(n25), .IN3(n26), .IN4(n27), .QN(n14) );
  ClkDiv_1_DW01_inc_0 add_30 ( .A(counter), .SUM({N23, N22, N21, N20, N19, N18, 
        N17}) );
endmodule


module Prescale_mux ( prescale, div_ratio );
  input [5:0] prescale;
  output [7:0] div_ratio;
  wire   n3, n4, n5, n14, n15;

  AO21X1 U7 ( .IN1(n5), .IN2(n3), .IN3(n4), .Q(div_ratio[0]) );
  NAND3X0 U14 ( .IN1(n15), .IN2(n14), .IN3(prescale[4]), .QN(n5) );
  OR3X1 U15 ( .IN1(prescale[4]), .IN2(prescale[5]), .IN3(n15), .Q(n3) );
  OR3X1 U19 ( .IN1(prescale[2]), .IN2(prescale[1]), .IN3(prescale[0]), .Q(n4)
         );
  NOR2X2 U16 ( .IN1(n4), .IN2(n5), .QN(div_ratio[1]) );
  NOR2X2 U17 ( .IN1(n3), .IN2(n4), .QN(div_ratio[2]) );
  INVX1 U18 ( .INP(prescale[5]), .ZN(n14) );
  INVX1 U20 ( .INP(prescale[3]), .ZN(n15) );
  INVX0 U3 ( .INP(1'b1), .ZN(div_ratio[7]) );
  INVX0 U5 ( .INP(1'b1), .ZN(div_ratio[6]) );
  INVX0 U8 ( .INP(1'b1), .ZN(div_ratio[5]) );
  INVX0 U10 ( .INP(1'b1), .ZN(div_ratio[4]) );
  INVX0 U12 ( .INP(1'b1), .ZN(div_ratio[3]) );
endmodule


module REG_FILE ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
  wire   N10, N11, N12, N13, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         \regfile[15][7] , \regfile[15][6] , \regfile[15][5] ,
         \regfile[15][4] , \regfile[15][3] , \regfile[15][2] ,
         \regfile[15][1] , \regfile[15][0] , \regfile[14][7] ,
         \regfile[14][6] , \regfile[14][5] , \regfile[14][4] ,
         \regfile[14][3] , \regfile[14][2] , \regfile[14][1] ,
         \regfile[14][0] , \regfile[13][7] , \regfile[13][6] ,
         \regfile[13][5] , \regfile[13][4] , \regfile[13][3] ,
         \regfile[13][2] , \regfile[13][1] , \regfile[13][0] ,
         \regfile[12][7] , \regfile[12][6] , \regfile[12][5] ,
         \regfile[12][4] , \regfile[12][3] , \regfile[12][2] ,
         \regfile[12][1] , \regfile[12][0] , \regfile[11][7] ,
         \regfile[11][6] , \regfile[11][5] , \regfile[11][4] ,
         \regfile[11][3] , \regfile[11][2] , \regfile[11][1] ,
         \regfile[11][0] , \regfile[10][7] , \regfile[10][6] ,
         \regfile[10][5] , \regfile[10][4] , \regfile[10][3] ,
         \regfile[10][2] , \regfile[10][1] , \regfile[10][0] , \regfile[9][7] ,
         \regfile[9][6] , \regfile[9][5] , \regfile[9][4] , \regfile[9][3] ,
         \regfile[9][2] , \regfile[9][1] , \regfile[9][0] , \regfile[8][7] ,
         \regfile[8][6] , \regfile[8][5] , \regfile[8][4] , \regfile[8][3] ,
         \regfile[8][2] , \regfile[8][1] , \regfile[8][0] , \regfile[7][7] ,
         \regfile[7][6] , \regfile[7][5] , \regfile[7][4] , \regfile[7][3] ,
         \regfile[7][2] , \regfile[7][1] , \regfile[7][0] , \regfile[6][7] ,
         \regfile[6][6] , \regfile[6][5] , \regfile[6][4] , \regfile[6][3] ,
         \regfile[6][2] , \regfile[6][1] , \regfile[6][0] , \regfile[5][7] ,
         \regfile[5][6] , \regfile[5][5] , \regfile[5][4] , \regfile[5][3] ,
         \regfile[5][2] , \regfile[5][1] , \regfile[5][0] , \regfile[4][7] ,
         \regfile[4][6] , \regfile[4][5] , \regfile[4][4] , \regfile[4][3] ,
         \regfile[4][2] , \regfile[4][1] , \regfile[4][0] , N33, N34, N35, N36,
         N37, N38, N39, N40, n20, n21, n22, n23, n24, n26, n27, n28, n29, n31,
         n32, n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, net7279, net7283, net7287, net7288,
         net7289, net7290, net7292, net8782, net8781, net9000, net9024,
         net9114, net9131, net9134, net9155, net9164, net10988, net10987, n1,
         n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n18, n25,
         n34, n185, n187, n189, n191, n193, n195, n197, n199, n200, n202, n204,
         n206, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
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
         n329, n330, n331, n332, n333, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFARX1 RdData_Valid_reg ( .D(n183), .CLK(CLK), .RSTB(n359), .Q(RdData_Valid) );
  DFFARX1 \RdData_reg[7]  ( .D(n182), .CLK(CLK), .RSTB(n350), .Q(RdData[7]) );
  DFFARX1 \RdData_reg[6]  ( .D(n181), .CLK(CLK), .RSTB(n350), .Q(RdData[6]) );
  DFFARX1 \RdData_reg[5]  ( .D(n180), .CLK(CLK), .RSTB(n350), .Q(RdData[5]) );
  DFFARX1 \RdData_reg[4]  ( .D(n179), .CLK(CLK), .RSTB(n350), .Q(RdData[4]) );
  DFFARX1 \RdData_reg[3]  ( .D(n178), .CLK(CLK), .RSTB(n350), .Q(RdData[3]) );
  DFFARX1 \RdData_reg[2]  ( .D(n177), .CLK(CLK), .RSTB(n350), .Q(RdData[2]) );
  DFFARX1 \RdData_reg[1]  ( .D(n176), .CLK(CLK), .RSTB(n351), .Q(RdData[1]) );
  DFFARX1 \RdData_reg[0]  ( .D(n175), .CLK(CLK), .RSTB(n351), .Q(RdData[0]) );
  DFFARX1 \regfile_reg[15][7]  ( .D(n174), .CLK(CLK), .RSTB(n351), .Q(
        \regfile[15][7] ) );
  DFFARX1 \regfile_reg[15][6]  ( .D(n173), .CLK(CLK), .RSTB(n351), .Q(
        \regfile[15][6] ) );
  DFFARX1 \regfile_reg[15][5]  ( .D(n172), .CLK(CLK), .RSTB(n351), .Q(
        \regfile[15][5] ) );
  DFFARX1 \regfile_reg[15][4]  ( .D(n171), .CLK(CLK), .RSTB(n351), .Q(
        \regfile[15][4] ) );
  DFFARX1 \regfile_reg[15][3]  ( .D(n170), .CLK(CLK), .RSTB(n351), .Q(
        \regfile[15][3] ) );
  DFFARX1 \regfile_reg[15][2]  ( .D(n169), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[15][2] ) );
  DFFARX1 \regfile_reg[15][1]  ( .D(n168), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[15][1] ) );
  DFFARX1 \regfile_reg[15][0]  ( .D(n167), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[15][0] ) );
  DFFARX1 \regfile_reg[14][7]  ( .D(n166), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[14][7] ) );
  DFFARX1 \regfile_reg[14][6]  ( .D(n165), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[14][6] ) );
  DFFARX1 \regfile_reg[14][5]  ( .D(n164), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[14][5] ) );
  DFFARX1 \regfile_reg[14][4]  ( .D(n163), .CLK(CLK), .RSTB(n352), .Q(
        \regfile[14][4] ) );
  DFFARX1 \regfile_reg[14][3]  ( .D(n162), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[14][3] ) );
  DFFARX1 \regfile_reg[14][2]  ( .D(n161), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[14][2] ) );
  DFFARX1 \regfile_reg[14][1]  ( .D(n160), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[14][1] ) );
  DFFARX1 \regfile_reg[14][0]  ( .D(n159), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[14][0] ) );
  DFFARX1 \regfile_reg[13][7]  ( .D(n158), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[13][7] ) );
  DFFARX1 \regfile_reg[13][6]  ( .D(n157), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[13][6] ) );
  DFFARX1 \regfile_reg[13][5]  ( .D(n156), .CLK(CLK), .RSTB(n353), .Q(
        \regfile[13][5] ) );
  DFFARX1 \regfile_reg[13][4]  ( .D(n155), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[13][4] ) );
  DFFARX1 \regfile_reg[13][3]  ( .D(n154), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[13][3] ) );
  DFFARX1 \regfile_reg[13][2]  ( .D(n153), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[13][2] ) );
  DFFARX1 \regfile_reg[13][1]  ( .D(n152), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[13][1] ) );
  DFFARX1 \regfile_reg[13][0]  ( .D(n151), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[13][0] ) );
  DFFARX1 \regfile_reg[12][7]  ( .D(n150), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[12][7] ) );
  DFFARX1 \regfile_reg[12][6]  ( .D(n149), .CLK(CLK), .RSTB(n354), .Q(
        \regfile[12][6] ) );
  DFFARX1 \regfile_reg[12][5]  ( .D(n148), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][5] ) );
  DFFARX1 \regfile_reg[12][4]  ( .D(n147), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][4] ) );
  DFFARX1 \regfile_reg[12][3]  ( .D(n146), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][3] ) );
  DFFARX1 \regfile_reg[12][2]  ( .D(n145), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][2] ) );
  DFFARX1 \regfile_reg[12][1]  ( .D(n144), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][1] ) );
  DFFARX1 \regfile_reg[12][0]  ( .D(n143), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[12][0] ) );
  DFFARX1 \regfile_reg[11][7]  ( .D(n142), .CLK(CLK), .RSTB(n355), .Q(
        \regfile[11][7] ) );
  DFFARX1 \regfile_reg[11][6]  ( .D(n141), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][6] ) );
  DFFARX1 \regfile_reg[11][5]  ( .D(n140), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][5] ) );
  DFFARX1 \regfile_reg[11][4]  ( .D(n139), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][4] ) );
  DFFARX1 \regfile_reg[11][3]  ( .D(n138), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][3] ) );
  DFFARX1 \regfile_reg[11][2]  ( .D(n137), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][2] ) );
  DFFARX1 \regfile_reg[11][1]  ( .D(n136), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][1] ) );
  DFFARX1 \regfile_reg[11][0]  ( .D(n135), .CLK(CLK), .RSTB(n356), .Q(
        \regfile[11][0] ) );
  DFFARX1 \regfile_reg[10][7]  ( .D(n134), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][7] ) );
  DFFARX1 \regfile_reg[10][6]  ( .D(n133), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][6] ) );
  DFFARX1 \regfile_reg[10][5]  ( .D(n132), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][5] ) );
  DFFARX1 \regfile_reg[10][4]  ( .D(n131), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][4] ) );
  DFFARX1 \regfile_reg[10][3]  ( .D(n130), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][3] ) );
  DFFARX1 \regfile_reg[10][2]  ( .D(n129), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][2] ) );
  DFFARX1 \regfile_reg[10][1]  ( .D(n128), .CLK(CLK), .RSTB(n357), .Q(
        \regfile[10][1] ) );
  DFFARX1 \regfile_reg[10][0]  ( .D(n127), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[10][0] ) );
  DFFARX1 \regfile_reg[9][7]  ( .D(n126), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][7] ) );
  DFFARX1 \regfile_reg[9][6]  ( .D(n125), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][6] ) );
  DFFARX1 \regfile_reg[9][5]  ( .D(n124), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][5] ) );
  DFFARX1 \regfile_reg[9][4]  ( .D(n123), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][4] ) );
  DFFARX1 \regfile_reg[9][3]  ( .D(n122), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][3] ) );
  DFFARX1 \regfile_reg[9][2]  ( .D(n121), .CLK(CLK), .RSTB(n358), .Q(
        \regfile[9][2] ) );
  DFFARX1 \regfile_reg[9][1]  ( .D(n120), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[9][1] ) );
  DFFARX1 \regfile_reg[9][0]  ( .D(n119), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[9][0] ) );
  DFFARX1 \regfile_reg[8][7]  ( .D(n118), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[8][7] ) );
  DFFARX1 \regfile_reg[8][6]  ( .D(n117), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[8][6] ) );
  DFFARX1 \regfile_reg[8][5]  ( .D(n116), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[8][5] ) );
  DFFARX1 \regfile_reg[8][4]  ( .D(n115), .CLK(CLK), .RSTB(n359), .Q(
        \regfile[8][4] ) );
  DFFARX1 \regfile_reg[8][3]  ( .D(n114), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[8][3] ) );
  DFFARX1 \regfile_reg[8][2]  ( .D(n113), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[8][2] ) );
  DFFARX1 \regfile_reg[8][1]  ( .D(n112), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[8][1] ) );
  DFFARX1 \regfile_reg[8][0]  ( .D(n111), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[8][0] ) );
  DFFARX1 \regfile_reg[7][7]  ( .D(n110), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[7][7] ) );
  DFFARX1 \regfile_reg[7][6]  ( .D(n109), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[7][6] ) );
  DFFARX1 \regfile_reg[7][5]  ( .D(n108), .CLK(CLK), .RSTB(n360), .Q(
        \regfile[7][5] ) );
  DFFARX1 \regfile_reg[7][4]  ( .D(n107), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[7][4] ) );
  DFFARX1 \regfile_reg[7][3]  ( .D(n106), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[7][3] ) );
  DFFARX1 \regfile_reg[7][2]  ( .D(n105), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[7][2] ) );
  DFFARX1 \regfile_reg[7][1]  ( .D(n104), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[7][1] ) );
  DFFARX1 \regfile_reg[7][0]  ( .D(n103), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[7][0] ) );
  DFFARX1 \regfile_reg[6][7]  ( .D(n102), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[6][7] ) );
  DFFARX1 \regfile_reg[6][6]  ( .D(n101), .CLK(CLK), .RSTB(n361), .Q(
        \regfile[6][6] ) );
  DFFARX1 \regfile_reg[6][5]  ( .D(n100), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][5] ) );
  DFFARX1 \regfile_reg[6][4]  ( .D(n99), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][4] ) );
  DFFARX1 \regfile_reg[6][3]  ( .D(n98), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][3] ) );
  DFFARX1 \regfile_reg[6][2]  ( .D(n97), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][2] ) );
  DFFARX1 \regfile_reg[6][1]  ( .D(n96), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][1] ) );
  DFFARX1 \regfile_reg[6][0]  ( .D(n95), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[6][0] ) );
  DFFARX1 \regfile_reg[5][7]  ( .D(n94), .CLK(CLK), .RSTB(n362), .Q(
        \regfile[5][7] ) );
  DFFARX1 \regfile_reg[5][6]  ( .D(n93), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][6] ) );
  DFFARX1 \regfile_reg[5][5]  ( .D(n92), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][5] ) );
  DFFARX1 \regfile_reg[5][4]  ( .D(n91), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][4] ) );
  DFFARX1 \regfile_reg[5][3]  ( .D(n90), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][3] ) );
  DFFARX1 \regfile_reg[5][2]  ( .D(n89), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][2] ) );
  DFFARX1 \regfile_reg[5][1]  ( .D(n88), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][1] ) );
  DFFARX1 \regfile_reg[5][0]  ( .D(n87), .CLK(CLK), .RSTB(n363), .Q(
        \regfile[5][0] ) );
  DFFARX1 \regfile_reg[4][7]  ( .D(n86), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][7] ) );
  DFFARX1 \regfile_reg[4][6]  ( .D(n85), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][6] ) );
  DFFARX1 \regfile_reg[4][5]  ( .D(n84), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][5] ) );
  DFFARX1 \regfile_reg[4][4]  ( .D(n83), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][4] ) );
  DFFARX1 \regfile_reg[4][3]  ( .D(n82), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][3] ) );
  DFFARX1 \regfile_reg[4][2]  ( .D(n81), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][2] ) );
  DFFARX1 \regfile_reg[4][1]  ( .D(n80), .CLK(CLK), .RSTB(n364), .Q(
        \regfile[4][1] ) );
  DFFARX1 \regfile_reg[4][0]  ( .D(n79), .CLK(CLK), .RSTB(n365), .Q(
        \regfile[4][0] ) );
  DFFARX1 \regfile_reg[3][7]  ( .D(n78), .CLK(CLK), .RSTB(n365), .Q(REG3[7])
         );
  DFFARX1 \regfile_reg[3][6]  ( .D(n77), .CLK(CLK), .RSTB(n365), .Q(REG3[6])
         );
  DFFASX1 \regfile_reg[3][5]  ( .D(n76), .CLK(CLK), .SETB(n368), .Q(REG3[5])
         );
  DFFARX1 \regfile_reg[3][4]  ( .D(n75), .CLK(CLK), .RSTB(n365), .Q(REG3[4])
         );
  DFFARX1 \regfile_reg[3][3]  ( .D(n74), .CLK(CLK), .RSTB(n365), .Q(REG3[3])
         );
  DFFARX1 \regfile_reg[3][2]  ( .D(n73), .CLK(CLK), .RSTB(n365), .Q(REG3[2])
         );
  DFFARX1 \regfile_reg[3][1]  ( .D(n72), .CLK(CLK), .RSTB(n365), .Q(REG3[1])
         );
  DFFARX1 \regfile_reg[3][0]  ( .D(n71), .CLK(CLK), .RSTB(n366), .Q(REG3[0])
         );
  DFFASX1 \regfile_reg[2][7]  ( .D(n70), .CLK(CLK), .SETB(n368), .Q(n398) );
  DFFARX1 \regfile_reg[2][6]  ( .D(n69), .CLK(CLK), .RSTB(n366), .Q(n399), 
        .QN(n1) );
  DFFARX1 \regfile_reg[2][5]  ( .D(n68), .CLK(CLK), .RSTB(n366), .Q(n400) );
  DFFARX1 \regfile_reg[2][4]  ( .D(n67), .CLK(CLK), .RSTB(n366), .Q(n401) );
  DFFARX1 \regfile_reg[2][3]  ( .D(n66), .CLK(CLK), .RSTB(n366), .Q(REG2[3]), 
        .QN(n318) );
  DFFARX1 \regfile_reg[2][2]  ( .D(n65), .CLK(CLK), .RSTB(n367), .Q(REG2[2])
         );
  DFFARX1 \regfile_reg[2][1]  ( .D(n64), .CLK(CLK), .RSTB(n366), .Q(REG2[1])
         );
  DFFASX1 \regfile_reg[2][0]  ( .D(n63), .CLK(CLK), .SETB(n368), .Q(REG2[0])
         );
  DFFARX1 \regfile_reg[1][7]  ( .D(n62), .CLK(CLK), .RSTB(n366), .Q(n390), 
        .QN(n34) );
  DFFARX1 \regfile_reg[1][6]  ( .D(n61), .CLK(CLK), .RSTB(n367), .Q(n391), 
        .QN(n185) );
  DFFARX1 \regfile_reg[1][5]  ( .D(n60), .CLK(CLK), .RSTB(n367), .Q(n392), 
        .QN(n197) );
  DFFARX1 \regfile_reg[1][4]  ( .D(n59), .CLK(CLK), .RSTB(n367), .Q(n393), 
        .QN(n191) );
  DFFARX1 \regfile_reg[1][3]  ( .D(n58), .CLK(CLK), .RSTB(n367), .Q(n394), 
        .QN(n189) );
  DFFARX1 \regfile_reg[1][2]  ( .D(n57), .CLK(CLK), .RSTB(n365), .Q(n395), 
        .QN(n193) );
  DFFARX1 \regfile_reg[1][1]  ( .D(n56), .CLK(CLK), .RSTB(n367), .Q(n396), 
        .QN(n18) );
  DFFARX1 \regfile_reg[0][7]  ( .D(n54), .CLK(CLK), .RSTB(n371), .Q(n383), 
        .QN(n16) );
  DFFARX1 \regfile_reg[0][6]  ( .D(n53), .CLK(CLK), .RSTB(n367), .Q(n384), 
        .QN(n187) );
  DFFARX1 \regfile_reg[0][5]  ( .D(n52), .CLK(CLK), .RSTB(n367), .Q(REG0[5])
         );
  DFFARX1 \regfile_reg[0][4]  ( .D(n51), .CLK(CLK), .RSTB(n366), .Q(n385), 
        .QN(n195) );
  DFFARX1 \regfile_reg[0][3]  ( .D(n50), .CLK(CLK), .RSTB(n371), .Q(n386), 
        .QN(n204) );
  DFFARX1 \regfile_reg[0][2]  ( .D(n49), .CLK(CLK), .RSTB(n368), .Q(n387), 
        .QN(n206) );
  DFFARX1 \regfile_reg[0][1]  ( .D(n48), .CLK(CLK), .RSTB(n371), .Q(n388), 
        .QN(n202) );
  DFFARX1 \regfile_reg[0][0]  ( .D(n47), .CLK(CLK), .RSTB(n350), .Q(n389), 
        .QN(n25) );
  AO22X1 U57 ( .IN1(net7288), .IN2(n337), .IN3(REG2[0]), .IN4(net9024), .Q(n63) );
  AO22X1 U60 ( .IN1(net7288), .IN2(n343), .IN3(n319), .IN4(net9024), .Q(n66)
         );
  AO22X1 U66 ( .IN1(net7292), .IN2(n338), .IN3(REG3[1]), .IN4(net9131), .Q(n72) );
  AO22X1 U67 ( .IN1(net7292), .IN2(n340), .IN3(REG3[2]), .IN4(net9131), .Q(n73) );
  AO22X1 U68 ( .IN1(net7292), .IN2(n342), .IN3(REG3[3]), .IN4(net9131), .Q(n74) );
  AO22X1 U69 ( .IN1(net7292), .IN2(n344), .IN3(REG3[4]), .IN4(net9131), .Q(n75) );
  AO22X1 U71 ( .IN1(net7292), .IN2(n14), .IN3(REG3[6]), .IN4(net9131), .Q(n77)
         );
  AO22X1 U72 ( .IN1(net7292), .IN2(n348), .IN3(REG3[7]), .IN4(net9131), .Q(n78) );
  AO22X1 U74 ( .IN1(net7289), .IN2(n339), .IN3(\regfile[4][1] ), .IN4(net9000), 
        .Q(n80) );
  AO22X1 U75 ( .IN1(net7289), .IN2(n341), .IN3(\regfile[4][2] ), .IN4(net9000), 
        .Q(n81) );
  AO22X1 U76 ( .IN1(net7289), .IN2(n343), .IN3(\regfile[4][3] ), .IN4(net9000), 
        .Q(n82) );
  AO22X1 U77 ( .IN1(net7289), .IN2(n345), .IN3(\regfile[4][4] ), .IN4(net9000), 
        .Q(n83) );
  AO22X1 U78 ( .IN1(net7289), .IN2(n347), .IN3(\regfile[4][5] ), .IN4(net9000), 
        .Q(n84) );
  AO22X1 U80 ( .IN1(net7289), .IN2(n349), .IN3(\regfile[4][7] ), .IN4(net9000), 
        .Q(n86) );
  AO22X1 U81 ( .IN1(n373), .IN2(n336), .IN3(\regfile[5][0] ), .IN4(n328), .Q(
        n87) );
  AO22X1 U83 ( .IN1(n373), .IN2(n340), .IN3(\regfile[5][2] ), .IN4(n328), .Q(
        n89) );
  AO22X1 U84 ( .IN1(n373), .IN2(n342), .IN3(\regfile[5][3] ), .IN4(n328), .Q(
        n90) );
  AO22X1 U85 ( .IN1(n373), .IN2(n344), .IN3(\regfile[5][4] ), .IN4(n328), .Q(
        n91) );
  AO22X1 U89 ( .IN1(net7290), .IN2(n337), .IN3(\regfile[6][0] ), .IN4(net9114), 
        .Q(n95) );
  AO22X1 U91 ( .IN1(net7290), .IN2(n341), .IN3(\regfile[6][2] ), .IN4(net9114), 
        .Q(n97) );
  AO22X1 U92 ( .IN1(net7290), .IN2(n343), .IN3(\regfile[6][3] ), .IN4(net9114), 
        .Q(n98) );
  AO22X1 U93 ( .IN1(net7290), .IN2(n345), .IN3(\regfile[6][4] ), .IN4(net9114), 
        .Q(n99) );
  AO22X1 U95 ( .IN1(net7290), .IN2(n14), .IN3(\regfile[6][6] ), .IN4(net9114), 
        .Q(n101) );
  AO22X1 U96 ( .IN1(net7290), .IN2(n349), .IN3(\regfile[6][7] ), .IN4(net9114), 
        .Q(n102) );
  AO22X1 U100 ( .IN1(n372), .IN2(n340), .IN3(\regfile[7][2] ), .IN4(n326), .Q(
        n105) );
  AO22X1 U101 ( .IN1(n372), .IN2(n342), .IN3(\regfile[7][3] ), .IN4(n326), .Q(
        n106) );
  AO22X1 U102 ( .IN1(n372), .IN2(n344), .IN3(\regfile[7][4] ), .IN4(n326), .Q(
        n107) );
  AO22X1 U103 ( .IN1(n372), .IN2(n346), .IN3(\regfile[7][5] ), .IN4(n326), .Q(
        n108) );
  AO22X1 U115 ( .IN1(n321), .IN2(n336), .IN3(\regfile[9][0] ), .IN4(n320), .Q(
        n119) );
  AO22X1 U116 ( .IN1(n321), .IN2(n338), .IN3(\regfile[9][1] ), .IN4(n320), .Q(
        n120) );
  AO22X1 U117 ( .IN1(n321), .IN2(n340), .IN3(\regfile[9][2] ), .IN4(n320), .Q(
        n121) );
  AO22X1 U118 ( .IN1(n321), .IN2(n342), .IN3(\regfile[9][3] ), .IN4(n320), .Q(
        n122) );
  AO22X1 U119 ( .IN1(n321), .IN2(n344), .IN3(\regfile[9][4] ), .IN4(n320), .Q(
        n123) );
  AO22X1 U120 ( .IN1(n321), .IN2(n346), .IN3(\regfile[9][5] ), .IN4(n320), .Q(
        n124) );
  AO22X1 U123 ( .IN1(net7279), .IN2(n337), .IN3(\regfile[10][0] ), .IN4(
        net9134), .Q(n127) );
  AO22X1 U124 ( .IN1(net7279), .IN2(n339), .IN3(\regfile[10][1] ), .IN4(
        net9134), .Q(n128) );
  AO22X1 U127 ( .IN1(net7279), .IN2(n345), .IN3(\regfile[10][4] ), .IN4(
        net9134), .Q(n131) );
  AO22X1 U128 ( .IN1(net7279), .IN2(n347), .IN3(\regfile[10][5] ), .IN4(
        net9134), .Q(n132) );
  AO22X1 U129 ( .IN1(net7279), .IN2(net8782), .IN3(\regfile[10][6] ), .IN4(
        net9134), .Q(n133) );
  AO22X1 U130 ( .IN1(net7279), .IN2(n349), .IN3(\regfile[10][7] ), .IN4(
        net9134), .Q(n134) );
  AO22X1 U131 ( .IN1(net7283), .IN2(n336), .IN3(\regfile[11][0] ), .IN4(
        net9155), .Q(n135) );
  AO22X1 U132 ( .IN1(net7283), .IN2(n338), .IN3(\regfile[11][1] ), .IN4(
        net9155), .Q(n136) );
  AO22X1 U135 ( .IN1(net7283), .IN2(n344), .IN3(\regfile[11][4] ), .IN4(
        net9155), .Q(n139) );
  AO22X1 U136 ( .IN1(net7283), .IN2(n346), .IN3(\regfile[11][5] ), .IN4(
        net9155), .Q(n140) );
  AO22X1 U137 ( .IN1(net7283), .IN2(net8781), .IN3(\regfile[11][6] ), .IN4(
        net9155), .Q(n141) );
  AO22X1 U138 ( .IN1(net7283), .IN2(n348), .IN3(\regfile[11][7] ), .IN4(
        net9155), .Q(n142) );
  AO22X1 U139 ( .IN1(n379), .IN2(n337), .IN3(\regfile[12][0] ), .IN4(n323), 
        .Q(n143) );
  AO22X1 U140 ( .IN1(n379), .IN2(n339), .IN3(\regfile[12][1] ), .IN4(n323), 
        .Q(n144) );
  AO22X1 U141 ( .IN1(n379), .IN2(n341), .IN3(\regfile[12][2] ), .IN4(n323), 
        .Q(n145) );
  AO22X1 U142 ( .IN1(n379), .IN2(n343), .IN3(\regfile[12][3] ), .IN4(n323), 
        .Q(n146) );
  AO22X1 U145 ( .IN1(n379), .IN2(n14), .IN3(\regfile[12][6] ), .IN4(n323), .Q(
        n149) );
  AO22X1 U147 ( .IN1(n377), .IN2(n336), .IN3(\regfile[13][0] ), .IN4(n330), 
        .Q(n151) );
  AO22X1 U148 ( .IN1(n377), .IN2(n338), .IN3(\regfile[13][1] ), .IN4(n330), 
        .Q(n152) );
  AO22X1 U149 ( .IN1(n377), .IN2(n340), .IN3(\regfile[13][2] ), .IN4(n330), 
        .Q(n153) );
  AO22X1 U150 ( .IN1(n377), .IN2(n342), .IN3(\regfile[13][3] ), .IN4(n330), 
        .Q(n154) );
  AO22X1 U153 ( .IN1(n377), .IN2(net8781), .IN3(\regfile[13][6] ), .IN4(n330), 
        .Q(n157) );
  AO22X1 U154 ( .IN1(n377), .IN2(n348), .IN3(\regfile[13][7] ), .IN4(n330), 
        .Q(n158) );
  AO22X1 U156 ( .IN1(n378), .IN2(n337), .IN3(\regfile[14][0] ), .IN4(n331), 
        .Q(n159) );
  AO22X1 U157 ( .IN1(n378), .IN2(n339), .IN3(\regfile[14][1] ), .IN4(n331), 
        .Q(n160) );
  AO22X1 U158 ( .IN1(n378), .IN2(n341), .IN3(\regfile[14][2] ), .IN4(n331), 
        .Q(n161) );
  AO22X1 U159 ( .IN1(n378), .IN2(n343), .IN3(\regfile[14][3] ), .IN4(n331), 
        .Q(n162) );
  AO22X1 U160 ( .IN1(n378), .IN2(n345), .IN3(\regfile[14][4] ), .IN4(n331), 
        .Q(n163) );
  AO22X1 U161 ( .IN1(n378), .IN2(n347), .IN3(\regfile[14][5] ), .IN4(n331), 
        .Q(n164) );
  AO22X1 U165 ( .IN1(n376), .IN2(n336), .IN3(\regfile[15][0] ), .IN4(n329), 
        .Q(n167) );
  AO22X1 U166 ( .IN1(n376), .IN2(n338), .IN3(\regfile[15][1] ), .IN4(n329), 
        .Q(n168) );
  AO22X1 U167 ( .IN1(n376), .IN2(n340), .IN3(\regfile[15][2] ), .IN4(n329), 
        .Q(n169) );
  AO22X1 U168 ( .IN1(n376), .IN2(n342), .IN3(\regfile[15][3] ), .IN4(n329), 
        .Q(n170) );
  AO22X1 U169 ( .IN1(n376), .IN2(n344), .IN3(\regfile[15][4] ), .IN4(n329), 
        .Q(n171) );
  AO22X1 U170 ( .IN1(n376), .IN2(n346), .IN3(\regfile[15][5] ), .IN4(n329), 
        .Q(n172) );
  AO22X1 U176 ( .IN1(RdData[0]), .IN2(n335), .IN3(N40), .IN4(n46), .Q(n175) );
  AO22X1 U177 ( .IN1(RdData[1]), .IN2(n335), .IN3(N39), .IN4(n46), .Q(n176) );
  AO22X1 U178 ( .IN1(RdData[2]), .IN2(n335), .IN3(N38), .IN4(n46), .Q(n177) );
  AO22X1 U179 ( .IN1(RdData[3]), .IN2(n335), .IN3(N37), .IN4(n46), .Q(n178) );
  AO22X1 U180 ( .IN1(RdData[4]), .IN2(n335), .IN3(N36), .IN4(n409), .Q(n179)
         );
  AO22X1 U181 ( .IN1(RdData[5]), .IN2(n335), .IN3(N35), .IN4(n409), .Q(n180)
         );
  AO22X1 U182 ( .IN1(RdData[6]), .IN2(n335), .IN3(N34), .IN4(n409), .Q(n181)
         );
  AO21X1 U184 ( .IN1(RdData_Valid), .IN2(n335), .IN3(n409), .Q(n183) );
  DFFARX1 \regfile_reg[1][0]  ( .D(n55), .CLK(CLK), .RSTB(n356), .Q(n397), 
        .QN(n333) );
  MUX21X1 U6 ( .IN1(n346), .IN2(n392), .S(n23), .Q(n60) );
  MUX21X1 U7 ( .IN1(n349), .IN2(n398), .S(n12), .Q(n70) );
  MUX21X1 U10 ( .IN1(n339), .IN2(REG2[1]), .S(n12), .Q(n64) );
  MUX21X1 U11 ( .IN1(n346), .IN2(REG3[5]), .S(n27), .Q(n76) );
  MUX21X1 U12 ( .IN1(net8782), .IN2(\regfile[4][6] ), .S(n28), .Q(n85) );
  MUX21X1 U14 ( .IN1(n336), .IN2(REG3[0]), .S(n27), .Q(n71) );
  MUX21X1 U16 ( .IN1(n339), .IN2(\regfile[6][1] ), .S(n31), .Q(n96) );
  MUX21X1 U18 ( .IN1(n14), .IN2(\regfile[9][6] ), .S(n37), .Q(n125) );
  MUX21X1 U19 ( .IN1(n337), .IN2(\regfile[4][0] ), .S(n28), .Q(n79) );
  MUX21X1 U21 ( .IN1(n347), .IN2(\regfile[6][5] ), .S(n31), .Q(n100) );
  MUX21X1 U22 ( .IN1(\regfile[7][6] ), .IN2(net8782), .S(n212), .Q(n109) );
  MUX21X1 U23 ( .IN1(n348), .IN2(\regfile[9][7] ), .S(n37), .Q(n126) );
  MUX21X1 U25 ( .IN1(n337), .IN2(\regfile[8][0] ), .S(n408), .Q(n111) );
  MUX21X1 U26 ( .IN1(n343), .IN2(\regfile[10][3] ), .S(n39), .Q(n130) );
  MUX21X1 U28 ( .IN1(n347), .IN2(\regfile[12][5] ), .S(n41), .Q(n148) );
  MUX21X1 U29 ( .IN1(n344), .IN2(\regfile[13][4] ), .S(n42), .Q(n155) );
  MUX21X1 U30 ( .IN1(n349), .IN2(\regfile[14][7] ), .S(n43), .Q(n166) );
  MUX21X1 U31 ( .IN1(net8781), .IN2(\regfile[15][6] ), .S(n45), .Q(n173) );
  MUX21X1 U32 ( .IN1(\regfile[7][0] ), .IN2(n336), .S(n212), .Q(n103) );
  MUX21X1 U33 ( .IN1(n339), .IN2(\regfile[8][1] ), .S(n408), .Q(n112) );
  MUX21X1 U34 ( .IN1(n341), .IN2(\regfile[10][2] ), .S(n39), .Q(n129) );
  MUX21X1 U36 ( .IN1(n345), .IN2(\regfile[12][4] ), .S(n41), .Q(n147) );
  MUX21X1 U37 ( .IN1(n346), .IN2(\regfile[13][5] ), .S(n42), .Q(n156) );
  MUX21X1 U38 ( .IN1(net8782), .IN2(\regfile[14][6] ), .S(n43), .Q(n165) );
  MUX21X1 U39 ( .IN1(n348), .IN2(\regfile[15][7] ), .S(n45), .Q(n174) );
  AND2X1 U40 ( .IN1(N13), .IN2(WrEn), .Q(n44) );
  OR2X1 U42 ( .IN1(n293), .IN2(n294), .Q(n210) );
  AND2X1 U45 ( .IN1(n332), .IN2(n199), .Q(n26) );
  AND2X1 U46 ( .IN1(n44), .IN2(n381), .Q(n36) );
  OR2X1 U47 ( .IN1(n294), .IN2(n2), .Q(n209) );
  NBUFFX2 U48 ( .INP(n23), .Z(n324) );
  NBUFFX2 U49 ( .INP(n27), .Z(net9131) );
  NBUFFX2 U54 ( .INP(n35), .Z(n322) );
  NBUFFX2 U55 ( .INP(n39), .Z(net9134) );
  NBUFFX2 U58 ( .INP(n41), .Z(n323) );
  NBUFFX2 U63 ( .INP(WrData[5]), .Z(n346) );
  AO22X1 U65 ( .IN1(n397), .IN2(n314), .IN3(n389), .IN4(n11), .Q(n217) );
  AO22X1 U70 ( .IN1(n396), .IN2(n311), .IN3(n388), .IN4(n304), .Q(n226) );
  AO22X1 U73 ( .IN1(n374), .IN2(n338), .IN3(n396), .IN4(n324), .Q(n56) );
  AO22X1 U79 ( .IN1(n374), .IN2(n342), .IN3(n394), .IN4(n324), .Q(n58) );
  AO22X1 U82 ( .IN1(n374), .IN2(net8781), .IN3(n391), .IN4(n324), .Q(n61) );
  AO22X1 U86 ( .IN1(n374), .IN2(n348), .IN3(n390), .IN4(n324), .Q(n62) );
  AO22X1 U87 ( .IN1(n13), .IN2(n341), .IN3(REG2[2]), .IN4(net9024), .Q(n65) );
  AO22X1 U90 ( .IN1(net7288), .IN2(n347), .IN3(n400), .IN4(net9024), .Q(n68)
         );
  MUX21X1 U94 ( .IN1(n399), .IN2(net8782), .S(net7288), .Q(n69) );
  AO22X1 U97 ( .IN1(n379), .IN2(n349), .IN3(\regfile[12][7] ), .IN4(n323), .Q(
        n150) );
  AO22X1 U105 ( .IN1(RdData[7]), .IN2(n335), .IN3(N33), .IN4(n46), .Q(n182) );
  NBUFFX2 U108 ( .INP(n398), .Z(REG2[7]) );
  AO22X1 U112 ( .IN1(n374), .IN2(n340), .IN3(n395), .IN4(n324), .Q(n57) );
  AO22X1 U113 ( .IN1(n374), .IN2(n344), .IN3(n393), .IN4(n324), .Q(n59) );
  NBUFFX2 U114 ( .INP(n210), .Z(n7) );
  AND2X1 U121 ( .IN1(n33), .IN2(n381), .Q(n22) );
  NBUFFX2 U122 ( .INP(N13), .Z(n8) );
  AO22X1 U125 ( .IN1(\regfile[13][4] ), .IN2(n313), .IN3(\regfile[12][4] ), 
        .IN4(n307), .Q(n251) );
  AO22X1 U126 ( .IN1(\regfile[13][1] ), .IN2(n314), .IN3(\regfile[12][1] ), 
        .IN4(n307), .Q(n224) );
  AO22X1 U133 ( .IN1(\regfile[9][3] ), .IN2(n311), .IN3(\regfile[8][3] ), 
        .IN4(n307), .Q(n241) );
  AO22X1 U134 ( .IN1(n393), .IN2(n313), .IN3(n385), .IN4(n307), .Q(n253) );
  AO22X1 U151 ( .IN1(n392), .IN2(n312), .IN3(REG0[5]), .IN4(n9), .Q(n262) );
  AO22X1 U152 ( .IN1(\regfile[5][0] ), .IN2(n315), .IN3(\regfile[4][0] ), 
        .IN4(n306), .Q(n216) );
  NBUFFX2 U164 ( .INP(WrData[6]), .Z(n14) );
  NBUFFX2 U171 ( .INP(WrData[6]), .Z(net8782) );
  NBUFFX2 U172 ( .INP(WrData[6]), .Z(net8781) );
  INVX2 U183 ( .INP(n1), .ZN(REG2[6]) );
  AO22X1 U192 ( .IN1(n337), .IN2(net7287), .IN3(n389), .IN4(n404), .Q(n47) );
  AO22X1 U204 ( .IN1(n343), .IN2(net7287), .IN3(n386), .IN4(n20), .Q(n50) );
  NBUFFX2 U207 ( .INP(n400), .Z(REG2[5]) );
  NBUFFX2 U213 ( .INP(n401), .Z(REG2[4]) );
  NBUFFX2 U217 ( .INP(n281), .Z(n303) );
  NBUFFX2 U221 ( .INP(n42), .Z(n330) );
  NBUFFX2 U222 ( .INP(n45), .Z(n329) );
  NBUFFX2 U223 ( .INP(n31), .Z(net9114) );
  NBUFFX2 U224 ( .INP(n28), .Z(net9000) );
  NBUFFX2 U227 ( .INP(n43), .Z(n331) );
  AND2X1 U228 ( .IN1(n294), .IN2(n2), .Q(n281) );
  NBUFFX2 U229 ( .INP(n369), .Z(n367) );
  NBUFFX2 U230 ( .INP(n369), .Z(n366) );
  NBUFFX2 U231 ( .INP(n369), .Z(n365) );
  NBUFFX2 U232 ( .INP(n370), .Z(n364) );
  NBUFFX2 U233 ( .INP(n370), .Z(n363) );
  NBUFFX2 U234 ( .INP(n370), .Z(n362) );
  NBUFFX2 U235 ( .INP(n370), .Z(n361) );
  NBUFFX2 U236 ( .INP(n370), .Z(n360) );
  NBUFFX2 U237 ( .INP(n371), .Z(n358) );
  NBUFFX2 U238 ( .INP(n370), .Z(n357) );
  NBUFFX2 U239 ( .INP(n369), .Z(n356) );
  NBUFFX2 U240 ( .INP(n368), .Z(n355) );
  NBUFFX2 U241 ( .INP(n371), .Z(n354) );
  NBUFFX2 U242 ( .INP(n371), .Z(n353) );
  NBUFFX2 U243 ( .INP(n371), .Z(n352) );
  NBUFFX2 U244 ( .INP(n371), .Z(n351) );
  NBUFFX2 U245 ( .INP(n371), .Z(n350) );
  NBUFFX2 U246 ( .INP(n368), .Z(n359) );
  NBUFFX2 U247 ( .INP(n369), .Z(n368) );
  NBUFFX2 U252 ( .INP(WrData[0]), .Z(n336) );
  NBUFFX2 U253 ( .INP(WrData[1]), .Z(n338) );
  NBUFFX2 U255 ( .INP(WrData[0]), .Z(n337) );
  NBUFFX2 U256 ( .INP(WrData[1]), .Z(n339) );
  NBUFFX2 U257 ( .INP(WrData[5]), .Z(n347) );
  AND2X1 U258 ( .IN1(n44), .IN2(N10), .Q(n38) );
  AND2X1 U260 ( .IN1(n407), .IN2(n33), .Q(n24) );
  AND2X1 U261 ( .IN1(RdEn), .IN2(n3), .Q(n46) );
  NBUFFX2 U264 ( .INP(WrData[7]), .Z(n348) );
  NBUFFX2 U265 ( .INP(WrData[7]), .Z(n349) );
  AO22X1 U267 ( .IN1(n380), .IN2(n349), .IN3(\regfile[8][7] ), .IN4(n322), .Q(
        n118) );
  AO22X1 U268 ( .IN1(n380), .IN2(n343), .IN3(\regfile[8][3] ), .IN4(n322), .Q(
        n114) );
  AO22X1 U269 ( .IN1(n380), .IN2(n347), .IN3(\regfile[8][5] ), .IN4(n322), .Q(
        n116) );
  AO22X1 U270 ( .IN1(n380), .IN2(n341), .IN3(\regfile[8][2] ), .IN4(n322), .Q(
        n113) );
  AO22X1 U271 ( .IN1(n380), .IN2(n345), .IN3(\regfile[8][4] ), .IN4(n322), .Q(
        n115) );
  AO22X1 U272 ( .IN1(n380), .IN2(n14), .IN3(\regfile[8][6] ), .IN4(n322), .Q(
        n117) );
  AO22X1 U273 ( .IN1(n345), .IN2(net9164), .IN3(n385), .IN4(n404), .Q(n51) );
  AO22X1 U274 ( .IN1(net8781), .IN2(net9164), .IN3(n384), .IN4(n20), .Q(n53)
         );
  AO22X1 U275 ( .IN1(n341), .IN2(net7287), .IN3(n387), .IN4(n404), .Q(n49) );
  AO22X1 U276 ( .IN1(n339), .IN2(net7287), .IN3(n388), .IN4(n404), .Q(n48) );
  AO22X1 U277 ( .IN1(n347), .IN2(net9164), .IN3(REG0[5]), .IN4(n404), .Q(n52)
         );
  AO22X1 U278 ( .IN1(n395), .IN2(n312), .IN3(n387), .IN4(n11), .Q(n235) );
  AO221X1 U280 ( .IN1(\regfile[10][0] ), .IN2(n317), .IN3(\regfile[11][0] ), 
        .IN4(n296), .IN5(n214), .Q(n222) );
  AO22X1 U281 ( .IN1(\regfile[13][0] ), .IN2(n312), .IN3(\regfile[12][0] ), 
        .IN4(n11), .Q(n215) );
  AO221X1 U282 ( .IN1(\regfile[14][0] ), .IN2(n317), .IN3(\regfile[15][0] ), 
        .IN4(n295), .IN5(n215), .Q(n221) );
  AO221X1 U283 ( .IN1(\regfile[6][0] ), .IN2(n308), .IN3(\regfile[7][0] ), 
        .IN4(n295), .IN5(n216), .Q(n219) );
  AO221X1 U284 ( .IN1(REG2[0]), .IN2(n309), .IN3(REG3[0]), .IN4(n301), .IN5(
        n217), .Q(n218) );
  AO22X1 U285 ( .IN1(n219), .IN2(n285), .IN3(n218), .IN4(n283), .Q(n220) );
  AO221X1 U286 ( .IN1(n222), .IN2(n290), .IN3(n221), .IN4(n412), .IN5(n220), 
        .Q(N40) );
  AO22X1 U287 ( .IN1(\regfile[9][1] ), .IN2(n313), .IN3(\regfile[8][1] ), 
        .IN4(n11), .Q(n223) );
  AO221X1 U288 ( .IN1(\regfile[10][1] ), .IN2(n316), .IN3(\regfile[11][1] ), 
        .IN4(n297), .IN5(n223), .Q(n231) );
  AO221X1 U289 ( .IN1(\regfile[14][1] ), .IN2(n317), .IN3(\regfile[15][1] ), 
        .IN4(n303), .IN5(n224), .Q(n230) );
  AO22X1 U290 ( .IN1(\regfile[5][1] ), .IN2(n314), .IN3(\regfile[4][1] ), 
        .IN4(n306), .Q(n225) );
  AO221X1 U291 ( .IN1(\regfile[6][1] ), .IN2(n308), .IN3(\regfile[7][1] ), 
        .IN4(n296), .IN5(n225), .Q(n228) );
  AO221X1 U292 ( .IN1(REG2[1]), .IN2(n309), .IN3(REG3[1]), .IN4(n300), .IN5(
        n226), .Q(n227) );
  AO22X1 U293 ( .IN1(n228), .IN2(n285), .IN3(n227), .IN4(n283), .Q(n229) );
  AO221X1 U294 ( .IN1(n231), .IN2(n290), .IN3(n230), .IN4(n411), .IN5(n229), 
        .Q(N39) );
  AO22X1 U295 ( .IN1(\regfile[9][2] ), .IN2(n314), .IN3(\regfile[8][2] ), 
        .IN4(n305), .Q(n232) );
  AO221X1 U296 ( .IN1(\regfile[10][2] ), .IN2(n317), .IN3(\regfile[11][2] ), 
        .IN4(n297), .IN5(n232), .Q(n240) );
  AO221X1 U297 ( .IN1(\regfile[14][2] ), .IN2(n310), .IN3(\regfile[15][2] ), 
        .IN4(n295), .IN5(n233), .Q(n239) );
  AO22X1 U298 ( .IN1(\regfile[5][2] ), .IN2(n315), .IN3(\regfile[4][2] ), 
        .IN4(n307), .Q(n234) );
  AO221X1 U299 ( .IN1(\regfile[6][2] ), .IN2(n308), .IN3(\regfile[7][2] ), 
        .IN4(n300), .IN5(n234), .Q(n237) );
  AO221X1 U300 ( .IN1(REG2[2]), .IN2(n316), .IN3(REG3[2]), .IN4(n299), .IN5(
        n235), .Q(n236) );
  AO22X1 U301 ( .IN1(n237), .IN2(n285), .IN3(n236), .IN4(n283), .Q(n238) );
  AO221X1 U302 ( .IN1(n240), .IN2(n290), .IN3(n239), .IN4(n411), .IN5(n238), 
        .Q(N38) );
  AO221X1 U303 ( .IN1(\regfile[10][3] ), .IN2(n309), .IN3(\regfile[11][3] ), 
        .IN4(n301), .IN5(n241), .Q(n249) );
  AO22X1 U304 ( .IN1(\regfile[13][3] ), .IN2(n311), .IN3(\regfile[12][3] ), 
        .IN4(n304), .Q(n242) );
  AO221X1 U305 ( .IN1(\regfile[14][3] ), .IN2(n309), .IN3(\regfile[15][3] ), 
        .IN4(n296), .IN5(n242), .Q(n248) );
  AO22X1 U306 ( .IN1(\regfile[5][3] ), .IN2(n315), .IN3(\regfile[4][3] ), 
        .IN4(n307), .Q(n243) );
  AO221X1 U307 ( .IN1(\regfile[6][3] ), .IN2(n310), .IN3(\regfile[7][3] ), 
        .IN4(n301), .IN5(n243), .Q(n246) );
  AO221X1 U308 ( .IN1(n319), .IN2(n317), .IN3(REG3[3]), .IN4(n297), .IN5(n244), 
        .Q(n245) );
  AO22X1 U309 ( .IN1(n246), .IN2(n285), .IN3(n245), .IN4(n283), .Q(n247) );
  AO221X1 U310 ( .IN1(n249), .IN2(n290), .IN3(n248), .IN4(n411), .IN5(n247), 
        .Q(N37) );
  AO22X1 U311 ( .IN1(\regfile[9][4] ), .IN2(n314), .IN3(\regfile[8][4] ), 
        .IN4(n304), .Q(n250) );
  AO221X1 U312 ( .IN1(\regfile[10][4] ), .IN2(n309), .IN3(\regfile[11][4] ), 
        .IN4(n299), .IN5(n250), .Q(n258) );
  AO221X1 U313 ( .IN1(\regfile[14][4] ), .IN2(n316), .IN3(\regfile[15][4] ), 
        .IN4(n297), .IN5(n251), .Q(n257) );
  AO22X1 U314 ( .IN1(\regfile[5][4] ), .IN2(n315), .IN3(\regfile[4][4] ), 
        .IN4(n305), .Q(n252) );
  AO221X1 U315 ( .IN1(\regfile[6][4] ), .IN2(n308), .IN3(\regfile[7][4] ), 
        .IN4(n300), .IN5(n252), .Q(n255) );
  AO221X1 U316 ( .IN1(n401), .IN2(n316), .IN3(REG3[4]), .IN4(n303), .IN5(n253), 
        .Q(n254) );
  AO22X1 U317 ( .IN1(n255), .IN2(n285), .IN3(n254), .IN4(n283), .Q(n256) );
  AO221X1 U318 ( .IN1(n258), .IN2(n290), .IN3(n257), .IN4(n411), .IN5(n256), 
        .Q(N36) );
  AO22X1 U319 ( .IN1(\regfile[9][5] ), .IN2(n311), .IN3(\regfile[8][5] ), 
        .IN4(n305), .Q(n259) );
  AO221X1 U320 ( .IN1(\regfile[10][5] ), .IN2(n310), .IN3(\regfile[11][5] ), 
        .IN4(n301), .IN5(n259), .Q(n267) );
  AO221X1 U321 ( .IN1(\regfile[14][5] ), .IN2(n310), .IN3(\regfile[15][5] ), 
        .IN4(n295), .IN5(n260), .Q(n266) );
  AO22X1 U322 ( .IN1(\regfile[5][5] ), .IN2(n311), .IN3(\regfile[4][5] ), 
        .IN4(n306), .Q(n261) );
  AO221X1 U323 ( .IN1(\regfile[6][5] ), .IN2(n309), .IN3(\regfile[7][5] ), 
        .IN4(n301), .IN5(n261), .Q(n264) );
  AO221X1 U324 ( .IN1(n400), .IN2(n310), .IN3(REG3[5]), .IN4(n299), .IN5(n262), 
        .Q(n263) );
  AO22X1 U325 ( .IN1(n264), .IN2(n285), .IN3(n263), .IN4(n283), .Q(n265) );
  AO221X1 U326 ( .IN1(n267), .IN2(n290), .IN3(n266), .IN4(n412), .IN5(n265), 
        .Q(N35) );
  AO22X1 U327 ( .IN1(\regfile[9][6] ), .IN2(n312), .IN3(\regfile[8][6] ), 
        .IN4(n304), .Q(n268) );
  AO221X1 U328 ( .IN1(\regfile[10][6] ), .IN2(n310), .IN3(\regfile[11][6] ), 
        .IN4(n300), .IN5(n268), .Q(n276) );
  AO22X1 U329 ( .IN1(\regfile[13][6] ), .IN2(n314), .IN3(\regfile[12][6] ), 
        .IN4(n305), .Q(n269) );
  AO221X1 U330 ( .IN1(\regfile[14][6] ), .IN2(n309), .IN3(\regfile[15][6] ), 
        .IN4(n303), .IN5(n269), .Q(n275) );
  AO22X1 U331 ( .IN1(\regfile[5][6] ), .IN2(n315), .IN3(\regfile[4][6] ), 
        .IN4(n306), .Q(n270) );
  AO221X1 U332 ( .IN1(\regfile[6][6] ), .IN2(n308), .IN3(\regfile[7][6] ), 
        .IN4(n296), .IN5(n270), .Q(n273) );
  AO22X1 U333 ( .IN1(n391), .IN2(n314), .IN3(n384), .IN4(n307), .Q(n271) );
  AO221X1 U334 ( .IN1(n399), .IN2(n317), .IN3(REG3[6]), .IN4(n300), .IN5(n271), 
        .Q(n272) );
  AO22X1 U335 ( .IN1(n273), .IN2(n285), .IN3(n272), .IN4(n283), .Q(n274) );
  AO221X1 U336 ( .IN1(n276), .IN2(n290), .IN3(n275), .IN4(n412), .IN5(n274), 
        .Q(N34) );
  AO22X1 U337 ( .IN1(\regfile[9][7] ), .IN2(n312), .IN3(\regfile[8][7] ), 
        .IN4(n11), .Q(n277) );
  AO221X1 U338 ( .IN1(\regfile[10][7] ), .IN2(n316), .IN3(\regfile[11][7] ), 
        .IN4(n281), .IN5(n277), .Q(n289) );
  AO22X1 U339 ( .IN1(\regfile[13][7] ), .IN2(n311), .IN3(\regfile[12][7] ), 
        .IN4(n305), .Q(n278) );
  AO221X1 U340 ( .IN1(\regfile[14][7] ), .IN2(n316), .IN3(\regfile[15][7] ), 
        .IN4(n299), .IN5(n278), .Q(n287) );
  AO22X1 U341 ( .IN1(\regfile[5][7] ), .IN2(n315), .IN3(\regfile[4][7] ), 
        .IN4(n306), .Q(n279) );
  AO221X1 U342 ( .IN1(\regfile[6][7] ), .IN2(n308), .IN3(\regfile[7][7] ), 
        .IN4(n295), .IN5(n279), .Q(n284) );
  AO221X1 U343 ( .IN1(n398), .IN2(n310), .IN3(REG3[7]), .IN4(n299), .IN5(n280), 
        .Q(n282) );
  AO22X1 U344 ( .IN1(n285), .IN2(n284), .IN3(n283), .IN4(n282), .Q(n286) );
  AO221X1 U345 ( .IN1(n290), .IN2(n289), .IN3(n412), .IN4(n287), .IN5(n286), 
        .Q(N33) );
  AO22X1 U370 ( .IN1(n390), .IN2(n311), .IN3(n383), .IN4(n305), .Q(n280) );
  NBUFFX2 U392 ( .INP(RST), .Z(n369) );
  NBUFFX2 U393 ( .INP(RST), .Z(n370) );
  NBUFFX2 U394 ( .INP(RST), .Z(n371) );
  INVX1 U41 ( .INP(n204), .ZN(REG0[3]) );
  INVX1 U43 ( .INP(n202), .ZN(REG0[1]) );
  INVX1 U44 ( .INP(n193), .ZN(REG1[2]) );
  INVX1 U50 ( .INP(n28), .ZN(net7289) );
  INVX1 U51 ( .INP(n327), .ZN(n373) );
  INVX1 U52 ( .INP(n31), .ZN(net7290) );
  INVX1 U53 ( .INP(n325), .ZN(n372) );
  INVX1 U59 ( .INP(n41), .ZN(n379) );
  INVX1 U61 ( .INP(n42), .ZN(n377) );
  INVX1 U62 ( .INP(n43), .ZN(n378) );
  INVX1 U64 ( .INP(n45), .ZN(n376) );
  NOR2X2 U99 ( .IN1(n291), .IN2(n200), .QN(n290) );
  NOR2X2 U104 ( .IN1(n200), .IN2(n8), .QN(n283) );
  INVX1 U107 ( .INP(n5), .ZN(n3) );
  INVX1 U109 ( .INP(n375), .ZN(n5) );
  INVX1 U110 ( .INP(N10), .ZN(n6) );
  INVX1 U111 ( .INP(n39), .ZN(net7279) );
  INVX1 U155 ( .INP(n209), .ZN(n9) );
  INVX1 U162 ( .INP(n9), .ZN(n10) );
  INVX1 U175 ( .INP(n12), .ZN(n13) );
  INVX1 U185 ( .INP(n12), .ZN(net7288) );
  NAND2X2 U189 ( .IN1(n26), .IN2(n36), .QN(n39) );
  NAND2X2 U190 ( .IN1(n26), .IN2(net10988), .QN(n40) );
  INVX1 U194 ( .INP(n16), .ZN(REG0[7]) );
  INVX1 U195 ( .INP(n206), .ZN(REG0[2]) );
  INVX1 U196 ( .INP(n18), .ZN(REG1[1]) );
  INVX1 U199 ( .INP(n34), .ZN(REG1[7]) );
  INVX1 U202 ( .INP(n189), .ZN(REG1[3]) );
  INVX1 U205 ( .INP(N12), .ZN(n199) );
  INVX1 U206 ( .INP(n199), .ZN(n200) );
  NBUFFX2 U210 ( .INP(n5), .Z(n335) );
  INVX1 U211 ( .INP(n38), .ZN(net10987) );
  INVX1 U212 ( .INP(net10987), .ZN(net10988) );
  INVX1 U220 ( .INP(WrEn), .ZN(n375) );
  INVX1 U225 ( .INP(n23), .ZN(n374) );
  INVX1 U226 ( .INP(n35), .ZN(n380) );
  NOR2X2 U259 ( .IN1(n375), .IN2(N13), .QN(n33) );
  INVX1 U263 ( .INP(n8), .ZN(n291) );
  INVX1 U346 ( .INP(n2), .ZN(n293) );
  INVX1 U347 ( .INP(n6), .ZN(n294) );
  INVX1 U348 ( .INP(n302), .ZN(n295) );
  INVX1 U349 ( .INP(n298), .ZN(n296) );
  INVX1 U350 ( .INP(n298), .ZN(n297) );
  INVX1 U351 ( .INP(n303), .ZN(n298) );
  INVX1 U352 ( .INP(n302), .ZN(n299) );
  INVX1 U353 ( .INP(n302), .ZN(n300) );
  INVX1 U354 ( .INP(n302), .ZN(n301) );
  INVX1 U355 ( .INP(n281), .ZN(n302) );
  INVX1 U357 ( .INP(n209), .ZN(n305) );
  INVX1 U359 ( .INP(n209), .ZN(n307) );
  INVX1 U360 ( .INP(n7), .ZN(n308) );
  INVX1 U361 ( .INP(n210), .ZN(n309) );
  INVX1 U362 ( .INP(n210), .ZN(n310) );
  INVX1 U364 ( .INP(n211), .ZN(n312) );
  INVX1 U368 ( .INP(n7), .ZN(n316) );
  INVX1 U369 ( .INP(n7), .ZN(n317) );
  INVX1 U371 ( .INP(n318), .ZN(n319) );
  INVX1 U374 ( .INP(n37), .ZN(n321) );
  NAND2X2 U377 ( .IN1(n36), .IN2(n29), .QN(n41) );
  NAND2X2 U384 ( .IN1(n36), .IN2(n32), .QN(n43) );
  INVX1 U385 ( .INP(n27), .ZN(net7292) );
  INVX1 U387 ( .INP(n40), .ZN(net7283) );
  INVX0 U3 ( .INP(n191), .ZN(REG1[4]) );
  INVX0 U4 ( .INP(n333), .ZN(REG1[0]) );
  MUX21X2 U5 ( .IN1(n336), .IN2(n397), .S(n23), .Q(n55) );
  INVX0 U8 ( .INP(n187), .ZN(REG0[6]) );
  INVX0 U9 ( .INP(n197), .ZN(REG1[5]) );
  INVX0 U13 ( .INP(n25), .ZN(REG0[0]) );
  INVX0 U15 ( .INP(n382), .ZN(n402) );
  INVX0 U17 ( .INP(n402), .ZN(n403) );
  NBUFFX4 U20 ( .INP(n20), .Z(n404) );
  NAND2X0 U24 ( .IN1(n22), .IN2(n21), .QN(n20) );
  MUX21X2 U27 ( .IN1(n342), .IN2(\regfile[11][3] ), .S(n40), .Q(n138) );
  MUX21X2 U35 ( .IN1(n340), .IN2(\regfile[11][2] ), .S(n40), .Q(n137) );
  NBUFFX4 U56 ( .INP(n40), .Z(net9155) );
  NAND2X1 U88 ( .IN1(n38), .IN2(n32), .QN(n45) );
  NAND2X1 U98 ( .IN1(n38), .IN2(n29), .QN(n42) );
  NAND2X0 U106 ( .IN1(net7288), .IN2(n345), .QN(n405) );
  NAND2X1 U143 ( .IN1(n401), .IN2(net9024), .QN(n406) );
  NAND2X1 U144 ( .IN1(n405), .IN2(n406), .QN(n67) );
  INVX0 U146 ( .INP(n13), .ZN(net9024) );
  NOR2X0 U163 ( .IN1(N11), .IN2(N12), .QN(n21) );
  AND2X2 U173 ( .IN1(N12), .IN2(N11), .Q(n32) );
  AND2X1 U174 ( .IN1(N12), .IN2(n403), .Q(n29) );
  INVX0 U186 ( .INP(n381), .ZN(n407) );
  INVX0 U187 ( .INP(N10), .ZN(n381) );
  INVX0 U188 ( .INP(n403), .ZN(n2) );
  INVX0 U191 ( .INP(N11), .ZN(n382) );
  INVX0 U193 ( .INP(n10), .ZN(n306) );
  INVX0 U197 ( .INP(n10), .ZN(n304) );
  NOR2X0 U198 ( .IN1(n291), .IN2(n292), .QN(n288) );
  NOR2X1 U200 ( .IN1(n292), .IN2(n8), .QN(n285) );
  INVX0 U201 ( .INP(n200), .ZN(n292) );
  AO22X2 U203 ( .IN1(n394), .IN2(n313), .IN3(n386), .IN4(n306), .Q(n244) );
  AO22X2 U208 ( .IN1(\regfile[9][0] ), .IN2(n313), .IN3(\regfile[8][0] ), 
        .IN4(n304), .Q(n214) );
  AO22X2 U209 ( .IN1(\regfile[13][2] ), .IN2(n312), .IN3(\regfile[12][2] ), 
        .IN4(n11), .Q(n233) );
  AO22X2 U214 ( .IN1(\regfile[13][5] ), .IN2(n313), .IN3(\regfile[12][5] ), 
        .IN4(n304), .Q(n260) );
  INVX0 U215 ( .INP(n10), .ZN(n11) );
  NBUFFX2 U216 ( .INP(n35), .Z(n408) );
  NBUFFX2 U218 ( .INP(n46), .Z(n409) );
  NBUFFX4 U219 ( .INP(WrData[3]), .Z(n342) );
  NBUFFX4 U248 ( .INP(WrData[3]), .Z(n343) );
  NBUFFX4 U249 ( .INP(WrData[4]), .Z(n344) );
  NBUFFX4 U250 ( .INP(WrData[4]), .Z(n345) );
  NBUFFX4 U251 ( .INP(WrData[2]), .Z(n341) );
  NBUFFX4 U254 ( .INP(WrData[2]), .Z(n340) );
  INVX0 U262 ( .INP(n212), .ZN(n325) );
  INVX0 U266 ( .INP(n212), .ZN(n326) );
  MUX21X2 U279 ( .IN1(\regfile[7][7] ), .IN2(n348), .S(n212), .Q(n110) );
  MUX21X2 U356 ( .IN1(\regfile[7][1] ), .IN2(n338), .S(n212), .Q(n104) );
  INVX0 U358 ( .INP(n20), .ZN(net9164) );
  INVX0 U363 ( .INP(n20), .ZN(net7287) );
  AO22X2 U365 ( .IN1(n349), .IN2(net9164), .IN3(n383), .IN4(n20), .Q(n54) );
  INVX0 U366 ( .INP(n213), .ZN(n327) );
  INVX0 U367 ( .INP(n213), .ZN(n328) );
  MUX21X2 U372 ( .IN1(\regfile[5][7] ), .IN2(n348), .S(n213), .Q(n94) );
  MUX21X2 U373 ( .IN1(\regfile[5][5] ), .IN2(n346), .S(n213), .Q(n92) );
  MUX21X2 U375 ( .IN1(\regfile[5][1] ), .IN2(n338), .S(n213), .Q(n88) );
  MUX21X2 U376 ( .IN1(\regfile[5][6] ), .IN2(n14), .S(n213), .Q(n93) );
  INVX0 U378 ( .INP(n288), .ZN(n410) );
  INVX0 U379 ( .INP(n410), .ZN(n411) );
  INVX0 U380 ( .INP(n410), .ZN(n412) );
  INVX0 U381 ( .INP(n211), .ZN(n311) );
  INVX0 U382 ( .INP(n211), .ZN(n314) );
  INVX0 U383 ( .INP(n211), .ZN(n313) );
  INVX0 U386 ( .INP(n211), .ZN(n315) );
  OR2X2 U388 ( .IN1(n6), .IN2(n332), .Q(n211) );
  INVX0 U389 ( .INP(n382), .ZN(n332) );
  NAND2X0 U390 ( .IN1(n26), .IN2(n24), .QN(n27) );
  AND2X2 U391 ( .IN1(n32), .IN2(n24), .Q(n212) );
  AND2X2 U395 ( .IN1(n29), .IN2(n24), .Q(n213) );
  NAND2X0 U396 ( .IN1(n22), .IN2(n26), .QN(n12) );
  NAND2X0 U397 ( .IN1(n22), .IN2(n32), .QN(n31) );
  NAND2X0 U398 ( .IN1(n29), .IN2(n22), .QN(n28) );
  NAND2X0 U399 ( .IN1(net10988), .IN2(n21), .QN(n320) );
  NAND2X0 U400 ( .IN1(net10988), .IN2(n21), .QN(n37) );
  NAND2X0 U401 ( .IN1(n36), .IN2(n21), .QN(n35) );
  NAND2X0 U402 ( .IN1(n24), .IN2(n21), .QN(n23) );
  INVX0 U403 ( .INP(n185), .ZN(REG1[6]) );
  INVX1 U404 ( .INP(n195), .ZN(REG0[4]) );
endmodule


module serializer ( P_DATA, ser_en, busy, Data_Valid, CLK, RST, ser_done, 
        ser_data );
  input [7:0] P_DATA;
  input ser_en, busy, Data_Valid, CLK, RST;
  output ser_done, ser_data;
  wire   N23, N24, N25, N27, n1, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n3, n4, n19, n20, n21;
  wire   [7:1] P_DATA_Valid;
  wire   [2:0] counter;
  assign ser_done = N27;

  DFFARX1 \P_DATA_Valid_reg[7]  ( .D(n12), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[7]) );
  DFFARX1 \P_DATA_Valid_reg[6]  ( .D(n13), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[6]) );
  DFFARX1 \P_DATA_Valid_reg[5]  ( .D(n14), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[5]) );
  DFFARX1 \P_DATA_Valid_reg[4]  ( .D(n15), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[4]) );
  DFFARX1 \P_DATA_Valid_reg[3]  ( .D(n16), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[3]) );
  DFFARX1 \P_DATA_Valid_reg[2]  ( .D(n17), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[2]) );
  DFFARX1 \P_DATA_Valid_reg[1]  ( .D(n18), .CLK(CLK), .RSTB(n19), .Q(
        P_DATA_Valid[1]) );
  DFFARX1 \P_DATA_Valid_reg[0]  ( .D(n11), .CLK(CLK), .RSTB(n19), .Q(ser_data)
         );
  DFFARX1 \counter_reg[0]  ( .D(N23), .CLK(CLK), .RSTB(RST), .Q(counter[0]), 
        .QN(n2) );
  DFFARX1 \counter_reg[1]  ( .D(N24), .CLK(CLK), .RSTB(RST), .Q(counter[1]), 
        .QN(n1) );
  DFFARX1 \counter_reg[2]  ( .D(N25), .CLK(CLK), .RSTB(n19), .Q(counter[2]), 
        .QN(n3) );
  AO222X1 U11 ( .IN1(P_DATA[0]), .IN2(n5), .IN3(P_DATA_Valid[1]), .IN4(n6), 
        .IN5(ser_data), .IN6(n7), .Q(n11) );
  AO22X1 U12 ( .IN1(P_DATA_Valid[7]), .IN2(n7), .IN3(P_DATA[7]), .IN4(n4), .Q(
        n12) );
  AO222X1 U13 ( .IN1(P_DATA[6]), .IN2(n4), .IN3(P_DATA_Valid[7]), .IN4(n6), 
        .IN5(P_DATA_Valid[6]), .IN6(n7), .Q(n13) );
  AO222X1 U14 ( .IN1(P_DATA[5]), .IN2(n5), .IN3(P_DATA_Valid[6]), .IN4(n6), 
        .IN5(P_DATA_Valid[5]), .IN6(n7), .Q(n14) );
  AO222X1 U15 ( .IN1(P_DATA[4]), .IN2(n4), .IN3(P_DATA_Valid[5]), .IN4(n6), 
        .IN5(P_DATA_Valid[4]), .IN6(n7), .Q(n15) );
  AO222X1 U16 ( .IN1(P_DATA[3]), .IN2(n5), .IN3(P_DATA_Valid[4]), .IN4(n6), 
        .IN5(P_DATA_Valid[3]), .IN6(n7), .Q(n16) );
  AO222X1 U17 ( .IN1(P_DATA[2]), .IN2(n4), .IN3(P_DATA_Valid[3]), .IN4(n6), 
        .IN5(P_DATA_Valid[2]), .IN6(n7), .Q(n17) );
  AO222X1 U18 ( .IN1(P_DATA[1]), .IN2(n4), .IN3(P_DATA_Valid[2]), .IN4(n6), 
        .IN5(n7), .IN6(P_DATA_Valid[1]), .Q(n18) );
  AO22X1 U20 ( .IN1(N23), .IN2(counter[2]), .IN3(ser_en), .IN4(n8), .Q(N25) );
  AO22X1 U21 ( .IN1(counter[2]), .IN2(n1), .IN3(n9), .IN4(counter[1]), .Q(n8)
         );
  XNOR2X1 U22 ( .IN1(counter[0]), .IN2(counter[1]), .Q(n10) );
  NOR3X0 U3 ( .IN1(n1), .IN2(n2), .IN3(n3), .QN(N27) );
  NBUFFX2 U5 ( .INP(RST), .Z(n19) );
  NBUFFX2 U8 ( .INP(n5), .Z(n4) );
  NOR2X2 U4 ( .IN1(n21), .IN2(busy), .QN(n5) );
  NOR2X2 U6 ( .IN1(n20), .IN2(n4), .QN(n6) );
  NOR2X2 U7 ( .IN1(n5), .IN2(n6), .QN(n7) );
  INVX1 U9 ( .INP(ser_en), .ZN(n20) );
  INVX1 U10 ( .INP(Data_Valid), .ZN(n21) );
  NOR2X2 U19 ( .IN1(n20), .IN2(counter[0]), .QN(N23) );
  NOR2X2 U23 ( .IN1(counter[2]), .IN2(n2), .QN(n9) );
  NOR2X2 U24 ( .IN1(n10), .IN2(n20), .QN(N24) );
endmodule


module controller_fsm ( Data_Valid, PAR_EN, CLK, RST, ser_done, ser_en, 
        mux_sel, busy );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, CLK, RST, ser_done;
  output ser_en, busy;
  wire   busy_c, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFARX1 \cs_reg[0]  ( .D(ns[0]), .CLK(CLK), .RSTB(RST), .Q(cs[0]), .QN(n5)
         );
  DFFARX1 \cs_reg[2]  ( .D(ns[2]), .CLK(CLK), .RSTB(RST), .Q(cs[2]), .QN(n3)
         );
  DFFARX1 \cs_reg[1]  ( .D(ns[1]), .CLK(CLK), .RSTB(RST), .Q(cs[1]), .QN(n4)
         );
  DFFARX1 busy_reg ( .D(busy_c), .CLK(CLK), .RSTB(RST), .Q(busy) );
  NAND3X0 U13 ( .IN1(n1), .IN2(n2), .IN3(ser_done), .QN(n8) );
  AO21X1 U14 ( .IN1(ser_done), .IN2(n2), .IN3(n9), .Q(n11) );
  NAND3X0 U15 ( .IN1(n14), .IN2(n4), .IN3(Data_Valid), .QN(n13) );
  NAND3X0 U16 ( .IN1(ser_en), .IN2(ser_done), .IN3(PAR_EN), .QN(n12) );
  AND2X1 U17 ( .IN1(cs[1]), .IN2(n14), .Q(ser_en) );
  NAND3X0 U19 ( .IN1(cs[1]), .IN2(n3), .IN3(cs[0]), .QN(n7) );
  NAND3X0 U20 ( .IN1(n5), .IN2(n3), .IN3(cs[1]), .QN(n9) );
  NAND3X0 U21 ( .IN1(n4), .IN2(n3), .IN3(cs[0]), .QN(n10) );
  AO221X1 U3 ( .IN1(cs[1]), .IN2(cs[0]), .IN3(n5), .IN4(n4), .IN5(cs[2]), .Q(
        mux_sel[0]) );
  NAND3X0 U4 ( .IN1(n10), .IN2(n9), .IN3(n7), .QN(busy_c) );
  NAND2X2 U5 ( .IN1(n9), .IN2(n7), .QN(mux_sel[1]) );
  NAND2X2 U6 ( .IN1(n7), .IN2(n8), .QN(ns[2]) );
  INVX1 U7 ( .INP(n9), .ZN(n1) );
  NAND2X2 U8 ( .IN1(n10), .IN2(n11), .QN(ns[1]) );
  NAND2X2 U9 ( .IN1(n12), .IN2(n13), .QN(ns[0]) );
  NOR2X2 U10 ( .IN1(cs[0]), .IN2(cs[2]), .QN(n14) );
  INVX1 U11 ( .INP(PAR_EN), .ZN(n2) );
endmodule


module parity_calc ( CLK, RST, Data_Valid, P_DATA, PAR_TYP, par_bit );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, PAR_TYP;
  output par_bit;
  wire   par_bit_comb, n1, n2, n3, n4, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n30;

  DFFARX1 \P_DATA_Valid_reg[7]  ( .D(n29), .CLK(CLK), .RSTB(n5), .Q(n6), .QN(
        n21) );
  DFFARX1 \P_DATA_Valid_reg[6]  ( .D(n28), .CLK(CLK), .RSTB(n5), .Q(n7), .QN(
        n20) );
  DFFARX1 \P_DATA_Valid_reg[5]  ( .D(n27), .CLK(CLK), .RSTB(n5), .Q(n8), .QN(
        n19) );
  DFFARX1 \P_DATA_Valid_reg[4]  ( .D(n26), .CLK(CLK), .RSTB(n5), .Q(n9), .QN(
        n18) );
  DFFARX1 \P_DATA_Valid_reg[3]  ( .D(n25), .CLK(CLK), .RSTB(n5), .Q(n10), .QN(
        n17) );
  DFFARX1 \P_DATA_Valid_reg[2]  ( .D(n24), .CLK(CLK), .RSTB(n5), .Q(n11), .QN(
        n16) );
  DFFARX1 \P_DATA_Valid_reg[1]  ( .D(n23), .CLK(CLK), .RSTB(n5), .Q(n12), .QN(
        n15) );
  DFFARX1 \P_DATA_Valid_reg[0]  ( .D(n22), .CLK(CLK), .RSTB(RST), .Q(n13), 
        .QN(n14) );
  DFFARX1 par_bit_reg ( .D(par_bit_comb), .CLK(CLK), .RSTB(n5), .Q(par_bit) );
  XOR3X1 U3 ( .IN1(n1), .IN2(n2), .IN3(PAR_TYP), .Q(par_bit_comb) );
  XOR3X1 U4 ( .IN1(n20), .IN2(n21), .IN3(n3), .Q(n2) );
  XOR2X1 U5 ( .IN1(n18), .IN2(n19), .Q(n3) );
  XOR3X1 U6 ( .IN1(n16), .IN2(n17), .IN3(n4), .Q(n1) );
  XOR2X1 U7 ( .IN1(n14), .IN2(n15), .Q(n4) );
  AO22X1 U8 ( .IN1(P_DATA[0]), .IN2(Data_Valid), .IN3(n30), .IN4(n13), .Q(n22)
         );
  AO22X1 U10 ( .IN1(P_DATA[1]), .IN2(Data_Valid), .IN3(n30), .IN4(n12), .Q(n23) );
  AO22X1 U12 ( .IN1(P_DATA[2]), .IN2(Data_Valid), .IN3(n30), .IN4(n11), .Q(n24) );
  AO22X1 U14 ( .IN1(P_DATA[3]), .IN2(Data_Valid), .IN3(n30), .IN4(n10), .Q(n25) );
  AO22X1 U16 ( .IN1(P_DATA[4]), .IN2(Data_Valid), .IN3(n30), .IN4(n9), .Q(n26)
         );
  AO22X1 U18 ( .IN1(P_DATA[5]), .IN2(Data_Valid), .IN3(n30), .IN4(n8), .Q(n27)
         );
  AO22X1 U20 ( .IN1(P_DATA[6]), .IN2(Data_Valid), .IN3(n30), .IN4(n7), .Q(n28)
         );
  AO22X1 U22 ( .IN1(P_DATA[7]), .IN2(Data_Valid), .IN3(n30), .IN4(n6), .Q(n29)
         );
  NBUFFX2 U9 ( .INP(RST), .Z(n5) );
  INVX1 U11 ( .INP(Data_Valid), .ZN(n30) );
endmodule


module mux4x1 ( CLK, RST, start_bit, stop_bit, ser_data, par_bit, mux_sel, 
        TX_OUT );
  input [1:0] mux_sel;
  input CLK, RST, start_bit, stop_bit, ser_data, par_bit;
  output TX_OUT;
  wire   N13, n3, n4, n1, n2;

  DFFASX1 TX_OUT_reg ( .D(N13), .CLK(CLK), .SETB(RST), .Q(TX_OUT) );
  AO22X1 U5 ( .IN1(mux_sel[1]), .IN2(n3), .IN3(n4), .IN4(n2), .Q(N13) );
  AO22X1 U6 ( .IN1(stop_bit), .IN2(mux_sel[0]), .IN3(start_bit), .IN4(n1), .Q(
        n4) );
  AO22X1 U7 ( .IN1(par_bit), .IN2(mux_sel[0]), .IN3(ser_data), .IN4(n1), .Q(n3) );
  INVX1 U3 ( .INP(mux_sel[0]), .ZN(n1) );
  INVX1 U4 ( .INP(mux_sel[1]), .ZN(n2) );
endmodule


module UART_TX ( CLK, RST, PAR_TYP, PAR_EN, P_DATA, Data_Valid, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, PAR_EN, Data_Valid;
  output TX_OUT, Busy;
  wire   Serial_En, Serial_Done, Serial_Data, PARITY_BIT, n1;
  wire   [1:0] MUX_Sel;

  NBUFFX2 U3 ( .INP(RST), .Z(n1) );
  serializer U0_SER ( .P_DATA(P_DATA), .ser_en(Serial_En), .busy(Busy), 
        .Data_Valid(Data_Valid), .CLK(CLK), .RST(n1), .ser_done(Serial_Done), 
        .ser_data(Serial_Data) );
  controller_fsm U0_FSM ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .CLK(CLK), 
        .RST(n1), .ser_done(Serial_Done), .ser_en(Serial_En), .mux_sel(MUX_Sel), .busy(Busy) );
  parity_calc U0_PARITY_CALC ( .CLK(CLK), .RST(n1), .Data_Valid(Data_Valid), 
        .P_DATA(P_DATA), .PAR_TYP(PAR_TYP), .par_bit(PARITY_BIT) );
  mux4x1 U0_MUX ( .CLK(CLK), .RST(n1), .start_bit(1'b0), .stop_bit(1'b1), 
        .ser_data(Serial_Data), .par_bit(PARITY_BIT), .mux_sel(MUX_Sel), 
        .TX_OUT(TX_OUT) );
endmodule


module uart_rx_fsm ( clk, rst, par_en, par_err, strt_glitch, stp_err, prescale, 
        ser_data, bit_cnt, edge_cnt, counter_en, data_samp_en, par_chk_en, 
        strt_chk_en, stp_chk_en, deser_en, data_valid );
  input [5:0] prescale;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input clk, rst, par_en, par_err, strt_glitch, stp_err, ser_data;
  output counter_en, data_samp_en, par_chk_en, strt_chk_en, stp_chk_en,
         deser_en, data_valid;
  wire   n9, n10, n11, n19, n20, n21, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, \add_34/carry[3] , n1, n2, n3, n4, n5, n6,
         n8, n12, n13, n14, n15, n16, n17, n18, n22, n23, n37, n38, n39, n40,
         n41;
  wire   [4:0] half_edges_plus1;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign half_edges_plus1[0] = prescale[1];

  DFFARX1 \cs_reg[0]  ( .D(ns[0]), .CLK(clk), .RSTB(rst), .Q(cs[0]), .QN(n11)
         );
  DFFARX1 \cs_reg[2]  ( .D(ns[2]), .CLK(clk), .RSTB(rst), .Q(cs[2]), .QN(n9)
         );
  DFFARX1 \cs_reg[1]  ( .D(ns[1]), .CLK(clk), .RSTB(rst), .Q(cs[1]), .QN(n10)
         );
  NOR3X0 U24 ( .IN1(n21), .IN2(n11), .IN3(n2), .QN(par_chk_en) );
  OAI21X1 U27 ( .IN1(n25), .IN2(n21), .IN3(n26), .QN(ns[1]) );
  OR4X1 U28 ( .IN1(n27), .IN2(n19), .IN3(bit_cnt[3]), .IN4(strt_glitch), .Q(
        n26) );
  NAND3X0 U29 ( .IN1(n10), .IN2(n9), .IN3(cs[0]), .QN(n19) );
  OA22X1 U30 ( .IN1(cs[0]), .IN2(n28), .IN3(n11), .IN4(n29), .Q(n25) );
  OA22X1 U31 ( .IN1(cs[1]), .IN2(n32), .IN3(n33), .IN4(n10), .Q(n31) );
  NAND3X0 U32 ( .IN1(n30), .IN2(n11), .IN3(par_en), .QN(n34) );
  OR4X1 U33 ( .IN1(n41), .IN2(n39), .IN3(bit_cnt[0]), .IN4(bit_cnt[2]), .Q(n24) );
  OA22X1 U34 ( .IN1(n11), .IN2(n35), .IN3(ser_data), .IN4(cs[0]), .Q(n32) );
  AO21X1 U35 ( .IN1(n37), .IN2(n41), .IN3(strt_glitch), .Q(n35) );
  NAND3X0 U36 ( .IN1(n39), .IN2(n40), .IN3(bit_cnt[0]), .QN(n27) );
  NOR3X0 U37 ( .IN1(n21), .IN2(cs[0]), .IN3(n2), .QN(deser_en) );
  NAND3X0 U38 ( .IN1(n21), .IN2(n20), .IN3(n36), .QN(counter_en) );
  NAND3X0 U39 ( .IN1(n11), .IN2(n10), .IN3(cs[2]), .QN(n20) );
  OAI21X1 U3 ( .IN1(prescale[2]), .IN2(edge_cnt[1]), .IN3(n1), .QN(n15) );
  XNOR2X1 U5 ( .IN1(prescale[4]), .IN2(\add_34/carry[3] ), .Q(n4) );
  OR4X1 U11 ( .IN1(n18), .IN2(n17), .IN3(n16), .IN4(n15), .Q(n2) );
  XNOR2X1 U13 ( .IN1(prescale[5]), .IN2(n3), .Q(half_edges_plus1[4]) );
  XOR2X1 U15 ( .IN1(n4), .IN2(edge_cnt[3]), .Q(n8) );
  AOI21X1 U18 ( .IN1(n5), .IN2(n6), .IN3(n21), .QN(ns[2]) );
  OR3X1 U19 ( .IN1(n24), .IN2(par_err), .IN3(n11), .Q(n5) );
  OR3X1 U20 ( .IN1(n38), .IN2(par_en), .IN3(cs[0]), .Q(n6) );
  AND2X1 U43 ( .IN1(prescale[3]), .IN2(prescale[2]), .Q(\add_34/carry[3] ) );
  NBUFFX2 U45 ( .INP(counter_en), .Z(data_samp_en) );
  XOR2X1 U46 ( .IN1(prescale[3]), .IN2(prescale[2]), .Q(half_edges_plus1[2])
         );
  XNOR2X1 U47 ( .IN1(half_edges_plus1[4]), .IN2(edge_cnt[4]), .Q(n12) );
  XOR2X1 U49 ( .IN1(half_edges_plus1[2]), .IN2(edge_cnt[2]), .Q(n17) );
  OA22X1 U51 ( .IN1(n13), .IN2(prescale[2]), .IN3(edge_cnt[1]), .IN4(n13), .Q(
        n16) );
  AND2X1 U52 ( .IN1(half_edges_plus1[0]), .IN2(n22), .Q(n14) );
  INVX1 U4 ( .INP(n14), .ZN(n1) );
  INVX1 U6 ( .INP(n30), .ZN(n38) );
  NOR2X2 U7 ( .IN1(n27), .IN2(n41), .QN(n30) );
  NOR2X2 U8 ( .IN1(cs[2]), .IN2(n31), .QN(ns[0]) );
  OA21X2 U9 ( .IN1(n11), .IN2(n29), .IN3(n34), .Q(n33) );
  NAND2X2 U10 ( .IN1(cs[0]), .IN2(n9), .QN(n36) );
  INVX1 U12 ( .INP(edge_cnt[0]), .ZN(n22) );
  NAND2X2 U14 ( .IN1(prescale[4]), .IN2(\add_34/carry[3] ), .QN(n3) );
  NAND2X2 U16 ( .IN1(cs[1]), .IN2(n9), .QN(n21) );
  INVX1 U17 ( .INP(bit_cnt[2]), .ZN(n40) );
  INVX1 U21 ( .INP(n27), .ZN(n37) );
  NOR2X2 U22 ( .IN1(par_en), .IN2(n38), .QN(n28) );
  NOR2X2 U23 ( .IN1(n19), .IN2(n2), .QN(strt_chk_en) );
  NAND2X2 U25 ( .IN1(n24), .IN2(n23), .QN(n29) );
  INVX1 U26 ( .INP(par_err), .ZN(n23) );
  NOR2X2 U40 ( .IN1(n2), .IN2(n20), .QN(stp_chk_en) );
  INVX1 U41 ( .INP(bit_cnt[3]), .ZN(n41) );
  INVX1 U42 ( .INP(bit_cnt[1]), .ZN(n39) );
  NOR2X2 U44 ( .IN1(stp_err), .IN2(n20), .QN(data_valid) );
  NAND2X2 U48 ( .IN1(n12), .IN2(n8), .QN(n18) );
  NOR2X2 U50 ( .IN1(n22), .IN2(half_edges_plus1[0]), .QN(n13) );
endmodule


module edge_bit_counter ( CLK, RST, enable, par_en, prescale, bit_cnt, 
        edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input CLK, RST, enable, par_en;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N31, N32, N33, N34, N35, N47,
         N48, N49, N50, N51, N52, n6, n7, n8, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         \add_24/carry[5] , \add_24/carry[4] , \add_24/carry[3] ,
         \add_24/carry[2] , n1, n2, n3, n4, n5, n9, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41;

  DFFARX1 \edge_cnt_reg[0]  ( .D(N47), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[0]), 
        .QN(n39) );
  DFFARX1 \edge_cnt_reg[5]  ( .D(N52), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[5])
         );
  DFFARX1 \edge_cnt_reg[4]  ( .D(N51), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[4])
         );
  DFFARX1 \edge_cnt_reg[3]  ( .D(N50), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[3])
         );
  DFFARX1 \edge_cnt_reg[2]  ( .D(N49), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[2])
         );
  DFFARX1 \edge_cnt_reg[1]  ( .D(N48), .CLK(CLK), .RSTB(RST), .Q(edge_cnt[1]), 
        .QN(n38) );
  DFFARX1 \bit_cnt_reg[0]  ( .D(n27), .CLK(CLK), .RSTB(RST), .Q(bit_cnt[0]), 
        .QN(n8) );
  DFFARX1 \bit_cnt_reg[1]  ( .D(n26), .CLK(CLK), .RSTB(RST), .Q(bit_cnt[1]), 
        .QN(n7) );
  DFFARX1 \bit_cnt_reg[2]  ( .D(n25), .CLK(CLK), .RSTB(RST), .Q(bit_cnt[2]), 
        .QN(n1) );
  DFFARX1 \bit_cnt_reg[3]  ( .D(n24), .CLK(CLK), .RSTB(RST), .Q(bit_cnt[3]), 
        .QN(n6) );
  NAND3X0 U14 ( .IN1(n12), .IN2(n6), .IN3(bit_cnt[2]), .QN(n11) );
  NAND3X0 U15 ( .IN1(enable), .IN2(n13), .IN3(bit_cnt[3]), .QN(n10) );
  AO221X1 U16 ( .IN1(n14), .IN2(bit_cnt[0]), .IN3(bit_cnt[2]), .IN4(n8), .IN5(
        n15), .Q(n13) );
  AO22X1 U17 ( .IN1(n16), .IN2(bit_cnt[2]), .IN3(n17), .IN4(n12), .Q(n25) );
  NOR3X0 U18 ( .IN1(n8), .IN2(n15), .IN3(n41), .QN(n12) );
  AOI21X1 U19 ( .IN1(bit_cnt[3]), .IN2(par_en), .IN3(bit_cnt[2]), .QN(n17) );
  AO22X1 U20 ( .IN1(n18), .IN2(bit_cnt[1]), .IN3(n19), .IN4(enable), .Q(n26)
         );
  NAND3X0 U21 ( .IN1(n40), .IN2(n7), .IN3(bit_cnt[0]), .QN(n22) );
  OAI21X1 U22 ( .IN1(n8), .IN2(n40), .IN3(n23), .QN(n27) );
  OR4X1 U23 ( .IN1(n41), .IN2(n18), .IN3(n20), .IN4(bit_cnt[0]), .Q(n23) );
  AND2X1 U25 ( .IN1(N35), .IN2(n18), .Q(N52) );
  AND2X1 U26 ( .IN1(N34), .IN2(n18), .Q(N51) );
  AND2X1 U27 ( .IN1(N33), .IN2(n18), .Q(N50) );
  AND2X1 U28 ( .IN1(N32), .IN2(n18), .Q(N49) );
  AND2X1 U29 ( .IN1(N31), .IN2(n18), .Q(N48) );
  AND2X1 U30 ( .IN1(n39), .IN2(n18), .Q(N47) );
  HADDX1 \add_24/U1_1_1  ( .A0(edge_cnt[1]), .B0(edge_cnt[0]), .C1(
        \add_24/carry[2] ), .SO(N31) );
  HADDX1 \add_24/U1_1_2  ( .A0(edge_cnt[2]), .B0(\add_24/carry[2] ), .C1(
        \add_24/carry[3] ), .SO(N32) );
  HADDX1 \add_24/U1_1_3  ( .A0(edge_cnt[3]), .B0(\add_24/carry[3] ), .C1(
        \add_24/carry[4] ), .SO(N33) );
  HADDX1 \add_24/U1_1_4  ( .A0(edge_cnt[4]), .B0(\add_24/carry[4] ), .C1(
        \add_24/carry[5] ), .SO(N34) );
  OAI22X1 U3 ( .IN1(n38), .IN2(N10), .IN3(n39), .IN4(N9), .QN(n33) );
  AO22X1 U4 ( .IN1(N10), .IN2(n38), .IN3(N9), .IN4(n39), .Q(n31) );
  AND3X1 U5 ( .IN1(bit_cnt[1]), .IN2(n1), .IN3(bit_cnt[3]), .Q(n20) );
  AO21X1 U37 ( .IN1(prescale[1]), .IN2(prescale[0]), .IN3(n2), .Q(N10) );
  AO21X1 U39 ( .IN1(prescale[2]), .IN2(n9), .IN3(n3), .Q(N11) );
  AO21X1 U41 ( .IN1(prescale[3]), .IN2(n28), .IN3(n4), .Q(N12) );
  AO21X1 U43 ( .IN1(prescale[4]), .IN2(n29), .IN3(n5), .Q(N13) );
  AO21X1 U45 ( .IN1(prescale[5]), .IN2(n30), .IN3(N15), .Q(N14) );
  XOR2X1 U46 ( .IN1(\add_24/carry[5] ), .IN2(edge_cnt[5]), .Q(N35) );
  XOR2X1 U47 ( .IN1(N14), .IN2(edge_cnt[5]), .Q(n32) );
  OR4X1 U48 ( .IN1(n33), .IN2(n32), .IN3(N15), .IN4(n31), .Q(n37) );
  XOR2X1 U49 ( .IN1(N13), .IN2(edge_cnt[4]), .Q(n36) );
  XOR2X1 U50 ( .IN1(N11), .IN2(edge_cnt[2]), .Q(n35) );
  XOR2X1 U51 ( .IN1(N12), .IN2(edge_cnt[3]), .Q(n34) );
  INVX1 U6 ( .INP(n18), .ZN(n40) );
  NOR2X2 U7 ( .IN1(n41), .IN2(N16), .QN(n18) );
  INVX1 U8 ( .INP(enable), .ZN(n41) );
  INVX1 U9 ( .INP(n5), .ZN(n30) );
  INVX1 U10 ( .INP(n3), .ZN(n28) );
  INVX1 U11 ( .INP(n4), .ZN(n29) );
  INVX1 U12 ( .INP(n2), .ZN(n9) );
  NOR2X2 U13 ( .IN1(n20), .IN2(n21), .QN(n19) );
  OA21X2 U24 ( .IN1(bit_cnt[0]), .IN2(n7), .IN3(n22), .Q(n21) );
  NAND2X2 U31 ( .IN1(n10), .IN2(n11), .QN(n24) );
  OA21X2 U32 ( .IN1(n15), .IN2(n8), .IN3(enable), .Q(n16) );
  NAND2X2 U33 ( .IN1(bit_cnt[1]), .IN2(N16), .QN(n15) );
  NOR2X2 U34 ( .IN1(par_en), .IN2(bit_cnt[2]), .QN(n14) );
  INVX1 U35 ( .INP(prescale[0]), .ZN(N9) );
  NOR2X2 U36 ( .IN1(prescale[1]), .IN2(prescale[0]), .QN(n2) );
  NOR2X2 U38 ( .IN1(n9), .IN2(prescale[2]), .QN(n3) );
  NOR2X2 U40 ( .IN1(n28), .IN2(prescale[3]), .QN(n4) );
  NOR2X2 U42 ( .IN1(n29), .IN2(prescale[4]), .QN(n5) );
  NOR2X2 U44 ( .IN1(n30), .IN2(prescale[5]), .QN(N15) );
  NOR4X1 U52 ( .IN1(n37), .IN2(n36), .IN3(n35), .IN4(n34), .QN(N16) );
endmodule


module data_sampling ( CLK, RST, RX_IN, prescale, edge_cnt, enable, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input CLK, RST, RX_IN, enable;
  output sampled_bit;
  wire   n21, n22, n23, n24, \add_18/carry[4] , \add_18/carry[3] ,
         \add_18/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;
  wire   [4:0] half_edges_neg1;
  wire   [4:0] half_edges_plus1;

  DFFARX1 \samples_reg[2]  ( .D(n24), .CLK(CLK), .RSTB(RST), .QN(n44) );
  DFFARX1 \samples_reg[1]  ( .D(n23), .CLK(CLK), .RSTB(RST), .Q(n2), .QN(n46)
         );
  DFFARX1 \samples_reg[0]  ( .D(n22), .CLK(CLK), .RSTB(RST), .Q(n1), .QN(n45)
         );
  DFFARX1 sampled_bit_reg ( .D(n21), .CLK(CLK), .RSTB(RST), .Q(sampled_bit) );
  HADDX1 \add_18/U1_1_2  ( .A0(prescale[3]), .B0(\add_18/carry[2] ), .C1(
        \add_18/carry[3] ), .SO(half_edges_plus1[2]) );
  HADDX1 U4 ( .A0(prescale[4]), .B0(\add_18/carry[3] ), .C1(\add_18/carry[4] ), 
        .SO(half_edges_plus1[3]) );
  XNOR2X1 U5 ( .IN1(prescale[4]), .IN2(n9), .Q(half_edges_neg1[3]) );
  XOR2X1 U6 ( .IN1(prescale[4]), .IN2(edge_cnt[3]), .Q(n27) );
  XNOR2X1 U9 ( .IN1(n32), .IN2(prescale[1]), .Q(n41) );
  XOR2X1 U10 ( .IN1(edge_cnt[0]), .IN2(prescale[1]), .Q(n18) );
  XNOR2X1 U11 ( .IN1(n3), .IN2(edge_cnt[4]), .Q(n38) );
  XNOR2X1 U12 ( .IN1(prescale[5]), .IN2(n7), .Q(n3) );
  XNOR2X1 U13 ( .IN1(n4), .IN2(edge_cnt[4]), .Q(n15) );
  XNOR2X1 U14 ( .IN1(\add_18/carry[4] ), .IN2(prescale[5]), .Q(n4) );
  HADDX1 U15 ( .A0(prescale[2]), .B0(prescale[1]), .C1(\add_18/carry[2] ), 
        .SO(half_edges_plus1[1]) );
  AO21X1 U17 ( .IN1(prescale[2]), .IN2(prescale[1]), .IN3(n5), .Q(
        half_edges_neg1[1]) );
  AO21X1 U19 ( .IN1(prescale[3]), .IN2(n8), .IN3(n6), .Q(half_edges_neg1[2])
         );
  MUX21X1 U21 ( .IN1(n10), .IN2(n11), .S(n12), .Q(n24) );
  XOR2X1 U23 ( .IN1(half_edges_plus1[2]), .IN2(edge_cnt[2]), .Q(n16) );
  XOR2X1 U24 ( .IN1(half_edges_plus1[3]), .IN2(edge_cnt[3]), .Q(n14) );
  XNOR2X1 U26 ( .IN1(edge_cnt[1]), .IN2(half_edges_plus1[1]), .Q(n17) );
  MUX21X1 U28 ( .IN1(n20), .IN2(n11), .S(n25), .Q(n23) );
  XOR2X1 U30 ( .IN1(prescale[3]), .IN2(edge_cnt[2]), .Q(n29) );
  XOR2X1 U31 ( .IN1(prescale[5]), .IN2(edge_cnt[4]), .Q(n28) );
  XOR2X1 U33 ( .IN1(n32), .IN2(prescale[1]), .Q(n31) );
  XOR2X1 U34 ( .IN1(n33), .IN2(prescale[2]), .Q(n30) );
  MUX21X1 U36 ( .IN1(n34), .IN2(n11), .S(n35), .Q(n22) );
  XOR2X1 U38 ( .IN1(half_edges_neg1[2]), .IN2(edge_cnt[2]), .Q(n39) );
  XOR2X1 U39 ( .IN1(half_edges_neg1[3]), .IN2(edge_cnt[3]), .Q(n37) );
  XOR2X1 U42 ( .IN1(n33), .IN2(half_edges_neg1[1]), .Q(n40) );
  AND2X1 U44 ( .IN1(enable), .IN2(RX_IN), .Q(n11) );
  MUX21X1 U47 ( .IN1(sampled_bit), .IN2(n42), .S(enable), .Q(n21) );
  OAI22X1 U48 ( .IN1(n46), .IN2(n45), .IN3(n43), .IN4(n44), .QN(n42) );
  NOR2X2 U3 ( .IN1(n1), .IN2(n2), .QN(n43) );
  INVX1 U7 ( .INP(n6), .ZN(n9) );
  INVX1 U8 ( .INP(n5), .ZN(n8) );
  NOR2X2 U16 ( .IN1(prescale[2]), .IN2(prescale[1]), .QN(n5) );
  NOR2X2 U18 ( .IN1(n8), .IN2(prescale[3]), .QN(n6) );
  NOR2X2 U20 ( .IN1(prescale[4]), .IN2(n9), .QN(n7) );
  NOR4X1 U22 ( .IN1(n13), .IN2(n14), .IN3(n15), .IN4(n16), .QN(n12) );
  NAND2X2 U25 ( .IN1(n17), .IN2(n18), .QN(n13) );
  NOR2X2 U27 ( .IN1(n44), .IN2(n19), .QN(n10) );
  NOR4X1 U29 ( .IN1(n26), .IN2(n27), .IN3(n28), .IN4(n29), .QN(n25) );
  NAND2X2 U32 ( .IN1(n30), .IN2(n31), .QN(n26) );
  NOR2X2 U35 ( .IN1(n46), .IN2(n19), .QN(n20) );
  NOR4X1 U37 ( .IN1(n36), .IN2(n37), .IN3(n38), .IN4(n39), .QN(n35) );
  NAND2X2 U40 ( .IN1(n40), .IN2(n41), .QN(n36) );
  INVX1 U41 ( .INP(edge_cnt[0]), .ZN(n32) );
  INVX1 U43 ( .INP(edge_cnt[1]), .ZN(n33) );
  NOR2X2 U45 ( .IN1(n45), .IN2(n19), .QN(n34) );
  INVX1 U46 ( .INP(enable), .ZN(n19) );
endmodule


module deserializer ( CLK, RST, s_data, deser_en, P_DATA );
  output [7:0] P_DATA;
  input CLK, RST, s_data, deser_en;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n1, n2;

  DFFARX1 \P_DATA_reg[7]  ( .D(n23), .CLK(CLK), .RSTB(RST), .Q(P_DATA[7]) );
  DFFARX1 \P_DATA_reg[6]  ( .D(n22), .CLK(CLK), .RSTB(RST), .Q(P_DATA[6]) );
  DFFARX1 \P_DATA_reg[5]  ( .D(n21), .CLK(CLK), .RSTB(RST), .Q(P_DATA[5]) );
  DFFARX1 \P_DATA_reg[4]  ( .D(n20), .CLK(CLK), .RSTB(RST), .Q(P_DATA[4]) );
  DFFARX1 \P_DATA_reg[3]  ( .D(n19), .CLK(CLK), .RSTB(RST), .Q(P_DATA[3]) );
  DFFARX1 \P_DATA_reg[2]  ( .D(n18), .CLK(CLK), .RSTB(RST), .Q(P_DATA[2]) );
  DFFARX1 \P_DATA_reg[1]  ( .D(n17), .CLK(CLK), .RSTB(RST), .Q(P_DATA[1]) );
  DFFARX1 \P_DATA_reg[0]  ( .D(n16), .CLK(CLK), .RSTB(RST), .Q(P_DATA[0]) );
  AO22X1 U9 ( .IN1(deser_en), .IN2(P_DATA[5]), .IN3(n2), .IN4(P_DATA[4]), .Q(
        n20) );
  AO22X1 U11 ( .IN1(deser_en), .IN2(P_DATA[6]), .IN3(n2), .IN4(P_DATA[5]), .Q(
        n21) );
  AO22X1 U13 ( .IN1(deser_en), .IN2(P_DATA[7]), .IN3(n2), .IN4(P_DATA[6]), .Q(
        n22) );
  AO22X1 U15 ( .IN1(s_data), .IN2(n1), .IN3(n2), .IN4(P_DATA[7]), .Q(n23) );
  MUX21X1 U2 ( .IN1(P_DATA[0]), .IN2(P_DATA[1]), .S(n1), .Q(n16) );
  MUX21X1 U3 ( .IN1(P_DATA[1]), .IN2(P_DATA[2]), .S(n1), .Q(n17) );
  MUX21X1 U4 ( .IN1(P_DATA[2]), .IN2(P_DATA[3]), .S(n1), .Q(n18) );
  MUX21X1 U5 ( .IN1(P_DATA[3]), .IN2(P_DATA[4]), .S(n1), .Q(n19) );
  NBUFFX2 U7 ( .INP(deser_en), .Z(n1) );
  INVX1 U6 ( .INP(n1), .ZN(n2) );
endmodule


module parity_check ( CLK, RST, par_typ, sampled_bit, P_DATA, enable, par_err
 );
  input [7:0] P_DATA;
  input CLK, RST, par_typ, sampled_bit, enable;
  output par_err;
  wire   n2, n3, n4, n5, n6, n7, n8, n1;

  DFFARX1 par_err_reg ( .D(n8), .CLK(CLK), .RSTB(RST), .Q(par_err) );
  AO22X1 U2 ( .IN1(par_err), .IN2(n1), .IN3(enable), .IN4(n2), .Q(n8) );
  XOR3X1 U3 ( .IN1(par_typ), .IN2(P_DATA[2]), .IN3(n3), .Q(n2) );
  XOR3X1 U4 ( .IN1(n4), .IN2(n5), .IN3(n6), .Q(n3) );
  XOR3X1 U5 ( .IN1(P_DATA[6]), .IN2(P_DATA[5]), .IN3(n7), .Q(n6) );
  XOR2X1 U6 ( .IN1(sampled_bit), .IN2(P_DATA[7]), .Q(n7) );
  XOR2X1 U7 ( .IN1(P_DATA[1]), .IN2(P_DATA[0]), .Q(n5) );
  XOR2X1 U8 ( .IN1(P_DATA[4]), .IN2(P_DATA[3]), .Q(n4) );
  INVX1 U9 ( .INP(enable), .ZN(n1) );
endmodule


module strt_check ( CLK, RST, sampled_bit, enable, strt_glitch );
  input CLK, RST, sampled_bit, enable;
  output strt_glitch;
  wire   n2, n1;

  DFFARX1 strt_glitch_reg ( .D(n2), .CLK(CLK), .RSTB(RST), .Q(strt_glitch) );
  AO22X1 U2 ( .IN1(sampled_bit), .IN2(enable), .IN3(strt_glitch), .IN4(n1), 
        .Q(n2) );
  INVX1 U3 ( .INP(enable), .ZN(n1) );
endmodule


module stop_check ( CLK, RST, sampled_bit, enable, stp_err );
  input CLK, RST, sampled_bit, enable;
  output stp_err;
  wire   n2, n3, n1;

  DFFARX1 stp_err_reg ( .D(n3), .CLK(CLK), .RSTB(RST), .Q(stp_err), .QN(n2) );
  OAI22X1 U2 ( .IN1(sampled_bit), .IN2(n1), .IN3(enable), .IN4(n2), .QN(n3) );
  INVX1 U3 ( .INP(enable), .ZN(n1) );
endmodule


module UART_RX ( CLK, RST, RX_IN, PAR_EN, PAR_TYP, Prescale, Data_valid, 
        P_DATA );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output Data_valid;
  wire   PAR_ERR, STRT_GLITCH, STP_ERR, CNT_EN, SAMP_EN, PAR_CHK_EN,
         STRT_CHK_EN, STP_CHK_EN, DESER_EN, SAMPLED_BIT, n1, n2, n3;
  wire   [3:0] BIT_CNT;
  wire   [5:0] EDGE_CNT;

  NBUFFX2 U1 ( .INP(RST), .Z(n1) );
  NBUFFX2 U2 ( .INP(RST), .Z(n2) );
  NBUFFX2 U3 ( .INP(RST), .Z(n3) );
  uart_rx_fsm fsm_inst ( .clk(CLK), .rst(n2), .par_en(PAR_EN), .par_err(
        PAR_ERR), .strt_glitch(STRT_GLITCH), .stp_err(STP_ERR), .prescale(
        Prescale), .ser_data(RX_IN), .bit_cnt(BIT_CNT), .edge_cnt(EDGE_CNT), 
        .counter_en(CNT_EN), .data_samp_en(SAMP_EN), .par_chk_en(PAR_CHK_EN), 
        .strt_chk_en(STRT_CHK_EN), .stp_chk_en(STP_CHK_EN), .deser_en(DESER_EN), .data_valid(Data_valid) );
  edge_bit_counter counter_inst ( .CLK(CLK), .RST(n1), .enable(CNT_EN), 
        .par_en(PAR_EN), .prescale(Prescale), .bit_cnt(BIT_CNT), .edge_cnt(
        EDGE_CNT) );
  data_sampling samp_inst ( .CLK(CLK), .RST(n3), .RX_IN(RX_IN), .prescale(
        Prescale), .edge_cnt(EDGE_CNT), .enable(SAMP_EN), .sampled_bit(
        SAMPLED_BIT) );
  deserializer deser_inst ( .CLK(CLK), .RST(n2), .s_data(SAMPLED_BIT), 
        .deser_en(DESER_EN), .P_DATA(P_DATA) );
  parity_check par_chk_inst ( .CLK(CLK), .RST(n1), .par_typ(PAR_TYP), 
        .sampled_bit(SAMPLED_BIT), .P_DATA(P_DATA), .enable(PAR_CHK_EN), 
        .par_err(PAR_ERR) );
  strt_check strt_chk_inst ( .CLK(CLK), .RST(n3), .sampled_bit(SAMPLED_BIT), 
        .enable(STRT_CHK_EN), .strt_glitch(STRT_GLITCH) );
  stop_check stp_chk_inst ( .CLK(CLK), .RST(n3), .sampled_bit(SAMPLED_BIT), 
        .enable(STP_CHK_EN), .stp_err(STP_ERR) );
endmodule


module UART ( TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, Prescale, TX_IN_P, TX_IN_V, 
        TX_OUT_S, TX_OUT_V, RX_IN_S, RX_OUT_P, RX_OUT_V );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, TX_IN_V, RX_IN_S;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V;


  UART_TX U0_TX ( .CLK(TX_CLK), .RST(RST), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .TX_OUT(TX_OUT_S), .Busy(
        TX_OUT_V) );
  UART_RX U0_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN_S), .PAR_EN(PAR_EN), 
        .PAR_TYP(PAR_TYP), .Prescale(Prescale), .Data_valid(RX_OUT_V), 
        .P_DATA(RX_OUT_P) );
endmodule


module BIT_SYNC_1_2 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   \q[0][0] ;

  DFFARX1 \q_reg[0][0]  ( .D(ASYNC[0]), .CLK(CLK), .RSTB(RST), .Q(\q[0][0] )
         );
  DFFARX1 \q_reg[1][0]  ( .D(\q[0][0] ), .CLK(CLK), .RSTB(RST), .Q(SYNC[0]) );
endmodule


module PULSE_GEN_1 ( LVL_SIG, CLK, RST, PULSE_SIG );
  input LVL_SIG, CLK, RST;
  output PULSE_SIG;
  wire   n1;

  DFFARX1 SYNC_REG_reg ( .D(LVL_SIG), .CLK(CLK), .RSTB(RST), .QN(n1) );
  AND2X1 U3 ( .IN1(n1), .IN2(LVL_SIG), .Q(PULSE_SIG) );
endmodule


module DATA_SYNC ( Unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   sync_enable, enable_pulse_comb, n2, n3, n4, n5, n6, n7, n8, n9, n1,
         n10, n11, n12, n13;

  DFFARX1 enable_pulse_reg ( .D(n1), .CLK(CLK), .RSTB(n12), .Q(enable_pulse)
         );
  DFFARX1 \sync_bus_reg[7]  ( .D(n9), .CLK(CLK), .RSTB(n11), .Q(sync_bus[7])
         );
  DFFARX1 \sync_bus_reg[6]  ( .D(n8), .CLK(CLK), .RSTB(n12), .Q(sync_bus[6])
         );
  DFFARX1 \sync_bus_reg[5]  ( .D(n7), .CLK(CLK), .RSTB(n12), .Q(sync_bus[5])
         );
  DFFARX1 \sync_bus_reg[4]  ( .D(n6), .CLK(CLK), .RSTB(n12), .Q(sync_bus[4])
         );
  DFFARX1 \sync_bus_reg[3]  ( .D(n5), .CLK(CLK), .RSTB(n12), .Q(sync_bus[3])
         );
  DFFARX1 \sync_bus_reg[2]  ( .D(n4), .CLK(CLK), .RSTB(n12), .Q(sync_bus[2])
         );
  DFFARX1 \sync_bus_reg[1]  ( .D(n3), .CLK(CLK), .RSTB(n11), .Q(sync_bus[1])
         );
  DFFARX1 \sync_bus_reg[0]  ( .D(n2), .CLK(CLK), .RSTB(n11), .Q(sync_bus[0])
         );
  AO22X1 U3 ( .IN1(sync_bus[0]), .IN2(n13), .IN3(enable_pulse_comb), .IN4(
        Unsync_bus[0]), .Q(n2) );
  AO22X1 U4 ( .IN1(sync_bus[1]), .IN2(n13), .IN3(Unsync_bus[1]), .IN4(
        enable_pulse_comb), .Q(n3) );
  AO22X1 U5 ( .IN1(sync_bus[2]), .IN2(n13), .IN3(Unsync_bus[2]), .IN4(
        enable_pulse_comb), .Q(n4) );
  AO22X1 U6 ( .IN1(sync_bus[3]), .IN2(n13), .IN3(Unsync_bus[3]), .IN4(
        enable_pulse_comb), .Q(n5) );
  AO22X1 U7 ( .IN1(sync_bus[4]), .IN2(n10), .IN3(Unsync_bus[4]), .IN4(
        enable_pulse_comb), .Q(n6) );
  AO22X1 U8 ( .IN1(sync_bus[5]), .IN2(n10), .IN3(Unsync_bus[5]), .IN4(
        enable_pulse_comb), .Q(n7) );
  AO22X1 U9 ( .IN1(sync_bus[6]), .IN2(n10), .IN3(Unsync_bus[6]), .IN4(
        enable_pulse_comb), .Q(n8) );
  AO22X1 U10 ( .IN1(sync_bus[7]), .IN2(n10), .IN3(Unsync_bus[7]), .IN4(
        enable_pulse_comb), .Q(n9) );
  NBUFFX2 U13 ( .INP(RST), .Z(n11) );
  NBUFFX2 U14 ( .INP(RST), .Z(n12) );
  INVX1 U12 ( .INP(n1), .ZN(n10) );
  INVX1 U15 ( .INP(enable_pulse_comb), .ZN(n13) );
  BIT_SYNC_1_2 U0_BIT_SYNC ( .ASYNC(bus_enable), .CLK(CLK), .RST(n11), .SYNC(
        sync_enable) );
  PULSE_GEN_1 U0_PULSE_GEN ( .LVL_SIG(sync_enable), .CLK(CLK), .RST(n11), 
        .PULSE_SIG(enable_pulse_comb) );
  INVX0 U11 ( .INP(n13), .ZN(n1) );
endmodule


module SYS_CTRL ( CLK, RST, RdData, RdData_Valid, RX_P_DATA, RX_D_VLD, 
        FIFO_FULL, ALU_OUT, ALU_OUT_VLD, ALU_FUN, ALU_EN, GATE_EN, 
        UART_TX_DATA, UART_TX_VLD, Address, WrEn, RdEn, WrData );
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  output [7:0] UART_TX_DATA;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, RdData_Valid, RX_D_VLD, FIFO_FULL, ALU_OUT_VLD;
  output ALU_EN, GATE_EN, UART_TX_VLD, WrEn, RdEn;
  wire   n11, n12, n13, n14, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n15, n16, n17, n18, n19, n20, n21, n22, n69, n86,
         n87, n88, n89, n90, n91, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123;
  wire   [3:0] cs;
  wire   [3:0] ns;
  wire   [3:0] stored_addr;

  DFFARX1 \cs_reg[0]  ( .D(n103), .CLK(CLK), .RSTB(n100), .Q(cs[0]), .QN(n14)
         );
  DFFARX1 \cs_reg[1]  ( .D(ns[1]), .CLK(CLK), .RSTB(n100), .Q(cs[1]), .QN(n13)
         );
  DFFARX1 \stored_addr_reg[3]  ( .D(n85), .CLK(CLK), .RSTB(n100), .Q(
        stored_addr[3]) );
  DFFARX1 \stored_addr_reg[2]  ( .D(n84), .CLK(CLK), .RSTB(n100), .Q(
        stored_addr[2]) );
  DFFARX1 \stored_addr_reg[1]  ( .D(n83), .CLK(CLK), .RSTB(n100), .Q(
        stored_addr[1]) );
  DFFARX1 \stored_addr_reg[0]  ( .D(n82), .CLK(CLK), .RSTB(n100), .Q(
        stored_addr[0]), .QN(n4) );
  NOR4X1 U3 ( .IN1(n34), .IN2(n105), .IN3(n35), .IN4(n36), .QN(n23) );
  AO22X1 U58 ( .IN1(n104), .IN2(RX_P_DATA[0]), .IN3(stored_addr[0]), .IN4(n24), 
        .Q(n82) );
  AO22X1 U59 ( .IN1(n104), .IN2(RX_P_DATA[1]), .IN3(stored_addr[1]), .IN4(n24), 
        .Q(n83) );
  AO22X1 U60 ( .IN1(n104), .IN2(RX_P_DATA[2]), .IN3(stored_addr[2]), .IN4(n24), 
        .Q(n84) );
  AO22X1 U61 ( .IN1(n104), .IN2(RX_P_DATA[3]), .IN3(stored_addr[3]), .IN4(n24), 
        .Q(n85) );
  AO21X1 U62 ( .IN1(n25), .IN2(n26), .IN3(ns[3]), .Q(n24) );
  NAND3X0 U63 ( .IN1(n107), .IN2(n27), .IN3(n28), .QN(ns[3]) );
  OA221X1 U64 ( .IN1(n111), .IN2(n29), .IN3(n30), .IN4(n31), .IN5(n99), .Q(n28) );
  NAND3X0 U65 ( .IN1(n23), .IN2(n106), .IN3(ns[1]), .QN(n26) );
  OR3X1 U66 ( .IN1(n106), .IN2(ns[1]), .IN3(n23), .Q(n25) );
  NAND4X0 U67 ( .IN1(n37), .IN2(n38), .IN3(n39), .IN4(n40), .QN(n36) );
  NAND3X0 U70 ( .IN1(n15), .IN2(n114), .IN3(n42), .QN(n37) );
  AO22X1 U71 ( .IN1(ALU_OUT_VLD), .IN2(n119), .IN3(n43), .IN4(n111), .Q(n35)
         );
  NAND4X0 U73 ( .IN1(n8), .IN2(n49), .IN3(n50), .IN4(n51), .QN(ns[1]) );
  AOI221X1 U74 ( .IN1(RdEn), .IN2(RdData_Valid), .IN3(n52), .IN4(n46), .IN5(
        n105), .QN(n51) );
  AND2X1 U77 ( .IN1(n44), .IN2(n99), .Q(n50) );
  NAND4X0 U78 ( .IN1(n27), .IN2(n55), .IN3(n53), .IN4(n56), .QN(ns[2]) );
  AND3X1 U79 ( .IN1(n57), .IN2(n47), .IN3(n58), .Q(n56) );
  NAND3X0 U81 ( .IN1(RX_P_DATA[4]), .IN2(RX_P_DATA[0]), .IN3(n42), .QN(n57) );
  OA22X1 U82 ( .IN1(n29), .IN2(RX_D_VLD), .IN3(n31), .IN4(n61), .Q(n53) );
  AND2X1 U83 ( .IN1(n30), .IN2(n62), .Q(n61) );
  NAND3X0 U84 ( .IN1(n15), .IN2(n114), .IN3(n63), .QN(n62) );
  NAND3X0 U85 ( .IN1(RX_P_DATA[0]), .IN2(n63), .IN3(RX_P_DATA[4]), .QN(n30) );
  NAND4X0 U86 ( .IN1(n14), .IN2(n93), .IN3(n46), .IN4(n64), .QN(n31) );
  AND3X1 U87 ( .IN1(RX_P_DATA[3]), .IN2(RX_D_VLD), .IN3(RX_P_DATA[7]), .Q(n64)
         );
  NAND3X0 U88 ( .IN1(n40), .IN2(n44), .IN3(n49), .QN(n33) );
  NAND3X0 U94 ( .IN1(n48), .IN2(n39), .IN3(n68), .QN(WrEn) );
  AOI222X1 U98 ( .IN1(RdData[7]), .IN2(n109), .IN3(ALU_OUT[15]), .IN4(n98), 
        .IN5(ALU_OUT[7]), .IN6(n3), .QN(n72) );
  AOI222X1 U99 ( .IN1(RdData[6]), .IN2(n109), .IN3(ALU_OUT[14]), .IN4(n98), 
        .IN5(ALU_OUT[6]), .IN6(n110), .QN(n74) );
  AOI222X1 U101 ( .IN1(RdData[4]), .IN2(n109), .IN3(ALU_OUT[12]), .IN4(n98), 
        .IN5(ALU_OUT[4]), .IN6(n110), .QN(n76) );
  AOI222X1 U104 ( .IN1(RdData[1]), .IN2(n109), .IN3(ALU_OUT[9]), .IN4(n98), 
        .IN5(ALU_OUT[1]), .IN6(n3), .QN(n79) );
  AOI222X1 U105 ( .IN1(RdData[0]), .IN2(n109), .IN3(ALU_OUT[8]), .IN4(n98), 
        .IN5(ALU_OUT[0]), .IN6(n110), .QN(n80) );
  DFFARX1 \cs_reg[2]  ( .D(ns[2]), .CLK(CLK), .RSTB(n100), .Q(cs[2]), .QN(n12)
         );
  DFFARX1 \cs_reg[3]  ( .D(ns[3]), .CLK(CLK), .RSTB(n100), .Q(cs[3]), .QN(n11)
         );
  NAND3X4 U7 ( .IN1(n90), .IN2(n93), .IN3(RX_D_VLD), .QN(n54) );
  NAND3X4 U8 ( .IN1(n90), .IN2(n93), .IN3(n46), .QN(n45) );
  AOI222X2 U11 ( .IN1(RdData[5]), .IN2(n109), .IN3(ALU_OUT[13]), .IN4(n98), 
        .IN5(ALU_OUT[5]), .IN6(n110), .QN(n75) );
  AOI222X2 U12 ( .IN1(RdData[3]), .IN2(n109), .IN3(ALU_OUT[11]), .IN4(n98), 
        .IN5(ALU_OUT[3]), .IN6(n3), .QN(n77) );
  INVX1 U13 ( .INP(n70), .ZN(n109) );
  NAND3X1 U14 ( .IN1(n99), .IN2(n22), .IN3(n67), .QN(ALU_EN) );
  AND2X1 U17 ( .IN1(n12), .IN2(n91), .Q(n2) );
  NAND3X0 U38 ( .IN1(n8), .IN2(n99), .IN3(n81), .QN(GATE_EN) );
  NAND3X0 U40 ( .IN1(n5), .IN2(n21), .IN3(n66), .QN(n47) );
  NBUFFX2 U41 ( .INP(n9), .Z(n99) );
  AND2X1 U42 ( .IN1(n102), .IN2(stored_addr[2]), .Q(Address[2]) );
  OAI22X1 U45 ( .IN1(n4), .IN2(n101), .IN3(n14), .IN4(n102), .QN(Address[0])
         );
  NBUFFX2 U54 ( .INP(n118), .Z(n15) );
  NAND3X1 U55 ( .IN1(n88), .IN2(n19), .IN3(n66), .QN(n44) );
  NAND3X1 U69 ( .IN1(n88), .IN2(n19), .IN3(n59), .QN(n49) );
  AND2X4 U90 ( .IN1(WrEn), .IN2(RX_P_DATA[7]), .Q(WrData[7]) );
  OAI21X1 U125 ( .IN1(n91), .IN2(n93), .IN3(n54), .QN(n52) );
  XOR2X1 U130 ( .IN1(n69), .IN2(n88), .Q(n41) );
  NAND3X0 U131 ( .IN1(n88), .IN2(n19), .IN3(n69), .QN(n81) );
  AND3X1 U144 ( .IN1(cs[3]), .IN2(n59), .IN3(n5), .Q(n73) );
  NBUFFX2 U146 ( .INP(RST), .Z(n100) );
  NOR3X0 U147 ( .IN1(n18), .IN2(n21), .IN3(n123), .QN(n101) );
  INVX1 U4 ( .INP(n94), .ZN(n1) );
  INVX1 U16 ( .INP(n20), .ZN(n21) );
  INVX1 U26 ( .INP(RX_P_DATA[2]), .ZN(n116) );
  NOR2X2 U36 ( .IN1(n1), .IN2(n113), .QN(WrData[5]) );
  INVX1 U43 ( .INP(n67), .ZN(n3) );
  INVX1 U44 ( .INP(n67), .ZN(n110) );
  INVX1 U46 ( .INP(n123), .ZN(n5) );
  INVX1 U47 ( .INP(n65), .ZN(n6) );
  INVX1 U48 ( .INP(n6), .ZN(n7) );
  NBUFFX2 U56 ( .INP(cs[3]), .Z(n19) );
  NOR2X2 U75 ( .IN1(n97), .IN2(n72), .QN(UART_TX_DATA[7]) );
  NOR2X2 U80 ( .IN1(n97), .IN2(n77), .QN(UART_TX_DATA[3]) );
  INVX1 U102 ( .INP(n24), .ZN(n104) );
  NOR2X2 U106 ( .IN1(n115), .IN2(n9), .QN(ALU_FUN[3]) );
  INVX1 U107 ( .INP(n47), .ZN(RdEn) );
  INVX1 U109 ( .INP(n33), .ZN(n107) );
  NAND2X2 U110 ( .IN1(n44), .IN2(n45), .QN(n43) );
  NOR4X1 U111 ( .IN1(n113), .IN2(n117), .IN3(n60), .IN4(n31), .QN(n42) );
  NAND2X2 U112 ( .IN1(n112), .IN2(n116), .QN(n60) );
  INVX1 U113 ( .INP(n53), .ZN(n105) );
  INVX1 U114 ( .INP(ns[2]), .ZN(n106) );
  INVX1 U115 ( .INP(n23), .ZN(n103) );
  INVX1 U116 ( .INP(RX_P_DATA[0]), .ZN(n118) );
  INVX1 U117 ( .INP(RX_P_DATA[1]), .ZN(n117) );
  INVX1 U118 ( .INP(RX_P_DATA[3]), .ZN(n115) );
  NAND2X2 U119 ( .IN1(n33), .IN2(n111), .QN(n55) );
  NOR4X1 U123 ( .IN1(n112), .IN2(n116), .IN3(RX_P_DATA[1]), .IN4(RX_P_DATA[5]), 
        .QN(n63) );
  NOR2X2 U124 ( .IN1(RdData_Valid), .IN2(n47), .QN(n34) );
  INVX1 U126 ( .INP(RX_P_DATA[6]), .ZN(n112) );
  INVX1 U127 ( .INP(RX_P_DATA[4]), .ZN(n114) );
  INVX1 U128 ( .INP(RX_D_VLD), .ZN(n111) );
  INVX1 U129 ( .INP(RX_P_DATA[5]), .ZN(n113) );
  NOR2X2 U137 ( .IN1(n97), .IN2(n75), .QN(UART_TX_DATA[5]) );
  NAND2X2 U142 ( .IN1(n7), .IN2(n66), .QN(n29) );
  NBUFFX2 U5 ( .INP(n10), .Z(n119) );
  NAND3X1 U6 ( .IN1(n19), .IN2(n93), .IN3(n66), .QN(n40) );
  INVX0 U9 ( .INP(n89), .ZN(n90) );
  INVX0 U10 ( .INP(n89), .ZN(n91) );
  NBUFFX4 U15 ( .INP(n48), .Z(n8) );
  AND3X4 U18 ( .IN1(n39), .IN2(n67), .IN3(n48), .Q(n27) );
  INVX0 U19 ( .INP(n88), .ZN(n93) );
  INVX0 U20 ( .INP(n108), .ZN(n94) );
  NOR2X0 U21 ( .IN1(n108), .IN2(n117), .QN(WrData[1]) );
  NOR2X0 U22 ( .IN1(n108), .IN2(n15), .QN(WrData[0]) );
  INVX0 U23 ( .INP(WrEn), .ZN(n108) );
  AND2X1 U24 ( .IN1(n67), .IN2(n22), .Q(n71) );
  INVX0 U25 ( .INP(cs[0]), .ZN(n89) );
  INVX0 U27 ( .INP(cs[1]), .ZN(n87) );
  AND2X2 U28 ( .IN1(stored_addr[1]), .IN2(n17), .Q(Address[1]) );
  AND2X4 U29 ( .IN1(stored_addr[3]), .IN2(n17), .Q(Address[3]) );
  INVX0 U30 ( .INP(n94), .ZN(n95) );
  NOR2X0 U31 ( .IN1(n96), .IN2(n74), .QN(UART_TX_DATA[6]) );
  NOR2X1 U32 ( .IN1(n96), .IN2(n78), .QN(UART_TX_DATA[2]) );
  NOR2X1 U33 ( .IN1(n96), .IN2(n76), .QN(UART_TX_DATA[4]) );
  NOR2X1 U34 ( .IN1(n96), .IN2(n80), .QN(UART_TX_DATA[0]) );
  NBUFFX2 U35 ( .INP(n96), .Z(n97) );
  NBUFFX2 U37 ( .INP(FIFO_FULL), .Z(n96) );
  INVX0 U39 ( .INP(FIFO_FULL), .ZN(n120) );
  INVX0 U49 ( .INP(n120), .ZN(n121) );
  AND2X1 U50 ( .IN1(n94), .IN2(RX_P_DATA[2]), .Q(WrData[2]) );
  AOI21X1 U51 ( .IN1(n70), .IN2(n71), .IN3(n121), .QN(UART_TX_VLD) );
  NAND2X0 U52 ( .IN1(n2), .IN2(n65), .QN(n68) );
  NAND4X1 U53 ( .IN1(RX_D_VLD), .IN2(n41), .IN3(n14), .IN4(n21), .QN(n38) );
  NOR2X0 U57 ( .IN1(n12), .IN2(n14), .QN(n66) );
  NOR2X0 U68 ( .IN1(n95), .IN2(n112), .QN(WrData[6]) );
  NOR2X0 U72 ( .IN1(n95), .IN2(n115), .QN(WrData[3]) );
  NOR2X0 U76 ( .IN1(n95), .IN2(n114), .QN(WrData[4]) );
  NOR2X0 U89 ( .IN1(n97), .IN2(n79), .QN(UART_TX_DATA[1]) );
  INVX0 U91 ( .INP(n73), .ZN(n22) );
  INVX0 U92 ( .INP(n87), .ZN(n88) );
  AND2X1 U93 ( .IN1(n10), .IN2(RX_P_DATA[2]), .Q(ALU_FUN[2]) );
  OR2X1 U95 ( .IN1(cs[2]), .IN2(n11), .Q(n16) );
  INVX0 U96 ( .INP(cs[1]), .ZN(n122) );
  INVX0 U97 ( .INP(n122), .ZN(n123) );
  NOR2X0 U100 ( .IN1(n18), .IN2(cs[3]), .QN(n46) );
  NBUFFX4 U103 ( .INP(n18), .Z(n69) );
  INVX0 U108 ( .INP(n16), .ZN(n86) );
  INVX0 U120 ( .INP(n101), .ZN(n102) );
  INVX0 U121 ( .INP(n101), .ZN(n17) );
  NAND3X1 U122 ( .IN1(n123), .IN2(n86), .IN3(n90), .QN(n67) );
  NOR2X0 U132 ( .IN1(n12), .IN2(n90), .QN(n59) );
  INVX0 U133 ( .INP(n11), .ZN(n20) );
  NOR2X1 U134 ( .IN1(n118), .IN2(n9), .QN(ALU_FUN[0]) );
  AOI222X2 U135 ( .IN1(RdData[2]), .IN2(n109), .IN3(ALU_OUT[10]), .IN4(n73), 
        .IN5(ALU_OUT[2]), .IN6(n110), .QN(n78) );
  NBUFFX4 U136 ( .INP(n73), .Z(n98) );
  NAND2X0 U138 ( .IN1(n7), .IN2(n59), .QN(n70) );
  AND2X2 U139 ( .IN1(n119), .IN2(RX_P_DATA[1]), .Q(ALU_FUN[1]) );
  NAND3X1 U140 ( .IN1(n14), .IN2(n13), .IN3(n86), .QN(n39) );
  NAND3X1 U141 ( .IN1(n86), .IN2(n13), .IN3(n91), .QN(n48) );
  NAND3X4 U143 ( .IN1(n13), .IN2(n11), .IN3(n59), .QN(n58) );
  NOR2X0 U145 ( .IN1(n13), .IN2(cs[3]), .QN(n65) );
  OR3X1 U148 ( .IN1(n16), .IN2(cs[0]), .IN3(n87), .Q(n32) );
  INVX0 U149 ( .INP(n32), .ZN(n10) );
  NBUFFX4 U150 ( .INP(n32), .Z(n9) );
  NBUFFX4 U151 ( .INP(cs[2]), .Z(n18) );
endmodule


module CLK_GATE ( CLK, CLK_EN, SCAN_EN, GATED_CLK );
  input CLK, CLK_EN, SCAN_EN;
  output GATED_CLK;


  CGLPPSX4 U0_CGLPPSX4 ( .CLK(CLK), .EN(CLK_EN), .SE(SCAN_EN), .GCLK(GATED_CLK) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [3:0] a;
  input [3:0] b;
  output [3:0] quotient;
  output [3:0] remainder;
  output divide_by_0;
  wire   n23, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] , \u_div/SumTmp[3][0] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[3][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[2][1] , \u_div/PartRem[2][2] , \u_div/PartRem[3][1] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n14, n15, n16, n17, n18,
         n19, n20, n21, n22;

  FADDX1 \u_div/u_fa_PartRem_0_1_2  ( .A(n4), .B(\u_div/PartRem[2][2] ), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  FADDX1 \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n7), .CI(
        \u_div/CryTmp[0][3] ), .CO(quotient[0]) );
  AND2X1 U1 ( .IN1(\u_div/CryTmp[1][3] ), .IN2(n7), .Q(n23) );
  NAND3X1 U2 ( .IN1(\u_div/SumTmp[2][0] ), .IN2(\u_div/CryTmp[2][2] ), .IN3(
        n12), .QN(n15) );
  XOR2X1 U3 ( .IN1(b[0]), .IN2(a[3]), .Q(\u_div/SumTmp[3][0] ) );
  FADDX1 U4 ( .A(\u_div/CryTmp[1][1] ), .B(n10), .CI(\u_div/PartRem[2][1] ), 
        .CO(\u_div/CryTmp[1][2] ), .S(\u_div/SumTmp[1][1] ) );
  MUX21X1 U6 ( .IN1(n6), .IN2(\u_div/SumTmp[1][1] ), .S(n23), .Q(
        \u_div/PartRem[1][2] ) );
  AND2X1 U7 ( .IN1(n17), .IN2(n16), .Q(n12) );
  NAND2X0 U8 ( .IN1(\u_div/PartRem[1][2] ), .IN2(\u_div/CryTmp[0][2] ), .QN(n1) );
  NAND2X0 U9 ( .IN1(n4), .IN2(\u_div/CryTmp[0][2] ), .QN(n2) );
  NAND2X1 U10 ( .IN1(n4), .IN2(\u_div/PartRem[1][2] ), .QN(n3) );
  NAND3X0 U11 ( .IN1(n1), .IN2(n2), .IN3(n3), .QN(\u_div/CryTmp[0][3] ) );
  NBUFFX2 U12 ( .INP(n17), .Z(n4) );
  INVX0 U14 ( .INP(b[2]), .ZN(n17) );
  NAND2X1 U15 ( .IN1(\u_div/CryTmp[1][3] ), .IN2(n7), .QN(n5) );
  MUX21X1 U16 ( .IN1(\u_div/SumTmp[1][0] ), .IN2(a[1]), .S(n5), .Q(
        \u_div/PartRem[1][1] ) );
  MUX21X1 U17 ( .IN1(\u_div/PartRem[3][1] ), .IN2(\u_div/SumTmp[2][1] ), .S(
        quotient[2]), .Q(\u_div/PartRem[2][2] ) );
  NAND2X0 U18 ( .IN1(a[2]), .IN2(n8), .QN(n14) );
  NAND2X0 U19 ( .IN1(n14), .IN2(n15), .QN(n6) );
  NAND2X1 U20 ( .IN1(n21), .IN2(n9), .QN(\u_div/CryTmp[1][1] ) );
  NBUFFX2 U21 ( .INP(n16), .Z(n7) );
  FADDX1 U22 ( .A(\u_div/CryTmp[2][1] ), .B(n18), .CI(\u_div/PartRem[3][1] ), 
        .CO(\u_div/CryTmp[2][2] ), .S(\u_div/SumTmp[2][1] ) );
  NAND2X1 U23 ( .IN1(\u_div/CryTmp[2][2] ), .IN2(n12), .QN(n8) );
  INVX0 U24 ( .INP(b[3]), .ZN(n16) );
  XOR2X2 U26 ( .IN1(n9), .IN2(a[2]), .Q(\u_div/SumTmp[2][0] ) );
  INVX0 U27 ( .INP(b[1]), .ZN(n10) );
  INVX0 U28 ( .INP(b[1]), .ZN(n18) );
  INVX0 U29 ( .INP(n5), .ZN(quotient[1]) );
  INVX0 U30 ( .INP(n8), .ZN(quotient[2]) );
  NAND2X1 U31 ( .IN1(n14), .IN2(n15), .QN(\u_div/PartRem[2][1] ) );
  INVX0 U32 ( .INP(a[3]), .ZN(n19) );
  INVX0 U33 ( .INP(a[1]), .ZN(n21) );
  INVX0 U34 ( .INP(a[0]), .ZN(n22) );
  INVX0 U35 ( .INP(a[2]), .ZN(n20) );
  NAND2X0 U36 ( .IN1(n9), .IN2(n22), .QN(\u_div/CryTmp[0][1] ) );
  XOR2X2 U37 ( .IN1(n9), .IN2(a[1]), .Q(\u_div/SumTmp[1][0] ) );
  NAND2X0 U38 ( .IN1(n20), .IN2(n9), .QN(\u_div/CryTmp[2][1] ) );
  NAND2X0 U39 ( .IN1(n19), .IN2(b[0]), .QN(\u_div/CryTmp[3][1] ) );
  MUX21X1 U40 ( .IN1(a[3]), .IN2(\u_div/SumTmp[3][0] ), .S(quotient[3]), .Q(
        \u_div/PartRem[3][1] ) );
  AND4X1 U41 ( .IN1(\u_div/CryTmp[3][1] ), .IN2(n18), .IN3(n17), .IN4(n16), 
        .Q(quotient[3]) );
  FADDX1 U5 ( .A(\u_div/CryTmp[0][1] ), .B(n10), .CI(\u_div/PartRem[1][1] ), 
        .CO(\u_div/CryTmp[0][2] ) );
  MUX21X2 U13 ( .IN1(\u_div/PartRem[2][2] ), .IN2(\u_div/SumTmp[1][2] ), .S(
        quotient[1]), .Q(\u_div/PartRem[1][3] ) );
  NBUFFX4 U25 ( .INP(b[0]), .Z(n9) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  FADDX1 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  OR2X1 U1 ( .IN1(n9), .IN2(A[0]), .Q(carry[1]) );
  XOR2X1 U2 ( .IN1(n1), .IN2(A[0]), .Q(DIFF[0]) );
  INVX0 U3 ( .INP(n9), .ZN(n1) );
  INVX0 U4 ( .INP(B[7]), .ZN(n2) );
  INVX0 U5 ( .INP(B[6]), .ZN(n3) );
  INVX0 U6 ( .INP(B[4]), .ZN(n5) );
  INVX0 U7 ( .INP(B[5]), .ZN(n4) );
  INVX0 U8 ( .INP(B[3]), .ZN(n6) );
  INVX0 U9 ( .INP(B[2]), .ZN(n7) );
  INVX0 U10 ( .INP(B[1]), .ZN(n8) );
  INVX0 U11 ( .INP(B[0]), .ZN(n9) );
  INVX0 U12 ( .INP(carry[8]), .ZN(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
  AND2X4 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   net7218, net7217, net7216, net7214, net7207, net10920, net10994,
         net11251, net11250, net11384, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36;

  OR2X1 U2 ( .IN1(A[11]), .IN2(B[11]), .Q(n8) );
  NAND2X1 U3 ( .IN1(n8), .IN2(net7216), .QN(n10) );
  AND3X1 U4 ( .IN1(n10), .IN2(n5), .IN3(n17), .Q(n2) );
  XNOR2X1 U5 ( .IN1(net11384), .IN2(net7218), .Q(SUM[10]) );
  OAI21X1 U6 ( .IN1(A[11]), .IN2(B[11]), .IN3(n5), .QN(net10920) );
  OA21X1 U7 ( .IN1(net7217), .IN2(net11384), .IN3(n6), .Q(n1) );
  NAND2X1 U8 ( .IN1(n11), .IN2(n12), .QN(net10994) );
  INVX0 U9 ( .INP(net7217), .ZN(n7) );
  INVX0 U10 ( .INP(net7216), .ZN(n6) );
  OR2X1 U11 ( .IN1(A[8]), .IN2(B[8]), .Q(n15) );
  XOR2X1 U12 ( .IN1(n14), .IN2(n32), .Q(SUM[9]) );
  NOR2X0 U13 ( .IN1(net7216), .IN2(net7217), .QN(net7218) );
  XOR2X1 U14 ( .IN1(B[7]), .IN2(n19), .Q(SUM[7]) );
  AND2X1 U15 ( .IN1(n10), .IN2(n5), .Q(n12) );
  NAND2X1 U16 ( .IN1(net7214), .IN2(n9), .QN(n11) );
  NAND2X1 U17 ( .IN1(B[11]), .IN2(A[11]), .QN(n5) );
  XOR3X1 U18 ( .IN1(B[12]), .IN2(A[12]), .IN3(net11251), .Q(SUM[12]) );
  NAND2X0 U19 ( .IN1(n2), .IN2(n11), .QN(net7207) );
  INVX0 U21 ( .INP(n36), .ZN(n4) );
  NAND2X1 U22 ( .IN1(n3), .IN2(n4), .QN(n31) );
  INVX0 U24 ( .INP(net7214), .ZN(net11384) );
  AND2X1 U25 ( .IN1(n7), .IN2(n8), .Q(n9) );
  INVX0 U26 ( .INP(n31), .ZN(n13) );
  INVX0 U27 ( .INP(n13), .ZN(n14) );
  INVX0 U28 ( .INP(n15), .ZN(n16) );
  INVX0 U29 ( .INP(net10994), .ZN(net11250) );
  INVX0 U30 ( .INP(net11250), .ZN(net11251) );
  INVX0 U31 ( .INP(A[12]), .ZN(n17) );
  INVX0 U32 ( .INP(A[7]), .ZN(n18) );
  INVX0 U33 ( .INP(n18), .ZN(n19) );
  XOR2X1 U34 ( .IN1(n27), .IN2(B[13]), .Q(SUM[13]) );
  XOR2X1 U35 ( .IN1(n1), .IN2(net10920), .Q(SUM[11]) );
  INVX0 U36 ( .INP(n34), .ZN(n30) );
  XNOR2X1 U37 ( .IN1(n29), .IN2(n35), .Q(SUM[8]) );
  NBUFFX2 U38 ( .INP(A[0]), .Z(SUM[0]) );
  NBUFFX2 U39 ( .INP(A[1]), .Z(SUM[1]) );
  NBUFFX2 U40 ( .INP(A[2]), .Z(SUM[2]) );
  NBUFFX2 U41 ( .INP(A[3]), .Z(SUM[3]) );
  NBUFFX2 U42 ( .INP(A[4]), .Z(SUM[4]) );
  NBUFFX2 U43 ( .INP(A[5]), .Z(SUM[5]) );
  NBUFFX2 U44 ( .INP(A[6]), .Z(SUM[6]) );
  AO22X1 U45 ( .IN1(net7207), .IN2(B[12]), .IN3(net10994), .IN4(A[12]), .Q(n27) );
  AND2X1 U46 ( .IN1(A[7]), .IN2(B[7]), .Q(n28) );
  INVX0 U47 ( .INP(n28), .ZN(n29) );
  NOR2X0 U48 ( .IN1(n33), .IN2(n34), .QN(n32) );
  NOR2X0 U49 ( .IN1(n36), .IN2(n16), .QN(n35) );
  NOR2X0 U50 ( .IN1(B[10]), .IN2(A[10]), .QN(net7217) );
  AND2X1 U51 ( .IN1(B[10]), .IN2(A[10]), .Q(net7216) );
  AO21X1 U52 ( .IN1(n31), .IN2(n30), .IN3(n33), .Q(net7214) );
  AND2X1 U53 ( .IN1(B[9]), .IN2(A[9]), .Q(n33) );
  NOR2X0 U54 ( .IN1(B[9]), .IN2(A[9]), .QN(n34) );
  NAND2X0 U20 ( .IN1(n15), .IN2(n28), .QN(n3) );
  AND2X2 U23 ( .IN1(A[8]), .IN2(B[8]), .Q(n36) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][0] , \ab[2][7] ,
         \ab[2][0] , \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][2] ,
         \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] , \CARRYB[7][4] ,
         \CARRYB[7][3] , \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] ,
         \CARRYB[6][4] , \CARRYB[6][0] , \CARRYB[5][6] , \CARRYB[5][5] ,
         \CARRYB[5][0] , \CARRYB[4][6] , \CARRYB[3][6] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][0] , \SUMB[6][6] ,
         \SUMB[6][5] , \SUMB[5][6] , \SUMB[4][6] , \SUMB[1][1] , \A1[12] ,
         \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] ,
         \A1[3] , \A1[2] , \A1[1] , \A1[0] , \A2[9] , \A2[8] , net7493,
         net7494, net7495, net9238, net9280, net9289, net9323, net9328,
         net9334, net9341, net9389, net9388, net9400, net9471, net9470,
         net10887, net10959, net10958, net11015, net11014, net11013, net11012,
         net11041, net11156, net11155, net11153, net11212, net11225, net11229,
         net11286, net11429, net11428, net11462, net9279, net9277, net7496,
         \ab[4][1] , \ab[3][1] , \ab[2][1] , \SUMB[4][1] , \SUMB[3][1] ,
         \SUMB[2][1] , \SUMB[1][2] , \CARRYB[4][1] , \CARRYB[4][0] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][1] , net7500, net11039,
         \ab[3][5] , \ab[3][4] , \ab[2][5] , \SUMB[6][1] , \SUMB[2][5] ,
         \SUMB[1][6] , \CARRYB[6][1] , \CARRYB[5][2] , \CARRYB[4][3] ,
         \CARRYB[3][4] , \CARRYB[2][5] , net9368, net9355, net9329, \ab[2][4] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[3][4] ,
         \SUMB[2][4] , \SUMB[1][5] , \CARRYB[5][1] , \CARRYB[4][2] ,
         \CARRYB[3][3] , \CARRYB[2][4] , \SUMB[7][1] , \SUMB[6][2] ,
         \SUMB[5][3] , \SUMB[4][4] , \CARRYB[7][1] , \CARRYB[6][2] ,
         \CARRYB[5][3] , net9297, net11161, \ab[2][2] , \ab[1][3] , \ab[0][4] ,
         \SUMB[2][2] , \SUMB[1][3] , \CARRYB[2][2] , net9369, net9298, net9287,
         net11211, net10923, \ab[3][3] , \ab[3][2] , \ab[2][3] , \SUMB[3][3] ,
         \SUMB[3][2] , \SUMB[2][3] , \SUMB[1][4] , \CARRYB[3][2] ,
         \CARRYB[2][3] , net9401, net9386, net9295, net9288, net7498, net7497,
         net7488, net11466, net11465, net11130, \ab[1][2] , \ab[0][3] ,
         net9354, net9340, net11527, \ab[2][6] , \ab[1][7] , \SUMB[7][3] ,
         \SUMB[7][2] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[5][5] , \SUMB[5][4] ,
         \SUMB[4][5] , \SUMB[3][6] , \SUMB[3][5] , \SUMB[2][6] ,
         \CARRYB[7][2] , \CARRYB[6][3] , \CARRYB[5][4] , \CARRYB[4][5] ,
         \CARRYB[4][4] , \CARRYB[3][5] , \CARRYB[2][6] , n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n15, n16;

  FADDX1 S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  FADDX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  FADDX1 S3_4_6 ( .A(\ab[4][6] ), .B(\ab[3][7] ), .CI(\CARRYB[3][6] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  FADDX1 S1_2_0 ( .A(\ab[2][0] ), .B(n3), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  FADDX1 S1_3_0 ( .A(\ab[3][0] ), .B(\SUMB[2][1] ), .CI(\CARRYB[2][0] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  FADDX1 S2_2_1 ( .A(n9), .B(\ab[2][1] ), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  FADDX1 S1_4_0 ( .A(\ab[4][0] ), .B(\SUMB[3][1] ), .CI(\CARRYB[3][0] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  FADDX1 S1_5_0 ( .A(\ab[5][0] ), .B(\SUMB[4][1] ), .CI(\CARRYB[4][0] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  FADDX1 S2_2_5 ( .A(n8), .B(\ab[2][5] ), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  FADDX1 S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  FADDX1 S2_3_4 ( .A(\CARRYB[2][4] ), .B(\ab[3][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  FADDX1 S2_4_3 ( .A(\CARRYB[3][3] ), .B(\ab[4][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_6_1 ( .A(\CARRYB[5][1] ), .B(\ab[6][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_5_1 ( .A(\CARRYB[4][1] ), .B(\ab[5][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_3 ( .A(\CARRYB[4][3] ), .B(\ab[5][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_6_2 ( .A(\CARRYB[5][2] ), .B(\ab[6][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S4_1 ( .A(\CARRYB[6][1] ), .B(\ab[7][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_3_1 ( .A(\SUMB[2][2] ), .B(\ab[3][1] ), .CI(\CARRYB[2][1] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_3 ( .A(\CARRYB[2][3] ), .B(\ab[3][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_2_3 ( .A(net11211), .B(\ab[2][3] ), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  FADDX1 S2_4_1 ( .A(\SUMB[3][2] ), .B(\ab[4][1] ), .CI(\CARRYB[3][1] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_3_2 ( .A(\CARRYB[2][2] ), .B(\ab[3][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_2_2 ( .A(net11130), .B(\ab[2][2] ), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S3_3_6 ( .A(\ab[3][6] ), .B(\ab[2][7] ), .CI(\CARRYB[2][6] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  FADDX1 S3_2_6 ( .A(\ab[1][7] ), .B(\ab[2][6] ), .CI(n5), .CO(\CARRYB[2][6] ), 
        .S(\SUMB[2][6] ) );
  FADDX1 S2_4_4 ( .A(\CARRYB[3][4] ), .B(\ab[4][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_3_5 ( .A(\CARRYB[2][5] ), .B(\ab[3][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  FADDX1 S2_5_5 ( .A(\SUMB[4][6] ), .B(\CARRYB[4][5] ), .CI(\ab[5][5] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_4_5 ( .A(\SUMB[3][6] ), .B(\ab[4][5] ), .CI(\CARRYB[3][5] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_6_4 ( .A(\CARRYB[5][4] ), .B(\ab[6][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_5_4 ( .A(\CARRYB[4][4] ), .B(\ab[5][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S4_3 ( .A(\CARRYB[6][3] ), .B(\ab[7][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_6_3 ( .A(\CARRYB[5][3] ), .B(\ab[6][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S1_6_0 ( .A(\ab[6][0] ), .B(\SUMB[5][1] ), .CI(\CARRYB[5][0] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  FADDX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  FADDX1 S2_4_2 ( .A(\CARRYB[3][2] ), .B(\ab[4][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S4_2 ( .A(\CARRYB[6][2] ), .B(\ab[7][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  XOR2X1 U2 ( .IN1(\ab[0][3] ), .IN2(\ab[1][2] ), .Q(\SUMB[1][2] ) );
  XOR2X1 U3 ( .IN1(\ab[0][2] ), .IN2(\ab[1][1] ), .Q(\SUMB[1][1] ) );
  NBUFFX2 U6 ( .INP(n6), .Z(net10923) );
  AND2X1 U9 ( .IN1(\ab[1][4] ), .IN2(\ab[0][5] ), .Q(n7) );
  NOR2X0 U10 ( .IN1(net9323), .IN2(net9470), .QN(\ab[4][5] ) );
  AND2X1 U11 ( .IN1(\ab[1][3] ), .IN2(\ab[0][4] ), .Q(net11211) );
  XOR2X1 U12 ( .IN1(\ab[1][3] ), .IN2(\ab[0][4] ), .Q(\SUMB[1][3] ) );
  NOR2X0 U13 ( .IN1(net9297), .IN2(net9471), .QN(\ab[4][2] ) );
  NOR2X0 U14 ( .IN1(net7496), .IN2(net11429), .QN(\ab[0][1] ) );
  XOR2X1 U15 ( .IN1(\CARRYB[7][0] ), .IN2(\SUMB[7][1] ), .Q(\A1[6] ) );
  AND2X1 U16 ( .IN1(\ab[1][0] ), .IN2(\ab[0][1] ), .Q(n3) );
  INVX0 U17 ( .INP(net7494), .ZN(net11153) );
  AND2X1 U18 ( .IN1(\CARRYB[7][6] ), .IN2(\ab[7][7] ), .Q(n4) );
  NOR2X0 U19 ( .IN1(net9334), .IN2(net11225), .QN(\ab[2][6] ) );
  INVX0 U20 ( .INP(n6), .ZN(net9354) );
  INVX0 U21 ( .INP(net9354), .ZN(net9355) );
  INVX0 U22 ( .INP(A[2]), .ZN(n6) );
  NOR2X0 U23 ( .IN1(net11041), .IN2(net9471), .QN(\ab[4][6] ) );
  NOR2X0 U24 ( .IN1(net11156), .IN2(net11041), .QN(\ab[7][6] ) );
  NOR2X0 U25 ( .IN1(net9388), .IN2(net11527), .QN(\ab[1][7] ) );
  INVX0 U26 ( .INP(B[7]), .ZN(net11527) );
  INVX0 U27 ( .INP(B[7]), .ZN(net9340) );
  NOR2X0 U28 ( .IN1(net9340), .IN2(net9400), .QN(\ab[0][7] ) );
  INVX0 U29 ( .INP(net11466), .ZN(net9388) );
  AND2X1 U30 ( .IN1(\ab[0][3] ), .IN2(\ab[1][2] ), .Q(net11130) );
  NOR2X0 U31 ( .IN1(net9401), .IN2(net9288), .QN(\ab[0][3] ) );
  INVX0 U32 ( .INP(B[3]), .ZN(net9288) );
  NOR2X0 U33 ( .IN1(net9288), .IN2(net11161), .QN(\ab[1][3] ) );
  INVX0 U34 ( .INP(B[3]), .ZN(net7498) );
  INVX0 U35 ( .INP(net7498), .ZN(net9287) );
  INVX0 U36 ( .INP(A[0]), .ZN(net9401) );
  INVX0 U37 ( .INP(net9401), .ZN(net11428) );
  AND2X1 U38 ( .IN1(net11466), .IN2(net9295), .Q(\ab[1][2] ) );
  INVX0 U39 ( .INP(net7497), .ZN(net9295) );
  INVX0 U40 ( .INP(net9295), .ZN(net9297) );
  INVX0 U41 ( .INP(B[2]), .ZN(net7497) );
  INVX0 U42 ( .INP(net7497), .ZN(net11229) );
  INVX0 U43 ( .INP(net11465), .ZN(net11466) );
  INVX0 U44 ( .INP(net9386), .ZN(net11465) );
  INVX0 U45 ( .INP(net7488), .ZN(net9386) );
  INVX0 U46 ( .INP(net9386), .ZN(net9389) );
  INVX0 U47 ( .INP(A[1]), .ZN(net7488) );
  INVX0 U48 ( .INP(A[0]), .ZN(net9400) );
  NOR2X0 U49 ( .IN1(net7498), .IN2(net10923), .QN(\ab[2][3] ) );
  NOR2X0 U50 ( .IN1(net9279), .IN2(net10923), .QN(\ab[2][1] ) );
  NOR2X0 U51 ( .IN1(net9297), .IN2(net10923), .QN(\ab[2][2] ) );
  NOR2X0 U52 ( .IN1(net7498), .IN2(net9368), .QN(\ab[3][3] ) );
  INVX0 U53 ( .INP(net9287), .ZN(net9289) );
  XOR2X1 U54 ( .IN1(\ab[0][5] ), .IN2(\ab[1][4] ), .Q(\SUMB[1][4] ) );
  NOR2X0 U55 ( .IN1(net9298), .IN2(net9369), .QN(\ab[3][2] ) );
  INVX0 U56 ( .INP(A[3]), .ZN(net9369) );
  NOR2X0 U57 ( .IN1(net9280), .IN2(net9369), .QN(\ab[3][1] ) );
  NOR2X0 U58 ( .IN1(net9341), .IN2(net9369), .QN(\ab[3][7] ) );
  INVX0 U59 ( .INP(A[3]), .ZN(net9368) );
  INVX0 U60 ( .INP(net11229), .ZN(net9298) );
  NOR2X0 U61 ( .IN1(net9298), .IN2(net11013), .QN(\ab[6][2] ) );
  NOR2X0 U62 ( .IN1(net9298), .IN2(net10959), .QN(\ab[5][2] ) );
  NOR2X0 U63 ( .IN1(net11161), .IN2(net9328), .QN(\ab[1][4] ) );
  NOR2X0 U64 ( .IN1(net7500), .IN2(net11161), .QN(\ab[1][5] ) );
  NOR2X0 U65 ( .IN1(net9328), .IN2(net9400), .QN(\ab[0][4] ) );
  AND2X1 U66 ( .IN1(\CARRYB[7][0] ), .IN2(\SUMB[7][1] ), .Q(net10887) );
  NOR2X0 U67 ( .IN1(net9329), .IN2(net9355), .QN(\ab[2][4] ) );
  NOR2X0 U68 ( .IN1(net11039), .IN2(net9355), .QN(\ab[2][5] ) );
  INVX0 U69 ( .INP(B[4]), .ZN(net9329) );
  NOR2X0 U70 ( .IN1(net9329), .IN2(net9470), .QN(\ab[4][4] ) );
  NOR2X0 U71 ( .IN1(net11156), .IN2(net9329), .QN(\ab[7][4] ) );
  NOR2X0 U72 ( .IN1(net9238), .IN2(net9368), .QN(\ab[3][0] ) );
  NOR2X0 U73 ( .IN1(net11039), .IN2(net9368), .QN(\ab[3][5] ) );
  INVX0 U75 ( .INP(B[5]), .ZN(net11039) );
  INVX0 U76 ( .INP(B[5]), .ZN(net9323) );
  INVX0 U77 ( .INP(B[5]), .ZN(net7500) );
  AND2X1 U78 ( .IN1(\ab[0][6] ), .IN2(\ab[1][5] ), .Q(n8) );
  NOR2X0 U79 ( .IN1(net11212), .IN2(net9369), .QN(\ab[3][4] ) );
  NOR2X0 U80 ( .IN1(net11041), .IN2(net9368), .QN(\ab[3][6] ) );
  INVX0 U81 ( .INP(net9277), .ZN(net9279) );
  NOR2X0 U82 ( .IN1(net9279), .IN2(net9470), .QN(\ab[4][1] ) );
  NOR2X0 U83 ( .IN1(net7494), .IN2(net9279), .QN(\ab[7][1] ) );
  INVX0 U84 ( .INP(net7496), .ZN(net9277) );
  INVX0 U85 ( .INP(net9277), .ZN(net9280) );
  INVX0 U86 ( .INP(B[1]), .ZN(net7496) );
  AND2X1 U87 ( .IN1(\ab[0][2] ), .IN2(\ab[1][1] ), .Q(n9) );
  INVX0 U88 ( .INP(net11428), .ZN(net11462) );
  INVX0 U89 ( .INP(net11428), .ZN(net11429) );
  NOR2X0 U90 ( .IN1(net11462), .IN2(net11286), .QN(\ab[0][2] ) );
  INVX0 U91 ( .INP(net11229), .ZN(net11286) );
  INVX0 U92 ( .INP(net9354), .ZN(net11225) );
  NOR2X0 U93 ( .IN1(net9238), .IN2(net11429), .QN(PRODUCT[0]) );
  INVX0 U94 ( .INP(B[4]), .ZN(net11212) );
  INVX0 U95 ( .INP(net11153), .ZN(net11155) );
  INVX0 U96 ( .INP(net11153), .ZN(net11156) );
  INVX0 U97 ( .INP(B[6]), .ZN(net11041) );
  INVX0 U98 ( .INP(net11012), .ZN(net11013) );
  INVX0 U99 ( .INP(net11012), .ZN(net11014) );
  INVX0 U100 ( .INP(net11012), .ZN(net11015) );
  INVX0 U101 ( .INP(A[5]), .ZN(net10958) );
  INVX0 U102 ( .INP(A[5]), .ZN(net10959) );
  NOR2X0 U103 ( .IN1(net7495), .IN2(net9389), .QN(\ab[1][0] ) );
  AND2X1 U104 ( .IN1(\CARRYB[7][3] ), .IN2(\SUMB[7][4] ), .Q(n10) );
  AND2X1 U105 ( .IN1(\CARRYB[7][4] ), .IN2(\SUMB[7][5] ), .Q(n11) );
  AND2X1 U106 ( .IN1(\CARRYB[7][5] ), .IN2(\SUMB[7][6] ), .Q(n12) );
  INVX0 U107 ( .INP(A[6]), .ZN(net7493) );
  INVX0 U108 ( .INP(A[7]), .ZN(net7494) );
  XOR2X1 U109 ( .IN1(\CARRYB[7][3] ), .IN2(\SUMB[7][4] ), .Q(\A1[9] ) );
  XOR2X1 U110 ( .IN1(\CARRYB[7][4] ), .IN2(\SUMB[7][5] ), .Q(\A1[10] ) );
  XOR2X1 U111 ( .IN1(\CARRYB[7][5] ), .IN2(\SUMB[7][6] ), .Q(\A1[11] ) );
  XOR2X1 U112 ( .IN1(\CARRYB[7][6] ), .IN2(\ab[7][7] ), .Q(\A1[12] ) );
  XOR2X1 U113 ( .IN1(\ab[0][1] ), .IN2(\ab[1][0] ), .Q(PRODUCT[1]) );
  INVX0 U114 ( .INP(A[4]), .ZN(net9470) );
  INVX0 U115 ( .INP(A[4]), .ZN(net9471) );
  INVX0 U116 ( .INP(B[7]), .ZN(net9341) );
  INVX0 U117 ( .INP(B[6]), .ZN(net9334) );
  INVX0 U118 ( .INP(B[4]), .ZN(net9328) );
  INVX0 U119 ( .INP(B[0]), .ZN(net9238) );
  INVX0 U120 ( .INP(B[0]), .ZN(net7495) );
  NOR2X0 U122 ( .IN1(net11155), .IN2(net9341), .QN(\ab[7][7] ) );
  NOR2X0 U123 ( .IN1(net11155), .IN2(net9323), .QN(\ab[7][5] ) );
  NOR2X0 U124 ( .IN1(net11156), .IN2(net9289), .QN(\ab[7][3] ) );
  NOR2X0 U125 ( .IN1(net7494), .IN2(net11286), .QN(\ab[7][2] ) );
  NOR2X0 U126 ( .IN1(net11155), .IN2(net9238), .QN(\ab[7][0] ) );
  NOR2X0 U127 ( .IN1(net11527), .IN2(net11014), .QN(\ab[6][7] ) );
  NOR2X0 U128 ( .IN1(net11015), .IN2(net11041), .QN(\ab[6][6] ) );
  NOR2X0 U129 ( .IN1(net9323), .IN2(net11014), .QN(\ab[6][5] ) );
  NOR2X0 U131 ( .IN1(net9289), .IN2(net11013), .QN(\ab[6][3] ) );
  NOR2X0 U132 ( .IN1(net9280), .IN2(net11014), .QN(\ab[6][1] ) );
  NOR2X0 U133 ( .IN1(net9238), .IN2(net11015), .QN(\ab[6][0] ) );
  NOR2X0 U134 ( .IN1(net11527), .IN2(net10958), .QN(\ab[5][7] ) );
  NOR2X0 U135 ( .IN1(net11041), .IN2(net10959), .QN(\ab[5][6] ) );
  NOR2X0 U136 ( .IN1(net9323), .IN2(net10958), .QN(\ab[5][5] ) );
  NOR2X0 U137 ( .IN1(net11212), .IN2(net10959), .QN(\ab[5][4] ) );
  NOR2X0 U138 ( .IN1(net9289), .IN2(net10958), .QN(\ab[5][3] ) );
  NOR2X0 U139 ( .IN1(net9280), .IN2(net10959), .QN(\ab[5][1] ) );
  NOR2X0 U140 ( .IN1(net7495), .IN2(net10958), .QN(\ab[5][0] ) );
  NOR2X0 U141 ( .IN1(net9341), .IN2(net9470), .QN(\ab[4][7] ) );
  NOR2X0 U142 ( .IN1(net9289), .IN2(net9471), .QN(\ab[4][3] ) );
  NOR2X0 U143 ( .IN1(net9238), .IN2(net9471), .QN(\ab[4][0] ) );
  NOR2X0 U144 ( .IN1(net9341), .IN2(net11225), .QN(\ab[2][7] ) );
  NOR2X0 U145 ( .IN1(net7495), .IN2(net11225), .QN(\ab[2][0] ) );
  NOR2X0 U146 ( .IN1(net9334), .IN2(net9389), .QN(\ab[1][6] ) );
  NOR2X0 U147 ( .IN1(net7496), .IN2(net9388), .QN(\ab[1][1] ) );
  NOR2X0 U148 ( .IN1(net9334), .IN2(net9400), .QN(\ab[0][6] ) );
  NOR2X0 U149 ( .IN1(net7500), .IN2(net9401), .QN(\ab[0][5] ) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n4, n12, n11, n10, \A2[9] , \A2[8] , net10887, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  FADDX2 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  NOR2X1 U4 ( .IN1(net11212), .IN2(net11015), .QN(\ab[6][4] ) );
  NBUFFX4 U5 ( .INP(net7488), .Z(net11161) );
  XOR2X2 U7 ( .IN1(\ab[0][6] ), .IN2(\ab[1][5] ), .Q(\SUMB[1][5] ) );
  XOR2X2 U8 ( .IN1(\ab[0][7] ), .IN2(\ab[1][6] ), .Q(\SUMB[1][6] ) );
  AND2X4 U74 ( .IN1(\ab[0][7] ), .IN2(\ab[1][6] ), .Q(n5) );
  INVX1 U130 ( .INP(net7493), .ZN(net11012) );
  XOR2X1 U151 ( .IN1(\CARRYB[7][2] ), .IN2(\SUMB[7][3] ), .Q(\A1[8] ) );
  NAND2X2 U152 ( .IN1(\CARRYB[7][2] ), .IN2(\SUMB[7][3] ), .QN(n15) );
  INVX1 U153 ( .INP(n15), .ZN(\A2[9] ) );
  XOR2X1 U154 ( .IN1(\CARRYB[7][1] ), .IN2(\SUMB[7][2] ), .Q(\A1[7] ) );
  NAND2X2 U155 ( .IN1(\CARRYB[7][1] ), .IN2(\SUMB[7][2] ), .QN(n16) );
  INVX1 U156 ( .INP(n16), .ZN(\A2[8] ) );
endmodule


module ALU ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N149, N150, n33, n34, n35, n36, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n50, n52, n53, n54, n55, n56, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n3, n5,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n37, n49, n51,
         n57, n58, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n226, n227, n228, n229, n230;
  wire   [15:0] ALU_OUT_Comb;

  DFFARX1 \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CLK(CLK), .RSTB(n189), .Q(
        ALU_OUT[8]) );
  DFFARX1 \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CLK(CLK), .RSTB(n189), .Q(
        ALU_OUT[7]) );
  DFFARX1 \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CLK(CLK), .RSTB(n189), .Q(
        ALU_OUT[6]) );
  DFFARX1 \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[5]) );
  DFFARX1 \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[4]) );
  DFFARX1 \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[3]) );
  DFFARX1 \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[2]) );
  DFFARX1 \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[1]) );
  DFFARX1 \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CLK(CLK), .RSTB(n188), .Q(
        ALU_OUT[0]) );
  DFFARX1 OUT_VALID_reg ( .D(n21), .CLK(CLK), .RSTB(n188), .Q(OUT_VALID) );
  AOI221X1 U53 ( .IN1(n181), .IN2(n36), .IN3(N113), .IN4(n153), .IN5(n38), 
        .QN(n35) );
  AO21X1 U54 ( .IN1(N95), .IN2(n39), .IN3(n40), .Q(n38) );
  AO221X1 U55 ( .IN1(n187), .IN2(n181), .IN3(N112), .IN4(n153), .IN5(n44), .Q(
        n42) );
  AO22X1 U56 ( .IN1(N94), .IN2(n39), .IN3(N103), .IN4(n45), .Q(n44) );
  AO221X1 U57 ( .IN1(n179), .IN2(n36), .IN3(n169), .IN4(n219), .IN5(n46), .Q(
        n41) );
  AO221X1 U60 ( .IN1(n154), .IN2(n219), .IN3(n184), .IN4(n181), .IN5(n167), 
        .Q(n47) );
  AO222X1 U62 ( .IN1(n186), .IN2(n179), .IN3(n169), .IN4(n220), .IN5(N111), 
        .IN6(n152), .Q(n54) );
  AO221X1 U63 ( .IN1(n117), .IN2(n36), .IN3(n55), .IN4(n181), .IN5(n56), .Q(
        n52) );
  AO222X1 U68 ( .IN1(n117), .IN2(n186), .IN3(n168), .IN4(n221), .IN5(N110), 
        .IN6(n153), .Q(n61) );
  AO221X1 U69 ( .IN1(n175), .IN2(n36), .IN3(n55), .IN4(n179), .IN5(n62), .Q(
        n59) );
  AO221X1 U71 ( .IN1(n117), .IN2(n58), .IN3(n184), .IN4(n221), .IN5(n186), .Q(
        n64) );
  AO221X1 U72 ( .IN1(n155), .IN2(n221), .IN3(n177), .IN4(n183), .IN5(n167), 
        .Q(n63) );
  AO222X1 U74 ( .IN1(n175), .IN2(n187), .IN3(n169), .IN4(n222), .IN5(N109), 
        .IN6(n153), .Q(n67) );
  AO221X1 U75 ( .IN1(n173), .IN2(n36), .IN3(n55), .IN4(n177), .IN5(n68), .Q(
        n65) );
  AO221X1 U78 ( .IN1(n154), .IN2(n222), .IN3(n175), .IN4(n182), .IN5(n167), 
        .Q(n69) );
  AO22X1 U79 ( .IN1(N90), .IN2(n39), .IN3(N99), .IN4(n45), .Q(n75) );
  AO222X1 U80 ( .IN1(N124), .IN2(n76), .IN3(n143), .IN4(n186), .IN5(N108), 
        .IN6(n153), .Q(n74) );
  AO221X1 U83 ( .IN1(n173), .IN2(n112), .IN3(n184), .IN4(n113), .IN5(n185), 
        .Q(n78) );
  AO221X1 U84 ( .IN1(n155), .IN2(n113), .IN3(n143), .IN4(n182), .IN5(n167), 
        .Q(n77) );
  AO22X1 U85 ( .IN1(N89), .IN2(n39), .IN3(N98), .IN4(n45), .Q(n83) );
  AO222X1 U86 ( .IN1(N123), .IN2(n76), .IN3(n146), .IN4(n187), .IN5(N107), 
        .IN6(n153), .Q(n82) );
  AO222X1 U87 ( .IN1(n143), .IN2(n55), .IN3(n121), .IN4(n36), .IN5(n169), 
        .IN6(n223), .Q(n81) );
  AO221X1 U89 ( .IN1(n171), .IN2(n112), .IN3(n183), .IN4(n223), .IN5(n185), 
        .Q(n85) );
  AO221X1 U90 ( .IN1(n154), .IN2(n223), .IN3(n145), .IN4(n182), .IN5(n168), 
        .Q(n84) );
  AO22X1 U91 ( .IN1(N88), .IN2(n39), .IN3(N97), .IN4(n45), .Q(n90) );
  AO222X1 U92 ( .IN1(N122), .IN2(n76), .IN3(n57), .IN4(n186), .IN5(N106), 
        .IN6(n153), .Q(n89) );
  AO222X1 U93 ( .IN1(n145), .IN2(n55), .IN3(n170), .IN4(n36), .IN5(n168), 
        .IN6(n224), .Q(n88) );
  AND2X1 U94 ( .IN1(n91), .IN2(n92), .Q(n36) );
  AO221X1 U96 ( .IN1(n31), .IN2(n112), .IN3(n184), .IN4(n224), .IN5(n185), .Q(
        n94) );
  AO221X1 U97 ( .IN1(n154), .IN2(n224), .IN3(n31), .IN4(n182), .IN5(n169), .Q(
        n93) );
  AO21X1 U98 ( .IN1(N120), .IN2(n33), .IN3(n51), .Q(ALU_OUT_Comb[15]) );
  AO21X1 U99 ( .IN1(N119), .IN2(n33), .IN3(n30), .Q(ALU_OUT_Comb[14]) );
  AO221X1 U113 ( .IN1(n121), .IN2(n55), .IN3(n168), .IN4(n207), .IN5(n105), 
        .Q(n98) );
  AO22X1 U115 ( .IN1(N150), .IN2(n92), .IN3(N149), .IN4(n109), .Q(n108) );
  AO221X1 U116 ( .IN1(n136), .IN2(n58), .IN3(n183), .IN4(n207), .IN5(n185), 
        .Q(n107) );
  AO221X1 U119 ( .IN1(n155), .IN2(n207), .IN3(n136), .IN4(n182), .IN5(n168), 
        .Q(n106) );
  AND2X1 U123 ( .IN1(n91), .IN2(n109), .Q(n55) );
  DFFARX1 \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CLK(CLK), .RSTB(n190), 
        .Q(ALU_OUT[14]) );
  DFFARX1 \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CLK(CLK), .RSTB(n189), 
        .Q(ALU_OUT[10]) );
  DFFARX1 \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CLK(CLK), .RSTB(n189), .Q(
        ALU_OUT[9]) );
  DFFARX1 \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CLK(CLK), .RSTB(n190), 
        .Q(ALU_OUT[13]) );
  DFFARX1 \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CLK(CLK), .RSTB(n189), 
        .Q(ALU_OUT[12]) );
  DFFARX1 \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CLK(CLK), .RSTB(n189), 
        .Q(ALU_OUT[11]) );
  DFFARX1 \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CLK(CLK), .RSTB(n190), 
        .Q(ALU_OUT[15]) );
  NAND3X0 U14 ( .IN1(n8), .IN2(n9), .IN3(n10), .QN(n68) );
  AO221X2 U15 ( .IN1(n175), .IN2(n58), .IN3(n183), .IN4(n222), .IN5(n185), .Q(
        n70) );
  NAND3X0 U19 ( .IN1(n11), .IN2(n12), .IN3(n13), .QN(n197) );
  OR4X1 U21 ( .IN1(n203), .IN2(n202), .IN3(n206), .IN4(n205), .Q(n18) );
  AO222X1 U24 ( .IN1(n229), .IN2(n55), .IN3(n127), .IN4(n36), .IN5(n214), 
        .IN6(n113), .Q(n73) );
  NBUFFX2 U27 ( .INP(A[5]), .Z(n177) );
  AND2X1 U30 ( .IN1(n20), .IN2(n15), .Q(N149) );
  NBUFFX2 U35 ( .INP(n50), .Z(n182) );
  NBUFFX2 U36 ( .INP(n50), .Z(n183) );
  NBUFFX2 U37 ( .INP(n50), .Z(n184) );
  NBUFFX2 U40 ( .INP(n122), .Z(n136) );
  NBUFFX2 U41 ( .INP(n122), .Z(n170) );
  NBUFFX2 U44 ( .INP(A[7]), .Z(n180) );
  NBUFFX2 U48 ( .INP(A[3]), .Z(n173) );
  NBUFFX2 U51 ( .INP(n116), .Z(n138) );
  NBUFFX2 U52 ( .INP(n45), .Z(n142) );
  NBUFFX2 U65 ( .INP(A[7]), .Z(n181) );
  NBUFFX2 U66 ( .INP(B[4]), .Z(n150) );
  NBUFFX2 U67 ( .INP(B[5]), .Z(n151) );
  AND2X1 U70 ( .IN1(n193), .IN2(n121), .Q(n192) );
  OR2X1 U73 ( .IN1(n119), .IN2(n181), .Q(n200) );
  NAND3X0 U76 ( .IN1(n25), .IN2(n49), .IN3(n29), .QN(n96) );
  NBUFFX2 U81 ( .INP(n120), .Z(n137) );
  AO221X1 U82 ( .IN1(n84), .IN2(n159), .IN3(n160), .IN4(n85), .IN5(n22), .Q(
        n80) );
  NBUFFX2 U88 ( .INP(n127), .Z(n171) );
  AO221X1 U100 ( .IN1(n47), .IN2(n119), .IN3(n137), .IN4(n48), .IN5(n22), .Q(
        n46) );
  AO21X1 U101 ( .IN1(N117), .IN2(n33), .IN3(n30), .Q(ALU_OUT_Comb[12]) );
  AO21X1 U102 ( .IN1(N118), .IN2(n33), .IN3(n30), .Q(ALU_OUT_Comb[13]) );
  AO221X1 U103 ( .IN1(N96), .IN2(n142), .IN3(N87), .IN4(n39), .IN5(n100), .Q(
        n99) );
  AO21X1 U108 ( .IN1(N114), .IN2(n33), .IN3(n51), .Q(ALU_OUT_Comb[9]) );
  AO21X1 U109 ( .IN1(N115), .IN2(n33), .IN3(n51), .Q(ALU_OUT_Comb[10]) );
  NBUFFX2 U111 ( .INP(A[3]), .Z(n172) );
  NBUFFX2 U114 ( .INP(A[5]), .Z(n176) );
  NBUFFX2 U117 ( .INP(B[7]), .Z(n149) );
  AND3X1 U120 ( .IN1(n97), .IN2(n148), .IN3(n96), .Q(n16) );
  AND2X1 U121 ( .IN1(Enable), .IN2(n144), .Q(n34) );
  AND2X1 U124 ( .IN1(n133), .IN2(n132), .Q(n19) );
  AND2X1 U125 ( .IN1(n110), .IN2(n111), .Q(n148) );
  AND3X1 U126 ( .IN1(n209), .IN2(n200), .IN3(n201), .Q(n20) );
  NBUFFX2 U127 ( .INP(n128), .Z(n139) );
  NBUFFX2 U128 ( .INP(Enable), .Z(n21) );
  NBUFFX2 U138 ( .INP(n127), .Z(n145) );
  NBUFFX2 U139 ( .INP(n127), .Z(n146) );
  AND2X1 U149 ( .IN1(n29), .IN2(n215), .Q(n91) );
  OAI221X1 U172 ( .IN1(n134), .IN2(n138), .IN3(n210), .IN4(n135), .IN5(n97), 
        .QN(n56) );
  AOI221X1 U173 ( .IN1(n155), .IN2(n220), .IN3(n179), .IN4(n184), .IN5(n167), 
        .QN(n134) );
  AOI221X1 U174 ( .IN1(n179), .IN2(n58), .IN3(n183), .IN4(n220), .IN5(n187), 
        .QN(n135) );
  NBUFFX2 U188 ( .INP(RST), .Z(n188) );
  NBUFFX2 U189 ( .INP(RST), .Z(n189) );
  NBUFFX2 U190 ( .INP(RST), .Z(n190) );
  OR2X1 U234 ( .IN1(n159), .IN2(n145), .Q(n201) );
  OA221X1 U240 ( .IN1(n121), .IN2(n193), .IN3(n192), .IN4(n217), .IN5(n201), 
        .Q(n194) );
  AO221X1 U241 ( .IN1(n146), .IN2(n159), .IN3(n114), .IN4(n208), .IN5(n194), 
        .Q(n195) );
  AO22X1 U242 ( .IN1(n197), .IN2(n198), .IN3(n179), .IN4(n210), .Q(n199) );
  AO22X1 U243 ( .IN1(n181), .IN2(n119), .IN3(n199), .IN4(n200), .Q(N150) );
  OA22X1 U244 ( .IN1(B[1]), .IN2(n204), .IN3(n204), .IN4(n129), .Q(n205) );
  NAND2X2 U8 ( .IN1(n106), .IN2(n218), .QN(n5) );
  NAND2X2 U11 ( .IN1(n69), .IN2(n23), .QN(n8) );
  NAND2X2 U12 ( .IN1(n139), .IN2(n70), .QN(n9) );
  INVX1 U13 ( .INP(n22), .ZN(n10) );
  NAND2X2 U16 ( .IN1(n196), .IN2(n195), .QN(n11) );
  NAND2X2 U18 ( .IN1(n177), .IN2(n32), .QN(n13) );
  NOR2X2 U20 ( .IN1(n23), .IN2(n118), .QN(n202) );
  OA21X2 U22 ( .IN1(n24), .IN2(n14), .IN3(n110), .Q(n17) );
  INVX1 U23 ( .INP(n91), .ZN(n14) );
  INVX1 U38 ( .INP(n96), .ZN(n214) );
  INVX1 U45 ( .INP(n125), .ZN(n51) );
  INVX1 U131 ( .INP(n159), .ZN(n160) );
  INVX1 U134 ( .INP(n24), .ZN(n25) );
  INVX1 U136 ( .INP(B[2]), .ZN(n27) );
  INVX1 U137 ( .INP(n27), .ZN(n28) );
  INVX1 U141 ( .INP(n34), .ZN(n125) );
  INVX1 U144 ( .INP(n32), .ZN(n37) );
  INVX1 U145 ( .INP(n215), .ZN(n49) );
  INVX1 U148 ( .INP(n224), .ZN(n57) );
  INVX1 U150 ( .INP(n17), .ZN(n58) );
  INVX1 U151 ( .INP(n17), .ZN(n112) );
  INVX1 U152 ( .INP(n172), .ZN(n113) );
  INVX1 U156 ( .INP(B[7]), .ZN(n119) );
  INVX1 U157 ( .INP(n119), .ZN(n120) );
  NAND2X2 U164 ( .IN1(N105), .IN2(n152), .QN(n133) );
  INVX1 U165 ( .INP(A[2]), .ZN(n126) );
  INVX1 U166 ( .INP(n126), .ZN(n127) );
  INVX1 U167 ( .INP(n23), .ZN(n128) );
  INVX1 U169 ( .INP(n217), .ZN(n130) );
  INVX1 U176 ( .INP(A[0]), .ZN(n140) );
  NAND2X2 U183 ( .IN1(n101), .IN2(n25), .QN(n147) );
  INVX1 U184 ( .INP(n191), .ZN(n209) );
  INVX1 U185 ( .INP(ALU_FUN[1]), .ZN(n215) );
  INVX1 U186 ( .INP(ALU_FUN[3]), .ZN(n216) );
  INVX1 U187 ( .INP(n146), .ZN(n223) );
  NOR2X2 U191 ( .IN1(n86), .IN2(n211), .QN(ALU_OUT_Comb[1]) );
  NOR2X2 U195 ( .IN1(n71), .IN2(n211), .QN(ALU_OUT_Comb[3]) );
  INVX1 U197 ( .INP(n122), .ZN(n207) );
  INVX1 U198 ( .INP(n31), .ZN(n224) );
  INVX1 U199 ( .INP(n180), .ZN(n219) );
  INVX1 U201 ( .INP(n177), .ZN(n221) );
  INVX1 U202 ( .INP(n178), .ZN(n220) );
  NOR2X2 U204 ( .IN1(n35), .IN2(n211), .QN(ALU_OUT_Comb[8]) );
  INVX1 U205 ( .INP(n147), .ZN(n152) );
  INVX1 U206 ( .INP(n147), .ZN(n153) );
  OA21X2 U207 ( .IN1(n41), .IN2(n42), .IN3(n21), .Q(ALU_OUT_Comb[7]) );
  OA21X2 U208 ( .IN1(n52), .IN2(n53), .IN3(n21), .Q(ALU_OUT_Comb[6]) );
  OA21X2 U209 ( .IN1(n59), .IN2(n60), .IN3(Enable), .Q(ALU_OUT_Comb[5]) );
  OA21X2 U210 ( .IN1(n65), .IN2(n66), .IN3(n21), .Q(ALU_OUT_Comb[4]) );
  INVX1 U212 ( .INP(Enable), .ZN(n211) );
  INVX1 U216 ( .INP(n138), .ZN(n210) );
  INVX1 U217 ( .INP(n148), .ZN(n154) );
  INVX1 U218 ( .INP(n148), .ZN(n155) );
  INVX1 U219 ( .INP(B[3]), .ZN(n156) );
  INVX1 U220 ( .INP(n156), .ZN(n157) );
  INVX1 U221 ( .INP(n156), .ZN(n158) );
  INVX1 U223 ( .INP(n28), .ZN(n159) );
  NOR2X2 U224 ( .IN1(n215), .IN2(n29), .QN(n101) );
  INVX1 U225 ( .INP(n158), .ZN(n208) );
  NOR2X2 U236 ( .IN1(n210), .IN2(n179), .QN(n206) );
  NOR2X2 U237 ( .IN1(n203), .IN2(n206), .QN(n198) );
  ALU_DW_div_uns_0 div_43 ( .a({n173, n171, n57, n136}), .b({n157, B[2], n162, 
        n164}), .quotient({N124, N123, N122, N121}) );
  ALU_DW01_sub_0 sub_41 ( .A({1'b0, n180, n178, n117, n229, n114, n146, n121, 
        n170}), .B({1'b0, n120, n138, n37, n139, n158, n160, n228, n166}), 
        .CI(1'b0), .DIFF({N104, N103, N102, N101, N100, N99, N98, N97, N96})
         );
  ALU_DW01_add_0 add_40 ( .A({1'b0, n180, n178, n177, n174, n143, n145, n31, 
        n136}), .B({1'b0, n137, n116, n37, n128, n158, n160, n130, n166}), 
        .CI(1'b0), .SUM({N95, N94, N93, N92, N91, N90, N89, N88, N87}) );
  ALU_DW02_mult_0 mult_42 ( .A({n180, n178, n176, n174, n172, A[2:1], n141}), 
        .B({n149, B[6], n151, n150, n157, n28, B[1], n165}), .TC(1'b0), 
        .PRODUCT({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105}) );
  INVX0 U3 ( .INP(B[4]), .ZN(n23) );
  NAND2X1 U4 ( .IN1(N104), .IN2(n45), .QN(n95) );
  INVX0 U7 ( .INP(B[0]), .ZN(n163) );
  INVX0 U9 ( .INP(A[6]), .ZN(n226) );
  INVX0 U10 ( .INP(n226), .ZN(n227) );
  INVX0 U17 ( .INP(B[5]), .ZN(n32) );
  NOR2X0 U25 ( .IN1(n79), .IN2(n211), .QN(ALU_OUT_Comb[2]) );
  INVX0 U26 ( .INP(n140), .ZN(n141) );
  INVX0 U28 ( .INP(n217), .ZN(n228) );
  INVX0 U29 ( .INP(n162), .ZN(n217) );
  INVX0 U31 ( .INP(n161), .ZN(n162) );
  INVX0 U32 ( .INP(A[1]), .ZN(n129) );
  INVX0 U33 ( .INP(n129), .ZN(n121) );
  INVX0 U34 ( .INP(n129), .ZN(n31) );
  NAND2X1 U39 ( .IN1(n131), .IN2(n19), .QN(n100) );
  INVX0 U42 ( .INP(n140), .ZN(n122) );
  NBUFFX4 U43 ( .INP(A[6]), .Z(n178) );
  NBUFFX4 U46 ( .INP(n227), .Z(n179) );
  NOR4X0 U47 ( .IN1(n72), .IN2(n73), .IN3(n74), .IN4(n75), .QN(n71) );
  NOR4X0 U49 ( .IN1(n87), .IN2(n88), .IN3(n89), .IN4(n90), .QN(n86) );
  NOR2X0 U50 ( .IN1(n32), .IN2(n117), .QN(n203) );
  NBUFFX4 U58 ( .INP(A[5]), .Z(n117) );
  NOR4X0 U59 ( .IN1(n80), .IN2(n81), .IN3(n82), .IN4(n83), .QN(n79) );
  INVX0 U61 ( .INP(B[1]), .ZN(n161) );
  NAND2X1 U64 ( .IN1(N121), .IN2(n76), .QN(n131) );
  NAND2X0 U77 ( .IN1(n136), .IN2(n187), .QN(n132) );
  NOR2X0 U95 ( .IN1(n208), .IN2(n114), .QN(n191) );
  NBUFFX4 U104 ( .INP(n114), .Z(n143) );
  NOR2X0 U105 ( .IN1(n191), .IN2(n202), .QN(n196) );
  INVX0 U106 ( .INP(n113), .ZN(n114) );
  INVX0 U107 ( .INP(B[6]), .ZN(n115) );
  INVX0 U110 ( .INP(n115), .ZN(n116) );
  INVX0 U112 ( .INP(n222), .ZN(n229) );
  INVX0 U118 ( .INP(n118), .ZN(n222) );
  INVX0 U122 ( .INP(n163), .ZN(n164) );
  INVX0 U129 ( .INP(n163), .ZN(n165) );
  INVX0 U130 ( .INP(n163), .ZN(n166) );
  AO221X2 U132 ( .IN1(N102), .IN2(n142), .IN3(N93), .IN4(n39), .IN5(n54), .Q(
        n53) );
  AO221X2 U133 ( .IN1(N100), .IN2(n142), .IN3(N91), .IN4(n39), .IN5(n67), .Q(
        n66) );
  AO221X2 U135 ( .IN1(N101), .IN2(n142), .IN3(N92), .IN4(n39), .IN5(n61), .Q(
        n60) );
  NAND2X0 U140 ( .IN1(n104), .IN2(n92), .QN(n110) );
  AND2X4 U142 ( .IN1(n104), .IN2(n109), .Q(n50) );
  NBUFFX4 U143 ( .INP(n214), .Z(n169) );
  NBUFFX4 U146 ( .INP(n214), .Z(n168) );
  NBUFFX4 U147 ( .INP(n214), .Z(n167) );
  NOR2X0 U153 ( .IN1(n216), .IN2(ALU_FUN[0]), .QN(n109) );
  NBUFFX4 U154 ( .INP(n118), .Z(n175) );
  AO21X1 U155 ( .IN1(N116), .IN2(n33), .IN3(n34), .Q(ALU_OUT_Comb[11]) );
  AND2X2 U158 ( .IN1(Enable), .IN2(n152), .Q(n33) );
  INVX0 U159 ( .INP(n166), .ZN(n218) );
  INVX0 U160 ( .INP(n102), .ZN(n24) );
  AND2X2 U161 ( .IN1(n104), .IN2(n102), .Q(n39) );
  NOR2X0 U162 ( .IN1(ALU_FUN[2]), .IN2(ALU_FUN[1]), .QN(n104) );
  NBUFFX4 U163 ( .INP(ALU_FUN[2]), .Z(n29) );
  NAND2X0 U168 ( .IN1(n175), .IN2(n23), .QN(n12) );
  OR2X1 U170 ( .IN1(n3), .IN2(n230), .Q(n105) );
  AND2X1 U171 ( .IN1(n165), .IN2(n107), .Q(n230) );
  AO221X2 U175 ( .IN1(n93), .IN2(n217), .IN3(n130), .IN4(n94), .IN5(n212), .Q(
        n87) );
  NBUFFX4 U177 ( .INP(A[4]), .Z(n174) );
  NBUFFX4 U178 ( .INP(A[4]), .Z(n118) );
  NOR2X0 U179 ( .IN1(ALU_FUN[3]), .IN2(ALU_FUN[0]), .QN(n102) );
  NAND2X1 U180 ( .IN1(n5), .IN2(n7), .QN(n3) );
  AO221X2 U181 ( .IN1(n77), .IN2(n208), .IN3(n158), .IN4(n78), .IN5(n124), .Q(
        n72) );
  AO221X2 U182 ( .IN1(n63), .IN2(n32), .IN3(n37), .IN4(n64), .IN5(n124), .Q(
        n62) );
  AO221X2 U192 ( .IN1(n181), .IN2(n112), .IN3(n50), .IN4(n219), .IN5(n43), .Q(
        n48) );
  NBUFFX4 U193 ( .INP(n43), .Z(n186) );
  NBUFFX4 U194 ( .INP(n43), .Z(n185) );
  NBUFFX4 U196 ( .INP(n43), .Z(n187) );
  AND2X4 U200 ( .IN1(n103), .IN2(n101), .Q(n76) );
  NAND3X1 U203 ( .IN1(n29), .IN2(n49), .IN3(n103), .QN(n111) );
  AND2X4 U211 ( .IN1(n104), .IN2(n103), .Q(n45) );
  AND2X1 U213 ( .IN1(n91), .IN2(n103), .Q(n43) );
  NOR2X0 U214 ( .IN1(n213), .IN2(n216), .QN(n92) );
  NOR2X0 U215 ( .IN1(n213), .IN2(ALU_FUN[3]), .QN(n103) );
  INVX0 U222 ( .INP(n123), .ZN(n124) );
  INVX0 U226 ( .INP(n123), .ZN(n22) );
  INVX0 U227 ( .INP(n124), .ZN(n7) );
  INVX0 U228 ( .INP(n212), .ZN(n123) );
  INVX0 U229 ( .INP(ALU_FUN[0]), .ZN(n213) );
  INVX0 U230 ( .INP(n97), .ZN(n212) );
  NAND2X1 U231 ( .IN1(n101), .IN2(n108), .QN(n97) );
  NOR2X0 U232 ( .IN1(N150), .IN2(n18), .QN(n15) );
  OA21X1 U233 ( .IN1(n98), .IN2(n99), .IN3(Enable), .Q(ALU_OUT_Comb[0]) );
  NBUFFX4 U235 ( .INP(n34), .Z(n30) );
  NAND2X0 U238 ( .IN1(n95), .IN2(n16), .QN(n40) );
  NAND2X0 U239 ( .IN1(n95), .IN2(n16), .QN(n144) );
  AND2X4 U246 ( .IN1(n166), .IN2(n207), .Q(n204) );
  NOR2X0 U247 ( .IN1(n207), .IN2(n166), .QN(n193) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 ( w_data, w_full, 
        w_inc, w_addr, w_clk, w_rst_n, r_addr, r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_full, w_inc, w_clk, w_rst_n;
  wire   N9, N10, N11, \fifo[0][7] , \fifo[0][6] , \fifo[0][5] , \fifo[0][4] ,
         \fifo[0][3] , \fifo[0][2] , \fifo[0][1] , \fifo[0][0] , \fifo[1][7] ,
         \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] , \fifo[1][2] ,
         \fifo[1][1] , \fifo[1][0] , \fifo[2][7] , \fifo[2][6] , \fifo[2][5] ,
         \fifo[2][4] , \fifo[2][3] , \fifo[2][2] , \fifo[2][1] , \fifo[2][0] ,
         \fifo[3][7] , \fifo[3][6] , \fifo[3][5] , \fifo[3][4] , \fifo[3][3] ,
         \fifo[3][2] , \fifo[3][1] , \fifo[3][0] , \fifo[4][7] , \fifo[4][6] ,
         \fifo[4][5] , \fifo[4][4] , \fifo[4][3] , \fifo[4][2] , \fifo[4][1] ,
         \fifo[4][0] , \fifo[5][7] , \fifo[5][6] , \fifo[5][5] , \fifo[5][4] ,
         \fifo[5][3] , \fifo[5][2] , \fifo[5][1] , \fifo[5][0] , \fifo[6][7] ,
         \fifo[6][6] , \fifo[6][5] , \fifo[6][4] , \fifo[6][3] , \fifo[6][2] ,
         \fifo[6][1] , \fifo[6][0] , \fifo[7][7] , \fifo[7][6] , \fifo[7][5] ,
         \fifo[7][4] , \fifo[7][3] , \fifo[7][2] , \fifo[7][1] , \fifo[7][0] ,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187;
  assign N9 = r_addr[0];
  assign N10 = r_addr[1];
  assign N11 = r_addr[2];

  DFFARX1 \fifo_reg[0][7]  ( .D(n87), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][7] ) );
  DFFARX1 \fifo_reg[0][6]  ( .D(n86), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][6] ) );
  DFFARX1 \fifo_reg[0][4]  ( .D(n84), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][4] ) );
  DFFARX1 \fifo_reg[1][7]  ( .D(n79), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][7] ) );
  DFFARX1 \fifo_reg[1][6]  ( .D(n78), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][6] ) );
  DFFARX1 \fifo_reg[1][5]  ( .D(n77), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][5] ) );
  DFFARX1 \fifo_reg[1][4]  ( .D(n76), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][4] ) );
  DFFARX1 \fifo_reg[1][3]  ( .D(n75), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][3] ) );
  DFFARX1 \fifo_reg[1][2]  ( .D(n74), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][2] ) );
  DFFARX1 \fifo_reg[1][1]  ( .D(n73), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][1] ) );
  DFFARX1 \fifo_reg[1][0]  ( .D(n72), .CLK(w_clk), .RSTB(n172), .Q(
        \fifo[1][0] ) );
  DFFARX1 \fifo_reg[2][7]  ( .D(n71), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][7] ) );
  DFFARX1 \fifo_reg[2][6]  ( .D(n70), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][6] ) );
  DFFARX1 \fifo_reg[3][6]  ( .D(n62), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][6] ) );
  DFFARX1 \fifo_reg[3][3]  ( .D(n59), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][3] ) );
  DFFARX1 \fifo_reg[3][1]  ( .D(n57), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][1] ) );
  DFFARX1 \fifo_reg[5][7]  ( .D(n47), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][7] ) );
  DFFARX1 \fifo_reg[5][6]  ( .D(n46), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][6] ) );
  DFFARX1 \fifo_reg[5][5]  ( .D(n45), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][5] ) );
  DFFARX1 \fifo_reg[5][4]  ( .D(n44), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][4] ) );
  DFFARX1 \fifo_reg[5][3]  ( .D(n43), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][3] ) );
  DFFARX1 \fifo_reg[5][2]  ( .D(n42), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][2] ) );
  DFFARX1 \fifo_reg[5][1]  ( .D(n41), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][1] ) );
  DFFARX1 \fifo_reg[5][0]  ( .D(n40), .CLK(w_clk), .RSTB(n168), .Q(
        \fifo[5][0] ) );
  DFFARX1 \fifo_reg[6][7]  ( .D(n39), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][7] ) );
  DFFARX1 \fifo_reg[6][6]  ( .D(n38), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][6] ) );
  DFFARX1 \fifo_reg[6][5]  ( .D(n37), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][5] ) );
  DFFARX1 \fifo_reg[6][4]  ( .D(n36), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][4] ) );
  DFFARX1 \fifo_reg[6][3]  ( .D(n35), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][3] ) );
  DFFARX1 \fifo_reg[6][2]  ( .D(n34), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][2] ) );
  DFFARX1 \fifo_reg[6][1]  ( .D(n33), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][1] ) );
  DFFARX1 \fifo_reg[6][0]  ( .D(n32), .CLK(w_clk), .RSTB(n167), .Q(
        \fifo[6][0] ) );
  DFFARX1 \fifo_reg[7][7]  ( .D(n31), .CLK(w_clk), .RSTB(n165), .Q(
        \fifo[7][7] ) );
  DFFARX1 \fifo_reg[7][6]  ( .D(n30), .CLK(w_clk), .RSTB(n166), .Q(
        \fifo[7][6] ) );
  DFFARX1 \fifo_reg[7][5]  ( .D(n29), .CLK(w_clk), .RSTB(n166), .Q(
        \fifo[7][5] ) );
  DFFARX1 \fifo_reg[7][4]  ( .D(n28), .CLK(w_clk), .RSTB(n165), .Q(
        \fifo[7][4] ) );
  DFFARX1 \fifo_reg[7][3]  ( .D(n27), .CLK(w_clk), .RSTB(n165), .Q(
        \fifo[7][3] ) );
  DFFARX1 \fifo_reg[7][2]  ( .D(n26), .CLK(w_clk), .RSTB(n166), .Q(
        \fifo[7][2] ) );
  DFFARX1 \fifo_reg[7][1]  ( .D(n25), .CLK(w_clk), .RSTB(n166), .Q(
        \fifo[7][1] ) );
  DFFARX1 \fifo_reg[7][0]  ( .D(n24), .CLK(w_clk), .RSTB(n165), .Q(
        \fifo[7][0] ) );
  AO22X1 U17 ( .IN1(n9), .IN2(n181), .IN3(\fifo[7][0] ), .IN4(n163), .Q(n24)
         );
  AO22X1 U18 ( .IN1(n187), .IN2(n181), .IN3(\fifo[7][1] ), .IN4(n163), .Q(n25)
         );
  AO22X1 U20 ( .IN1(n90), .IN2(n146), .IN3(\fifo[7][3] ), .IN4(n163), .Q(n27)
         );
  AO22X1 U21 ( .IN1(n6), .IN2(n146), .IN3(\fifo[7][4] ), .IN4(n163), .Q(n28)
         );
  AO22X1 U22 ( .IN1(w_data[5]), .IN2(n146), .IN3(\fifo[7][5] ), .IN4(n162), 
        .Q(n29) );
  AO22X1 U23 ( .IN1(n88), .IN2(n146), .IN3(\fifo[7][6] ), .IN4(n162), .Q(n30)
         );
  AO22X1 U26 ( .IN1(n180), .IN2(w_data[0]), .IN3(\fifo[6][0] ), .IN4(n161), 
        .Q(n32) );
  AO22X1 U27 ( .IN1(n180), .IN2(w_data[1]), .IN3(\fifo[6][1] ), .IN4(n161), 
        .Q(n33) );
  AO22X1 U28 ( .IN1(n143), .IN2(n7), .IN3(\fifo[6][2] ), .IN4(n161), .Q(n34)
         );
  AO22X1 U30 ( .IN1(n143), .IN2(n6), .IN3(\fifo[6][4] ), .IN4(n161), .Q(n36)
         );
  AO22X1 U32 ( .IN1(n143), .IN2(n12), .IN3(\fifo[6][6] ), .IN4(n160), .Q(n38)
         );
  AO22X1 U33 ( .IN1(n143), .IN2(n10), .IN3(\fifo[6][7] ), .IN4(n160), .Q(n39)
         );
  AO22X1 U35 ( .IN1(n179), .IN2(n9), .IN3(\fifo[5][0] ), .IN4(n159), .Q(n40)
         );
  AO22X1 U36 ( .IN1(n179), .IN2(w_data[1]), .IN3(\fifo[5][1] ), .IN4(n159), 
        .Q(n41) );
  AO22X1 U38 ( .IN1(n142), .IN2(n89), .IN3(\fifo[5][3] ), .IN4(n159), .Q(n43)
         );
  AO22X1 U39 ( .IN1(n142), .IN2(n6), .IN3(\fifo[5][4] ), .IN4(n159), .Q(n44)
         );
  AO22X1 U41 ( .IN1(n142), .IN2(n12), .IN3(\fifo[5][6] ), .IN4(n158), .Q(n46)
         );
  AO22X1 U42 ( .IN1(n142), .IN2(n11), .IN3(\fifo[5][7] ), .IN4(n158), .Q(n47)
         );
  AO22X1 U44 ( .IN1(n178), .IN2(w_data[0]), .IN3(\fifo[4][0] ), .IN4(n140), 
        .Q(n48) );
  AO22X1 U45 ( .IN1(n178), .IN2(w_data[1]), .IN3(\fifo[4][1] ), .IN4(n140), 
        .Q(n49) );
  AO22X1 U46 ( .IN1(n178), .IN2(w_data[2]), .IN3(\fifo[4][2] ), .IN4(n140), 
        .Q(n50) );
  AO22X1 U48 ( .IN1(n139), .IN2(w_data[4]), .IN3(\fifo[4][4] ), .IN4(n140), 
        .Q(n52) );
  AO22X1 U53 ( .IN1(n145), .IN2(w_data[0]), .IN3(\fifo[3][0] ), .IN4(n157), 
        .Q(n56) );
  AO22X1 U54 ( .IN1(n187), .IN2(n177), .IN3(\fifo[3][1] ), .IN4(n157), .Q(n57)
         );
  AO22X1 U55 ( .IN1(n177), .IN2(n1), .IN3(\fifo[3][2] ), .IN4(n157), .Q(n58)
         );
  AO22X1 U57 ( .IN1(n177), .IN2(w_data[4]), .IN3(\fifo[3][4] ), .IN4(n157), 
        .Q(n60) );
  AO22X1 U60 ( .IN1(n145), .IN2(n10), .IN3(\fifo[3][7] ), .IN4(n156), .Q(n63)
         );
  AO22X1 U62 ( .IN1(n176), .IN2(w_data[0]), .IN3(\fifo[2][0] ), .IN4(n155), 
        .Q(n64) );
  AO22X1 U64 ( .IN1(n144), .IN2(n1), .IN3(\fifo[2][2] ), .IN4(n155), .Q(n66)
         );
  AO22X1 U65 ( .IN1(n144), .IN2(n90), .IN3(\fifo[2][3] ), .IN4(n155), .Q(n67)
         );
  AO22X1 U66 ( .IN1(n144), .IN2(w_data[4]), .IN3(\fifo[2][4] ), .IN4(n155), 
        .Q(n68) );
  AO22X1 U67 ( .IN1(n176), .IN2(n2), .IN3(\fifo[2][5] ), .IN4(n154), .Q(n69)
         );
  AO22X1 U68 ( .IN1(n144), .IN2(n88), .IN3(\fifo[2][6] ), .IN4(n154), .Q(n70)
         );
  AO22X1 U71 ( .IN1(n175), .IN2(n9), .IN3(\fifo[1][0] ), .IN4(n153), .Q(n72)
         );
  AO22X1 U72 ( .IN1(n175), .IN2(n4), .IN3(\fifo[1][1] ), .IN4(n153), .Q(n73)
         );
  AO22X1 U73 ( .IN1(n141), .IN2(n7), .IN3(\fifo[1][2] ), .IN4(n153), .Q(n74)
         );
  AO22X1 U74 ( .IN1(n141), .IN2(n90), .IN3(\fifo[1][3] ), .IN4(n153), .Q(n75)
         );
  AO22X1 U75 ( .IN1(n141), .IN2(n6), .IN3(\fifo[1][4] ), .IN4(n153), .Q(n76)
         );
  AO22X1 U76 ( .IN1(n175), .IN2(n137), .IN3(\fifo[1][5] ), .IN4(n152), .Q(n77)
         );
  AO22X1 U78 ( .IN1(n141), .IN2(n11), .IN3(\fifo[1][7] ), .IN4(n152), .Q(n79)
         );
  AO22X1 U80 ( .IN1(n174), .IN2(n9), .IN3(\fifo[0][0] ), .IN4(n151), .Q(n80)
         );
  AO22X1 U81 ( .IN1(n174), .IN2(w_data[1]), .IN3(\fifo[0][1] ), .IN4(n151), 
        .Q(n81) );
  AO22X1 U82 ( .IN1(n174), .IN2(n7), .IN3(\fifo[0][2] ), .IN4(n151), .Q(n82)
         );
  AO22X1 U83 ( .IN1(n174), .IN2(n90), .IN3(\fifo[0][3] ), .IN4(n151), .Q(n83)
         );
  AO22X1 U84 ( .IN1(n147), .IN2(w_data[4]), .IN3(\fifo[0][4] ), .IN4(n151), 
        .Q(n84) );
  AO22X1 U85 ( .IN1(n147), .IN2(n137), .IN3(\fifo[0][5] ), .IN4(n150), .Q(n85)
         );
  DFFARX1 \fifo_reg[3][5]  ( .D(n61), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][5] ) );
  DFFARX1 \fifo_reg[3][0]  ( .D(n56), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][0] ) );
  DFFARX1 \fifo_reg[0][5]  ( .D(n85), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][5] ) );
  DFFARX1 \fifo_reg[2][5]  ( .D(n69), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][5] ) );
  DFFARX1 \fifo_reg[0][3]  ( .D(n83), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][3] ) );
  DFFARX1 \fifo_reg[0][2]  ( .D(n82), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][2] ) );
  DFFARX1 \fifo_reg[0][1]  ( .D(n81), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][1] ) );
  DFFARX1 \fifo_reg[0][0]  ( .D(n80), .CLK(w_clk), .RSTB(n173), .Q(
        \fifo[0][0] ) );
  DFFARX1 \fifo_reg[2][4]  ( .D(n68), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][4] ) );
  DFFARX1 \fifo_reg[2][3]  ( .D(n67), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][3] ) );
  DFFARX1 \fifo_reg[2][2]  ( .D(n66), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][2] ) );
  DFFARX1 \fifo_reg[2][1]  ( .D(n65), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][1] ) );
  DFFARX1 \fifo_reg[2][0]  ( .D(n64), .CLK(w_clk), .RSTB(n171), .Q(
        \fifo[2][0] ) );
  DFFARX1 \fifo_reg[3][7]  ( .D(n63), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][7] ) );
  DFFARX1 \fifo_reg[3][4]  ( .D(n60), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][4] ) );
  DFFARX1 \fifo_reg[3][2]  ( .D(n58), .CLK(w_clk), .RSTB(n170), .Q(
        \fifo[3][2] ) );
  DFFARX1 \fifo_reg[4][7]  ( .D(n55), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][7] ) );
  DFFARX1 \fifo_reg[4][6]  ( .D(n54), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][6] ) );
  DFFARX1 \fifo_reg[4][4]  ( .D(n52), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][4] ) );
  DFFARX1 \fifo_reg[4][3]  ( .D(n51), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][3] ) );
  DFFARX1 \fifo_reg[4][2]  ( .D(n50), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][2] ) );
  DFFARX1 \fifo_reg[4][1]  ( .D(n49), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][1] ) );
  DFFARX1 \fifo_reg[4][0]  ( .D(n48), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][0] ) );
  DFFARX1 \fifo_reg[4][5]  ( .D(n53), .CLK(w_clk), .RSTB(n169), .Q(
        \fifo[4][5] ) );
  MUX21X1 U3 ( .IN1(n105), .IN2(n106), .S(n130), .Q(r_data[3]) );
  AO22X1 U4 ( .IN1(\fifo[3][7] ), .IN2(n121), .IN3(\fifo[1][7] ), .IN4(n120), 
        .Q(n119) );
  MUX21X1 U5 ( .IN1(n12), .IN2(\fifo[4][6] ), .S(n17), .Q(n54) );
  MUX21X1 U6 ( .IN1(n137), .IN2(\fifo[3][5] ), .S(n156), .Q(n61) );
  MUX21X1 U7 ( .IN1(n117), .IN2(n118), .S(n130), .Q(r_data[6]) );
  MUX21X1 U8 ( .IN1(n10), .IN2(\fifo[4][7] ), .S(n17), .Q(n55) );
  AO22X1 U9 ( .IN1(\fifo[3][4] ), .IN2(n121), .IN3(\fifo[1][4] ), .IN4(n120), 
        .Q(n107) );
  MUX21X1 U10 ( .IN1(n89), .IN2(\fifo[4][3] ), .S(n17), .Q(n51) );
  MUX21X1 U11 ( .IN1(n11), .IN2(\fifo[7][7] ), .S(n13), .Q(n31) );
  MUX21X1 U12 ( .IN1(n2), .IN2(\fifo[6][5] ), .S(n15), .Q(n37) );
  MUX21X1 U13 ( .IN1(n88), .IN2(\fifo[3][6] ), .S(n19), .Q(n62) );
  MUX21X1 U14 ( .IN1(n109), .IN2(n110), .S(n130), .Q(r_data[4]) );
  MUX21X1 U15 ( .IN1(n7), .IN2(\fifo[7][2] ), .S(n13), .Q(n26) );
  MUX21X1 U16 ( .IN1(n89), .IN2(\fifo[6][3] ), .S(n15), .Q(n35) );
  MUX21X1 U19 ( .IN1(n2), .IN2(\fifo[5][5] ), .S(n16), .Q(n45) );
  MUX21X1 U24 ( .IN1(n11), .IN2(\fifo[2][7] ), .S(n21), .Q(n71) );
  MUX21X1 U25 ( .IN1(n12), .IN2(\fifo[0][6] ), .S(n23), .Q(n86) );
  MUX21X1 U29 ( .IN1(n113), .IN2(n114), .S(n130), .Q(r_data[5]) );
  MUX21X1 U34 ( .IN1(n89), .IN2(\fifo[3][3] ), .S(n19), .Q(n59) );
  MUX21X1 U37 ( .IN1(n88), .IN2(\fifo[1][6] ), .S(n22), .Q(n78) );
  MUX21X1 U40 ( .IN1(n10), .IN2(\fifo[0][7] ), .S(n23), .Q(n87) );
  NAND3X0 U52 ( .IN1(w_addr[0]), .IN2(n138), .IN3(w_addr[1]), .QN(n13) );
  NAND3X0 U59 ( .IN1(w_addr[0]), .IN2(n184), .IN3(n20), .QN(n22) );
  NBUFFX2 U61 ( .INP(n15), .Z(n161) );
  NBUFFX2 U69 ( .INP(w_data[3]), .Z(n89) );
  NBUFFX2 U77 ( .INP(n21), .Z(n154) );
  NBUFFX2 U86 ( .INP(w_data[2]), .Z(n7) );
  NBUFFX2 U87 ( .INP(w_data[3]), .Z(n90) );
  NBUFFX2 U89 ( .INP(w_data[5]), .Z(n137) );
  NBUFFX2 U90 ( .INP(w_data[6]), .Z(n88) );
  NBUFFX2 U91 ( .INP(w_data[7]), .Z(n11) );
  NBUFFX2 U92 ( .INP(w_data[6]), .Z(n12) );
  NBUFFX2 U93 ( .INP(w_data[7]), .Z(n10) );
  NAND3X0 U95 ( .IN1(w_addr[1]), .IN2(w_addr[0]), .IN3(n148), .QN(n19) );
  NBUFFX2 U97 ( .INP(w_data[2]), .Z(n1) );
  NBUFFX2 U98 ( .INP(w_data[5]), .Z(n2) );
  NBUFFX2 U105 ( .INP(n23), .Z(n150) );
  NBUFFX2 U106 ( .INP(n23), .Z(n151) );
  NBUFFX2 U107 ( .INP(n15), .Z(n160) );
  NBUFFX2 U108 ( .INP(n123), .Z(n132) );
  NAND3X0 U109 ( .IN1(n183), .IN2(n184), .IN3(n20), .QN(n23) );
  NBUFFX2 U110 ( .INP(n22), .Z(n153) );
  NBUFFX2 U111 ( .INP(n16), .Z(n159) );
  NBUFFX2 U113 ( .INP(n16), .Z(n158) );
  NBUFFX2 U114 ( .INP(n22), .Z(n152) );
  NBUFFX2 U115 ( .INP(n13), .Z(n162) );
  NBUFFX2 U116 ( .INP(n120), .Z(n136) );
  NBUFFX2 U117 ( .INP(n120), .Z(n135) );
  NBUFFX2 U118 ( .INP(n121), .Z(n134) );
  NBUFFX2 U119 ( .INP(n121), .Z(n133) );
  NBUFFX2 U120 ( .INP(n124), .Z(n131) );
  NBUFFX2 U124 ( .INP(N9), .Z(n130) );
  AO22X1 U126 ( .IN1(\fifo[3][0] ), .IN2(n134), .IN3(\fifo[1][0] ), .IN4(n136), 
        .Q(n91) );
  AO221X1 U127 ( .IN1(\fifo[5][0] ), .IN2(n131), .IN3(\fifo[7][0] ), .IN4(n132), .IN5(n91), .Q(n94) );
  AO22X1 U128 ( .IN1(\fifo[2][0] ), .IN2(n134), .IN3(\fifo[0][0] ), .IN4(n136), 
        .Q(n92) );
  AO221X1 U129 ( .IN1(\fifo[4][0] ), .IN2(n131), .IN3(\fifo[6][0] ), .IN4(n132), .IN5(n92), .Q(n93) );
  AO22X1 U130 ( .IN1(n94), .IN2(N9), .IN3(n93), .IN4(n129), .Q(r_data[0]) );
  AO22X1 U131 ( .IN1(\fifo[3][1] ), .IN2(n134), .IN3(\fifo[1][1] ), .IN4(n136), 
        .Q(n95) );
  AO221X1 U132 ( .IN1(\fifo[5][1] ), .IN2(n131), .IN3(\fifo[7][1] ), .IN4(n132), .IN5(n95), .Q(n98) );
  AO22X1 U133 ( .IN1(\fifo[2][1] ), .IN2(n134), .IN3(\fifo[0][1] ), .IN4(n136), 
        .Q(n96) );
  AO221X1 U134 ( .IN1(\fifo[4][1] ), .IN2(n131), .IN3(\fifo[6][1] ), .IN4(n132), .IN5(n96), .Q(n97) );
  AO22X1 U135 ( .IN1(n98), .IN2(N9), .IN3(n97), .IN4(n129), .Q(r_data[1]) );
  AO22X1 U136 ( .IN1(\fifo[3][2] ), .IN2(n134), .IN3(\fifo[1][2] ), .IN4(n136), 
        .Q(n99) );
  AO221X1 U137 ( .IN1(\fifo[5][2] ), .IN2(n131), .IN3(\fifo[7][2] ), .IN4(n132), .IN5(n99), .Q(n102) );
  AO22X1 U138 ( .IN1(\fifo[2][2] ), .IN2(n134), .IN3(\fifo[0][2] ), .IN4(n136), 
        .Q(n100) );
  AO221X1 U139 ( .IN1(\fifo[4][2] ), .IN2(n131), .IN3(\fifo[6][2] ), .IN4(n132), .IN5(n100), .Q(n101) );
  AO22X1 U140 ( .IN1(n102), .IN2(N9), .IN3(n101), .IN4(n129), .Q(r_data[2]) );
  AO22X1 U141 ( .IN1(\fifo[3][3] ), .IN2(n134), .IN3(\fifo[1][3] ), .IN4(n136), 
        .Q(n103) );
  AO221X1 U142 ( .IN1(\fifo[5][3] ), .IN2(n131), .IN3(\fifo[7][3] ), .IN4(n123), .IN5(n103), .Q(n106) );
  AO22X1 U143 ( .IN1(\fifo[2][3] ), .IN2(n134), .IN3(\fifo[0][3] ), .IN4(n136), 
        .Q(n104) );
  AO221X1 U144 ( .IN1(\fifo[4][3] ), .IN2(n131), .IN3(\fifo[6][3] ), .IN4(n132), .IN5(n104), .Q(n105) );
  AO221X1 U145 ( .IN1(\fifo[5][4] ), .IN2(n124), .IN3(\fifo[7][4] ), .IN4(n123), .IN5(n107), .Q(n110) );
  AO22X1 U146 ( .IN1(\fifo[2][4] ), .IN2(n133), .IN3(\fifo[0][4] ), .IN4(n135), 
        .Q(n108) );
  AO221X1 U147 ( .IN1(\fifo[4][4] ), .IN2(n131), .IN3(\fifo[6][4] ), .IN4(n132), .IN5(n108), .Q(n109) );
  AO22X1 U148 ( .IN1(\fifo[3][5] ), .IN2(n133), .IN3(\fifo[1][5] ), .IN4(n135), 
        .Q(n111) );
  AO221X1 U149 ( .IN1(\fifo[5][5] ), .IN2(n124), .IN3(\fifo[7][5] ), .IN4(n123), .IN5(n111), .Q(n114) );
  AO22X1 U150 ( .IN1(\fifo[2][5] ), .IN2(n133), .IN3(\fifo[0][5] ), .IN4(n135), 
        .Q(n112) );
  AO221X1 U151 ( .IN1(\fifo[4][5] ), .IN2(n124), .IN3(\fifo[6][5] ), .IN4(n132), .IN5(n112), .Q(n113) );
  AO22X1 U152 ( .IN1(\fifo[3][6] ), .IN2(n133), .IN3(\fifo[1][6] ), .IN4(n135), 
        .Q(n115) );
  AO221X1 U153 ( .IN1(\fifo[5][6] ), .IN2(n124), .IN3(\fifo[7][6] ), .IN4(n123), .IN5(n115), .Q(n118) );
  AO22X1 U154 ( .IN1(\fifo[2][6] ), .IN2(n133), .IN3(\fifo[0][6] ), .IN4(n135), 
        .Q(n116) );
  AO221X1 U155 ( .IN1(\fifo[4][6] ), .IN2(n124), .IN3(\fifo[6][6] ), .IN4(n132), .IN5(n116), .Q(n117) );
  AO221X1 U156 ( .IN1(\fifo[5][7] ), .IN2(n131), .IN3(\fifo[7][7] ), .IN4(n132), .IN5(n119), .Q(n126) );
  AO22X1 U157 ( .IN1(\fifo[2][7] ), .IN2(n133), .IN3(\fifo[0][7] ), .IN4(n135), 
        .Q(n122) );
  AO221X1 U158 ( .IN1(\fifo[4][7] ), .IN2(n131), .IN3(\fifo[6][7] ), .IN4(n132), .IN5(n122), .Q(n125) );
  AO22X1 U159 ( .IN1(N9), .IN2(n126), .IN3(n125), .IN4(n129), .Q(r_data[7]) );
  AO22X1 U160 ( .IN1(n178), .IN2(w_data[5]), .IN3(\fifo[4][5] ), .IN4(n140), 
        .Q(n53) );
  AND2X1 U161 ( .IN1(n182), .IN2(w_addr[2]), .Q(n149) );
  NAND3X0 U164 ( .IN1(n14), .IN2(n184), .IN3(n183), .QN(n17) );
  NBUFFX2 U184 ( .INP(w_rst_n), .Z(n164) );
  NBUFFX2 U185 ( .INP(w_rst_n), .Z(n165) );
  NBUFFX2 U186 ( .INP(w_rst_n), .Z(n166) );
  NBUFFX2 U187 ( .INP(n164), .Z(n167) );
  NBUFFX2 U188 ( .INP(n164), .Z(n168) );
  NBUFFX2 U189 ( .INP(n165), .Z(n169) );
  NBUFFX2 U190 ( .INP(n165), .Z(n170) );
  NBUFFX2 U191 ( .INP(n165), .Z(n171) );
  NBUFFX2 U192 ( .INP(n166), .Z(n172) );
  NBUFFX2 U193 ( .INP(n166), .Z(n173) );
  NOR2X2 U43 ( .IN1(n128), .IN2(N11), .QN(n121) );
  NOR2X2 U47 ( .IN1(N10), .IN2(N11), .QN(n120) );
  NOR2X2 U49 ( .IN1(n127), .IN2(N10), .QN(n124) );
  NOR2X2 U50 ( .IN1(n127), .IN2(n128), .QN(n123) );
  INVX1 U88 ( .INP(n5), .ZN(n6) );
  INVX1 U101 ( .INP(w_data[4]), .ZN(n5) );
  INVX1 U103 ( .INP(n17), .ZN(n178) );
  INVX1 U121 ( .INP(n130), .ZN(n129) );
  INVX1 U122 ( .INP(w_addr[0]), .ZN(n183) );
  INVX1 U123 ( .INP(N10), .ZN(n128) );
  INVX1 U125 ( .INP(N11), .ZN(n127) );
  INVX1 U163 ( .INP(n139), .ZN(n140) );
  INVX1 U165 ( .INP(n22), .ZN(n141) );
  INVX1 U166 ( .INP(n152), .ZN(n175) );
  INVX1 U169 ( .INP(n21), .ZN(n144) );
  INVX1 U170 ( .INP(n156), .ZN(n145) );
  INVX1 U171 ( .INP(n13), .ZN(n146) );
  INVX1 U172 ( .INP(n162), .ZN(n181) );
  INVX1 U173 ( .INP(n150), .ZN(n147) );
  INVX1 U174 ( .INP(n150), .ZN(n174) );
  INVX1 U175 ( .INP(n158), .ZN(n179) );
  INVX1 U176 ( .INP(n160), .ZN(n180) );
  INVX1 U181 ( .INP(n154), .ZN(n176) );
  INVX1 U182 ( .INP(w_addr[1]), .ZN(n184) );
  INVX0 U2 ( .INP(n8), .ZN(n9) );
  INVX0 U31 ( .INP(w_data[0]), .ZN(n8) );
  INVX0 U51 ( .INP(n16), .ZN(n142) );
  MUX21X2 U56 ( .IN1(n7), .IN2(\fifo[5][2] ), .S(n16), .Q(n42) );
  NAND3X4 U58 ( .IN1(n138), .IN2(n184), .IN3(w_addr[0]), .QN(n16) );
  NAND3X1 U63 ( .IN1(w_addr[1]), .IN2(n183), .IN3(n148), .QN(n21) );
  NOR2X0 U70 ( .IN1(n18), .IN2(w_addr[2]), .QN(n20) );
  INVX0 U79 ( .INP(n17), .ZN(n139) );
  AND2X1 U94 ( .IN1(w_inc), .IN2(n149), .Q(n14) );
  INVX0 U96 ( .INP(n15), .ZN(n143) );
  NAND3X1 U99 ( .IN1(n138), .IN2(n183), .IN3(w_addr[1]), .QN(n15) );
  NBUFFX4 U100 ( .INP(n13), .Z(n163) );
  INVX0 U102 ( .INP(n156), .ZN(n177) );
  NOR2X0 U104 ( .IN1(n18), .IN2(w_addr[2]), .QN(n148) );
  NBUFFX4 U112 ( .INP(n19), .Z(n157) );
  NBUFFX4 U162 ( .INP(n19), .Z(n156) );
  NAND2X0 U167 ( .IN1(w_inc), .IN2(n182), .QN(n18) );
  AND2X2 U168 ( .IN1(w_inc), .IN2(n149), .Q(n138) );
  INVX0 U177 ( .INP(w_full), .ZN(n182) );
  NAND2X0 U178 ( .IN1(n176), .IN2(n4), .QN(n185) );
  NAND2X0 U179 ( .IN1(\fifo[2][1] ), .IN2(n155), .QN(n186) );
  NAND2X1 U180 ( .IN1(n185), .IN2(n186), .QN(n65) );
  NBUFFX4 U183 ( .INP(n21), .Z(n155) );
  INVX0 U194 ( .INP(n3), .ZN(n187) );
  INVX0 U195 ( .INP(n3), .ZN(n4) );
  INVX0 U196 ( .INP(w_data[1]), .ZN(n3) );
endmodule


module FIFO_WR_PTR_WIDTH4 ( w_clk, w_rst_n, w_inc, wq2_rptr, w_addr, w_full, 
        gray_w_ptr );
  input [3:0] wq2_rptr;
  output [2:0] w_addr;
  output [3:0] gray_w_ptr;
  input w_clk, w_rst_n, w_inc;
  output w_full;
  wire   n19, n20, n29, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n17, n21, n22, n23, n24, n25, n27, n28;

  DFFARX1 \w_ptr_reg[0]  ( .D(n15), .CLK(w_clk), .RSTB(w_rst_n), .Q(w_addr[0]), 
        .QN(n2) );
  DFFARX1 \w_ptr_reg[1]  ( .D(n14), .CLK(w_clk), .RSTB(w_rst_n), .Q(n20), .QN(
        n17) );
  DFFARX1 \w_ptr_reg[2]  ( .D(n13), .CLK(w_clk), .RSTB(w_rst_n), .Q(n19), .QN(
        n1) );
  DFFARX1 \w_ptr_reg[3]  ( .D(n12), .CLK(w_clk), .RSTB(w_rst_n), .Q(n29), .QN(
        n25) );
  XNOR2X1 U9 ( .IN1(w_addr[2]), .IN2(n5), .Q(n13) );
  XNOR2X1 U11 ( .IN1(w_addr[0]), .IN2(n7), .Q(n15) );
  NAND4X0 U12 ( .IN1(n22), .IN2(n9), .IN3(n10), .IN4(n11), .QN(n3) );
  XOR2X1 U13 ( .IN1(wq2_rptr[3]), .IN2(n29), .Q(n11) );
  XOR2X1 U14 ( .IN1(wq2_rptr[2]), .IN2(gray_w_ptr[2]), .Q(n10) );
  XNOR2X1 U5 ( .IN1(n20), .IN2(n1), .Q(gray_w_ptr[1]) );
  XOR2X1 U7 ( .IN1(n2), .IN2(n17), .Q(gray_w_ptr[0]) );
  NOR2X2 U6 ( .IN1(n23), .IN2(n5), .QN(n4) );
  NAND2X2 U20 ( .IN1(n6), .IN2(w_addr[1]), .QN(n5) );
  INVX0 U3 ( .INP(n8), .ZN(n21) );
  INVX0 U4 ( .INP(n21), .ZN(n22) );
  XNOR2X2 U8 ( .IN1(gray_w_ptr[1]), .IN2(wq2_rptr[1]), .Q(n8) );
  NOR2X0 U10 ( .IN1(n7), .IN2(n2), .QN(n6) );
  INVX0 U15 ( .INP(w_addr[2]), .ZN(n23) );
  NBUFFX4 U16 ( .INP(n19), .Z(w_addr[2]) );
  NBUFFX4 U17 ( .INP(n17), .Z(n24) );
  INVX0 U18 ( .INP(n24), .ZN(w_addr[1]) );
  XNOR2X2 U19 ( .IN1(n24), .IN2(n6), .Q(n14) );
  INVX0 U21 ( .INP(n25), .ZN(gray_w_ptr[3]) );
  NAND3X0 U22 ( .IN1(n8), .IN2(n9), .IN3(n11), .QN(n27) );
  AND2X1 U23 ( .IN1(n10), .IN2(n28), .Q(w_full) );
  INVX0 U24 ( .INP(n27), .ZN(n28) );
  XNOR2X2 U25 ( .IN1(gray_w_ptr[0]), .IN2(wq2_rptr[0]), .Q(n9) );
  XOR2X2 U26 ( .IN1(gray_w_ptr[3]), .IN2(n4), .Q(n12) );
  XOR2X2 U27 ( .IN1(n29), .IN2(n19), .Q(gray_w_ptr[2]) );
  NAND2X0 U28 ( .IN1(w_inc), .IN2(n3), .QN(n7) );
endmodule


module FIFO_RD_PTR_WIDTH4 ( r_clk, r_rst_n, r_inc, rq2_wptr, r_addr, r_empty, 
        gray_r_ptr );
  input [3:0] rq2_wptr;
  output [2:0] r_addr;
  output [3:0] gray_r_ptr;
  input r_clk, r_rst_n, r_inc;
  output r_empty;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  DFFARX1 \r_ptr_reg[0]  ( .D(n15), .CLK(r_clk), .RSTB(r_rst_n), .Q(r_addr[0]), 
        .QN(n2) );
  DFFARX1 \r_ptr_reg[1]  ( .D(n14), .CLK(r_clk), .RSTB(r_rst_n), .Q(r_addr[1])
         );
  DFFARX1 \r_ptr_reg[2]  ( .D(n13), .CLK(r_clk), .RSTB(r_rst_n), .Q(r_addr[2]), 
        .QN(n1) );
  DFFARX1 \r_ptr_reg[3]  ( .D(n12), .CLK(r_clk), .RSTB(r_rst_n), .Q(
        gray_r_ptr[3]) );
  XOR2X1 U8 ( .IN1(gray_r_ptr[3]), .IN2(n4), .Q(n12) );
  XNOR2X1 U9 ( .IN1(r_addr[2]), .IN2(n5), .Q(n13) );
  XOR2X1 U10 ( .IN1(r_addr[1]), .IN2(n6), .Q(n14) );
  XNOR2X1 U11 ( .IN1(r_addr[0]), .IN2(n7), .Q(n15) );
  NAND4X0 U12 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .QN(n3) );
  XNOR2X1 U13 ( .IN1(gray_r_ptr[0]), .IN2(rq2_wptr[0]), .Q(n11) );
  XNOR2X1 U14 ( .IN1(gray_r_ptr[3]), .IN2(rq2_wptr[3]), .Q(n10) );
  XNOR2X1 U15 ( .IN1(gray_r_ptr[2]), .IN2(rq2_wptr[2]), .Q(n9) );
  XNOR2X1 U16 ( .IN1(gray_r_ptr[1]), .IN2(rq2_wptr[1]), .Q(n8) );
  XNOR2X1 U17 ( .IN1(gray_r_ptr[3]), .IN2(n1), .Q(gray_r_ptr[2]) );
  XNOR2X1 U18 ( .IN1(r_addr[1]), .IN2(n1), .Q(gray_r_ptr[1]) );
  XOR2X1 U19 ( .IN1(r_addr[0]), .IN2(r_addr[1]), .Q(gray_r_ptr[0]) );
  NAND2X2 U3 ( .IN1(r_inc), .IN2(n3), .QN(n7) );
  INVX1 U4 ( .INP(n3), .ZN(r_empty) );
  NOR2X2 U5 ( .IN1(n7), .IN2(n2), .QN(n6) );
  NAND2X2 U6 ( .IN1(n6), .IN2(r_addr[1]), .QN(n5) );
  NOR2X2 U7 ( .IN1(n1), .IN2(n5), .QN(n4) );
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \q[0][3] , \q[0][2] , \q[0][1] , \q[0][0] ;

  DFFARX1 \q_reg[0][3]  ( .D(ASYNC[3]), .CLK(CLK), .RSTB(RST), .Q(\q[0][3] )
         );
  DFFARX1 \q_reg[0][2]  ( .D(ASYNC[2]), .CLK(CLK), .RSTB(RST), .Q(\q[0][2] )
         );
  DFFARX1 \q_reg[0][1]  ( .D(ASYNC[1]), .CLK(CLK), .RSTB(RST), .Q(\q[0][1] )
         );
  DFFARX1 \q_reg[0][0]  ( .D(ASYNC[0]), .CLK(CLK), .RSTB(RST), .Q(\q[0][0] )
         );
  DFFARX1 \q_reg[1][3]  ( .D(\q[0][3] ), .CLK(CLK), .RSTB(RST), .Q(SYNC[3]) );
  DFFARX1 \q_reg[1][2]  ( .D(\q[0][2] ), .CLK(CLK), .RSTB(RST), .Q(SYNC[2]) );
  DFFARX1 \q_reg[1][1]  ( .D(\q[0][1] ), .CLK(CLK), .RSTB(RST), .Q(SYNC[1]) );
  DFFARX1 \q_reg[1][0]  ( .D(\q[0][0] ), .CLK(CLK), .RSTB(RST), .Q(SYNC[0]) );
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \q[0][3] , \q[0][2] , \q[0][1] , \q[0][0] , n1;

  DFFARX1 \q_reg[0][3]  ( .D(ASYNC[3]), .CLK(CLK), .RSTB(n1), .Q(\q[0][3] ) );
  DFFARX1 \q_reg[0][2]  ( .D(ASYNC[2]), .CLK(CLK), .RSTB(n1), .Q(\q[0][2] ) );
  DFFARX1 \q_reg[0][1]  ( .D(ASYNC[1]), .CLK(CLK), .RSTB(n1), .Q(\q[0][1] ) );
  DFFARX1 \q_reg[0][0]  ( .D(ASYNC[0]), .CLK(CLK), .RSTB(n1), .Q(\q[0][0] ) );
  DFFARX1 \q_reg[1][3]  ( .D(\q[0][3] ), .CLK(CLK), .RSTB(n1), .Q(SYNC[3]) );
  DFFARX1 \q_reg[1][2]  ( .D(\q[0][2] ), .CLK(CLK), .RSTB(n1), .Q(SYNC[2]) );
  DFFARX1 \q_reg[1][1]  ( .D(\q[0][1] ), .CLK(CLK), .RSTB(n1), .Q(SYNC[1]) );
  DFFARX1 \q_reg[1][0]  ( .D(\q[0][0] ), .CLK(CLK), .RSTB(n1), .Q(SYNC[0]) );
  NBUFFX2 U3 ( .INP(RST), .Z(n1) );
endmodule


module ASYNC_FIFO ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, RD_DATA, 
        FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [2:0] w_addr_tp;
  wire   [2:0] r_addr_tp;
  wire   [3:0] wq2_rptr_tp;
  wire   [3:0] gray_w_ptr_tp;
  wire   [3:0] rq2_wptr_tp;
  wire   [3:0] gray_r_ptr_tp;

  NBUFFX2 U1 ( .INP(W_RST), .Z(n1) );
  NBUFFX2 U2 ( .INP(W_RST), .Z(n2) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 U0_FIFO_MEM_CNTRL ( 
        .w_data(WR_DATA), .w_full(n4), .w_inc(W_INC), .w_addr(w_addr_tp), 
        .w_clk(W_CLK), .w_rst_n(n1), .r_addr(r_addr_tp), .r_data(RD_DATA) );
  FIFO_WR_PTR_WIDTH4 U0_FIFO_WR ( .w_clk(W_CLK), .w_rst_n(n2), .w_inc(W_INC), 
        .wq2_rptr(wq2_rptr_tp), .w_addr(w_addr_tp), .w_full(FULL), 
        .gray_w_ptr(gray_w_ptr_tp) );
  FIFO_RD_PTR_WIDTH4 U0_FIFO_RD ( .r_clk(R_CLK), .r_rst_n(R_RST), .r_inc(R_INC), .rq2_wptr(rq2_wptr_tp), .r_addr(r_addr_tp), .r_empty(EMPTY), .gray_r_ptr(
        gray_r_ptr_tp) );
  BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 U0_SYNC_W2R ( .ASYNC(gray_w_ptr_tp), .CLK(
        R_CLK), .RST(R_RST), .SYNC(rq2_wptr_tp) );
  BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 U1_SYNC_R2W ( .ASYNC(gray_r_ptr_tp), .CLK(
        W_CLK), .RST(n1), .SYNC(wq2_rptr_tp) );
  INVX0 U3 ( .INP(FULL), .ZN(n3) );
  INVX0 U4 ( .INP(n3), .ZN(n4) );
endmodule


module PULSE_GEN_0 ( LVL_SIG, CLK, RST, PULSE_SIG );
  input LVL_SIG, CLK, RST;
  output PULSE_SIG;
  wire   n1;

  DFFARX1 SYNC_REG_reg ( .D(LVL_SIG), .CLK(CLK), .RSTB(RST), .QN(n1) );
  AND2X1 U3 ( .IN1(n1), .IN2(LVL_SIG), .Q(PULSE_SIG) );
endmodule


module SYSTEM_TOP ( RX_IN, FUN_REF_CLK, FUN_UART_CLK, FUN_RST, SCAN_CLK, 
        SCAN_RST, TEST_MODE, TX_OUT );
  input RX_IN, FUN_REF_CLK, FUN_UART_CLK, FUN_RST, SCAN_CLK, SCAN_RST,
         TEST_MODE;
  output TX_OUT;
  wire   REF_CLK, UART_CLK, FUN_TX_CLK, TX_CLK, FUN_RX_CLK, RX_CLK, RST,
         FUN_REF_RST, REF_RST, FUN_UART_RST, UART_RST, WrEn, RdEn, Rd_D_Vld,
         Busy, RX_VLD_SIG, F_EMPTY, SYNC_RX_VLD_SIG, F_FULL, ALU_OUT_VLD, EN,
         Gate_EN, WR_INC, ALU_CLK, RD_INC, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:0] DEF_DIV_RATIO;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_CONFIG;
  wire   [7:0] Wr_D;
  wire   [3:0] Addr;
  wire   [7:0] Rd_D;
  wire   [7:0] OPERAND_A;
  wire   [7:0] OPERAND_B;
  wire   [7:0] RD_DATA;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] SYNC_RX_P_DATA;
  wire   [15:0] ALU_OUT;
  wire   [3:0] FUN;
  wire   [7:0] WR_DATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  NBUFFX2 U7 ( .INP(REF_RST), .Z(n9) );
  NBUFFX2 U8 ( .INP(UART_RST), .Z(n8) );
  NBUFFX2 U9 ( .INP(UART_RST), .Z(n6) );
  NBUFFX2 U10 ( .INP(UART_RST), .Z(n7) );
  INVX1 U3 ( .INP(OPERAND_A[5]), .ZN(n2) );
  INVX1 U4 ( .INP(n2), .ZN(n3) );
  INVX1 U5 ( .INP(F_EMPTY), .ZN(n1) );
  INVX1 U6 ( .INP(n4), .ZN(n5) );
  INVX1 U11 ( .INP(WrEn), .ZN(n4) );
  Mux2x1_1 U0_MUX2x1 ( .in_0(FUN_REF_CLK), .in_1(SCAN_CLK), .sel(TEST_MODE), 
        .out(REF_CLK) );
  Mux2x1_4 U1_MUX2x1 ( .in_0(FUN_UART_CLK), .in_1(SCAN_CLK), .sel(TEST_MODE), 
        .out(UART_CLK) );
  Mux2x1_3 U2_MUX2x1 ( .in_0(FUN_TX_CLK), .in_1(SCAN_CLK), .sel(TEST_MODE), 
        .out(TX_CLK) );
  Mux2x1_2 U3_MUX2x1 ( .in_0(FUN_RX_CLK), .in_1(SCAN_CLK), .sel(TEST_MODE), 
        .out(RX_CLK) );
  Mux2x1_0 U4_MUX2x1 ( .in_0(FUN_RST), .in_1(SCAN_RST), .sel(TEST_MODE), .out(
        RST) );
  Mux2x1_6 U5_MUX2x1 ( .in_0(FUN_REF_RST), .in_1(SCAN_RST), .sel(TEST_MODE), 
        .out(REF_RST) );
  Mux2x1_5 U6_MUX2x1 ( .in_0(FUN_UART_RST), .in_1(SCAN_RST), .sel(TEST_MODE), 
        .out(UART_RST) );
  RST_SYNC_0 RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(FUN_REF_RST) );
  RST_SYNC_1 RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(FUN_UART_RST)
         );
  ClkDiv_0 TX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n7), .i_div_ratio(
        DEF_DIV_RATIO), .i_clk_en(1'b1), .o_div_clk(FUN_TX_CLK) );
  ClkDiv_1 RX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n7), .i_div_ratio({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO[2:0]}), .i_clk_en(1'b1), .o_div_clk(
        FUN_RX_CLK) );
  Prescale_mux Mux3x1 ( .prescale(UART_CONFIG[7:2]), .div_ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, DIV_RATIO[2:0]}) );
  REG_FILE U0_REG_FILE ( .WrData(Wr_D), .Address(Addr), .WrEn(n5), .RdEn(RdEn), 
        .CLK(REF_CLK), .RST(n9), .RdData(Rd_D), .RdData_Valid(Rd_D_Vld), 
        .REG0(OPERAND_A), .REG1(OPERAND_B), .REG2(UART_CONFIG), .REG3(
        DEF_DIV_RATIO) );
  UART U0_UART ( .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(n8), .PAR_TYP(
        UART_CONFIG[1]), .PAR_EN(UART_CONFIG[0]), .Prescale(UART_CONFIG[7:2]), 
        .TX_IN_P(RD_DATA), .TX_IN_V(n1), .TX_OUT_S(TX_OUT), .TX_OUT_V(Busy), 
        .RX_IN_S(RX_IN), .RX_OUT_P(RX_P_DATA), .RX_OUT_V(RX_VLD_SIG) );
  DATA_SYNC U0_DATA_SYNC ( .Unsync_bus(RX_P_DATA), .bus_enable(RX_VLD_SIG), 
        .CLK(REF_CLK), .RST(n9), .sync_bus(SYNC_RX_P_DATA), .enable_pulse(
        SYNC_RX_VLD_SIG) );
  SYS_CTRL U0_SYS_CTRL ( .CLK(REF_CLK), .RST(n9), .RdData(Rd_D), 
        .RdData_Valid(Rd_D_Vld), .RX_P_DATA(SYNC_RX_P_DATA), .RX_D_VLD(
        SYNC_RX_VLD_SIG), .FIFO_FULL(F_FULL), .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(
        ALU_OUT_VLD), .ALU_FUN(FUN), .ALU_EN(EN), .GATE_EN(Gate_EN), 
        .UART_TX_DATA(WR_DATA), .UART_TX_VLD(WR_INC), .Address(Addr), .WrEn(
        WrEn), .RdEn(RdEn), .WrData(Wr_D) );
  CLK_GATE U0_CLK_GATE ( .CLK(REF_CLK), .CLK_EN(Gate_EN), .SCAN_EN(TEST_MODE), 
        .GATED_CLK(ALU_CLK) );
  ALU U0_ALU ( .CLK(ALU_CLK), .RST(REF_RST), .A({OPERAND_A[7:6], n3, 
        OPERAND_A[4:0]}), .B(OPERAND_B), .ALU_FUN(FUN), .Enable(EN), .ALU_OUT(
        ALU_OUT), .OUT_VALID(ALU_OUT_VLD) );
  ASYNC_FIFO U0_ASYN_FIFO ( .W_CLK(REF_CLK), .W_RST(REF_RST), .W_INC(WR_INC), 
        .R_CLK(TX_CLK), .R_RST(n6), .R_INC(RD_INC), .WR_DATA(WR_DATA), 
        .RD_DATA(RD_DATA), .FULL(F_FULL), .EMPTY(F_EMPTY) );
  PULSE_GEN_0 U0_PULSE_GEN ( .LVL_SIG(Busy), .CLK(TX_CLK), .RST(n8), 
        .PULSE_SIG(RD_INC) );
endmodule

