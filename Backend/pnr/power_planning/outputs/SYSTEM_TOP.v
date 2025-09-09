// IC Compiler II Verilog Writer
// Generated on 09/03/2025 at 15:10:49
// Library Name: SYSTEM_TOP.dlib
// Block Name: SYSTEM_TOP_pp
// User Label: 
// Write Command: write_verilog -include { all } ../outputs/SYSTEM_TOP.v
module PULSE_GEN_0 ( LVL_SIG , CLK , RST , PULSE_SIG , test_si , test_so , 
    test_se , VDD , VSS ) ;
input  LVL_SIG ;
input  CLK ;
input  RST ;
output PULSE_SIG ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n1 ;
supply1 VDD ;
supply0 VSS ;

AND2X1 U3 ( .IN1 ( n1 ) , .IN2 ( LVL_SIG ) , .Q ( PULSE_SIG ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 SYNC_REG_reg ( .D ( LVL_SIG ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 ( ASYNC , CLK , RST , SYNC , 
    test_si , test_se , VDD , VSS ) ;
input  [3:0] ASYNC ;
input  CLK ;
input  RST ;
output [3:0] SYNC ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire \q[0][3] ;
wire \q[0][2] ;
wire \q[0][1] ;
wire \q[0][0] ;
wire n1 ;
wire n2 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

NBUFFX2 U3 ( .INP ( RST ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( \q[0][2] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( \q[0][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( \q[0][1] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( \q[0][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( \q[0][0] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( \q[0][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( test_si ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( \q[0][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( \q[0][3] ) , .SI ( SYNC[2] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( SYNC[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( \q[0][2] ) , .SI ( SYNC[1] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( SYNC[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( \q[0][1] ) , .SI ( SYNC[0] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( SYNC[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( \q[0][3] ) , .SE ( n2 ) , 
    .CLK ( CLK ) , .RSTB ( n1 ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U4 ( .INP ( test_se ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 ( ASYNC , CLK , RST , SYNC , 
    test_se , VDD , VSS ) ;
input  [3:0] ASYNC ;
input  CLK ;
input  RST ;
output [3:0] SYNC ;
input  test_se ;
input  VDD ;
input  VSS ;

wire \q[0][3] ;
wire \q[0][2] ;
wire \q[0][1] ;
wire \q[0][0] ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( \q[0][1] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \q[0][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( \q[0][3] ) , .SI ( SYNC[2] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( \q[0][2] ) , .SI ( SYNC[1] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( \q[0][1] ) , .SI ( SYNC[0] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( \q[0][3] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX2 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( \q[0][2] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \q[0][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX2 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( \q[0][0] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \q[0][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX2 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( ASYNC[3] ) , .SE ( n1 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \q[0][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U3 ( .INP ( test_se ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_RD_PTR_WIDTH4 ( r_clk , r_rst_n , r_inc , rq2_wptr , r_addr , 
    r_empty , gray_r_ptr , test_si , test_se , VDD , VSS ) ;
input  r_clk ;
input  r_rst_n ;
input  r_inc ;
input  [3:0] rq2_wptr ;
output [2:0] r_addr ;
output r_empty ;
output [3:0] gray_r_ptr ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

XOR2X1 U8 ( .IN1 ( gray_r_ptr[3] ) , .IN2 ( n4 ) , .Q ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U9 ( .IN1 ( r_addr[2] ) , .IN2 ( n5 ) , .Q ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U10 ( .IN1 ( r_addr[1] ) , .IN2 ( n6 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U11 ( .IN1 ( r_addr[0] ) , .IN2 ( n7 ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U12 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .IN4 ( n11 ) , 
    .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U13 ( .IN1 ( gray_r_ptr[0] ) , .IN2 ( rq2_wptr[0] ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U14 ( .IN1 ( gray_r_ptr[3] ) , .IN2 ( rq2_wptr[3] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U15 ( .IN1 ( gray_r_ptr[2] ) , .IN2 ( rq2_wptr[2] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U16 ( .IN1 ( gray_r_ptr[1] ) , .IN2 ( rq2_wptr[1] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U17 ( .IN1 ( gray_r_ptr[3] ) , .IN2 ( n1 ) , .Q ( gray_r_ptr[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U18 ( .IN1 ( r_addr[1] ) , .IN2 ( n1 ) , .Q ( gray_r_ptr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U19 ( .IN1 ( r_addr[0] ) , .IN2 ( r_addr[1] ) , .Q ( gray_r_ptr[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[0] ( .D ( n15 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( r_clk ) , .RSTB ( r_rst_n ) , .Q ( r_addr[0] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[1] ( .D ( n14 ) , .SI ( r_addr[0] ) , .SE ( test_se ) , 
    .CLK ( r_clk ) , .RSTB ( r_rst_n ) , .Q ( r_addr[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[2] ( .D ( n13 ) , .SI ( r_addr[1] ) , .SE ( test_se ) , 
    .CLK ( r_clk ) , .RSTB ( r_rst_n ) , .Q ( r_addr[2] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[3] ( .D ( n12 ) , .SI ( r_addr[2] ) , .SE ( test_se ) , 
    .CLK ( r_clk ) , .RSTB ( r_rst_n ) , .Q ( gray_r_ptr[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U3 ( .INP ( n3 ) , .ZN ( r_empty ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U4 ( .IN1 ( n6 ) , .IN2 ( r_addr[1] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U5 ( .IN1 ( n7 ) , .IN2 ( n2 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U6 ( .IN1 ( r_inc ) , .IN2 ( n3 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U7 ( .IN1 ( n1 ) , .IN2 ( n5 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module FIFO_WR_PTR_WIDTH4 ( w_clk , w_rst_n , w_inc , wq2_rptr , w_addr , 
    w_full , gray_w_ptr , test_si , test_se , VDD , VSS ) ;
input  w_clk ;
input  w_rst_n ;
input  w_inc ;
input  [3:0] wq2_rptr ;
output [2:0] w_addr ;
output w_full ;
output [3:0] gray_w_ptr ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n19 ;
wire n20 ;
wire n29 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n17 ;
wire n16 ;
wire n18 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n27 ;
wire n28 ;
wire n30 ;
supply1 VDD ;
supply0 VSS ;

XNOR2X1 U9 ( .IN1 ( w_addr[2] ) , .IN2 ( n5 ) , .Q ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U11 ( .IN1 ( w_addr[0] ) , .IN2 ( n7 ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U12 ( .IN1 ( n18 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .IN4 ( n11 ) , 
    .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U13 ( .IN1 ( wq2_rptr[3] ) , .IN2 ( n29 ) , .Q ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( n2 ) , .IN2 ( n17 ) , .Q ( gray_w_ptr[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[0] ( .D ( n15 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( w_addr[0] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[1] ( .D ( n14 ) , .SI ( w_addr[0] ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n20 ) , .QN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[2] ( .D ( n13 ) , .SI ( n21 ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n19 ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[3] ( .D ( n12 ) , .SI ( n23 ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n29 ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U4 ( .INP ( n23 ) , .Z ( w_addr[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U8 ( .IN1 ( gray_w_ptr[0] ) , .IN2 ( wq2_rptr[0] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U6 ( .IN1 ( n6 ) , .IN2 ( w_addr[1] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n8 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n16 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U10 ( .IN1 ( gray_w_ptr[1] ) , .IN2 ( wq2_rptr[1] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U14 ( .IN1 ( n20 ) , .IN2 ( n1 ) , .Q ( gray_w_ptr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U15 ( .IN1 ( n7 ) , .IN2 ( n2 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n24 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n19 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n22 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( n22 ) , .IN2 ( n5 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U20 ( .INP ( n17 ) , .Z ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U21 ( .IN1 ( n24 ) , .IN2 ( n6 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n29 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n25 ) , .ZN ( gray_w_ptr[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n24 ) , .ZN ( w_addr[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( w_inc ) , .IN2 ( n3 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U26 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n11 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U27 ( .IN1 ( n27 ) , .IN2 ( n10 ) , .Q ( w_full ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n28 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U29 ( .IN1 ( wq2_rptr[2] ) , .IN2 ( gray_w_ptr[2] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U30 ( .IN1 ( gray_w_ptr[3] ) , .IN2 ( n4 ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U31 ( .IN1 ( n30 ) , .IN2 ( n19 ) , .Q ( gray_w_ptr[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 ( w_data , w_full , 
    w_inc , w_addr , w_clk , w_rst_n , r_addr , r_data , test_si2 , test_si1 , 
    test_so2 , test_so1 , test_se , VDD , VSS ) ;
input  [7:0] w_data ;
input  w_full ;
input  w_inc ;
input  [2:0] w_addr ;
input  w_clk ;
input  w_rst_n ;
input  [2:0] r_addr ;
output [7:0] r_data ;
input  test_si2 ;
input  test_si1 ;
output test_so2 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N9 ;
wire N10 ;
wire N11 ;
wire \fifo[5][5] ;
wire \fifo[7][7] ;
wire \fifo[0][7] ;
wire \fifo[0][6] ;
wire \fifo[0][5] ;
wire \fifo[0][4] ;
wire \fifo[0][3] ;
wire \fifo[0][2] ;
wire \fifo[0][1] ;
wire \fifo[0][0] ;
wire \fifo[1][7] ;
wire \fifo[1][6] ;
wire \fifo[1][5] ;
wire \fifo[1][4] ;
wire \fifo[1][3] ;
wire \fifo[1][2] ;
wire \fifo[1][1] ;
wire \fifo[1][0] ;
wire \fifo[2][7] ;
wire \fifo[2][6] ;
wire \fifo[2][5] ;
wire \fifo[2][4] ;
wire \fifo[2][3] ;
wire \fifo[2][2] ;
wire \fifo[2][1] ;
wire \fifo[2][0] ;
wire \fifo[3][7] ;
wire \fifo[3][6] ;
wire \fifo[3][5] ;
wire \fifo[3][4] ;
wire \fifo[3][3] ;
wire \fifo[3][2] ;
wire \fifo[3][1] ;
wire \fifo[3][0] ;
wire \fifo[4][7] ;
wire \fifo[4][6] ;
wire \fifo[4][5] ;
wire \fifo[4][4] ;
wire \fifo[4][3] ;
wire \fifo[4][2] ;
wire \fifo[4][1] ;
wire \fifo[4][0] ;
wire \fifo[5][7] ;
wire \fifo[5][6] ;
wire \fifo[5][4] ;
wire \fifo[5][3] ;
wire \fifo[5][2] ;
wire \fifo[5][1] ;
wire \fifo[5][0] ;
wire \fifo[6][7] ;
wire \fifo[6][6] ;
wire \fifo[6][5] ;
wire \fifo[6][4] ;
wire \fifo[6][3] ;
wire \fifo[6][2] ;
wire \fifo[6][1] ;
wire \fifo[6][0] ;
wire \fifo[7][6] ;
wire \fifo[7][5] ;
wire \fifo[7][4] ;
wire \fifo[7][3] ;
wire \fifo[7][2] ;
wire \fifo[7][1] ;
wire \fifo[7][0] ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n57 ;
wire n58 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n63 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n2 ;
wire n3 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
wire n100 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n119 ;
wire n120 ;
wire n121 ;
wire n122 ;
wire n123 ;
wire n124 ;
wire n125 ;
wire n126 ;
wire n127 ;
wire n128 ;
wire n129 ;
wire n131 ;
wire n132 ;
wire n134 ;
wire n135 ;
wire n136 ;
wire n137 ;
wire n138 ;
wire n139 ;
wire n140 ;
wire n141 ;
wire n142 ;
wire n143 ;
wire n144 ;
wire n145 ;
wire n146 ;
wire n147 ;
wire n148 ;
wire n149 ;
wire n150 ;
wire n151 ;
wire n152 ;
wire n153 ;
wire n154 ;
wire n155 ;
wire n156 ;
wire n157 ;
wire n158 ;
wire n159 ;
wire n160 ;
wire n161 ;
wire n162 ;
wire n163 ;
wire n164 ;
wire n165 ;
wire n166 ;
wire n167 ;
wire n168 ;
wire n169 ;
wire n170 ;
wire n171 ;
wire n173 ;
wire n174 ;
wire n175 ;
wire n176 ;
wire n177 ;
wire n178 ;
wire n179 ;
wire n180 ;
wire n181 ;
wire n182 ;
wire n183 ;
wire n184 ;
wire n185 ;
wire n186 ;
wire n187 ;
wire n188 ;
wire n189 ;
wire n1 ;
wire n4 ;
wire n130 ;
wire n133 ;
wire n172 ;
wire n190 ;
wire n191 ;
wire n192 ;
wire n193 ;
wire n194 ;
wire n195 ;
wire n196 ;
wire n197 ;
wire n198 ;
wire n199 ;
wire n200 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;
wire SYNOPSYS_UNCONNECTED_19 ;
wire SYNOPSYS_UNCONNECTED_20 ;
wire SYNOPSYS_UNCONNECTED_21 ;
wire SYNOPSYS_UNCONNECTED_22 ;
wire SYNOPSYS_UNCONNECTED_23 ;
wire SYNOPSYS_UNCONNECTED_24 ;
wire SYNOPSYS_UNCONNECTED_25 ;
wire SYNOPSYS_UNCONNECTED_26 ;
wire SYNOPSYS_UNCONNECTED_27 ;
wire SYNOPSYS_UNCONNECTED_28 ;
wire SYNOPSYS_UNCONNECTED_29 ;
wire SYNOPSYS_UNCONNECTED_30 ;
wire SYNOPSYS_UNCONNECTED_31 ;
wire SYNOPSYS_UNCONNECTED_32 ;
wire SYNOPSYS_UNCONNECTED_33 ;
wire SYNOPSYS_UNCONNECTED_34 ;
wire SYNOPSYS_UNCONNECTED_35 ;
wire SYNOPSYS_UNCONNECTED_36 ;
wire SYNOPSYS_UNCONNECTED_37 ;
wire SYNOPSYS_UNCONNECTED_38 ;
wire SYNOPSYS_UNCONNECTED_39 ;
wire SYNOPSYS_UNCONNECTED_40 ;
wire SYNOPSYS_UNCONNECTED_41 ;
wire SYNOPSYS_UNCONNECTED_42 ;
wire SYNOPSYS_UNCONNECTED_43 ;
wire SYNOPSYS_UNCONNECTED_44 ;
wire SYNOPSYS_UNCONNECTED_45 ;
wire SYNOPSYS_UNCONNECTED_46 ;
wire SYNOPSYS_UNCONNECTED_47 ;
wire SYNOPSYS_UNCONNECTED_48 ;
wire SYNOPSYS_UNCONNECTED_49 ;
wire SYNOPSYS_UNCONNECTED_50 ;
wire SYNOPSYS_UNCONNECTED_51 ;
wire SYNOPSYS_UNCONNECTED_52 ;
wire SYNOPSYS_UNCONNECTED_53 ;
wire SYNOPSYS_UNCONNECTED_54 ;
wire SYNOPSYS_UNCONNECTED_55 ;
wire SYNOPSYS_UNCONNECTED_56 ;
wire SYNOPSYS_UNCONNECTED_57 ;
wire SYNOPSYS_UNCONNECTED_58 ;
wire SYNOPSYS_UNCONNECTED_59 ;
wire SYNOPSYS_UNCONNECTED_60 ;
wire SYNOPSYS_UNCONNECTED_61 ;
wire SYNOPSYS_UNCONNECTED_62 ;
wire SYNOPSYS_UNCONNECTED_63 ;
wire SYNOPSYS_UNCONNECTED_64 ;

assign N9 = r_addr[0] ;
assign N10 = r_addr[1] ;
assign N11 = r_addr[2] ;
assign \fifo[5][5] = test_so1 ;
assign \fifo[7][7] = test_so2 ;

AO22X1 U17 ( .IN1 ( n9 ) , .IN2 ( n181 ) , .IN3 ( \fifo[7][0] ) , 
    .IN4 ( n163 ) , .Q ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( n90 ) , .IN2 ( n146 ) , .IN3 ( \fifo[7][3] ) , 
    .IN4 ( n163 ) , .Q ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( n6 ) , .IN2 ( n146 ) , .IN3 ( \fifo[7][4] ) , 
    .IN4 ( n163 ) , .Q ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U22 ( .IN1 ( w_data[5] ) , .IN2 ( n146 ) , .IN3 ( \fifo[7][5] ) , 
    .IN4 ( n162 ) , .Q ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U23 ( .IN1 ( n88 ) , .IN2 ( n146 ) , .IN3 ( \fifo[7][6] ) , 
    .IN4 ( n162 ) , .Q ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U26 ( .IN1 ( n180 ) , .IN2 ( n4 ) , .IN3 ( \fifo[6][0] ) , 
    .IN4 ( n161 ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U27 ( .IN1 ( n180 ) , .IN2 ( w_data[1] ) , .IN3 ( \fifo[6][1] ) , 
    .IN4 ( n161 ) , .Q ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U28 ( .IN1 ( n143 ) , .IN2 ( n7 ) , .IN3 ( \fifo[6][2] ) , 
    .IN4 ( n161 ) , .Q ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U30 ( .IN1 ( n143 ) , .IN2 ( n6 ) , .IN3 ( \fifo[6][4] ) , 
    .IN4 ( n161 ) , .Q ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U32 ( .IN1 ( n143 ) , .IN2 ( n12 ) , .IN3 ( \fifo[6][6] ) , 
    .IN4 ( n160 ) , .Q ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U33 ( .IN1 ( n143 ) , .IN2 ( n10 ) , .IN3 ( \fifo[6][7] ) , 
    .IN4 ( n160 ) , .Q ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U35 ( .IN1 ( n179 ) , .IN2 ( n9 ) , .IN3 ( \fifo[5][0] ) , 
    .IN4 ( n159 ) , .Q ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U36 ( .IN1 ( n179 ) , .IN2 ( w_data[1] ) , .IN3 ( \fifo[5][1] ) , 
    .IN4 ( n159 ) , .Q ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U38 ( .IN1 ( n142 ) , .IN2 ( n89 ) , .IN3 ( \fifo[5][3] ) , 
    .IN4 ( n159 ) , .Q ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U39 ( .IN1 ( n142 ) , .IN2 ( n6 ) , .IN3 ( \fifo[5][4] ) , 
    .IN4 ( n159 ) , .Q ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U41 ( .IN1 ( n142 ) , .IN2 ( n12 ) , .IN3 ( \fifo[5][6] ) , 
    .IN4 ( n158 ) , .Q ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U42 ( .IN1 ( n142 ) , .IN2 ( n11 ) , .IN3 ( \fifo[5][7] ) , 
    .IN4 ( n158 ) , .Q ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U44 ( .IN1 ( n178 ) , .IN2 ( w_data[0] ) , .IN3 ( \fifo[4][0] ) , 
    .IN4 ( n140 ) , .Q ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U45 ( .IN1 ( n178 ) , .IN2 ( w_data[1] ) , .IN3 ( \fifo[4][1] ) , 
    .IN4 ( n133 ) , .Q ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U46 ( .IN1 ( n178 ) , .IN2 ( w_data[2] ) , .IN3 ( \fifo[4][2] ) , 
    .IN4 ( n133 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U48 ( .IN1 ( n139 ) , .IN2 ( w_data[4] ) , .IN3 ( \fifo[4][4] ) , 
    .IN4 ( n140 ) , .Q ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( n145 ) , .IN2 ( w_data[0] ) , .IN3 ( \fifo[3][0] ) , 
    .IN4 ( n157 ) , .Q ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U54 ( .IN1 ( n192 ) , .IN2 ( n177 ) , .IN3 ( \fifo[3][1] ) , 
    .IN4 ( n157 ) , .Q ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U55 ( .IN1 ( n177 ) , .IN2 ( w_data[2] ) , .IN3 ( \fifo[3][2] ) , 
    .IN4 ( n157 ) , .Q ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U57 ( .IN1 ( n177 ) , .IN2 ( n1 ) , .IN3 ( \fifo[3][4] ) , 
    .IN4 ( n157 ) , .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( n145 ) , .IN2 ( n10 ) , .IN3 ( \fifo[3][7] ) , 
    .IN4 ( n156 ) , .Q ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U62 ( .IN1 ( n176 ) , .IN2 ( w_data[0] ) , .IN3 ( \fifo[2][0] ) , 
    .IN4 ( n154 ) , .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U64 ( .IN1 ( n144 ) , .IN2 ( w_data[2] ) , .IN3 ( \fifo[2][2] ) , 
    .IN4 ( n154 ) , .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( n144 ) , .IN2 ( n90 ) , .IN3 ( \fifo[2][3] ) , 
    .IN4 ( n155 ) , .Q ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( n144 ) , .IN2 ( w_data[4] ) , .IN3 ( \fifo[2][4] ) , 
    .IN4 ( n172 ) , .Q ( n68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( n176 ) , .IN2 ( n2 ) , .IN3 ( \fifo[2][5] ) , 
    .IN4 ( n172 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( n144 ) , .IN2 ( n88 ) , .IN3 ( \fifo[2][6] ) , 
    .IN4 ( n172 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( n175 ) , .IN2 ( n9 ) , .IN3 ( \fifo[1][0] ) , 
    .IN4 ( n153 ) , .Q ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( n175 ) , .IN2 ( n187 ) , .IN3 ( \fifo[1][1] ) , 
    .IN4 ( n153 ) , .Q ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( n141 ) , .IN2 ( n7 ) , .IN3 ( \fifo[1][2] ) , 
    .IN4 ( n153 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( n141 ) , .IN2 ( n90 ) , .IN3 ( \fifo[1][3] ) , 
    .IN4 ( n153 ) , .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( n141 ) , .IN2 ( n6 ) , .IN3 ( \fifo[1][4] ) , 
    .IN4 ( n153 ) , .Q ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( n175 ) , .IN2 ( n137 ) , .IN3 ( \fifo[1][5] ) , 
    .IN4 ( n152 ) , .Q ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( n141 ) , .IN2 ( n11 ) , .IN3 ( \fifo[1][7] ) , 
    .IN4 ( n152 ) , .Q ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( n174 ) , .IN2 ( n9 ) , .IN3 ( \fifo[0][0] ) , 
    .IN4 ( n151 ) , .Q ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( n174 ) , .IN2 ( w_data[1] ) , .IN3 ( \fifo[0][1] ) , 
    .IN4 ( n151 ) , .Q ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( n174 ) , .IN2 ( n7 ) , .IN3 ( \fifo[0][2] ) , 
    .IN4 ( n151 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( n174 ) , .IN2 ( n90 ) , .IN3 ( \fifo[0][3] ) , 
    .IN4 ( n151 ) , .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( n147 ) , .IN2 ( w_data[4] ) , .IN3 ( \fifo[0][4] ) , 
    .IN4 ( n151 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( n147 ) , .IN2 ( n137 ) , .IN3 ( \fifo[0][5] ) , 
    .IN4 ( n150 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U3 ( .IN1 ( n105 ) , .IN2 ( n106 ) , .S ( r_addr[0] ) , 
    .Q ( r_data[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( \fifo[3][7] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][7] ) , 
    .IN4 ( n120 ) , .Q ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U6 ( .IN1 ( n137 ) , .IN2 ( \fifo[3][5] ) , .S ( n156 ) , .Q ( n61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( n117 ) , .IN2 ( n118 ) , .S ( r_addr[0] ) , 
    .Q ( r_data[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( \fifo[3][4] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][4] ) , 
    .IN4 ( n120 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( n89 ) , .IN2 ( \fifo[4][3] ) , .S ( n17 ) , .Q ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U11 ( .IN1 ( n11 ) , .IN2 ( test_so2 ) , .S ( n13 ) , .Q ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U13 ( .IN1 ( n88 ) , .IN2 ( \fifo[3][6] ) , .S ( n19 ) , .Q ( n62 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U14 ( .IN1 ( n109 ) , .IN2 ( n110 ) , .S ( r_addr[0] ) , 
    .Q ( r_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( n89 ) , .IN2 ( \fifo[6][3] ) , .S ( n191 ) , .Q ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U24 ( .IN1 ( n11 ) , .IN2 ( \fifo[2][7] ) , .S ( n155 ) , .Q ( n71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( n12 ) , .IN2 ( \fifo[0][6] ) , .S ( n23 ) , .Q ( n86 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( n113 ) , .IN2 ( n114 ) , .S ( r_addr[0] ) , 
    .Q ( r_data[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( n89 ) , .IN2 ( \fifo[3][3] ) , .S ( n156 ) , .Q ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( n88 ) , .IN2 ( \fifo[1][6] ) , .S ( n152 ) , .Q ( n78 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( n10 ) , .IN2 ( \fifo[0][7] ) , .S ( n130 ) , .Q ( n87 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U52 ( .IN1 ( w_addr[0] ) , .IN2 ( n138 ) , .IN3 ( w_addr[1] ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U59 ( .IN1 ( w_addr[0] ) , .IN2 ( n184 ) , .IN3 ( n20 ) , 
    .QN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U69 ( .INP ( w_data[3] ) , .Z ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U86 ( .INP ( w_data[2] ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U87 ( .INP ( w_data[3] ) , .Z ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U89 ( .INP ( w_data[5] ) , .Z ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U90 ( .INP ( w_data[6] ) , .Z ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U91 ( .INP ( w_data[7] ) , .Z ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U92 ( .INP ( w_data[6] ) , .Z ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U93 ( .INP ( w_data[7] ) , .Z ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U95 ( .IN1 ( w_addr[1] ) , .IN2 ( w_addr[0] ) , .IN3 ( n148 ) , 
    .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U98 ( .INP ( w_data[5] ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U105 ( .INP ( n23 ) , .Z ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U106 ( .INP ( n23 ) , .Z ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U108 ( .INP ( n123 ) , .Z ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U110 ( .INP ( n22 ) , .Z ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U114 ( .INP ( n22 ) , .Z ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U116 ( .INP ( n120 ) , .Z ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U117 ( .INP ( n120 ) , .Z ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U118 ( .INP ( n121 ) , .Z ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U120 ( .INP ( n124 ) , .Z ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U126 ( .IN1 ( \fifo[3][0] ) , .IN2 ( n134 ) , .IN3 ( \fifo[1][0] ) , 
    .IN4 ( n136 ) , .Q ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U127 ( .IN1 ( \fifo[5][0] ) , .IN2 ( n131 ) , .IN3 ( \fifo[7][0] ) , 
    .IN4 ( n132 ) , .IN5 ( n91 ) , .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U128 ( .IN1 ( \fifo[2][0] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][0] ) , 
    .IN4 ( n136 ) , .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U129 ( .IN1 ( \fifo[4][0] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][0] ) , 
    .IN4 ( n132 ) , .IN5 ( n92 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( n94 ) , .IN2 ( r_addr[0] ) , .IN3 ( n93 ) , 
    .IN4 ( n129 ) , .Q ( r_data[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( \fifo[3][1] ) , .IN2 ( n134 ) , .IN3 ( \fifo[1][1] ) , 
    .IN4 ( n136 ) , .Q ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U132 ( .IN1 ( \fifo[5][1] ) , .IN2 ( n131 ) , .IN3 ( \fifo[7][1] ) , 
    .IN4 ( n132 ) , .IN5 ( n95 ) , .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U133 ( .IN1 ( \fifo[2][1] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][1] ) , 
    .IN4 ( n136 ) , .Q ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U134 ( .IN1 ( \fifo[4][1] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][1] ) , 
    .IN4 ( n132 ) , .IN5 ( n96 ) , .Q ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U135 ( .IN1 ( n98 ) , .IN2 ( r_addr[0] ) , .IN3 ( n97 ) , 
    .IN4 ( n129 ) , .Q ( r_data[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U136 ( .IN1 ( \fifo[3][2] ) , .IN2 ( n134 ) , .IN3 ( \fifo[1][2] ) , 
    .IN4 ( n136 ) , .Q ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U137 ( .IN1 ( \fifo[5][2] ) , .IN2 ( n131 ) , .IN3 ( \fifo[7][2] ) , 
    .IN4 ( n132 ) , .IN5 ( n99 ) , .Q ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U138 ( .IN1 ( \fifo[2][2] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][2] ) , 
    .IN4 ( n136 ) , .Q ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U139 ( .IN1 ( \fifo[4][2] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][2] ) , 
    .IN4 ( n132 ) , .IN5 ( n100 ) , .Q ( n101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U140 ( .IN1 ( n102 ) , .IN2 ( r_addr[0] ) , .IN3 ( n101 ) , 
    .IN4 ( n129 ) , .Q ( r_data[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U141 ( .IN1 ( \fifo[3][3] ) , .IN2 ( n134 ) , .IN3 ( \fifo[1][3] ) , 
    .IN4 ( n136 ) , .Q ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U142 ( .IN1 ( \fifo[5][3] ) , .IN2 ( n131 ) , .IN3 ( \fifo[7][3] ) , 
    .IN4 ( n123 ) , .IN5 ( n103 ) , .Q ( n106 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U143 ( .IN1 ( \fifo[2][3] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][3] ) , 
    .IN4 ( n136 ) , .Q ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U144 ( .IN1 ( \fifo[4][3] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][3] ) , 
    .IN4 ( n132 ) , .IN5 ( n104 ) , .Q ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U145 ( .IN1 ( \fifo[5][4] ) , .IN2 ( n124 ) , .IN3 ( \fifo[7][4] ) , 
    .IN4 ( n123 ) , .IN5 ( n107 ) , .Q ( n110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U146 ( .IN1 ( \fifo[2][4] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][4] ) , 
    .IN4 ( n135 ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U147 ( .IN1 ( \fifo[4][4] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][4] ) , 
    .IN4 ( n132 ) , .IN5 ( n108 ) , .Q ( n109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U148 ( .IN1 ( \fifo[3][5] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][5] ) , 
    .IN4 ( n135 ) , .Q ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U149 ( .IN1 ( test_so1 ) , .IN2 ( n124 ) , .IN3 ( \fifo[7][5] ) , 
    .IN4 ( n123 ) , .IN5 ( n111 ) , .Q ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( \fifo[2][5] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][5] ) , 
    .IN4 ( n135 ) , .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U151 ( .IN1 ( \fifo[4][5] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][5] ) , 
    .IN4 ( n132 ) , .IN5 ( n112 ) , .Q ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( \fifo[3][6] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][6] ) , 
    .IN4 ( n135 ) , .Q ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U153 ( .IN1 ( \fifo[5][6] ) , .IN2 ( n124 ) , .IN3 ( \fifo[7][6] ) , 
    .IN4 ( n123 ) , .IN5 ( n115 ) , .Q ( n118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( \fifo[2][6] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][6] ) , 
    .IN4 ( n135 ) , .Q ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U155 ( .IN1 ( \fifo[4][6] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][6] ) , 
    .IN4 ( n132 ) , .IN5 ( n116 ) , .Q ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U156 ( .IN1 ( \fifo[5][7] ) , .IN2 ( n131 ) , .IN3 ( test_so2 ) , 
    .IN4 ( n132 ) , .IN5 ( n119 ) , .Q ( n126 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( \fifo[2][7] ) , .IN2 ( n134 ) , .IN3 ( \fifo[0][7] ) , 
    .IN4 ( n135 ) , .Q ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U158 ( .IN1 ( \fifo[4][7] ) , .IN2 ( n131 ) , .IN3 ( \fifo[6][7] ) , 
    .IN4 ( n132 ) , .IN5 ( n122 ) , .Q ( n125 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( r_addr[0] ) , .IN2 ( n126 ) , .IN3 ( n125 ) , 
    .IN4 ( n129 ) , .Q ( r_data[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U160 ( .IN1 ( n178 ) , .IN2 ( w_data[5] ) , .IN3 ( \fifo[4][5] ) , 
    .IN4 ( n140 ) , .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U161 ( .IN1 ( n182 ) , .IN2 ( w_addr[2] ) , .Q ( n149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U164 ( .IN1 ( n14 ) , .IN2 ( n184 ) , .IN3 ( n183 ) , .QN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U184 ( .INP ( w_rst_n ) , .Z ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U185 ( .INP ( w_rst_n ) , .Z ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U186 ( .INP ( w_rst_n ) , .Z ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U187 ( .INP ( n164 ) , .Z ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U188 ( .INP ( n164 ) , .Z ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U189 ( .INP ( n165 ) , .Z ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U190 ( .INP ( n165 ) , .Z ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U191 ( .INP ( n165 ) , .Z ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U193 ( .INP ( n166 ) , .Z ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][7] ( .D ( n87 ) , .SI ( \fifo[0][6] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][6] ( .D ( n86 ) , .SI ( \fifo[0][5] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][4] ( .D ( n84 ) , .SI ( \fifo[0][3] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][7] ( .D ( n79 ) , .SI ( \fifo[1][6] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n165 ) , .Q ( \fifo[1][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][6] ( .D ( n78 ) , .SI ( \fifo[1][5] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][5] ( .D ( n77 ) , .SI ( \fifo[1][4] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][4] ( .D ( n76 ) , .SI ( \fifo[1][3] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][3] ( .D ( n75 ) , .SI ( \fifo[1][2] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][2] ( .D ( n74 ) , .SI ( \fifo[1][1] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][1] ( .D ( n73 ) , .SI ( \fifo[1][0] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][0] ( .D ( n72 ) , .SI ( \fifo[0][7] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n164 ) , .Q ( \fifo[1][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][7] ( .D ( n71 ) , .SI ( \fifo[2][6] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][6] ( .D ( n70 ) , .SI ( \fifo[2][5] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][6] ( .D ( n62 ) , .SI ( \fifo[3][5] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][3] ( .D ( n59 ) , .SI ( \fifo[3][2] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][1] ( .D ( n57 ) , .SI ( \fifo[3][0] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][7] ( .D ( n47 ) , .SI ( \fifo[5][6] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][6] ( .D ( n46 ) , .SI ( test_si2 ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][5] ( .D ( n45 ) , .SI ( \fifo[5][4] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( test_so1 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][2] ( .D ( n42 ) , .SI ( \fifo[5][1] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][7] ( .D ( n39 ) , .SI ( \fifo[6][6] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][6] ( .D ( n38 ) , .SI ( \fifo[6][5] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][5] ( .D ( n37 ) , .SI ( \fifo[6][4] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][4] ( .D ( n36 ) , .SI ( \fifo[6][3] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][3] ( .D ( n35 ) , .SI ( \fifo[6][2] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][2] ( .D ( n34 ) , .SI ( \fifo[6][1] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][1] ( .D ( n33 ) , .SI ( \fifo[6][0] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][0] ( .D ( n32 ) , .SI ( \fifo[5][7] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n167 ) , .Q ( \fifo[6][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][7] ( .D ( n31 ) , .SI ( \fifo[7][6] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n165 ) , .Q ( test_so2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][6] ( .D ( n30 ) , .SI ( \fifo[7][5] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n166 ) , .Q ( \fifo[7][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][5] ( .D ( n29 ) , .SI ( \fifo[7][4] ) , .SE ( n200 ) , 
    .CLK ( w_clk ) , .RSTB ( n166 ) , .Q ( \fifo[7][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][4] ( .D ( n28 ) , .SI ( \fifo[7][3] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n165 ) , .Q ( \fifo[7][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][3] ( .D ( n27 ) , .SI ( \fifo[7][2] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n165 ) , .Q ( \fifo[7][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][2] ( .D ( n26 ) , .SI ( \fifo[7][1] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n166 ) , .Q ( \fifo[7][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][1] ( .D ( n25 ) , .SI ( \fifo[7][0] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n166 ) , .Q ( \fifo[7][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][0] ( .D ( n24 ) , .SI ( \fifo[6][7] ) , .SE ( n195 ) , 
    .CLK ( w_clk ) , .RSTB ( n165 ) , .Q ( \fifo[7][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][5] ( .D ( n61 ) , .SI ( \fifo[3][4] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][0] ( .D ( n56 ) , .SI ( \fifo[2][7] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][5] ( .D ( n85 ) , .SI ( \fifo[0][4] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][5] ( .D ( n69 ) , .SI ( \fifo[2][4] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][3] ( .D ( n83 ) , .SI ( \fifo[0][2] ) , .SE ( n199 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][2] ( .D ( n82 ) , .SI ( \fifo[0][1] ) , .SE ( n200 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][1] ( .D ( n81 ) , .SI ( \fifo[0][0] ) , .SE ( n200 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][0] ( .D ( n80 ) , .SI ( test_si1 ) , .SE ( n200 ) , 
    .CLK ( w_clk ) , .RSTB ( n173 ) , .Q ( \fifo[0][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][4] ( .D ( n68 ) , .SI ( \fifo[2][3] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][3] ( .D ( n67 ) , .SI ( \fifo[2][2] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][2] ( .D ( n66 ) , .SI ( \fifo[2][1] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][1] ( .D ( n65 ) , .SI ( \fifo[2][0] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][0] ( .D ( n64 ) , .SI ( \fifo[1][7] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n171 ) , .Q ( \fifo[2][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][7] ( .D ( n63 ) , .SI ( \fifo[3][6] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][4] ( .D ( n60 ) , .SI ( \fifo[3][3] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][2] ( .D ( n58 ) , .SI ( \fifo[3][1] ) , .SE ( n198 ) , 
    .CLK ( w_clk ) , .RSTB ( n170 ) , .Q ( \fifo[3][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][7] ( .D ( n55 ) , .SI ( \fifo[4][6] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][6] ( .D ( n54 ) , .SI ( \fifo[4][5] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][4] ( .D ( n52 ) , .SI ( \fifo[4][3] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][3] ( .D ( n51 ) , .SI ( \fifo[4][2] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][2] ( .D ( n50 ) , .SI ( \fifo[4][1] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][1] ( .D ( n49 ) , .SI ( \fifo[4][0] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][0] ( .D ( n48 ) , .SI ( \fifo[3][7] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][5] ( .D ( n53 ) , .SI ( \fifo[4][4] ) , .SE ( n197 ) , 
    .CLK ( w_clk ) , .RSTB ( n169 ) , .Q ( \fifo[4][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][1] ( .D ( n41 ) , .SI ( \fifo[5][0] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][3] ( .D ( n43 ) , .SI ( \fifo[5][2] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][0] ( .D ( n40 ) , .SI ( \fifo[4][7] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][4] ( .D ( n44 ) , .SI ( \fifo[5][3] ) , .SE ( n196 ) , 
    .CLK ( w_clk ) , .RSTB ( n168 ) , .Q ( \fifo[5][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U49 ( .INP ( n16 ) , .Z ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U50 ( .INP ( n15 ) , .Z ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U88 ( .IN1 ( n2 ) , .IN2 ( \fifo[6][5] ) , .S ( n191 ) , .Q ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( n7 ) , .IN2 ( \fifo[5][2] ) , .S ( n190 ) , .Q ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U97 ( .IN1 ( n2 ) , .IN2 ( test_so1 ) , .S ( n190 ) , .Q ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U177 ( .INP ( w_full ) , .ZN ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U179 ( .IN1 ( \fifo[2][1] ) , .IN2 ( n154 ) , .QN ( n186 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U61 ( .INP ( n8 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U63 ( .INP ( n5 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U101 ( .INP ( n15 ) , .Z ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U103 ( .INP ( n16 ) , .Z ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U107 ( .INP ( r_addr[2] ) , .ZN ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U111 ( .INP ( r_addr[1] ) , .ZN ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U112 ( .IN1 ( n127 ) , .IN2 ( n128 ) , .QN ( n123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U113 ( .IN1 ( n127 ) , .IN2 ( r_addr[1] ) , .QN ( n124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U119 ( .IN1 ( n128 ) , .IN2 ( r_addr[2] ) , .QN ( n121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U121 ( .IN1 ( r_addr[1] ) , .IN2 ( r_addr[2] ) , .QN ( n120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U122 ( .INP ( r_addr[0] ) , .ZN ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U124 ( .INP ( w_addr[0] ) , .ZN ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U125 ( .INP ( w_addr[1] ) , .ZN ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U168 ( .INP ( n150 ) , .ZN ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U169 ( .INP ( n155 ) , .ZN ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U170 ( .INP ( n156 ) , .ZN ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U173 ( .INP ( n160 ) , .ZN ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U174 ( .INP ( n21 ) , .ZN ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U176 ( .INP ( n152 ) , .ZN ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U181 ( .INP ( n22 ) , .ZN ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( n158 ) , .ZN ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n162 ) , .ZN ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U8 ( .IN1 ( w_inc ) , .IN2 ( n149 ) , .Q ( n138 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n5 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( w_data[4] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n8 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( w_data[0] ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U31 ( .INP ( n21 ) , .Z ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n147 ) , .ZN ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n150 ) , .ZN ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U51 ( .IN1 ( n183 ) , .IN2 ( n184 ) , .IN3 ( n20 ) , .QN ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n139 ) , .ZN ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U58 ( .IN1 ( \fifo[7][1] ) , .IN2 ( n163 ) , .QN ( n189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U70 ( .INP ( n21 ) , .Z ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U77 ( .IN1 ( w_addr[1] ) , .IN2 ( n183 ) , .IN3 ( n148 ) , 
    .QN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U79 ( .INP ( n19 ) , .ZN ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U96 ( .IN1 ( w_inc ) , .IN2 ( n149 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( n142 ) , .ZN ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U100 ( .INP ( n16 ) , .ZN ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U102 ( .IN1 ( n138 ) , .IN2 ( n184 ) , .IN3 ( w_addr[0] ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U104 ( .INP ( n143 ) , .ZN ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U109 ( .INP ( n15 ) , .ZN ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U115 ( .IN1 ( n14 ) , .IN2 ( n183 ) , .IN3 ( w_addr[1] ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n17 ) , .ZN ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U162 ( .INP ( n139 ) , .ZN ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U163 ( .INP ( n17 ) , .ZN ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U165 ( .IN1 ( n12 ) , .IN2 ( \fifo[4][6] ) , .S ( n17 ) , .Q ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U166 ( .IN1 ( n10 ) , .IN2 ( \fifo[4][7] ) , .S ( n17 ) , .Q ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U167 ( .INP ( n21 ) , .Z ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U172 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U175 ( .INP ( n19 ) , .Z ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U178 ( .INP ( n19 ) , .Z ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U180 ( .IN1 ( n182 ) , .IN2 ( w_inc ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U182 ( .INP ( n13 ) , .Z ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U183 ( .INP ( n13 ) , .Z ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U192 ( .INP ( n13 ) , .ZN ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U194 ( .IN1 ( n7 ) , .IN2 ( \fifo[7][2] ) , .S ( n13 ) , .Q ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U195 ( .INP ( n3 ) , .ZN ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U196 ( .IN1 ( n189 ) , .IN2 ( n188 ) , .QN ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U197 ( .IN1 ( n185 ) , .IN2 ( n186 ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U198 ( .IN1 ( n176 ) , .IN2 ( n187 ) , .QN ( n185 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U199 ( .IN1 ( n192 ) , .IN2 ( n181 ) , .QN ( n188 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U200 ( .INP ( n3 ) , .ZN ( n187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U201 ( .INP ( w_data[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U202 ( .INP ( test_se ) , .Z ( n193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U203 ( .INP ( test_se ) , .Z ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U204 ( .INP ( n193 ) , .Z ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U205 ( .INP ( n193 ) , .Z ( n196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U206 ( .INP ( n193 ) , .Z ( n197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U207 ( .INP ( n194 ) , .Z ( n198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U208 ( .INP ( n194 ) , .Z ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U209 ( .INP ( n194 ) , .Z ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ASYNC_FIFO ( W_CLK , W_RST , W_INC , R_CLK , R_RST , R_INC , WR_DATA , 
    RD_DATA , FULL , EMPTY , test_si2 , test_si1 , test_so2 , test_so1 , 
    test_se , VDD , VSS ) ;
input  W_CLK ;
input  W_RST ;
input  W_INC ;
input  R_CLK ;
input  R_RST ;
input  R_INC ;
input  [7:0] WR_DATA ;
output [7:0] RD_DATA ;
output FULL ;
output EMPTY ;
input  test_si2 ;
input  test_si1 ;
output test_so2 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;

wire [3:0] wq2_rptr_tp ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n6 ;
wire n1 ;
wire n5 ;
wire n7 ;
wire [2:0] w_addr_tp ;
wire [2:0] r_addr_tp ;
wire [3:0] gray_w_ptr_tp ;
wire [3:0] rq2_wptr_tp ;
wire [3:0] gray_r_ptr_tp ;
supply1 VDD ;
supply0 VSS ;

assign wq2_rptr_tp[3] = test_so2 ;

NBUFFX2 U2 ( .INP ( W_RST ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U4 ( .INP ( n3 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 U0_FIFO_MEM_CNTRL ( 
    .w_data ( WR_DATA ) , .w_full ( n4 ) , .w_inc ( W_INC ) , 
    .w_addr ( w_addr_tp ) , .w_clk ( W_CLK ) , .w_rst_n ( n2 ) , 
    .r_addr ( r_addr_tp ) , .r_data ( RD_DATA ) , .test_si2 ( test_si2 ) , 
    .test_si1 ( test_si1 ) , .test_so2 ( n6 ) , .test_so1 ( test_so1 ) , 
    .test_se ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FIFO_WR_PTR_WIDTH4 U0_FIFO_WR ( .w_clk ( W_CLK ) , .w_rst_n ( n2 ) , 
    .w_inc ( W_INC ) ,
    .wq2_rptr ( { test_so2 , wq2_rptr_tp[2] , wq2_rptr_tp[1] , 
        wq2_rptr_tp[0] } ) ,
    .w_addr ( w_addr_tp ) , .w_full ( FULL ) , .gray_w_ptr ( gray_w_ptr_tp ) , 
    .test_si ( gray_r_ptr_tp[3] ) , .test_se ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
FIFO_RD_PTR_WIDTH4 U0_FIFO_RD ( .r_clk ( R_CLK ) , .r_rst_n ( R_RST ) , 
    .r_inc ( R_INC ) , .rq2_wptr ( rq2_wptr_tp ) , .r_addr ( r_addr_tp ) , 
    .r_empty ( EMPTY ) , .gray_r_ptr ( gray_r_ptr_tp ) , .test_si ( n6 ) , 
    .test_se ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 U0_SYNC_W2R ( .ASYNC ( gray_w_ptr_tp ) , 
    .CLK ( R_CLK ) , .RST ( R_RST ) , .SYNC ( rq2_wptr_tp ) , 
    .test_se ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 U1_SYNC_R2W ( .ASYNC ( gray_r_ptr_tp ) , 
    .CLK ( W_CLK ) , .RST ( n2 ) ,
    .SYNC ( { test_so2 , wq2_rptr_tp[2] , wq2_rptr_tp[1] , wq2_rptr_tp[0] } ) ,
    .test_si ( rq2_wptr_tp[3] ) , .test_se ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( FULL ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U3 ( .INP ( test_se ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U5 ( .INP ( test_se ) , .Z ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U6 ( .INP ( test_se ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ALU_DW01_add_1 ( A , B , CI , SUM , CO , VDD , VSS ) ;
input  [13:0] A ;
input  [13:0] B ;
input  CI ;
output [13:0] SUM ;
output CO ;
input  VDD ;
input  VSS ;

wire net7218 ;
wire net10920 ;
wire net11251 ;
wire net11250 ;
wire n1 ;
wire n29 ;
wire n32 ;
wire n35 ;
wire net5733 ;
wire net5781 ;
wire n36 ;
wire n16 ;
wire net5736 ;
wire net5734 ;
wire net5732 ;
wire net5707 ;
wire n3 ;
wire n15 ;
wire net5750 ;
wire net5747 ;
wire n4 ;
wire n34 ;
wire n33 ;
wire n31 ;
wire net7207 ;
wire net5757 ;
wire net5756 ;
wire net5745 ;
wire net5724 ;
wire net5716 ;
wire net10994 ;
wire n5 ;
wire n27 ;
wire n2 ;
wire n17 ;
wire n12 ;
wire n10 ;
wire n28 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
supply1 VDD ;
supply0 VSS ;

XOR2X1 U12 ( .IN1 ( net5781 ) , .IN2 ( n32 ) , .Q ( SUM[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( net11250 ) , .ZN ( net11251 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( n1 ) , .IN2 ( net10920 ) , .Q ( SUM[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U37 ( .IN1 ( n29 ) , .IN2 ( n35 ) , .Q ( SUM[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U38 ( .INP ( A[0] ) , .Z ( SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U39 ( .INP ( A[1] ) , .Z ( SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U40 ( .INP ( A[2] ) , .Z ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U41 ( .INP ( A[3] ) , .Z ( SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U42 ( .INP ( A[4] ) , .Z ( SUM[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U43 ( .INP ( A[5] ) , .Z ( SUM[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U44 ( .INP ( A[6] ) , .Z ( SUM[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n15 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U54 ( .IN1 ( B[9] ) , .IN2 ( A[9] ) , .QN ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U49 ( .IN1 ( n39 ) , .IN2 ( n16 ) , .QN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U53 ( .IN1 ( B[9] ) , .IN2 ( A[9] ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n36 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U15 ( .IN1 ( n10 ) , .IN2 ( n5 ) , .Q ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( net10994 ) , .ZN ( net11250 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR3X1 U18 ( .IN1 ( B[12] ) , .IN2 ( A[12] ) , .IN3 ( net11251 ) , 
    .Q ( SUM[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( A[12] ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U4 ( .IN1 ( n10 ) , .IN2 ( n5 ) , .IN3 ( n17 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( n27 ) , .IN2 ( B[13] ) , .Q ( SUM[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n28 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U46 ( .IN1 ( A[7] ) , .IN2 ( B[7] ) , .Q ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U2 ( .INP ( A[7] ) , .Z ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U3 ( .IN1 ( B[7] ) , .IN2 ( n37 ) , .Q ( SUM[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U5 ( .IN1 ( n3 ) , .IN2 ( n4 ) , .QN ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n34 ) , .ZN ( net5747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U7 ( .IN1 ( A[8] ) , .IN2 ( B[8] ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U8 ( .IN1 ( net5734 ) , .IN2 ( net5736 ) , .QN ( net5732 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( B[10] ) , .ZN ( net5736 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U10 ( .IN1 ( net5745 ) , .IN2 ( net5750 ) , .QN ( net5733 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n33 ) , .ZN ( net5745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U13 ( .IN1 ( n40 ) , .IN2 ( net5707 ) , .QN ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U14 ( .IN1 ( net5716 ) , .IN2 ( n40 ) , .QN ( net7218 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( net5732 ) , .ZN ( net5716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U17 ( .IN1 ( net5733 ) , .IN2 ( net7218 ) , .Q ( SUM[10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( n33 ) , .IN2 ( n34 ) , .QN ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( n5 ) , .IN2 ( net5707 ) , .QN ( net10920 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U22 ( .IN1 ( n16 ) , .IN2 ( n29 ) , .IN3 ( n38 ) , .QN ( net5781 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U23 ( .IN1 ( net5732 ) , .IN2 ( net5733 ) , .IN3 ( n40 ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U24 ( .IN1 ( A[11] ) , .IN2 ( B[11] ) , .Q ( net5707 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n36 ) , .ZN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n38 ) , .ZN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U27 ( .IN1 ( B[10] ) , .IN2 ( A[10] ) , .Q ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U33 ( .IN1 ( n28 ) , .IN2 ( n15 ) , .QN ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U36 ( .IN1 ( B[12] ) , .IN2 ( net7207 ) , .IN3 ( net10994 ) , 
    .IN4 ( A[12] ) , .Q ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U45 ( .IN1 ( n2 ) , .IN2 ( net5724 ) , .QN ( net7207 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U48 ( .IN1 ( net5724 ) , .IN2 ( n12 ) , .QN ( net10994 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U50 ( .IN1 ( net5756 ) , .IN2 ( net5757 ) , .QN ( net5724 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U51 ( .IN1 ( net5707 ) , .IN2 ( net5732 ) , .Q ( net5757 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U52 ( .IN1 ( net5750 ) , .IN2 ( net5745 ) , .QN ( net5756 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U55 ( .IN1 ( B[11] ) , .IN2 ( A[11] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( A[10] ) , .ZN ( net5734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U57 ( .IN1 ( n31 ) , .IN2 ( net5747 ) , .QN ( net5750 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U32 ( .IN1 ( A[8] ) , .IN2 ( B[8] ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ALU_DW02_mult_0 ( A , B , TC , PRODUCT , VDD , VSS ) ;
input  [7:0] A ;
input  [7:0] B ;
input  TC ;
output [15:0] PRODUCT ;
input  VDD ;
input  VSS ;

wire \ab[7][7] ;
wire \ab[7][6] ;
wire \ab[7][5] ;
wire \ab[7][4] ;
wire \ab[7][3] ;
wire \ab[7][2] ;
wire \ab[7][1] ;
wire \ab[7][0] ;
wire \ab[6][7] ;
wire \ab[6][6] ;
wire \ab[6][5] ;
wire \ab[6][4] ;
wire \ab[6][3] ;
wire \ab[6][2] ;
wire \ab[6][1] ;
wire \ab[6][0] ;
wire \ab[5][7] ;
wire \ab[5][6] ;
wire \ab[5][5] ;
wire \ab[5][4] ;
wire \ab[5][3] ;
wire \ab[5][2] ;
wire \ab[5][1] ;
wire \ab[5][0] ;
wire \ab[4][7] ;
wire \ab[4][6] ;
wire \ab[4][5] ;
wire \ab[4][3] ;
wire \ab[4][2] ;
wire \ab[4][0] ;
wire \ab[3][7] ;
wire \ab[3][6] ;
wire \ab[3][0] ;
wire \ab[2][0] ;
wire \ab[1][6] ;
wire \ab[1][4] ;
wire \ab[1][1] ;
wire \ab[1][0] ;
wire \ab[0][7] ;
wire \ab[0][5] ;
wire \ab[0][2] ;
wire \ab[0][1] ;
wire \CARRYB[7][6] ;
wire \CARRYB[7][5] ;
wire \CARRYB[7][4] ;
wire \CARRYB[7][3] ;
wire \CARRYB[7][0] ;
wire \CARRYB[6][6] ;
wire \CARRYB[6][5] ;
wire \CARRYB[6][4] ;
wire \CARRYB[6][0] ;
wire \CARRYB[5][6] ;
wire \CARRYB[5][5] ;
wire \CARRYB[5][0] ;
wire \CARRYB[4][6] ;
wire \CARRYB[3][6] ;
wire \CARRYB[2][0] ;
wire \SUMB[7][6] ;
wire \SUMB[7][5] ;
wire \SUMB[7][4] ;
wire \SUMB[7][0] ;
wire \SUMB[6][6] ;
wire \SUMB[6][5] ;
wire \SUMB[5][6] ;
wire \SUMB[4][6] ;
wire \SUMB[1][1] ;
wire \A1[12] ;
wire \A1[11] ;
wire \A1[10] ;
wire \A1[9] ;
wire \A1[8] ;
wire \A1[7] ;
wire \A1[6] ;
wire \A1[4] ;
wire \A1[3] ;
wire \A1[2] ;
wire \A1[1] ;
wire \A1[0] ;
wire net7493 ;
wire net7494 ;
wire net7495 ;
wire net9238 ;
wire net9280 ;
wire net9289 ;
wire net9323 ;
wire net9328 ;
wire net9341 ;
wire net9389 ;
wire net9471 ;
wire net9470 ;
wire net10887 ;
wire net10959 ;
wire net10958 ;
wire net11015 ;
wire net11014 ;
wire net11013 ;
wire net11012 ;
wire net11041 ;
wire net11156 ;
wire net11155 ;
wire net11153 ;
wire net11229 ;
wire net11286 ;
wire net11429 ;
wire net11428 ;
wire net11462 ;
wire net9279 ;
wire net9277 ;
wire net7496 ;
wire \ab[4][1] ;
wire \ab[3][1] ;
wire \ab[2][1] ;
wire \SUMB[4][1] ;
wire \SUMB[3][1] ;
wire \SUMB[2][1] ;
wire \SUMB[1][2] ;
wire \CARRYB[4][1] ;
wire \CARRYB[4][0] ;
wire \CARRYB[3][1] ;
wire \CARRYB[3][0] ;
wire \CARRYB[2][1] ;
wire \SUMB[6][1] ;
wire \CARRYB[6][1] ;
wire \CARRYB[5][2] ;
wire net9368 ;
wire \SUMB[5][2] ;
wire \SUMB[5][1] ;
wire \SUMB[4][2] ;
wire \CARRYB[5][1] ;
wire \CARRYB[4][2] ;
wire \SUMB[7][1] ;
wire \CARRYB[7][1] ;
wire net9297 ;
wire \ab[2][2] ;
wire \ab[1][3] ;
wire \ab[0][4] ;
wire \SUMB[2][2] ;
wire \SUMB[1][3] ;
wire \CARRYB[2][2] ;
wire net9298 ;
wire net11211 ;
wire net10923 ;
wire \ab[3][3] ;
wire \ab[3][2] ;
wire \ab[2][3] ;
wire \SUMB[3][3] ;
wire \SUMB[3][2] ;
wire \SUMB[2][3] ;
wire \SUMB[1][4] ;
wire \CARRYB[3][2] ;
wire \CARRYB[2][3] ;
wire net9401 ;
wire net9386 ;
wire net9295 ;
wire net9288 ;
wire net7497 ;
wire net11130 ;
wire \ab[1][2] ;
wire \ab[0][3] ;
wire net9340 ;
wire n3 ;
wire n4 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire net3022 ;
wire net3042 ;
wire n7 ;
wire \SUMB[4][3] ;
wire \CARRYB[4][3] ;
wire net9369 ;
wire net9355 ;
wire net11212 ;
wire n8 ;
wire \ab[4][4] ;
wire \ab[3][5] ;
wire \ab[3][4] ;
wire \ab[2][5] ;
wire \ab[2][4] ;
wire \SUMB[3][4] ;
wire \SUMB[2][5] ;
wire \SUMB[2][4] ;
wire \SUMB[1][6] ;
wire \CARRYB[3][4] ;
wire \CARRYB[3][3] ;
wire \CARRYB[2][5] ;
wire \CARRYB[2][4] ;
wire net11466 ;
wire net11465 ;
wire net9400 ;
wire net7500 ;
wire net7488 ;
wire net11161 ;
wire \ab[1][5] ;
wire \ab[0][6] ;
wire \SUMB[1][5] ;
wire net9388 ;
wire net11527 ;
wire \SUMB[6][2] ;
wire \SUMB[5][3] ;
wire \SUMB[4][4] ;
wire \CARRYB[6][2] ;
wire \CARRYB[5][3] ;
wire net9354 ;
wire net9334 ;
wire net11225 ;
wire n6 ;
wire n5 ;
wire \ab[2][7] ;
wire \ab[2][6] ;
wire \ab[1][7] ;
wire \SUMB[7][3] ;
wire \SUMB[7][2] ;
wire \SUMB[6][4] ;
wire \SUMB[6][3] ;
wire \SUMB[5][5] ;
wire \SUMB[5][4] ;
wire \SUMB[4][5] ;
wire \SUMB[3][6] ;
wire \SUMB[3][5] ;
wire \SUMB[2][6] ;
wire \CARRYB[7][2] ;
wire \CARRYB[6][3] ;
wire \CARRYB[5][4] ;
wire \CARRYB[4][5] ;
wire \CARRYB[4][4] ;
wire \CARRYB[3][5] ;
wire \CARRYB[2][6] ;
wire n17 ;
wire n18 ;
wire n19 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

FADDX1 S4_4 ( .A ( \ab[7][4] ) , .B ( \CARRYB[6][4] ) , .CI ( \SUMB[6][5] ) , 
    .CO ( \CARRYB[7][4] ) , .S ( \SUMB[7][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_5 ( .A ( \ab[7][5] ) , .B ( \CARRYB[6][5] ) , .CI ( \SUMB[6][6] ) , 
    .CO ( \CARRYB[7][5] ) , .S ( \SUMB[7][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S5_6 ( .A ( \ab[7][6] ) , .B ( \CARRYB[6][6] ) , .CI ( \ab[6][7] ) , 
    .CO ( \CARRYB[7][6] ) , .S ( \SUMB[7][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_6_5 ( .A ( \ab[6][5] ) , .B ( \CARRYB[5][5] ) , 
    .CI ( \SUMB[5][6] ) , .CO ( \CARRYB[6][5] ) , .S ( \SUMB[6][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S3_5_6 ( .A ( \ab[5][6] ) , .B ( \CARRYB[4][6] ) , .CI ( \ab[4][7] ) , 
    .CO ( \CARRYB[5][6] ) , .S ( \SUMB[5][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S3_4_6 ( .A ( \ab[4][6] ) , .B ( \ab[3][7] ) , .CI ( \CARRYB[3][6] ) , 
    .CO ( \CARRYB[4][6] ) , .S ( \SUMB[4][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S1_2_0 ( .A ( \ab[2][0] ) , .B ( n3 ) , .CI ( \SUMB[1][1] ) , 
    .CO ( \CARRYB[2][0] ) , .S ( \A1[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S1_3_0 ( .A ( \ab[3][0] ) , .B ( \SUMB[2][1] ) , 
    .CI ( \CARRYB[2][0] ) , .CO ( \CARRYB[3][0] ) , .S ( \A1[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_1 ( .A ( n9 ) , .B ( \ab[2][1] ) , .CI ( \SUMB[1][2] ) , 
    .CO ( \CARRYB[2][1] ) , .S ( \SUMB[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S1_4_0 ( .A ( \ab[4][0] ) , .B ( \SUMB[3][1] ) , 
    .CI ( \CARRYB[3][0] ) , .CO ( \CARRYB[4][0] ) , .S ( \A1[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S1_5_0 ( .A ( \ab[5][0] ) , .B ( \SUMB[4][1] ) , 
    .CI ( \CARRYB[4][0] ) , .CO ( \CARRYB[5][0] ) , .S ( \A1[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_0 ( .A ( \SUMB[6][1] ) , .B ( \ab[7][0] ) , .CI ( \CARRYB[6][0] ) , 
    .CO ( \CARRYB[7][0] ) , .S ( \SUMB[7][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_6_1 ( .A ( \CARRYB[5][1] ) , .B ( \ab[6][1] ) , 
    .CI ( \SUMB[5][2] ) , .CO ( \CARRYB[6][1] ) , .S ( \SUMB[6][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_1 ( .A ( \SUMB[2][2] ) , .B ( \ab[3][1] ) , 
    .CI ( \CARRYB[2][1] ) , .CO ( \CARRYB[3][1] ) , .S ( \SUMB[3][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_3 ( .A ( net11211 ) , .B ( \ab[2][3] ) , .CI ( \SUMB[1][4] ) , 
    .CO ( \CARRYB[2][3] ) , .S ( \SUMB[2][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_2 ( .A ( \CARRYB[3][2] ) , .B ( \ab[4][2] ) , 
    .CI ( \SUMB[3][3] ) , .CO ( \CARRYB[4][2] ) , .S ( \SUMB[4][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U2 ( .IN1 ( \ab[0][3] ) , .IN2 ( \ab[1][2] ) , .Q ( \SUMB[1][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U10 ( .IN1 ( net9323 ) , .IN2 ( net9470 ) , .QN ( \ab[4][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U11 ( .IN1 ( \ab[0][4] ) , .IN2 ( \ab[1][3] ) , .Q ( net11211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U12 ( .IN1 ( \ab[1][3] ) , .IN2 ( \ab[0][4] ) , .Q ( \SUMB[1][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U13 ( .IN1 ( net9297 ) , .IN2 ( net9471 ) , .QN ( \ab[4][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U14 ( .IN1 ( net7496 ) , .IN2 ( net11429 ) , .QN ( \ab[0][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( \ab[1][0] ) , .IN2 ( \ab[0][1] ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( net7494 ) , .ZN ( net11153 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U18 ( .IN1 ( \CARRYB[7][6] ) , .IN2 ( \ab[7][7] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( net11041 ) , .IN2 ( net9471 ) , .QN ( \ab[4][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U24 ( .IN1 ( net11156 ) , .IN2 ( net3042 ) , .QN ( \ab[7][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( B[7] ) , .ZN ( net9340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U30 ( .IN1 ( \ab[1][2] ) , .IN2 ( \ab[0][3] ) , .Q ( net11130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U31 ( .IN1 ( net9401 ) , .IN2 ( net9288 ) , .QN ( \ab[0][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( B[3] ) , .ZN ( net9288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( net9389 ) , .IN2 ( net9288 ) , .QN ( \ab[1][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U37 ( .INP ( net9401 ) , .ZN ( net11428 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U39 ( .INP ( net7497 ) , .ZN ( net9295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U40 ( .INP ( net9295 ) , .ZN ( net9297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( B[2] ) , .ZN ( net7497 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( net7497 ) , .ZN ( net11229 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( net9386 ) , .ZN ( net9389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U49 ( .IN1 ( net9288 ) , .IN2 ( net10923 ) , .QN ( \ab[2][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U50 ( .IN1 ( net9279 ) , .IN2 ( net10923 ) , .QN ( \ab[2][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U51 ( .IN1 ( net9297 ) , .IN2 ( net10923 ) , .QN ( \ab[2][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U52 ( .IN1 ( net9289 ) , .IN2 ( net9368 ) , .QN ( \ab[3][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( B[3] ) , .ZN ( net9289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U54 ( .IN1 ( \ab[0][5] ) , .IN2 ( \ab[1][4] ) , .Q ( \SUMB[1][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( A[3] ) , .ZN ( net9368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U60 ( .INP ( net11229 ) , .ZN ( net9298 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U61 ( .IN1 ( net9298 ) , .IN2 ( net11013 ) , .QN ( \ab[6][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U62 ( .IN1 ( net9298 ) , .IN2 ( net10959 ) , .QN ( \ab[5][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U66 ( .IN1 ( \SUMB[7][1] ) , .IN2 ( \CARRYB[7][0] ) , .Q ( net10887 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U72 ( .IN1 ( net7495 ) , .IN2 ( net9368 ) , .QN ( \ab[3][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U80 ( .IN1 ( net11041 ) , .IN2 ( net9368 ) , .QN ( \ab[3][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U81 ( .INP ( net9277 ) , .ZN ( net9279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U82 ( .IN1 ( net9279 ) , .IN2 ( net9470 ) , .QN ( \ab[4][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U83 ( .IN1 ( net7494 ) , .IN2 ( net9279 ) , .QN ( \ab[7][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( net7496 ) , .ZN ( net9277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U85 ( .INP ( net9277 ) , .ZN ( net9280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U86 ( .INP ( B[1] ) , .ZN ( net7496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U87 ( .IN1 ( \ab[0][2] ) , .IN2 ( \ab[1][1] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U88 ( .INP ( net11428 ) , .ZN ( net11462 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U89 ( .INP ( net11428 ) , .ZN ( net11429 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U90 ( .IN1 ( net11462 ) , .IN2 ( net11286 ) , .QN ( \ab[0][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( net11229 ) , .ZN ( net11286 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U93 ( .IN1 ( net9238 ) , .IN2 ( net11429 ) , .QN ( PRODUCT[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( net11153 ) , .ZN ( net11155 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U96 ( .INP ( net11153 ) , .ZN ( net11156 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( net11012 ) , .ZN ( net11013 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( net11012 ) , .ZN ( net11014 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U100 ( .INP ( net11012 ) , .ZN ( net11015 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U101 ( .INP ( A[5] ) , .ZN ( net10958 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U102 ( .INP ( A[5] ) , .ZN ( net10959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U103 ( .IN1 ( net7495 ) , .IN2 ( n19 ) , .QN ( \ab[1][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U104 ( .IN1 ( \CARRYB[7][3] ) , .IN2 ( \SUMB[7][4] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U105 ( .IN1 ( \CARRYB[7][4] ) , .IN2 ( \SUMB[7][5] ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U106 ( .IN1 ( \CARRYB[7][5] ) , .IN2 ( \SUMB[7][6] ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U107 ( .INP ( A[6] ) , .ZN ( net7493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( A[7] ) , .ZN ( net7494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U109 ( .IN1 ( \CARRYB[7][3] ) , .IN2 ( \SUMB[7][4] ) , .Q ( \A1[9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U110 ( .IN1 ( \CARRYB[7][4] ) , .IN2 ( \SUMB[7][5] ) , .Q ( \A1[10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U111 ( .IN1 ( \CARRYB[7][5] ) , .IN2 ( \SUMB[7][6] ) , .Q ( \A1[11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U112 ( .IN1 ( \CARRYB[7][6] ) , .IN2 ( \ab[7][7] ) , .Q ( \A1[12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U113 ( .IN1 ( \ab[0][1] ) , .IN2 ( \ab[1][0] ) , .Q ( PRODUCT[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U114 ( .INP ( A[4] ) , .ZN ( net9470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U115 ( .INP ( A[4] ) , .ZN ( net9471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U116 ( .INP ( B[7] ) , .ZN ( net9341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U118 ( .INP ( B[4] ) , .ZN ( net9328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U119 ( .INP ( B[0] ) , .ZN ( net9238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( B[0] ) , .ZN ( net7495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U122 ( .IN1 ( net11155 ) , .IN2 ( net9341 ) , .QN ( \ab[7][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U123 ( .IN1 ( net11155 ) , .IN2 ( net9323 ) , .QN ( \ab[7][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U124 ( .IN1 ( net11156 ) , .IN2 ( net9289 ) , .QN ( \ab[7][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U125 ( .IN1 ( net7494 ) , .IN2 ( net11286 ) , .QN ( \ab[7][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U126 ( .IN1 ( net11155 ) , .IN2 ( net9238 ) , .QN ( \ab[7][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U128 ( .IN1 ( net11015 ) , .IN2 ( net3042 ) , .QN ( \ab[6][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U129 ( .IN1 ( net9323 ) , .IN2 ( net11014 ) , .QN ( \ab[6][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U131 ( .IN1 ( net9289 ) , .IN2 ( net11013 ) , .QN ( \ab[6][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U132 ( .IN1 ( net9280 ) , .IN2 ( net11014 ) , .QN ( \ab[6][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U133 ( .IN1 ( net9238 ) , .IN2 ( net11015 ) , .QN ( \ab[6][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U135 ( .IN1 ( net11041 ) , .IN2 ( net10959 ) , .QN ( \ab[5][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U136 ( .IN1 ( net9323 ) , .IN2 ( net10958 ) , .QN ( \ab[5][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U138 ( .IN1 ( net9289 ) , .IN2 ( net10958 ) , .QN ( \ab[5][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U139 ( .IN1 ( net9280 ) , .IN2 ( net10959 ) , .QN ( \ab[5][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( net9238 ) , .IN2 ( net10958 ) , .QN ( \ab[5][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U141 ( .IN1 ( net9341 ) , .IN2 ( net9470 ) , .QN ( \ab[4][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U142 ( .IN1 ( net9289 ) , .IN2 ( net9471 ) , .QN ( \ab[4][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U143 ( .IN1 ( net9238 ) , .IN2 ( net9471 ) , .QN ( \ab[4][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U9 ( .IN1 ( \ab[1][4] ) , .IN2 ( \ab[0][5] ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_2 ( .A ( \ab[5][2] ) , .B ( \CARRYB[4][2] ) , 
    .CI ( \SUMB[4][3] ) , .CO ( \CARRYB[5][2] ) , .S ( \SUMB[5][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U71 ( .IN1 ( net11156 ) , .IN2 ( net11212 ) , .QN ( \ab[7][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U70 ( .IN1 ( net11212 ) , .IN2 ( net9470 ) , .QN ( \ab[4][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_3 ( .A ( \CARRYB[2][3] ) , .B ( \ab[3][3] ) , 
    .CI ( \SUMB[2][4] ) , .CO ( \CARRYB[3][3] ) , .S ( \SUMB[3][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U137 ( .IN1 ( net11212 ) , .IN2 ( net10959 ) , .QN ( \ab[5][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U94 ( .INP ( B[4] ) , .ZN ( net11212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U58 ( .IN1 ( net9341 ) , .IN2 ( net9369 ) , .QN ( \ab[3][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U57 ( .IN1 ( net9280 ) , .IN2 ( net9369 ) , .QN ( \ab[3][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U55 ( .IN1 ( net9298 ) , .IN2 ( net9369 ) , .QN ( \ab[3][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( A[3] ) , .ZN ( net9369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( net11212 ) , .IN2 ( net9369 ) , .QN ( \ab[3][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U73 ( .IN1 ( net9323 ) , .IN2 ( net9368 ) , .QN ( \ab[3][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U67 ( .IN1 ( net9328 ) , .IN2 ( net9355 ) , .QN ( \ab[2][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U68 ( .IN1 ( net7500 ) , .IN2 ( net9355 ) , .QN ( \ab[2][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_5 ( .A ( n8 ) , .B ( \ab[2][5] ) , .CI ( \SUMB[1][6] ) , 
    .CO ( \CARRYB[2][5] ) , .S ( \SUMB[2][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_3 ( .A ( \CARRYB[3][3] ) , .B ( \ab[4][3] ) , 
    .CI ( \SUMB[3][4] ) , .CO ( \CARRYB[4][3] ) , .S ( \SUMB[4][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_4 ( .A ( \CARRYB[2][4] ) , .B ( \ab[3][4] ) , 
    .CI ( \SUMB[2][5] ) , .CO ( \CARRYB[3][4] ) , .S ( \SUMB[3][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( net9386 ) , .ZN ( net11465 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( net11466 ) , .IN2 ( net9295 ) , .Q ( \ab[1][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( B[5] ) , .ZN ( net9323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U97 ( .INP ( B[6] ) , .ZN ( net11041 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( A[0] ) , .ZN ( net9401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( net7488 ) , .ZN ( net9386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( A[1] ) , .ZN ( net7488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U63 ( .IN1 ( net11161 ) , .IN2 ( net9328 ) , .QN ( \ab[1][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U149 ( .IN1 ( net7500 ) , .IN2 ( net9401 ) , .QN ( \ab[0][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U77 ( .INP ( B[5] ) , .ZN ( net7500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( net11161 ) , .IN2 ( net7500 ) , .QN ( \ab[1][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U65 ( .IN1 ( net9328 ) , .IN2 ( net9400 ) , .QN ( \ab[0][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U28 ( .IN1 ( net9340 ) , .IN2 ( net9400 ) , .QN ( \ab[0][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( A[0] ) , .ZN ( net9400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U78 ( .IN1 ( \ab[1][5] ) , .IN2 ( \ab[0][6] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_4 ( .A ( n7 ) , .B ( \ab[2][4] ) , .CI ( \SUMB[1][5] ) , 
    .CO ( \CARRYB[2][4] ) , .S ( \SUMB[2][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( net11465 ) , .ZN ( net11466 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U147 ( .IN1 ( net7496 ) , .IN2 ( net9388 ) , .QN ( \ab[1][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( net11466 ) , .ZN ( net9388 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( net11527 ) , .IN2 ( net10958 ) , .QN ( \ab[5][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_3 ( .A ( \CARRYB[4][3] ) , .B ( \ab[5][3] ) , 
    .CI ( \SUMB[4][4] ) , .CO ( \CARRYB[5][3] ) , .S ( \SUMB[5][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_1 ( .A ( \CARRYB[6][1] ) , .B ( \ab[7][1] ) , .CI ( \SUMB[6][2] ) , 
    .CO ( \CARRYB[7][1] ) , .S ( \SUMB[7][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U127 ( .IN1 ( net11527 ) , .IN2 ( net11014 ) , .QN ( \ab[6][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( B[7] ) , .ZN ( net11527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U25 ( .IN1 ( net9388 ) , .IN2 ( net11527 ) , .QN ( \ab[1][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U146 ( .IN1 ( net9334 ) , .IN2 ( net9389 ) , .QN ( \ab[1][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U148 ( .IN1 ( net9334 ) , .IN2 ( net9400 ) , .QN ( \ab[0][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U117 ( .INP ( B[6] ) , .ZN ( net9334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U6 ( .INP ( n6 ) , .Z ( net10923 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( A[2] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( net9354 ) , .ZN ( net9355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n6 ) , .ZN ( net9354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U144 ( .IN1 ( net9341 ) , .IN2 ( net11225 ) , .QN ( \ab[2][7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U145 ( .IN1 ( net7495 ) , .IN2 ( net11225 ) , .QN ( \ab[2][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U92 ( .INP ( net9354 ) , .ZN ( net11225 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( net9334 ) , .IN2 ( net11225 ) , .QN ( \ab[2][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S3_3_6 ( .A ( \ab[3][6] ) , .B ( \ab[2][7] ) , .CI ( \CARRYB[2][6] ) , 
    .CO ( \CARRYB[3][6] ) , .S ( \SUMB[3][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S3_2_6 ( .A ( \ab[1][7] ) , .B ( \ab[2][6] ) , .CI ( n5 ) , 
    .CO ( \CARRYB[2][6] ) , .S ( \SUMB[2][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_4 ( .A ( \CARRYB[3][4] ) , .B ( \ab[4][4] ) , 
    .CI ( \SUMB[3][5] ) , .CO ( \CARRYB[4][4] ) , .S ( \SUMB[4][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_5 ( .A ( \CARRYB[2][5] ) , .B ( \ab[3][5] ) , 
    .CI ( \SUMB[2][6] ) , .CO ( \CARRYB[3][5] ) , .S ( \SUMB[3][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_6_4 ( .A ( \CARRYB[5][4] ) , .B ( \ab[6][4] ) , 
    .CI ( \SUMB[5][5] ) , .CO ( \CARRYB[6][4] ) , .S ( \SUMB[6][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_4 ( .A ( \CARRYB[4][4] ) , .B ( \ab[5][4] ) , 
    .CI ( \SUMB[4][5] ) , .CO ( \CARRYB[5][4] ) , .S ( \SUMB[5][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_3 ( .A ( \CARRYB[6][3] ) , .B ( \ab[7][3] ) , .CI ( \SUMB[6][4] ) , 
    .CO ( \CARRYB[7][3] ) , .S ( \SUMB[7][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_6_3 ( .A ( \CARRYB[5][3] ) , .B ( \ab[6][3] ) , 
    .CI ( \SUMB[5][4] ) , .CO ( \CARRYB[6][3] ) , .S ( \SUMB[6][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U151 ( .IN1 ( \CARRYB[7][2] ) , .IN2 ( \SUMB[7][3] ) , .Q ( \A1[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_2 ( .A ( \CARRYB[6][2] ) , .B ( \ab[7][2] ) , .CI ( \SUMB[6][3] ) , 
    .CO ( \CARRYB[7][2] ) , .S ( \SUMB[7][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U154 ( .IN1 ( \SUMB[7][2] ) , .IN2 ( \CARRYB[7][1] ) , .Q ( \A1[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S1_6_0 ( .A ( \ab[6][0] ) , .B ( \SUMB[5][1] ) , 
    .CI ( \CARRYB[5][0] ) , .CO ( \CARRYB[6][0] ) , .S ( \A1[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S3_6_6 ( .A ( \ab[6][6] ) , .B ( \CARRYB[5][6] ) , .CI ( \ab[5][7] ) , 
    .CO ( \CARRYB[6][6] ) , .S ( \SUMB[6][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_2 ( .A ( \CARRYB[2][2] ) , .B ( \ab[3][2] ) , 
    .CI ( \SUMB[2][3] ) , .CO ( \CARRYB[3][2] ) , .S ( \SUMB[3][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_5 ( .A ( \ab[5][5] ) , .B ( \CARRYB[4][5] ) , 
    .CI ( \SUMB[4][6] ) , .CO ( \CARRYB[5][5] ) , .S ( \SUMB[5][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_1 ( .A ( \SUMB[3][2] ) , .B ( \ab[4][1] ) , 
    .CI ( \CARRYB[3][1] ) , .CO ( \CARRYB[4][1] ) , .S ( \SUMB[4][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_5 ( .A ( \SUMB[3][6] ) , .B ( \ab[4][5] ) , 
    .CI ( \CARRYB[3][5] ) , .CO ( \CARRYB[4][5] ) , .S ( \SUMB[4][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U3 ( .IN1 ( \SUMB[7][2] ) , .IN2 ( \CARRYB[7][1] ) , .Q ( net3022 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U4 ( .IN1 ( \CARRYB[7][0] ) , .IN2 ( \SUMB[7][1] ) , .Q ( \A1[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U7 ( .IN1 ( \ab[0][7] ) , .IN2 ( \ab[1][6] ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U8 ( .IN1 ( \ab[0][2] ) , .IN2 ( \ab[1][1] ) , .Q ( \SUMB[1][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( \ab[0][6] ) , .IN2 ( \ab[1][5] ) , .Q ( \SUMB[1][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( \ab[0][7] ) , .IN2 ( \ab[1][6] ) , .Q ( \SUMB[1][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U69 ( .IN1 ( net11212 ) , .IN2 ( net11015 ) , .QN ( \ab[6][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U74 ( .INP ( net11041 ) , .Z ( net3042 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U75 ( .INP ( net7493 ) , .ZN ( net11012 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
ALU_DW01_add_1 FS_1 (
    .A ( { VSS , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] } ) ,
    .B ( { n4 , n12 , n11 , n10 , n17 , net3022 , net10887 , VSS , VSS , VSS , 
        VSS , VSS , VSS , VSS } ) ,
    .CI ( VSS ) , .SUM ( PRODUCT[15:2] ) , .CO ( SYNOPSYS_UNCONNECTED_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX2 S2_6_2 ( .A ( \CARRYB[5][2] ) , .B ( \ab[6][2] ) , 
    .CI ( \SUMB[5][3] ) , .CO ( \CARRYB[6][2] ) , .S ( \SUMB[6][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX2 S2_2_2 ( .A ( net11130 ) , .B ( \ab[2][2] ) , .CI ( \SUMB[1][3] ) , 
    .CO ( \CARRYB[2][2] ) , .S ( \SUMB[2][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_1 ( .A ( \SUMB[4][2] ) , .B ( \ab[5][1] ) , 
    .CI ( \CARRYB[4][1] ) , .CO ( \CARRYB[5][1] ) , .S ( \SUMB[5][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U5 ( .IN1 ( \CARRYB[7][2] ) , .IN2 ( \SUMB[7][3] ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U15 ( .INP ( net7488 ) , .Z ( net11161 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U130 ( .INP ( net11161 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U152 ( .INP ( n18 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ALU_DW01_add_0 ( A , B , CI , SUM , CO , VDD , VSS ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;
input  VDD ;
input  VSS ;

wire n1 ;
wire [8:1] carry ;
supply1 VDD ;
supply0 VSS ;

FADDX1 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , .CO ( SUM[8] ) , 
    .S ( SUM[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( n1 ) , .CO ( carry[2] ) , 
    .S ( SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U2 ( .IN1 ( A[0] ) , .IN2 ( B[0] ) , .Q ( SUM[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U1 ( .IN1 ( A[0] ) , .IN2 ( B[0] ) , .Q ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ALU_DW01_sub_0 ( A , B , CI , DIFF , CO , VDD , VSS ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] DIFF ;
output CO ;
input  VDD ;
input  VSS ;

wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire [9:0] carry ;
supply1 VDD ;
supply0 VSS ;

FADDX1 U2_7 ( .A ( A[7] ) , .B ( n2 ) , .CI ( carry[7] ) , .CO ( carry[8] ) , 
    .S ( DIFF[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_6 ( .A ( A[6] ) , .B ( n3 ) , .CI ( carry[6] ) , .CO ( carry[7] ) , 
    .S ( DIFF[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_5 ( .A ( A[5] ) , .B ( n4 ) , .CI ( carry[5] ) , .CO ( carry[6] ) , 
    .S ( DIFF[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_4 ( .A ( A[4] ) , .B ( n5 ) , .CI ( carry[4] ) , .CO ( carry[5] ) , 
    .S ( DIFF[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_3 ( .A ( A[3] ) , .B ( n6 ) , .CI ( carry[3] ) , .CO ( carry[4] ) , 
    .S ( DIFF[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_2 ( .A ( A[2] ) , .B ( n7 ) , .CI ( carry[2] ) , .CO ( carry[3] ) , 
    .S ( DIFF[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_1 ( .A ( A[1] ) , .B ( n8 ) , .CI ( carry[1] ) , .CO ( carry[2] ) , 
    .S ( DIFF[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U1 ( .IN1 ( n9 ) , .IN2 ( A[0] ) , .Q ( carry[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U2 ( .IN1 ( B[0] ) , .IN2 ( A[0] ) , .Q ( DIFF[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( B[7] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( B[6] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( B[4] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( B[5] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( B[3] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( B[2] ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( B[1] ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( B[0] ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( carry[8] ) , .ZN ( DIFF[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ALU_DW_div_uns_0 ( a , b , quotient , remainder , divide_by_0 , VDD , 
    VSS ) ;
input  [3:0] a ;
input  [3:0] b ;
output [3:0] quotient ;
output [3:0] remainder ;
output divide_by_0 ;
input  VDD ;
input  VSS ;

wire n23 ;
wire \u_div/SumTmp[1][0] ;
wire \u_div/SumTmp[1][1] ;
wire \u_div/SumTmp[1][2] ;
wire \u_div/SumTmp[2][0] ;
wire \u_div/SumTmp[2][1] ;
wire \u_div/SumTmp[3][0] ;
wire \u_div/CryTmp[0][1] ;
wire \u_div/CryTmp[0][2] ;
wire \u_div/CryTmp[0][3] ;
wire \u_div/CryTmp[1][1] ;
wire \u_div/CryTmp[1][2] ;
wire \u_div/CryTmp[1][3] ;
wire \u_div/CryTmp[2][1] ;
wire \u_div/CryTmp[2][2] ;
wire \u_div/CryTmp[3][1] ;
wire \u_div/PartRem[1][1] ;
wire \u_div/PartRem[1][2] ;
wire \u_div/PartRem[1][3] ;
wire \u_div/PartRem[2][1] ;
wire \u_div/PartRem[2][2] ;
wire \u_div/PartRem[3][1] ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n12 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
supply1 VDD ;
supply0 VSS ;

FADDX1 \u_div/u_fa_PartRem_0_1_2 ( .A ( \u_div/PartRem[2][2] ) , .B ( n4 ) , 
    .CI ( \u_div/CryTmp[1][2] ) , .CO ( \u_div/CryTmp[1][3] ) , 
    .S ( \u_div/SumTmp[1][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U4 ( .A ( \u_div/CryTmp[1][1] ) , .B ( n10 ) , 
    .CI ( \u_div/PartRem[2][1] ) , .CO ( \u_div/CryTmp[1][2] ) , 
    .S ( \u_div/SumTmp[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U6 ( .IN1 ( n6 ) , .IN2 ( \u_div/SumTmp[1][1] ) , .S ( n23 ) , 
    .Q ( \u_div/PartRem[1][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U7 ( .IN1 ( n17 ) , .IN2 ( n16 ) , .Q ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U8 ( .IN1 ( \u_div/PartRem[1][2] ) , .IN2 ( \u_div/CryTmp[0][2] ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U9 ( .IN1 ( \u_div/CryTmp[0][2] ) , .IN2 ( n4 ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U10 ( .IN1 ( n4 ) , .IN2 ( \u_div/PartRem[1][2] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U11 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , 
    .QN ( \u_div/CryTmp[0][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U12 ( .INP ( n17 ) , .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( b[2] ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( \u_div/SumTmp[1][0] ) , .IN2 ( a[1] ) , .S ( n5 ) , 
    .Q ( \u_div/PartRem[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U17 ( .IN1 ( \u_div/PartRem[3][1] ) , .IN2 ( \u_div/SumTmp[2][1] ) , 
    .S ( quotient[2] ) , .Q ( \u_div/PartRem[2][2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U18 ( .IN1 ( a[2] ) , .IN2 ( n8 ) , .QN ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U19 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( n21 ) , .IN2 ( n9 ) , .QN ( \u_div/CryTmp[1][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U22 ( .A ( \u_div/CryTmp[2][1] ) , .B ( n18 ) , 
    .CI ( \u_div/PartRem[3][1] ) , .CO ( \u_div/CryTmp[2][2] ) , 
    .S ( \u_div/SumTmp[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U23 ( .IN1 ( \u_div/CryTmp[2][2] ) , .IN2 ( n12 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( b[1] ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( b[1] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n31 ) , .ZN ( quotient[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n8 ) , .ZN ( quotient[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U31 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( \u_div/PartRem[2][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( a[3] ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( a[1] ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( a[0] ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( a[2] ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U36 ( .IN1 ( n9 ) , .IN2 ( n22 ) , .QN ( \u_div/CryTmp[0][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U39 ( .IN1 ( n19 ) , .IN2 ( b[0] ) , .QN ( \u_div/CryTmp[3][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( a[3] ) , .IN2 ( \u_div/SumTmp[3][0] ) , 
    .S ( quotient[3] ) , .Q ( \u_div/PartRem[3][1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X2 U13 ( .IN1 ( \u_div/PartRem[2][2] ) , .IN2 ( \u_div/SumTmp[1][2] ) , 
    .S ( quotient[1] ) , .Q ( \u_div/PartRem[1][3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U1 ( .IN1 ( \u_div/PartRem[1][3] ) , .IN2 ( \u_div/CryTmp[0][3] ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U2 ( .IN1 ( \u_div/CryTmp[0][3] ) , .IN2 ( n7 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U3 ( .IN1 ( n7 ) , .IN2 ( \u_div/PartRem[1][3] ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U5 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( n26 ) , 
    .QN ( quotient[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U15 ( .INP ( n16 ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U21 ( .IN1 ( \u_div/CryTmp[0][1] ) , .IN2 ( \u_div/PartRem[1][1] ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U24 ( .IN1 ( n10 ) , .IN2 ( \u_div/PartRem[1][1] ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( n10 ) , .IN2 ( \u_div/CryTmp[0][1] ) , .QN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U26 ( .IN1 ( n28 ) , .IN2 ( n27 ) , .IN3 ( n29 ) , 
    .QN ( \u_div/CryTmp[0][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U37 ( .IN1 ( n18 ) , .IN2 ( n17 ) , .IN3 ( n16 ) , .Q ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( \u_div/CryTmp[3][1] ) , .IN2 ( n30 ) , 
    .Q ( quotient[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U41 ( .INP ( b[3] ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U42 ( .IN1 ( \u_div/CryTmp[1][3] ) , .IN2 ( n7 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U43 ( .IN1 ( n9 ) , .IN2 ( a[1] ) , .Q ( \u_div/SumTmp[1][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U44 ( .IN1 ( n9 ) , .IN2 ( a[2] ) , .Q ( \u_div/SumTmp[2][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U45 ( .IN1 ( b[0] ) , .IN2 ( a[3] ) , .Q ( \u_div/SumTmp[3][0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U46 ( .INP ( b[0] ) , .Z ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U47 ( .IN1 ( \u_div/SumTmp[2][0] ) , .IN2 ( n33 ) , .IN3 ( n17 ) , 
    .IN4 ( n16 ) , .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U48 ( .IN1 ( n20 ) , .IN2 ( n9 ) , .QN ( \u_div/CryTmp[2][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n23 ) , .ZN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U50 ( .IN1 ( \u_div/CryTmp[1][3] ) , .IN2 ( n7 ) , .Q ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( \u_div/CryTmp[2][2] ) , .ZN ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n32 ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ALU ( CLK , RST , A , B , ALU_FUN , Enable , ALU_OUT , OUT_VALID , 
    test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  [7:0] A ;
input  [7:0] B ;
input  [3:0] ALU_FUN ;
input  Enable ;
output [15:0] ALU_OUT ;
output OUT_VALID ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N87 ;
wire N88 ;
wire N89 ;
wire N90 ;
wire N91 ;
wire N92 ;
wire N93 ;
wire N94 ;
wire N95 ;
wire N96 ;
wire N97 ;
wire N98 ;
wire N99 ;
wire N100 ;
wire N101 ;
wire N102 ;
wire N103 ;
wire N104 ;
wire N105 ;
wire N106 ;
wire N107 ;
wire N108 ;
wire N109 ;
wire N110 ;
wire N111 ;
wire N112 ;
wire N113 ;
wire N114 ;
wire N115 ;
wire N116 ;
wire N117 ;
wire N118 ;
wire N119 ;
wire N120 ;
wire N121 ;
wire N122 ;
wire N123 ;
wire N124 ;
wire N149 ;
wire N150 ;
wire n33 ;
wire n35 ;
wire n36 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n50 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n63 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
wire n100 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n3 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n16 ;
wire n17 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n31 ;
wire n32 ;
wire n37 ;
wire n49 ;
wire n58 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n119 ;
wire n120 ;
wire n121 ;
wire n122 ;
wire n123 ;
wire n124 ;
wire n126 ;
wire n127 ;
wire n128 ;
wire n129 ;
wire n131 ;
wire n134 ;
wire n135 ;
wire n136 ;
wire n137 ;
wire n138 ;
wire n139 ;
wire n140 ;
wire n142 ;
wire n143 ;
wire n145 ;
wire n146 ;
wire n147 ;
wire n148 ;
wire n149 ;
wire n153 ;
wire n154 ;
wire n155 ;
wire n156 ;
wire n157 ;
wire n158 ;
wire n159 ;
wire n160 ;
wire n161 ;
wire n162 ;
wire n163 ;
wire n165 ;
wire n166 ;
wire n167 ;
wire n168 ;
wire n169 ;
wire n170 ;
wire n171 ;
wire n172 ;
wire n173 ;
wire n175 ;
wire n176 ;
wire n177 ;
wire n178 ;
wire n180 ;
wire n181 ;
wire n182 ;
wire n183 ;
wire n184 ;
wire n185 ;
wire n186 ;
wire n187 ;
wire n188 ;
wire n189 ;
wire n190 ;
wire n191 ;
wire n192 ;
wire n193 ;
wire n194 ;
wire n195 ;
wire n196 ;
wire n197 ;
wire n198 ;
wire n199 ;
wire n200 ;
wire n201 ;
wire n202 ;
wire n203 ;
wire n204 ;
wire n205 ;
wire n206 ;
wire n207 ;
wire n208 ;
wire n209 ;
wire n211 ;
wire n212 ;
wire n213 ;
wire n214 ;
wire n215 ;
wire n216 ;
wire n217 ;
wire n218 ;
wire n219 ;
wire n220 ;
wire n221 ;
wire n222 ;
wire n223 ;
wire n224 ;
wire n226 ;
wire n227 ;
wire n228 ;
wire n230 ;
wire net3035 ;
wire net9616 ;
wire net9598 ;
wire net9563 ;
wire net9545 ;
wire net9544 ;
wire n231 ;
wire n232 ;
wire n233 ;
wire n234 ;
wire n235 ;
wire n236 ;
wire n237 ;
wire n238 ;
wire n239 ;
wire n240 ;
wire n241 ;
wire n242 ;
wire n243 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n14 ;
wire n15 ;
wire n18 ;
wire n26 ;
wire [15:0] ALU_OUT_Comb ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;
wire SYNOPSYS_UNCONNECTED_19 ;
wire SYNOPSYS_UNCONNECTED_20 ;
wire SYNOPSYS_UNCONNECTED_21 ;
wire SYNOPSYS_UNCONNECTED_22 ;
wire SYNOPSYS_UNCONNECTED_23 ;
wire SYNOPSYS_UNCONNECTED_24 ;

AO221X1 U57 ( .IN1 ( n227 ) , .IN2 ( n36 ) , .IN3 ( n169 ) , .IN4 ( n219 ) , 
    .IN5 ( n46 ) , .Q ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U60 ( .IN1 ( n154 ) , .IN2 ( n219 ) , .IN3 ( n184 ) , .IN4 ( n181 ) , 
    .IN5 ( n167 ) , .Q ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U63 ( .IN1 ( n117 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , .IN4 ( n181 ) , 
    .IN5 ( n56 ) , .Q ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U68 ( .IN1 ( n117 ) , .IN2 ( n186 ) , .IN3 ( n168 ) , .IN4 ( n221 ) , 
    .IN5 ( N110 ) , .IN6 ( n231 ) , .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U69 ( .IN1 ( n175 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , .IN4 ( n227 ) , 
    .IN5 ( n62 ) , .Q ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U71 ( .IN1 ( n117 ) , .IN2 ( n58 ) , .IN3 ( n184 ) , .IN4 ( n221 ) , 
    .IN5 ( n186 ) , .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U72 ( .IN1 ( n155 ) , .IN2 ( n221 ) , .IN3 ( n177 ) , .IN4 ( n183 ) , 
    .IN5 ( n167 ) , .Q ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U74 ( .IN1 ( n175 ) , .IN2 ( n187 ) , .IN3 ( n169 ) , .IN4 ( n222 ) , 
    .IN5 ( N109 ) , .IN6 ( n232 ) , .Q ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U75 ( .IN1 ( n173 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , .IN4 ( n177 ) , 
    .IN5 ( n68 ) , .Q ( n65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U78 ( .IN1 ( n154 ) , .IN2 ( n222 ) , .IN3 ( n175 ) , .IN4 ( n182 ) , 
    .IN5 ( n167 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U80 ( .IN1 ( N124 ) , .IN2 ( n76 ) , .IN3 ( n143 ) , .IN4 ( n186 ) , 
    .IN5 ( N108 ) , .IN6 ( n232 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U83 ( .IN1 ( n173 ) , .IN2 ( n112 ) , .IN3 ( n184 ) , .IN4 ( n113 ) , 
    .IN5 ( n185 ) , .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U84 ( .IN1 ( n155 ) , .IN2 ( n113 ) , .IN3 ( n143 ) , .IN4 ( n182 ) , 
    .IN5 ( n167 ) , .Q ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U86 ( .IN1 ( N123 ) , .IN2 ( n76 ) , .IN3 ( n146 ) , .IN4 ( n187 ) , 
    .IN5 ( N107 ) , .IN6 ( n231 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U87 ( .IN1 ( n143 ) , .IN2 ( n55 ) , .IN3 ( n121 ) , .IN4 ( n36 ) , 
    .IN5 ( n169 ) , .IN6 ( n223 ) , .Q ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U89 ( .IN1 ( n171 ) , .IN2 ( n112 ) , .IN3 ( n183 ) , .IN4 ( n223 ) , 
    .IN5 ( n185 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U90 ( .IN1 ( n154 ) , .IN2 ( n223 ) , .IN3 ( n145 ) , .IN4 ( n182 ) , 
    .IN5 ( n168 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U92 ( .IN1 ( N122 ) , .IN2 ( n76 ) , .IN3 ( n4 ) , .IN4 ( n186 ) , 
    .IN5 ( N106 ) , .IN6 ( n233 ) , .Q ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U93 ( .IN1 ( n145 ) , .IN2 ( n55 ) , .IN3 ( n170 ) , .IN4 ( n36 ) , 
    .IN5 ( n168 ) , .IN6 ( n224 ) , .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U96 ( .IN1 ( n31 ) , .IN2 ( n112 ) , .IN3 ( n184 ) , .IN4 ( n224 ) , 
    .IN5 ( n185 ) , .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U97 ( .IN1 ( n154 ) , .IN2 ( n224 ) , .IN3 ( n31 ) , .IN4 ( n182 ) , 
    .IN5 ( n169 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U99 ( .IN1 ( N119 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U113 ( .IN1 ( n121 ) , .IN2 ( n55 ) , .IN3 ( n168 ) , .IN4 ( n207 ) , 
    .IN5 ( n105 ) , .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( N150 ) , .IN2 ( n92 ) , .IN3 ( N149 ) , .IN4 ( n109 ) , 
    .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U116 ( .IN1 ( n136 ) , .IN2 ( n58 ) , .IN3 ( n183 ) , .IN4 ( n207 ) , 
    .IN5 ( n185 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U119 ( .IN1 ( n155 ) , .IN2 ( n207 ) , .IN3 ( n136 ) , .IN4 ( n182 ) , 
    .IN5 ( n168 ) , .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U123 ( .IN1 ( n91 ) , .IN2 ( n109 ) , .Q ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .QN ( n68 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2 U15 ( .IN1 ( n175 ) , .IN2 ( n58 ) , .IN3 ( n183 ) , .IN4 ( n222 ) , 
    .IN5 ( n185 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( n11 ) , .IN2 ( n12 ) , .IN3 ( n13 ) , .QN ( n197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U35 ( .INP ( n50 ) , .Z ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U36 ( .INP ( n50 ) , .Z ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U37 ( .INP ( n50 ) , .Z ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U40 ( .INP ( n122 ) , .Z ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U41 ( .INP ( n122 ) , .Z ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U44 ( .INP ( A[7] ) , .Z ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U51 ( .INP ( n116 ) , .Z ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U65 ( .INP ( A[7] ) , .Z ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U70 ( .IN1 ( n193 ) , .IN2 ( n121 ) , .Q ( n192 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1 U73 ( .IN1 ( n119 ) , .IN2 ( n181 ) , .Q ( n200 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U81 ( .INP ( n120 ) , .Z ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U82 ( .IN1 ( n84 ) , .IN2 ( n159 ) , .IN3 ( n160 ) , .IN4 ( n85 ) , 
    .IN5 ( n22 ) , .Q ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U88 ( .INP ( n127 ) , .Z ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U100 ( .IN1 ( n47 ) , .IN2 ( n119 ) , .IN3 ( n137 ) , .IN4 ( n48 ) , 
    .IN5 ( n22 ) , .Q ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U101 ( .IN1 ( N117 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U102 ( .IN1 ( N118 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U109 ( .IN1 ( N115 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U117 ( .INP ( B[7] ) , .Z ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U125 ( .IN1 ( n110 ) , .IN2 ( n111 ) , .Q ( n148 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U126 ( .IN1 ( n209 ) , .IN2 ( n200 ) , .IN3 ( n201 ) , .Q ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U127 ( .INP ( n128 ) , .Z ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U138 ( .INP ( n127 ) , .Z ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U139 ( .INP ( n127 ) , .Z ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U149 ( .IN1 ( n29 ) , .IN2 ( n215 ) , .Q ( n91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI221X1 U172 ( .IN1 ( n134 ) , .IN2 ( n138 ) , .IN3 ( n115 ) , 
    .IN4 ( n135 ) , .IN5 ( n97 ) , .QN ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U173 ( .IN1 ( n155 ) , .IN2 ( n220 ) , .IN3 ( n227 ) , 
    .IN4 ( n184 ) , .IN5 ( n167 ) , .QN ( n134 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI221X1 U174 ( .IN1 ( n227 ) , .IN2 ( n58 ) , .IN3 ( n183 ) , .IN4 ( n220 ) , 
    .IN5 ( n187 ) , .QN ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U188 ( .INP ( RST ) , .Z ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U189 ( .INP ( RST ) , .Z ( n189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U190 ( .INP ( RST ) , .Z ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U234 ( .IN1 ( n159 ) , .IN2 ( n145 ) , .Q ( n201 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1 U240 ( .IN1 ( n121 ) , .IN2 ( n193 ) , .IN3 ( n192 ) , .IN4 ( n217 ) , 
    .IN5 ( n201 ) , .Q ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U241 ( .IN1 ( n146 ) , .IN2 ( n159 ) , .IN3 ( n114 ) , .IN4 ( n208 ) , 
    .IN5 ( n194 ) , .Q ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U242 ( .IN1 ( n197 ) , .IN2 ( n198 ) , .IN3 ( n227 ) , .IN4 ( n115 ) , 
    .Q ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U243 ( .IN1 ( n181 ) , .IN2 ( n119 ) , .IN3 ( n199 ) , .IN4 ( n200 ) , 
    .Q ( N150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U244 ( .IN1 ( n228 ) , .IN2 ( n204 ) , .IN3 ( n204 ) , .IN4 ( n129 ) , 
    .Q ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U170 ( .IN1 ( n3 ) , .IN2 ( n230 ) , .Q ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X1 U203 ( .IN1 ( n29 ) , .IN2 ( n49 ) , .IN3 ( n103 ) , .QN ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[8] ( .D ( ALU_OUT_Comb[8] ) , .SI ( ALU_OUT[7] ) , 
    .SE ( n26 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[8] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[7] ( .D ( ALU_OUT_Comb[7] ) , .SI ( ALU_OUT[6] ) , 
    .SE ( n26 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[6] ( .D ( ALU_OUT_Comb[6] ) , .SI ( ALU_OUT[5] ) , 
    .SE ( n26 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[5] ( .D ( ALU_OUT_Comb[5] ) , .SI ( ALU_OUT[4] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[4] ( .D ( ALU_OUT_Comb[4] ) , .SI ( ALU_OUT[3] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[2] ( .D ( ALU_OUT_Comb[2] ) , .SI ( ALU_OUT[1] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 OUT_VALID_reg ( .D ( n21 ) , .SI ( ALU_OUT[15] ) , .SE ( n18 ) , 
    .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( OUT_VALID ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[14] ( .D ( ALU_OUT_Comb[14] ) , .SI ( ALU_OUT[13] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n190 ) , .Q ( ALU_OUT[14] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[10] ( .D ( ALU_OUT_Comb[10] ) , .SI ( ALU_OUT[9] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[10] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[9] ( .D ( ALU_OUT_Comb[9] ) , .SI ( ALU_OUT[8] ) , 
    .SE ( n26 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[9] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[13] ( .D ( ALU_OUT_Comb[13] ) , .SI ( ALU_OUT[12] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n190 ) , .Q ( ALU_OUT[13] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[12] ( .D ( ALU_OUT_Comb[12] ) , .SI ( ALU_OUT[11] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[12] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[11] ( .D ( ALU_OUT_Comb[11] ) , .SI ( ALU_OUT[10] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n189 ) , .Q ( ALU_OUT[11] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[3] ( .D ( ALU_OUT_Comb[3] ) , .SI ( ALU_OUT[2] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[1] ( .D ( ALU_OUT_Comb[1] ) , .SI ( ALU_OUT[0] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[15] ( .D ( ALU_OUT_Comb[15] ) , .SI ( ALU_OUT[14] ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n190 ) , .Q ( ALU_OUT[15] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U54 ( .IN1 ( N95 ) , .IN2 ( n39 ) , .IN3 ( n40 ) , .Q ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX2 \ALU_OUT_reg[0] ( .D ( ALU_OUT_Comb[0] ) , .SI ( test_si ) , 
    .SE ( n18 ) , .CLK ( CLK ) , .RSTB ( n188 ) , .Q ( ALU_OUT[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X2 U8 ( .IN1 ( n106 ) , .IN2 ( n218 ) , .IN3 ( n212 ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U22 ( .IN1 ( n165 ) , .IN2 ( n107 ) , .Q ( n230 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U23 ( .IN1 ( n77 ) , .IN2 ( n208 ) , .IN3 ( n158 ) , .IN4 ( n78 ) , 
    .IN5 ( n124 ) , .Q ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U28 ( .IN1 ( N100 ) , .IN2 ( n142 ) , .IN3 ( N91 ) , 
    .IN4 ( net9616 ) , .IN5 ( n67 ) , .Q ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U30 ( .IN1 ( N101 ) , .IN2 ( n142 ) , .IN3 ( N92 ) , 
    .IN4 ( net9616 ) , .IN5 ( n61 ) , .Q ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U38 ( .IN1 ( n63 ) , .IN2 ( n32 ) , .IN3 ( n37 ) , .IN4 ( n64 ) , 
    .IN5 ( n124 ) , .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U43 ( .IN1 ( N102 ) , .IN2 ( n142 ) , .IN3 ( N93 ) , 
    .IN4 ( net9616 ) , .IN5 ( n54 ) , .Q ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( n166 ) , .IN2 ( n140 ) , .Q ( n204 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI22X1 U46 ( .IN1 ( n136 ) , .IN2 ( n187 ) , .IN3 ( N105 ) , .IN4 ( n232 ) , 
    .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U62 ( .IN1 ( n104 ) , .IN2 ( n109 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1 U104 ( .IN1 ( n7 ) , .IN2 ( n113 ) , .IN3 ( n14 ) , .IN4 ( n55 ) , 
    .IN5 ( n36 ) , .IN6 ( n127 ) , .Q ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U111 ( .IN1 ( n233 ) , .IN2 ( N111 ) , .IN3 ( n234 ) , .QN ( n239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U122 ( .IN1 ( n186 ) , .IN2 ( n227 ) , .Q ( n234 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U131 ( .INP ( net9544 ) , .Z ( net9598 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U142 ( .INP ( n39 ) , .Z ( net9616 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U143 ( .INP ( B[0] ) , .Z ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U147 ( .IN1 ( N96 ) , .IN2 ( n142 ) , .IN3 ( N87 ) , 
    .IN4 ( net9616 ) , .IN5 ( n100 ) , .Q ( n99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U183 ( .IN1 ( n103 ) , .IN2 ( n101 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U10 ( .INP ( n226 ) , .ZN ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U17 ( .INP ( B[5] ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U31 ( .INP ( n161 ) , .ZN ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U33 ( .INP ( n129 ) , .ZN ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U42 ( .INP ( n140 ) , .ZN ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U47 ( .IN1 ( n72 ) , .IN2 ( n73 ) , .IN3 ( n74 ) , .IN4 ( n75 ) , 
    .QN ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U105 ( .IN1 ( n191 ) , .IN2 ( n202 ) , .QN ( n196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U107 ( .INP ( B[6] ) , .ZN ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U110 ( .INP ( n115 ) , .ZN ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U118 ( .INP ( n14 ) , .ZN ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U129 ( .INP ( n163 ) , .ZN ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U20 ( .IN1 ( n169 ) , .IN2 ( n220 ) , .QN ( n240 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U108 ( .INP ( n126 ) , .ZN ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U121 ( .IN1 ( n239 ) , .IN2 ( n240 ) , .QN ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U144 ( .INP ( B[0] ) , .ZN ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U146 ( .IN1 ( n242 ) , .IN2 ( n20 ) , .QN ( n241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U148 ( .INP ( n218 ) , .ZN ( n243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U150 ( .INP ( A[3] ) , .Z ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U151 ( .INP ( A[3] ) , .Z ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U154 ( .INP ( n23 ) , .ZN ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U156 ( .INP ( n148 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U163 ( .INP ( A[2] ) , .ZN ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U166 ( .INP ( n32 ) , .ZN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U169 ( .INP ( n148 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U176 ( .INP ( n17 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U178 ( .INP ( n122 ) , .ZN ( n207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U181 ( .INP ( n156 ) , .ZN ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U182 ( .INP ( n158 ) , .ZN ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U184 ( .IN1 ( n69 ) , .IN2 ( n23 ) , .QN ( n8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U185 ( .IN1 ( n139 ) , .IN2 ( n70 ) , .QN ( n9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U191 ( .INP ( n177 ) , .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U193 ( .INP ( n178 ) , .ZN ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U195 ( .INP ( n180 ) , .ZN ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U198 ( .INP ( B[7] ) , .ZN ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U201 ( .IN1 ( n196 ) , .IN2 ( n195 ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U204 ( .IN1 ( n23 ) , .IN2 ( n118 ) , .QN ( n202 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U205 ( .IN1 ( n115 ) , .IN2 ( n227 ) , .QN ( n206 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U206 ( .INP ( n6 ) , .ZN ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U208 ( .INP ( n156 ) , .ZN ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U209 ( .INP ( n191 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X2 U210 ( .IN1 ( n24 ) , .IN2 ( n5 ) , .IN3 ( n110 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U216 ( .INP ( ALU_FUN[3] ) , .ZN ( n216 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U217 ( .INP ( n24 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U218 ( .INP ( n27 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U219 ( .INP ( B[2] ) , .ZN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U220 ( .INP ( n146 ) , .ZN ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U221 ( .INP ( n17 ) , .ZN ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U223 ( .INP ( n119 ) , .ZN ( n120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U224 ( .INP ( n159 ) , .ZN ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U225 ( .INP ( n28 ) , .ZN ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U232 ( .IN1 ( n71 ) , .IN2 ( n211 ) , .QN ( ALU_OUT_Comb[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X2 U237 ( .IN1 ( n52 ) , .IN2 ( n53 ) , .IN3 ( n21 ) , 
    .Q ( ALU_OUT_Comb[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U239 ( .IN1 ( n35 ) , .IN2 ( n211 ) , .QN ( ALU_OUT_Comb[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW_div_uns_0 div_43 (
    .a ( { n173 , n171 , n4 , n136 } ) ,
    .b ( { n157 , B[2] , n162 , n238 } ) ,
    .quotient ( { N124 , N123 , N122 , N121 } ) ,
    .remainder ( { SYNOPSYS_UNCONNECTED_18 , SYNOPSYS_UNCONNECTED_19 , 
        SYNOPSYS_UNCONNECTED_20 , SYNOPSYS_UNCONNECTED_21 } ) ,
    .divide_by_0 ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW01_sub_0 sub_41 (
    .A ( { VSS , n180 , n178 , n117 , n14 , n114 , n146 , n121 , n170 } ) ,
    .B ( { VSS , n120 , n138 , n37 , n139 , n158 , n160 , n228 , n166 } ) ,
    .CI ( VSS ) ,
    .DIFF ( { N104 , N103 , N102 , N101 , N100 , N99 , N98 , N97 , N96 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW01_add_0 add_40 (
    .A ( { VSS , n180 , n178 , n177 , n14 , n143 , n145 , n31 , n136 } ) ,
    .B ( { VSS , n137 , n116 , n37 , n128 , n158 , n160 , n228 , n243 } ) ,
    .CI ( VSS ) ,
    .SUM ( { N95 , N94 , N93 , N92 , N91 , N90 , N89 , N88 , N87 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW02_mult_0 mult_42 (
    .A ( { n180 , n178 , n176 , A[4] , n172 , A[2] , A[1] , A[0] } ) ,
    .B ( { n149 , B[6] , B[5] , B[4] , B[3] , n28 , B[1] , n165 } ) ,
    .TC ( VSS ) ,
    .PRODUCT ( { N120 , N119 , N118 , N117 , N116 , N115 , N114 , N113 , 
        N112 , N111 , N110 , N109 , N108 , N107 , N106 , N105 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U3 ( .IN1 ( n235 ) , .IN2 ( net9598 ) , .QN ( ALU_OUT_Comb[15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U4 ( .INP ( A[6] ) , .Z ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( A[0] ) , .ZN ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U9 ( .IN1 ( n87 ) , .IN2 ( n88 ) , .IN3 ( n89 ) , .IN4 ( n90 ) , 
    .QN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U11 ( .IN1 ( n80 ) , .IN2 ( n81 ) , .IN3 ( n82 ) , .IN4 ( n83 ) , 
    .QN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( B[4] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( A[1] ) , .ZN ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U16 ( .INP ( n31 ) , .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n129 ) , .ZN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U21 ( .IN1 ( n177 ) , .IN2 ( n32 ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX2 U24 ( .INP ( n15 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n162 ) , .ZN ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U26 ( .IN1 ( n29 ) , .IN2 ( n215 ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U27 ( .INP ( ALU_FUN[2] ) , .Z ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( A[6] ) , .ZN ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U32 ( .IN1 ( n41 ) , .IN2 ( n42 ) , .IN3 ( n21 ) , 
    .Q ( ALU_OUT_Comb[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U34 ( .IN1 ( n187 ) , .IN2 ( n181 ) , .IN3 ( N112 ) , .IN4 ( n233 ) , 
    .IN5 ( n44 ) , .Q ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U39 ( .IN1 ( n91 ) , .IN2 ( n92 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( n172 ) , .ZN ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( B[3] ) , .ZN ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U50 ( .INP ( B[1] ) , .ZN ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n217 ) , .ZN ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( ALU_FUN[1] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( ALU_FUN[1] ) , .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U56 ( .IN1 ( n131 ) , .IN2 ( n19 ) , .QN ( n100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U58 ( .IN1 ( N120 ) , .IN2 ( n237 ) , .QN ( n235 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n163 ) , .ZN ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U61 ( .INP ( n166 ) , .ZN ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( n207 ) , .IN2 ( n166 ) , .QN ( n193 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( n31 ) , .ZN ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U67 ( .IN1 ( N121 ) , .IN2 ( n76 ) , .QN ( n131 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( n96 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U77 ( .IN1 ( n25 ) , .IN2 ( n49 ) , .IN3 ( n29 ) , .QN ( n96 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( n86 ) , .IN2 ( n211 ) , .QN ( ALU_OUT_Comb[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U85 ( .INP ( n96 ) , .ZN ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U91 ( .INP ( A[5] ) , .Z ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U94 ( .INP ( A[5] ) , .Z ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U95 ( .INP ( A[5] ) , .Z ( n117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( net9544 ) , .ZN ( net3035 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U103 ( .IN1 ( n95 ) , .IN2 ( n16 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U106 ( .IN1 ( n79 ) , .IN2 ( n211 ) , .QN ( ALU_OUT_Comb[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U112 ( .IN1 ( n104 ) , .IN2 ( n92 ) , .QN ( n110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U114 ( .INP ( A[4] ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U120 ( .INP ( Enable ) , .Z ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U124 ( .IN1 ( n153 ) , .IN2 ( Enable ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U128 ( .IN1 ( n59 ) , .IN2 ( n60 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U130 ( .IN1 ( Enable ) , .IN2 ( n40 ) , .QN ( net9544 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U132 ( .IN1 ( n98 ) , .IN2 ( n99 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U133 ( .INP ( Enable ) , .ZN ( n211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U134 ( .INP ( ALU_FUN[0] ) , .ZN ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U135 ( .INP ( n102 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U136 ( .IN1 ( n104 ) , .IN2 ( n102 ) , .Q ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U137 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( ALU_FUN[1] ) , .QN ( n104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( n208 ) , .IN2 ( n114 ) , .QN ( n191 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U141 ( .INP ( n113 ) , .ZN ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U145 ( .INP ( n118 ) , .Z ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U152 ( .INP ( n114 ) , .Z ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U153 ( .IN1 ( n213 ) , .IN2 ( n216 ) , .QN ( n92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( n147 ) , .ZN ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U157 ( .INP ( n147 ) , .ZN ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U158 ( .INP ( n33 ) , .ZN ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U159 ( .IN1 ( n32 ) , .IN2 ( n117 ) , .QN ( n203 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U160 ( .IN1 ( n203 ) , .IN2 ( n206 ) , .QN ( n198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U161 ( .IN1 ( n203 ) , .IN2 ( n202 ) , .IN3 ( n206 ) , .IN4 ( n205 ) , 
    .QN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U162 ( .IN1 ( n175 ) , .IN2 ( n23 ) , .QN ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U164 ( .INP ( n147 ) , .ZN ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U165 ( .IN1 ( n97 ) , .IN2 ( n148 ) , .IN3 ( n96 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U167 ( .INP ( n123 ) , .ZN ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U168 ( .IN1 ( n93 ) , .IN2 ( n217 ) , .IN3 ( B[1] ) , .IN4 ( n94 ) , 
    .IN5 ( n212 ) , .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n213 ) , .IN2 ( ALU_FUN[3] ) , .QN ( n103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U175 ( .INP ( n22 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U177 ( .INP ( A[4] ) , .Z ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U179 ( .INP ( n123 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U180 ( .INP ( n97 ) , .ZN ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U186 ( .INP ( n212 ) , .ZN ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U187 ( .IN1 ( n215 ) , .IN2 ( n29 ) , .QN ( n101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U192 ( .IN1 ( n101 ) , .IN2 ( n25 ) , .QN ( n147 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U194 ( .INP ( n147 ) , .ZN ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U196 ( .IN1 ( n108 ) , .IN2 ( n101 ) , .QN ( n97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U197 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .IN3 ( n21 ) , 
    .Q ( ALU_OUT_Comb[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U199 ( .IN1 ( N150 ) , .IN2 ( n241 ) , .QN ( N149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U200 ( .IN1 ( net9598 ) , .IN2 ( net9563 ) , .QN ( ALU_OUT_Comb[9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X2 U202 ( .IN1 ( n181 ) , .IN2 ( n36 ) , .IN3 ( N113 ) , .IN4 ( n231 ) , 
    .IN5 ( n38 ) , .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U207 ( .IN1 ( n216 ) , .IN2 ( ALU_FUN[0] ) , .QN ( n109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U211 ( .IN1 ( ALU_FUN[3] ) , .IN2 ( ALU_FUN[0] ) , .QN ( n102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U212 ( .INP ( n43 ) , .Z ( n186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U213 ( .INP ( n43 ) , .Z ( n187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U214 ( .INP ( n43 ) , .Z ( n185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2 U215 ( .IN1 ( n181 ) , .IN2 ( n112 ) , .IN3 ( n50 ) , .IN4 ( n219 ) , 
    .IN5 ( n43 ) , .Q ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U222 ( .IN1 ( n91 ) , .IN2 ( n103 ) , .Q ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U226 ( .INP ( n214 ) , .Z ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U227 ( .INP ( n214 ) , .Z ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U228 ( .INP ( n7 ) , .Z ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U229 ( .IN1 ( N90 ) , .IN2 ( n39 ) , .IN3 ( N99 ) , .IN4 ( n45 ) , 
    .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U230 ( .IN1 ( N89 ) , .IN2 ( n39 ) , .IN3 ( N98 ) , .IN4 ( n45 ) , 
    .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U231 ( .IN1 ( N88 ) , .IN2 ( n39 ) , .IN3 ( N97 ) , .IN4 ( n45 ) , 
    .Q ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U233 ( .IN1 ( N94 ) , .IN2 ( n39 ) , .IN3 ( N103 ) , .IN4 ( n45 ) , 
    .Q ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U235 ( .INP ( n45 ) , .Z ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U236 ( .IN1 ( N104 ) , .IN2 ( n45 ) , .QN ( n95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U238 ( .IN1 ( net9598 ) , .IN2 ( net9545 ) , 
    .QN ( ALU_OUT_Comb[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U246 ( .IN1 ( N116 ) , .IN2 ( n237 ) , .QN ( net9545 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U247 ( .IN1 ( n237 ) , .IN2 ( N114 ) , .QN ( net9563 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U248 ( .INP ( n236 ) , .ZN ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U249 ( .IN1 ( n104 ) , .IN2 ( n103 ) , .Q ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U250 ( .INP ( test_se ) , .Z ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U251 ( .INP ( test_se ) , .Z ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module CLK_GATE ( CLK , CLK_EN , SCAN_EN , GATED_CLK , VDD , VSS ) ;
input  CLK ;
input  CLK_EN ;
input  SCAN_EN ;
output GATED_CLK ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

CGLPPSX4 U0_CGLPPSX4 ( .CLK ( CLK ) , .EN ( CLK_EN ) , .SE ( SCAN_EN ) , 
    .GCLK ( GATED_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module SYS_CTRL ( CLK , RST , RdData , RdData_Valid , RX_P_DATA , RX_D_VLD , 
    FIFO_FULL , ALU_OUT , ALU_OUT_VLD , ALU_FUN , ALU_EN , GATE_EN , 
    UART_TX_DATA , UART_TX_VLD , Address , WrEn , RdEn , WrData , test_si , 
    test_so , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  [7:0] RdData ;
input  RdData_Valid ;
input  [7:0] RX_P_DATA ;
input  RX_D_VLD ;
input  FIFO_FULL ;
input  [15:0] ALU_OUT ;
input  ALU_OUT_VLD ;
output [3:0] ALU_FUN ;
output ALU_EN ;
output GATE_EN ;
output [7:0] UART_TX_DATA ;
output UART_TX_VLD ;
output [3:0] Address ;
output WrEn ;
output RdEn ;
output [7:0] WrData ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire [3:0] stored_addr ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n57 ;
wire n58 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n63 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n70 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n69 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
wire n100 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n119 ;
wire n122 ;
wire n123 ;
wire n124 ;
wire n125 ;
wire n126 ;
wire n127 ;
wire n128 ;
wire n129 ;
wire n130 ;
wire n1 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n71 ;
wire [3:0] cs ;
wire [3:0] ns ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;

assign stored_addr[3] = test_so ;

NOR4X1 U3 ( .IN1 ( n34 ) , .IN2 ( n36 ) , .IN3 ( n35 ) , .IN4 ( n105 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U58 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[0] ) , .IN3 ( stored_addr[0] ) , 
    .IN4 ( n5 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[2] ) , .IN3 ( stored_addr[2] ) , 
    .IN4 ( n5 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U61 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[3] ) , .IN3 ( test_so ) , 
    .IN4 ( n5 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U62 ( .IN1 ( n25 ) , .IN2 ( n26 ) , .IN3 ( ns[3] ) , .Q ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U63 ( .IN1 ( n107 ) , .IN2 ( n27 ) , .IN3 ( n28 ) , .QN ( ns[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U64 ( .IN1 ( n111 ) , .IN2 ( n29 ) , .IN3 ( n30 ) , .IN4 ( n31 ) , 
    .IN5 ( n99 ) , .Q ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U65 ( .IN1 ( n23 ) , .IN2 ( n106 ) , .IN3 ( ns[1] ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U67 ( .IN1 ( n37 ) , .IN2 ( n38 ) , .IN3 ( n39 ) , .IN4 ( n40 ) , 
    .QN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U70 ( .IN1 ( n15 ) , .IN2 ( n114 ) , .IN3 ( n42 ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( ALU_OUT_VLD ) , .IN2 ( n119 ) , .IN3 ( n43 ) , 
    .IN4 ( n111 ) , .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U74 ( .IN1 ( RdEn ) , .IN2 ( RdData_Valid ) , .IN3 ( n52 ) , 
    .IN4 ( n46 ) , .IN5 ( n105 ) , .QN ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U77 ( .IN1 ( n44 ) , .IN2 ( n99 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U78 ( .IN1 ( n27 ) , .IN2 ( n55 ) , .IN3 ( n53 ) , .IN4 ( n56 ) , 
    .QN ( ns[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U79 ( .IN1 ( n57 ) , .IN2 ( n47 ) , .IN3 ( n58 ) , .Q ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U81 ( .IN1 ( RX_P_DATA[4] ) , .IN2 ( RX_P_DATA[0] ) , .IN3 ( n42 ) , 
    .QN ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U82 ( .IN1 ( n29 ) , .IN2 ( RX_D_VLD ) , .IN3 ( n31 ) , .IN4 ( n61 ) , 
    .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U83 ( .IN1 ( n30 ) , .IN2 ( n62 ) , .Q ( n61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U84 ( .IN1 ( n15 ) , .IN2 ( n114 ) , .IN3 ( n63 ) , .QN ( n62 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U86 ( .IN1 ( n14 ) , .IN2 ( n93 ) , .IN3 ( n46 ) , .IN4 ( n64 ) , 
    .QN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U87 ( .IN1 ( RX_P_DATA[3] ) , .IN2 ( RX_D_VLD ) , 
    .IN3 ( RX_P_DATA[7] ) , .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U88 ( .IN1 ( n40 ) , .IN2 ( n44 ) , .IN3 ( n49 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U94 ( .IN1 ( n48 ) , .IN2 ( n39 ) , .IN3 ( n68 ) , .QN ( WrEn ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U98 ( .IN1 ( RdData[7] ) , .IN2 ( n130 ) , .IN3 ( ALU_OUT[15] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[7] ) , .IN6 ( n3 ) , .QN ( n72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U99 ( .IN1 ( RdData[6] ) , .IN2 ( n130 ) , .IN3 ( ALU_OUT[14] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[6] ) , .IN6 ( n110 ) , .QN ( n74 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U101 ( .IN1 ( RdData[4] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[12] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[4] ) , .IN6 ( n110 ) , .QN ( n76 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U104 ( .IN1 ( RdData[1] ) , .IN2 ( n130 ) , .IN3 ( ALU_OUT[9] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[1] ) , .IN6 ( n3 ) , .QN ( n79 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U105 ( .IN1 ( RdData[0] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[8] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[0] ) , .IN6 ( n110 ) , .QN ( n80 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U7 ( .IN1 ( n90 ) , .IN2 ( n93 ) , .IN3 ( RX_D_VLD ) , .QN ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U38 ( .IN1 ( n8 ) , .IN2 ( n99 ) , .IN3 ( n81 ) , .QN ( GATE_EN ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U54 ( .INP ( n118 ) , .Z ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U130 ( .IN1 ( n69 ) , .IN2 ( n88 ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U146 ( .INP ( RST ) , .Z ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U147 ( .IN1 ( n18 ) , .IN2 ( n21 ) , .IN3 ( n7 ) , .QN ( n101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U50 ( .IN1 ( n94 ) , .IN2 ( RX_P_DATA[2] ) , .Q ( WrData[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U93 ( .IN1 ( n10 ) , .IN2 ( RX_P_DATA[2] ) , .Q ( ALU_FUN[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U122 ( .IN1 ( n123 ) , .IN2 ( n86 ) , .IN3 ( n90 ) , .QN ( n67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( n103 ) , .SI ( test_si ) , .SE ( n71 ) , 
    .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( cs[0] ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( cs[0] ) , .SE ( n71 ) , 
    .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( cs[1] ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[0] ( .D ( n82 ) , .SI ( cs[3] ) , .SE ( n71 ) , 
    .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( stored_addr[0] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( cs[1] ) , .SE ( n71 ) , 
    .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( cs[2] ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[3] ( .D ( ns[3] ) , .SI ( cs[2] ) , .SE ( n71 ) , 
    .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( cs[3] ) , .QN ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[1] ( .D ( n83 ) , .SI ( stored_addr[0] ) , 
    .SE ( n71 ) , .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( stored_addr[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[2] ( .D ( n84 ) , .SI ( stored_addr[1] ) , 
    .SE ( n71 ) , .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( stored_addr[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[3] ( .D ( n85 ) , .SI ( stored_addr[2] ) , 
    .SE ( n71 ) , .CLK ( CLK ) , .RSTB ( n100 ) , .Q ( test_so ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U12 ( .IN1 ( n124 ) , .IN2 ( n125 ) , .Q ( UART_TX_VLD ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U14 ( .IN1 ( n99 ) , .IN2 ( n22 ) , .IN3 ( n67 ) , .QN ( ALU_EN ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U16 ( .IN1 ( n59 ) , .IN2 ( n129 ) , .Q ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI222X1 U29 ( .IN1 ( RdData[3] ) , .IN2 ( n130 ) , .IN3 ( ALU_OUT[11] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[3] ) , .IN6 ( n3 ) , .QN ( n77 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U36 ( .IN1 ( RdData[5] ) , .IN2 ( n130 ) , .IN3 ( ALU_OUT[13] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[5] ) , .IN6 ( n110 ) , .QN ( n75 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U39 ( .IN1 ( n88 ) , .IN2 ( n19 ) , .IN3 ( n59 ) , .QN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U43 ( .IN1 ( stored_addr[1] ) , .IN2 ( n17 ) , .Q ( Address[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U47 ( .IN1 ( ns[1] ) , .IN2 ( n23 ) , .IN3 ( n106 ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U48 ( .IN1 ( n13 ) , .IN2 ( n11 ) , .IN3 ( n59 ) , .QN ( n58 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U55 ( .IN1 ( n13 ) , .IN2 ( n21 ) , .IN3 ( n66 ) , .QN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U69 ( .IN1 ( n50 ) , .IN2 ( n49 ) , .IN3 ( n8 ) , .Q ( n128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U80 ( .IN1 ( n59 ) , .IN2 ( n129 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U90 ( .INP ( n109 ) , .Z ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U102 ( .IN1 ( n39 ) , .IN2 ( n67 ) , .IN3 ( n48 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U107 ( .IN1 ( n86 ) , .IN2 ( n13 ) , .IN3 ( n91 ) , .QN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U109 ( .IN1 ( n14 ) , .IN2 ( n13 ) , .IN3 ( n86 ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U117 ( .IN1 ( RX_D_VLD ) , .IN2 ( n41 ) , .IN3 ( n14 ) , 
    .IN4 ( n21 ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U129 ( .IN1 ( n119 ) , .IN2 ( RX_P_DATA[1] ) , .Q ( ALU_FUN[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U57 ( .IN1 ( n12 ) , .IN2 ( n14 ) , .QN ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U68 ( .IN1 ( n95 ) , .IN2 ( n112 ) , .QN ( WrData[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U91 ( .INP ( n73 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U133 ( .INP ( n11 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U46 ( .INP ( n126 ) , .ZN ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U73 ( .IN1 ( n128 ) , .IN2 ( n51 ) , .QN ( ns[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U106 ( .INP ( n20 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U110 ( .INP ( RX_D_VLD ) , .ZN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U111 ( .INP ( ns[2] ) , .ZN ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U112 ( .INP ( n67 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U113 ( .INP ( n67 ) , .ZN ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U114 ( .INP ( n70 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U115 ( .INP ( RX_P_DATA[4] ) , .ZN ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U116 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .QN ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U118 ( .IN1 ( n44 ) , .IN2 ( n45 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U119 ( .INP ( n47 ) , .ZN ( RdEn ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U123 ( .INP ( n53 ) , .ZN ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U124 ( .INP ( n33 ) , .ZN ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U135 ( .INP ( RX_P_DATA[3] ) , .ZN ( n115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U136 ( .INP ( RX_P_DATA[5] ) , .ZN ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U137 ( .INP ( RX_P_DATA[6] ) , .ZN ( n112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U139 ( .IN1 ( n97 ) , .IN2 ( n77 ) , .QN ( UART_TX_DATA[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U140 ( .IN1 ( n97 ) , .IN2 ( n72 ) , .QN ( UART_TX_DATA[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U143 ( .IN1 ( n97 ) , .IN2 ( n75 ) , .QN ( UART_TX_DATA[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U144 ( .INP ( n24 ) , .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U148 ( .IN1 ( RdData_Valid ) , .IN2 ( n47 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U150 ( .IN1 ( n33 ) , .IN2 ( n111 ) , .QN ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U152 ( .INP ( n23 ) , .ZN ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n94 ) , .ZN ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U5 ( .IN1 ( n67 ) , .IN2 ( n70 ) , .Q ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U6 ( .INP ( n18 ) , .Z ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U8 ( .IN1 ( n102 ) , .IN2 ( stored_addr[2] ) , .Q ( Address[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U9 ( .IN1 ( n4 ) , .IN2 ( n101 ) , .IN3 ( n14 ) , .IN4 ( n102 ) , 
    .QN ( Address[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U10 ( .INP ( n24 ) , .Z ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U11 ( .IN1 ( n22 ) , .IN2 ( n1 ) , .QN ( n124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U13 ( .INP ( n108 ) , .Z ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U15 ( .IN1 ( n88 ) , .IN2 ( n19 ) , .IN3 ( n69 ) , .QN ( n81 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U17 ( .IN1 ( n19 ) , .IN2 ( n93 ) , .IN3 ( n66 ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U18 ( .IN1 ( n113 ) , .IN2 ( n117 ) , .IN3 ( n60 ) , .IN4 ( n31 ) , 
    .QN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U19 ( .IN1 ( n88 ) , .IN2 ( n19 ) , .IN3 ( n66 ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n108 ) , .ZN ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( WrEn ) , .ZN ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U22 ( .IN1 ( n96 ) , .IN2 ( n78 ) , .QN ( UART_TX_DATA[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U23 ( .IN1 ( n96 ) , .IN2 ( n76 ) , .QN ( UART_TX_DATA[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U24 ( .IN1 ( n96 ) , .IN2 ( n80 ) , .QN ( UART_TX_DATA[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U25 ( .IN1 ( n96 ) , .IN2 ( n74 ) , .QN ( UART_TX_DATA[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U26 ( .INP ( n96 ) , .Z ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U27 ( .INP ( FIFO_FULL ) , .Z ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n94 ) , .ZN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X2 U30 ( .IN1 ( RdData[2] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[10] ) , 
    .IN4 ( n73 ) , .IN5 ( ALU_OUT[2] ) , .IN6 ( n110 ) , .QN ( n78 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n87 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U32 ( .IN1 ( n95 ) , .IN2 ( n115 ) , .QN ( WrData[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X1 U33 ( .IN1 ( n127 ) , .IN2 ( n114 ) , .QN ( WrData[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U34 ( .IN1 ( test_so ) , .IN2 ( n17 ) , .Q ( Address[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U35 ( .INP ( n48 ) , .Z ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U37 ( .IN1 ( n91 ) , .IN2 ( n93 ) , .IN3 ( n54 ) , .QN ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U40 ( .IN1 ( n12 ) , .IN2 ( n91 ) , .Q ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n101 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n101 ) , .ZN ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U44 ( .IN1 ( n6 ) , .IN2 ( n15 ) , .QN ( WrData[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U45 ( .IN1 ( n6 ) , .IN2 ( n117 ) , .QN ( WrData[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U49 ( .IN1 ( n6 ) , .IN2 ( n113 ) , .QN ( WrData[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( FIFO_FULL ) , .ZN ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U52 ( .IN1 ( n97 ) , .IN2 ( n79 ) , .QN ( UART_TX_DATA[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U53 ( .IN1 ( WrEn ) , .IN2 ( RX_P_DATA[7] ) , .Q ( WrData[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U56 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U59 ( .IN1 ( n18 ) , .IN2 ( cs[3] ) , .QN ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U66 ( .INP ( cs[3] ) , .Z ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U72 ( .IN1 ( n2 ) , .IN2 ( n65 ) , .QN ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U75 ( .IN1 ( n13 ) , .IN2 ( cs[3] ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U76 ( .IN1 ( n115 ) , .IN2 ( n9 ) , .QN ( ALU_FUN[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U85 ( .INP ( n9 ) , .Z ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U89 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[1] ) , .IN3 ( stored_addr[1] ) , 
    .IN4 ( n24 ) , .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U92 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .IN3 ( RX_P_DATA[1] ) , 
    .IN4 ( RX_P_DATA[5] ) , .QN ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( RX_P_DATA[1] ) , .ZN ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1 U96 ( .IN1 ( cs[2] ) , .IN2 ( n11 ) , .Q ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U97 ( .IN1 ( n122 ) , .IN2 ( cs[3] ) , .Q ( n129 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X4 U100 ( .IN1 ( n122 ) , .IN2 ( cs[0] ) , .IN3 ( n46 ) , .Q ( n126 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U103 ( .IN1 ( n16 ) , .IN2 ( cs[0] ) , .IN3 ( n87 ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n89 ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( n89 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U121 ( .INP ( n10 ) , .Z ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U125 ( .INP ( n16 ) , .ZN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U126 ( .IN1 ( n118 ) , .IN2 ( n9 ) , .QN ( ALU_FUN[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U127 ( .INP ( RX_P_DATA[0] ) , .ZN ( n118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X4 U128 ( .IN1 ( RX_P_DATA[0] ) , .IN2 ( n63 ) , .IN3 ( RX_P_DATA[4] ) , 
    .QN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U131 ( .INP ( RX_P_DATA[2] ) , .ZN ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U132 ( .INP ( cs[0] ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( n12 ) , .IN2 ( n90 ) , .QN ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U138 ( .IN1 ( n65 ) , .IN2 ( n59 ) , .QN ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U141 ( .INP ( cs[2] ) , .Z ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U142 ( .INP ( n122 ) , .ZN ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U145 ( .INP ( n122 ) , .ZN ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U149 ( .INP ( n88 ) , .ZN ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U151 ( .INP ( cs[1] ) , .ZN ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U153 ( .INP ( cs[1] ) , .ZN ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U154 ( .INP ( n32 ) , .Z ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( n32 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U156 ( .INP ( test_se ) , .Z ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module PULSE_GEN_1 ( LVL_SIG , CLK , RST , PULSE_SIG , test_so , test_se , 
    VDD , VSS ) ;
input  LVL_SIG ;
input  CLK ;
input  RST ;
output PULSE_SIG ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n1 ;
supply1 VDD ;
supply0 VSS ;

AND2X1 U3 ( .IN1 ( n1 ) , .IN2 ( LVL_SIG ) , .Q ( PULSE_SIG ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 SYNC_REG_reg ( .D ( LVL_SIG ) , .SI ( LVL_SIG ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_1_2 ( ASYNC , CLK , RST , SYNC , test_si , test_se , VDD , 
    VSS ) ;
input  [0:0] ASYNC ;
input  CLK ;
input  RST ;
output [0:0] SYNC ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire \q[0][0] ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \q[0][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( \q[0][0] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module DATA_SYNC ( Unsync_bus , bus_enable , CLK , RST , sync_bus , 
    enable_pulse , test_si , test_se , VDD , VSS ) ;
input  [7:0] Unsync_bus ;
input  bus_enable ;
input  CLK ;
input  RST ;
output [7:0] sync_bus ;
output enable_pulse ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n18 ;
wire sync_enable ;
wire enable_pulse_comb ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n1 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n33 ;
wire n14 ;
wire n16 ;
wire n17 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

AO22X1 U3 ( .IN1 ( sync_bus[0] ) , .IN2 ( n13 ) , .IN3 ( enable_pulse_comb ) , 
    .IN4 ( Unsync_bus[0] ) , .Q ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( sync_bus[1] ) , .IN2 ( n13 ) , .IN3 ( Unsync_bus[1] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U5 ( .IN1 ( n18 ) , .IN2 ( n13 ) , .IN3 ( Unsync_bus[2] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U6 ( .IN1 ( sync_bus[3] ) , .IN2 ( n13 ) , .IN3 ( Unsync_bus[3] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( sync_bus[4] ) , .IN2 ( n10 ) , .IN3 ( Unsync_bus[4] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U8 ( .IN1 ( sync_bus[5] ) , .IN2 ( n10 ) , .IN3 ( Unsync_bus[5] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( sync_bus[6] ) , .IN2 ( n10 ) , .IN3 ( Unsync_bus[6] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( sync_bus[7] ) , .IN2 ( n10 ) , .IN3 ( Unsync_bus[7] ) , 
    .IN4 ( enable_pulse_comb ) , .Q ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U13 ( .INP ( RST ) , .Z ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U14 ( .INP ( RST ) , .Z ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 enable_pulse_reg ( .D ( n1 ) , .SI ( n33 ) , .SE ( n17 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( enable_pulse ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[7] ( .D ( n9 ) , .SI ( sync_bus[6] ) , .SE ( n17 ) , 
    .CLK ( CLK ) , .RSTB ( n11 ) , .Q ( sync_bus[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[6] ( .D ( n8 ) , .SI ( sync_bus[5] ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( sync_bus[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[5] ( .D ( n7 ) , .SI ( sync_bus[4] ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( sync_bus[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[4] ( .D ( n6 ) , .SI ( sync_bus[3] ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( sync_bus[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[3] ( .D ( n5 ) , .SI ( n18 ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( sync_bus[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[2] ( .D ( n4 ) , .SI ( sync_bus[1] ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n12 ) , .Q ( n18 ) , .QN ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[1] ( .D ( n3 ) , .SI ( sync_bus[0] ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n11 ) , .Q ( sync_bus[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[0] ( .D ( n2 ) , .SI ( enable_pulse ) , .SE ( n16 ) , 
    .CLK ( CLK ) , .RSTB ( n11 ) , .Q ( sync_bus[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U11 ( .INP ( n13 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U12 ( .INP ( n1 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U15 ( .INP ( enable_pulse_comb ) , .ZN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
BIT_SYNC_1_2 U0_BIT_SYNC (
    .ASYNC ( { bus_enable } ) ,
    .CLK ( CLK ) , .RST ( n11 ) ,
    .SYNC ( { sync_enable } ) ,
    .test_si ( test_si ) , .test_se ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
PULSE_GEN_1 U0_PULSE_GEN ( .LVL_SIG ( sync_enable ) , .CLK ( CLK ) , 
    .RST ( n11 ) , .PULSE_SIG ( enable_pulse_comb ) , .test_so ( n33 ) , 
    .test_se ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n14 ) , .ZN ( sync_bus[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U17 ( .INP ( test_se ) , .Z ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U18 ( .INP ( test_se ) , .Z ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module stop_check ( CLK , RST , sampled_bit , enable , stp_err , test_si , 
    test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  enable ;
output stp_err ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n2 ;
wire n3 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

OAI22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( n1 ) , .IN3 ( enable ) , 
    .IN4 ( n2 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 stp_err_reg ( .D ( n3 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( stp_err ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module strt_check ( CLK , RST , sampled_bit , enable , strt_glitch , test_si , 
    test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  enable ;
output strt_glitch ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n2 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

AO22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( enable ) , .IN3 ( strt_glitch ) , 
    .IN4 ( n1 ) , .Q ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 strt_glitch_reg ( .D ( n2 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module parity_check ( CLK , RST , par_typ , sampled_bit , P_DATA , enable , 
    par_err , test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  par_typ ;
input  sampled_bit ;
input  [7:0] P_DATA ;
input  enable ;
output par_err ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

AO22X1 U2 ( .IN1 ( par_err ) , .IN2 ( n1 ) , .IN3 ( enable ) , .IN4 ( n2 ) , 
    .Q ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U3 ( .IN1 ( par_typ ) , .IN2 ( P_DATA[2] ) , .IN3 ( n3 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U4 ( .IN1 ( n4 ) , .IN2 ( n5 ) , .IN3 ( n6 ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U5 ( .IN1 ( P_DATA[6] ) , .IN2 ( P_DATA[5] ) , .IN3 ( n7 ) , 
    .Q ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U6 ( .IN1 ( sampled_bit ) , .IN2 ( P_DATA[7] ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( P_DATA[1] ) , .IN2 ( P_DATA[0] ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U8 ( .IN1 ( P_DATA[4] ) , .IN2 ( P_DATA[3] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 par_err_reg ( .D ( n8 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( par_err ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U9 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module deserializer ( CLK , RST , s_data , deser_en , P_DATA , test_si , 
    test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  s_data ;
input  deser_en ;
output [7:0] P_DATA ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n1 ;
wire n2 ;
wire n3 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

AO22X1 U9 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[5] ) , .IN3 ( n2 ) , 
    .IN4 ( P_DATA[4] ) , .Q ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U11 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[6] ) , .IN3 ( n2 ) , 
    .IN4 ( P_DATA[5] ) , .Q ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U13 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[7] ) , .IN3 ( n2 ) , 
    .IN4 ( P_DATA[6] ) , .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U15 ( .IN1 ( s_data ) , .IN2 ( n1 ) , .IN3 ( n2 ) , 
    .IN4 ( P_DATA[7] ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U2 ( .IN1 ( P_DATA[0] ) , .IN2 ( P_DATA[1] ) , .S ( n1 ) , 
    .Q ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U3 ( .IN1 ( P_DATA[1] ) , .IN2 ( P_DATA[2] ) , .S ( n1 ) , 
    .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U4 ( .IN1 ( P_DATA[2] ) , .IN2 ( P_DATA[3] ) , .S ( n1 ) , 
    .Q ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U5 ( .IN1 ( P_DATA[3] ) , .IN2 ( P_DATA[4] ) , .S ( n1 ) , 
    .Q ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U7 ( .INP ( deser_en ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[7] ( .D ( n23 ) , .SI ( P_DATA[6] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[6] ( .D ( n22 ) , .SI ( P_DATA[5] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[5] ( .D ( n21 ) , .SI ( P_DATA[4] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[4] ( .D ( n20 ) , .SI ( P_DATA[3] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[3] ( .D ( n19 ) , .SI ( P_DATA[2] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[2] ( .D ( n18 ) , .SI ( P_DATA[1] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[1] ( .D ( n17 ) , .SI ( P_DATA[0] ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[0] ( .D ( n16 ) , .SI ( test_si ) , .SE ( n3 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U6 ( .INP ( n1 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U8 ( .INP ( test_se ) , .Z ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module data_sampling ( CLK , RST , RX_IN , prescale , edge_cnt , enable , 
    sampled_bit , test_si , test_so , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  RX_IN ;
input  [5:0] prescale ;
input  [5:0] edge_cnt ;
input  enable ;
output sampled_bit ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire \add_18/carry[4] ;
wire \add_18/carry[3] ;
wire \add_18/carry[2] ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire [4:0] half_edges_neg1 ;
wire [4:0] half_edges_plus1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

HADDX1 \add_18/U1_1_2 ( .A0 ( prescale[3] ) , .B0 ( \add_18/carry[2] ) , 
    .C1 ( \add_18/carry[3] ) , .SO ( half_edges_plus1[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
HADDX1 U4 ( .A0 ( prescale[4] ) , .B0 ( \add_18/carry[3] ) , 
    .C1 ( \add_18/carry[4] ) , .SO ( half_edges_plus1[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U5 ( .IN1 ( prescale[4] ) , .IN2 ( n9 ) , .Q ( half_edges_neg1[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U6 ( .IN1 ( prescale[4] ) , .IN2 ( edge_cnt[3] ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U9 ( .IN1 ( n32 ) , .IN2 ( prescale[1] ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U10 ( .IN1 ( edge_cnt[0] ) , .IN2 ( prescale[1] ) , .Q ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U11 ( .IN1 ( n3 ) , .IN2 ( edge_cnt[4] ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U12 ( .IN1 ( prescale[5] ) , .IN2 ( n7 ) , .Q ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U13 ( .IN1 ( n4 ) , .IN2 ( edge_cnt[4] ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U14 ( .IN1 ( \add_18/carry[4] ) , .IN2 ( prescale[5] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U15 ( .A0 ( prescale[2] ) , .B0 ( prescale[1] ) , 
    .C1 ( \add_18/carry[2] ) , .SO ( half_edges_plus1[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1 U17 ( .IN1 ( prescale[2] ) , .IN2 ( prescale[1] ) , .IN3 ( n5 ) , 
    .Q ( half_edges_neg1[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U19 ( .IN1 ( prescale[3] ) , .IN2 ( n8 ) , .IN3 ( n6 ) , 
    .Q ( half_edges_neg1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U21 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .S ( n12 ) , .Q ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U23 ( .IN1 ( half_edges_plus1[2] ) , .IN2 ( edge_cnt[2] ) , 
    .Q ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U24 ( .IN1 ( half_edges_plus1[3] ) , .IN2 ( edge_cnt[3] ) , 
    .Q ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U26 ( .IN1 ( edge_cnt[1] ) , .IN2 ( half_edges_plus1[1] ) , 
    .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U28 ( .IN1 ( n20 ) , .IN2 ( n11 ) , .S ( n25 ) , .Q ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U30 ( .IN1 ( prescale[3] ) , .IN2 ( edge_cnt[2] ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( prescale[5] ) , .IN2 ( edge_cnt[4] ) , .Q ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U33 ( .IN1 ( n32 ) , .IN2 ( prescale[1] ) , .Q ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( n33 ) , .IN2 ( prescale[2] ) , .Q ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U36 ( .IN1 ( n34 ) , .IN2 ( n11 ) , .S ( n35 ) , .Q ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U38 ( .IN1 ( half_edges_neg1[2] ) , .IN2 ( edge_cnt[2] ) , .Q ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U39 ( .IN1 ( half_edges_neg1[3] ) , .IN2 ( edge_cnt[3] ) , .Q ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U42 ( .IN1 ( n33 ) , .IN2 ( half_edges_neg1[1] ) , .Q ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U44 ( .IN1 ( enable ) , .IN2 ( RX_IN ) , .Q ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U47 ( .IN1 ( sampled_bit ) , .IN2 ( n42 ) , .S ( enable ) , 
    .Q ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U48 ( .IN1 ( n46 ) , .IN2 ( n45 ) , .IN3 ( n43 ) , .IN4 ( n44 ) , 
    .QN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[2] ( .D ( n24 ) , .SI ( n2 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[1] ( .D ( n23 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[0] ( .D ( n22 ) , .SI ( sampled_bit ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , .QN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 sampled_bit_reg ( .D ( n21 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sampled_bit ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U3 ( .IN1 ( prescale[2] ) , .IN2 ( prescale[1] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U7 ( .INP ( n5 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U8 ( .IN1 ( n8 ) , .IN2 ( prescale[3] ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U16 ( .INP ( n6 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U18 ( .INP ( edge_cnt[1] ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U20 ( .INP ( edge_cnt[0] ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U22 ( .IN1 ( prescale[4] ) , .IN2 ( n9 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U25 ( .INP ( enable ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U27 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X1 U29 ( .IN1 ( n36 ) , .IN2 ( n37 ) , .IN3 ( n38 ) , .IN4 ( n39 ) , 
    .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U32 ( .IN1 ( n45 ) , .IN2 ( n19 ) , .QN ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U35 ( .IN1 ( n40 ) , .IN2 ( n41 ) , .QN ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X1 U37 ( .IN1 ( n26 ) , .IN2 ( n27 ) , .IN3 ( n28 ) , .IN4 ( n29 ) , 
    .QN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U40 ( .IN1 ( n46 ) , .IN2 ( n19 ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U41 ( .IN1 ( n30 ) , .IN2 ( n31 ) , .QN ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X1 U43 ( .IN1 ( n13 ) , .IN2 ( n14 ) , .IN3 ( n15 ) , .IN4 ( n16 ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U45 ( .IN1 ( n44 ) , .IN2 ( n19 ) , .QN ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U46 ( .IN1 ( n17 ) , .IN2 ( n18 ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module edge_bit_counter ( CLK , RST , enable , par_en , prescale , bit_cnt , 
    edge_cnt , test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  enable ;
input  par_en ;
input  [5:0] prescale ;
output [3:0] bit_cnt ;
output [5:0] edge_cnt ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N9 ;
wire N10 ;
wire N11 ;
wire N12 ;
wire N13 ;
wire N14 ;
wire N15 ;
wire N16 ;
wire N31 ;
wire N32 ;
wire N33 ;
wire N34 ;
wire N35 ;
wire N47 ;
wire N48 ;
wire N49 ;
wire N50 ;
wire N51 ;
wire N52 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire \add_24/carry[5] ;
wire \add_24/carry[4] ;
wire \add_24/carry[3] ;
wire \add_24/carry[2] ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n9 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;

NAND3X0 U14 ( .IN1 ( n12 ) , .IN2 ( n6 ) , .IN3 ( bit_cnt[2] ) , .QN ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U15 ( .IN1 ( enable ) , .IN2 ( n13 ) , .IN3 ( bit_cnt[3] ) , 
    .QN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U16 ( .IN1 ( n14 ) , .IN2 ( bit_cnt[0] ) , .IN3 ( bit_cnt[2] ) , 
    .IN4 ( n8 ) , .IN5 ( n15 ) , .Q ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U17 ( .IN1 ( n16 ) , .IN2 ( bit_cnt[2] ) , .IN3 ( n17 ) , 
    .IN4 ( n12 ) , .Q ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U18 ( .IN1 ( n8 ) , .IN2 ( n15 ) , .IN3 ( n41 ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U19 ( .IN1 ( bit_cnt[3] ) , .IN2 ( par_en ) , .IN3 ( bit_cnt[2] ) , 
    .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( n18 ) , .IN2 ( bit_cnt[1] ) , .IN3 ( n19 ) , 
    .IN4 ( enable ) , .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U21 ( .IN1 ( n40 ) , .IN2 ( n7 ) , .IN3 ( bit_cnt[0] ) , .QN ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U22 ( .IN1 ( n8 ) , .IN2 ( n40 ) , .IN3 ( n23 ) , .QN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U23 ( .IN1 ( n41 ) , .IN2 ( n18 ) , .IN3 ( n20 ) , .IN4 ( bit_cnt[0] ) , 
    .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U25 ( .IN1 ( N35 ) , .IN2 ( n18 ) , .Q ( N52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U26 ( .IN1 ( N34 ) , .IN2 ( n18 ) , .Q ( N51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U27 ( .IN1 ( N33 ) , .IN2 ( n18 ) , .Q ( N50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U28 ( .IN1 ( N32 ) , .IN2 ( n18 ) , .Q ( N49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U29 ( .IN1 ( N31 ) , .IN2 ( n18 ) , .Q ( N48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U30 ( .IN1 ( n39 ) , .IN2 ( n18 ) , .Q ( N47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
HADDX1 \add_24/U1_1_1 ( .A0 ( edge_cnt[1] ) , .B0 ( edge_cnt[0] ) , 
    .C1 ( \add_24/carry[2] ) , .SO ( N31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 \add_24/U1_1_2 ( .A0 ( edge_cnt[2] ) , .B0 ( \add_24/carry[2] ) , 
    .C1 ( \add_24/carry[3] ) , .SO ( N32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 \add_24/U1_1_3 ( .A0 ( edge_cnt[3] ) , .B0 ( \add_24/carry[3] ) , 
    .C1 ( \add_24/carry[4] ) , .SO ( N33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 \add_24/U1_1_4 ( .A0 ( edge_cnt[4] ) , .B0 ( \add_24/carry[4] ) , 
    .C1 ( \add_24/carry[5] ) , .SO ( N34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U3 ( .IN1 ( n38 ) , .IN2 ( N10 ) , .IN3 ( n39 ) , .IN4 ( N9 ) , 
    .QN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( N10 ) , .IN2 ( n38 ) , .IN3 ( N9 ) , .IN4 ( n39 ) , 
    .Q ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U5 ( .IN1 ( bit_cnt[1] ) , .IN2 ( n1 ) , .IN3 ( bit_cnt[3] ) , 
    .Q ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U37 ( .IN1 ( prescale[1] ) , .IN2 ( prescale[0] ) , .IN3 ( n2 ) , 
    .Q ( N10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U39 ( .IN1 ( prescale[2] ) , .IN2 ( n9 ) , .IN3 ( n3 ) , .Q ( N11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U41 ( .IN1 ( prescale[3] ) , .IN2 ( n28 ) , .IN3 ( n4 ) , .Q ( N12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U43 ( .IN1 ( prescale[4] ) , .IN2 ( n29 ) , .IN3 ( n5 ) , .Q ( N13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U45 ( .IN1 ( prescale[5] ) , .IN2 ( n30 ) , .IN3 ( N15 ) , .Q ( N14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U46 ( .IN1 ( \add_24/carry[5] ) , .IN2 ( edge_cnt[5] ) , .Q ( N35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U47 ( .IN1 ( N14 ) , .IN2 ( edge_cnt[5] ) , .Q ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U48 ( .IN1 ( n33 ) , .IN2 ( n32 ) , .IN3 ( N15 ) , .IN4 ( n31 ) , 
    .Q ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U49 ( .IN1 ( N13 ) , .IN2 ( edge_cnt[4] ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U50 ( .IN1 ( N11 ) , .IN2 ( edge_cnt[2] ) , .Q ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U51 ( .IN1 ( N12 ) , .IN2 ( edge_cnt[3] ) , .Q ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X1 U52 ( .IN1 ( n37 ) , .IN2 ( n36 ) , .IN3 ( n35 ) , .IN4 ( n34 ) , 
    .QN ( N16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[0] ( .D ( N47 ) , .SI ( bit_cnt[3] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[0] ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[5] ( .D ( N52 ) , .SI ( edge_cnt[4] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[4] ( .D ( N51 ) , .SI ( edge_cnt[3] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[3] ( .D ( N50 ) , .SI ( edge_cnt[2] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[2] ( .D ( N49 ) , .SI ( edge_cnt[1] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[1] ( .D ( N48 ) , .SI ( edge_cnt[0] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( edge_cnt[1] ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[0] ( .D ( n27 ) , .SI ( test_si ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_cnt[0] ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[1] ( .D ( n26 ) , .SI ( bit_cnt[0] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_cnt[1] ) , .QN ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[2] ( .D ( n25 ) , .SI ( bit_cnt[1] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_cnt[2] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[3] ( .D ( n24 ) , .SI ( bit_cnt[2] ) , .SE ( n42 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_cnt[3] ) , .QN ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U6 ( .IN1 ( n41 ) , .IN2 ( N16 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U7 ( .IN1 ( prescale[1] ) , .IN2 ( prescale[0] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U8 ( .INP ( n3 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U9 ( .IN1 ( n28 ) , .IN2 ( prescale[3] ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U10 ( .INP ( n4 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U11 ( .IN1 ( n29 ) , .IN2 ( prescale[4] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U12 ( .INP ( prescale[0] ) , .ZN ( N9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U13 ( .INP ( n5 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U24 ( .INP ( n2 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U31 ( .IN1 ( n9 ) , .IN2 ( prescale[2] ) , .QN ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U32 ( .IN1 ( n30 ) , .IN2 ( prescale[5] ) , .QN ( N15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U34 ( .IN1 ( bit_cnt[1] ) , .IN2 ( N16 ) , .QN ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U35 ( .INP ( enable ) , .ZN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U36 ( .INP ( n18 ) , .ZN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U38 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .QN ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X2 U40 ( .IN1 ( n15 ) , .IN2 ( n8 ) , .IN3 ( enable ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U42 ( .IN1 ( n20 ) , .IN2 ( n21 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X2 U44 ( .IN1 ( bit_cnt[0] ) , .IN2 ( n7 ) , .IN3 ( n22 ) , .Q ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( par_en ) , .IN2 ( bit_cnt[2] ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U53 ( .INP ( test_se ) , .Z ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module uart_rx_fsm ( clk , rst , par_en , par_err , strt_glitch , stp_err , 
    prescale , ser_data , bit_cnt , edge_cnt , counter_en , data_samp_en , 
    par_chk_en , strt_chk_en , stp_chk_en , deser_en , data_valid , test_si , 
    test_so , test_se , VDD , VSS ) ;
input  clk ;
input  rst ;
input  par_en ;
input  par_err ;
input  strt_glitch ;
input  stp_err ;
input  [5:0] prescale ;
input  ser_data ;
input  [3:0] bit_cnt ;
input  [5:0] edge_cnt ;
output counter_en ;
output data_samp_en ;
output par_chk_en ;
output strt_chk_en ;
output stp_chk_en ;
output deser_en ;
output data_valid ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire [0:4] half_edges_plus1 ;
wire [2:0] cs ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire \add_34/carry[3] ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n8 ;
wire n12 ;
wire n13 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n22 ;
wire n23 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire [2:0] ns ;
supply1 VDD ;
supply0 VSS ;

assign half_edges_plus1[0] = prescale[1] ;
assign cs[2] = test_so ;

NOR3X0 U24 ( .IN1 ( n21 ) , .IN2 ( n11 ) , .IN3 ( n2 ) , .QN ( par_chk_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U27 ( .IN1 ( n25 ) , .IN2 ( n21 ) , .IN3 ( n26 ) , .QN ( ns[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U28 ( .IN1 ( n27 ) , .IN2 ( n19 ) , .IN3 ( bit_cnt[3] ) , 
    .IN4 ( strt_glitch ) , .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U29 ( .IN1 ( n10 ) , .IN2 ( n9 ) , .IN3 ( cs[0] ) , .QN ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U30 ( .IN1 ( cs[0] ) , .IN2 ( n28 ) , .IN3 ( n11 ) , .IN4 ( n29 ) , 
    .Q ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U31 ( .IN1 ( cs[1] ) , .IN2 ( n32 ) , .IN3 ( n33 ) , .IN4 ( n10 ) , 
    .Q ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U32 ( .IN1 ( n30 ) , .IN2 ( n11 ) , .IN3 ( par_en ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U33 ( .IN1 ( n41 ) , .IN2 ( n39 ) , .IN3 ( bit_cnt[0] ) , 
    .IN4 ( bit_cnt[2] ) , .Q ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U34 ( .IN1 ( n11 ) , .IN2 ( n35 ) , .IN3 ( ser_data ) , 
    .IN4 ( cs[0] ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U35 ( .IN1 ( n37 ) , .IN2 ( n41 ) , .IN3 ( strt_glitch ) , .Q ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U36 ( .IN1 ( n39 ) , .IN2 ( n40 ) , .IN3 ( bit_cnt[0] ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U37 ( .IN1 ( n21 ) , .IN2 ( cs[0] ) , .IN3 ( n2 ) , .QN ( deser_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U38 ( .IN1 ( n21 ) , .IN2 ( n20 ) , .IN3 ( n36 ) , 
    .QN ( counter_en ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U39 ( .IN1 ( n11 ) , .IN2 ( n10 ) , .IN3 ( test_so ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U3 ( .IN1 ( prescale[2] ) , .IN2 ( edge_cnt[1] ) , .IN3 ( n42 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U5 ( .IN1 ( prescale[4] ) , .IN2 ( \add_34/carry[3] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U11 ( .IN1 ( n18 ) , .IN2 ( n17 ) , .IN3 ( n16 ) , .IN4 ( n15 ) , 
    .Q ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U13 ( .IN1 ( prescale[5] ) , .IN2 ( n3 ) , 
    .Q ( half_edges_plus1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U15 ( .IN1 ( n4 ) , .IN2 ( edge_cnt[3] ) , .Q ( n8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI21X1 U18 ( .IN1 ( n5 ) , .IN2 ( n6 ) , .IN3 ( n21 ) , .QN ( ns[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U19 ( .IN1 ( n24 ) , .IN2 ( par_err ) , .IN3 ( n11 ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U20 ( .IN1 ( n38 ) , .IN2 ( par_en ) , .IN3 ( cs[0] ) , .Q ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U43 ( .IN1 ( prescale[3] ) , .IN2 ( prescale[2] ) , 
    .Q ( \add_34/carry[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U45 ( .INP ( counter_en ) , .Z ( data_samp_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U46 ( .IN1 ( prescale[3] ) , .IN2 ( prescale[2] ) , 
    .Q ( half_edges_plus1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U47 ( .IN1 ( half_edges_plus1[4] ) , .IN2 ( edge_cnt[4] ) , 
    .Q ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U49 ( .IN1 ( half_edges_plus1[2] ) , .IN2 ( edge_cnt[2] ) , 
    .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U51 ( .IN1 ( n13 ) , .IN2 ( prescale[2] ) , .IN3 ( edge_cnt[1] ) , 
    .IN4 ( n13 ) , .Q ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( ns[0] ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst ) , .Q ( cs[0] ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( cs[1] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst ) , .Q ( test_so ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( cs[0] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst ) , .Q ( cs[1] ) , .QN ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U4 ( .INP ( edge_cnt[0] ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U6 ( .IN1 ( prescale[4] ) , .IN2 ( \add_34/carry[3] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U7 ( .IN1 ( prescale[1] ) , .IN2 ( n22 ) , .QN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U8 ( .IN1 ( n22 ) , .IN2 ( prescale[1] ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U9 ( .IN1 ( n12 ) , .IN2 ( n8 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U10 ( .INP ( bit_cnt[1] ) , .ZN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U12 ( .INP ( bit_cnt[3] ) , .ZN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U14 ( .IN1 ( n27 ) , .IN2 ( n41 ) , .QN ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U16 ( .IN1 ( cs[0] ) , .IN2 ( n9 ) , .QN ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U17 ( .INP ( bit_cnt[2] ) , .ZN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U21 ( .INP ( n30 ) , .ZN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U22 ( .IN1 ( cs[1] ) , .IN2 ( n9 ) , .QN ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U23 ( .INP ( n27 ) , .ZN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U25 ( .IN1 ( n24 ) , .IN2 ( n23 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U26 ( .INP ( par_err ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U40 ( .IN1 ( n2 ) , .IN2 ( n20 ) , .QN ( stp_chk_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U41 ( .IN1 ( n19 ) , .IN2 ( n2 ) , .QN ( strt_chk_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U44 ( .IN1 ( test_so ) , .IN2 ( n31 ) , .QN ( ns[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X2 U48 ( .IN1 ( n11 ) , .IN2 ( n29 ) , .IN3 ( n34 ) , .Q ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U50 ( .IN1 ( stp_err ) , .IN2 ( n20 ) , .QN ( data_valid ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U42 ( .IN1 ( par_en ) , .IN2 ( n38 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module UART_RX ( CLK , RST , RX_IN , PAR_EN , PAR_TYP , Prescale , 
    Data_valid , P_DATA , test_si , test_so , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  RX_IN ;
input  PAR_EN ;
input  PAR_TYP ;
input  [5:0] Prescale ;
output Data_valid ;
output [7:0] P_DATA ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire STRT_GLITCH ;
wire PAR_ERR ;
wire STP_ERR ;
wire CNT_EN ;
wire SAMP_EN ;
wire PAR_CHK_EN ;
wire STRT_CHK_EN ;
wire STP_CHK_EN ;
wire DESER_EN ;
wire SAMPLED_BIT ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n5 ;
wire n6 ;
wire n4 ;
wire n7 ;
wire [3:0] BIT_CNT ;
wire [5:0] EDGE_CNT ;
supply1 VDD ;
supply0 VSS ;

assign STRT_GLITCH = test_so ;

NBUFFX2 U1 ( .INP ( RST ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U2 ( .INP ( RST ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U3 ( .INP ( RST ) , .Z ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
uart_rx_fsm fsm_inst ( .clk ( CLK ) , .rst ( n2 ) , .par_en ( PAR_EN ) , 
    .par_err ( PAR_ERR ) , .strt_glitch ( test_so ) , .stp_err ( STP_ERR ) , 
    .prescale ( Prescale ) , .ser_data ( RX_IN ) , .bit_cnt ( BIT_CNT ) , 
    .edge_cnt ( EDGE_CNT ) , .counter_en ( CNT_EN ) , 
    .data_samp_en ( SAMP_EN ) , .par_chk_en ( PAR_CHK_EN ) , 
    .strt_chk_en ( STRT_CHK_EN ) , .stp_chk_en ( STP_CHK_EN ) , 
    .deser_en ( DESER_EN ) , .data_valid ( Data_valid ) , 
    .test_si ( P_DATA[7] ) , .test_so ( n6 ) , .test_se ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
edge_bit_counter counter_inst ( .CLK ( CLK ) , .RST ( n1 ) , 
    .enable ( CNT_EN ) , .par_en ( PAR_EN ) , .prescale ( Prescale ) , 
    .bit_cnt ( BIT_CNT ) , .edge_cnt ( EDGE_CNT ) , .test_si ( test_si ) , 
    .test_se ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
data_sampling samp_inst ( .CLK ( CLK ) , .RST ( n3 ) , .RX_IN ( RX_IN ) , 
    .prescale ( Prescale ) , .edge_cnt ( EDGE_CNT ) , .enable ( SAMP_EN ) , 
    .sampled_bit ( SAMPLED_BIT ) , .test_si ( PAR_ERR ) , .test_so ( n5 ) , 
    .test_se ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
deserializer deser_inst ( .CLK ( CLK ) , .RST ( n2 ) , 
    .s_data ( SAMPLED_BIT ) , .deser_en ( DESER_EN ) , .P_DATA ( P_DATA ) , 
    .test_si ( EDGE_CNT[5] ) , .test_se ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
parity_check par_chk_inst ( .CLK ( CLK ) , .RST ( n1 ) , 
    .par_typ ( PAR_TYP ) , .sampled_bit ( SAMPLED_BIT ) , .P_DATA ( P_DATA ) , 
    .enable ( PAR_CHK_EN ) , .par_err ( PAR_ERR ) , .test_si ( n6 ) , 
    .test_se ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
strt_check strt_chk_inst ( .CLK ( CLK ) , .RST ( n3 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STRT_CHK_EN ) , 
    .strt_glitch ( test_so ) , .test_si ( STP_ERR ) , .test_se ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
stop_check stp_chk_inst ( .CLK ( CLK ) , .RST ( n3 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STP_CHK_EN ) , 
    .stp_err ( STP_ERR ) , .test_si ( n5 ) , .test_se ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U4 ( .INP ( test_se ) , .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U5 ( .INP ( test_se ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux4x1 ( CLK , RST , start_bit , stop_bit , ser_data , par_bit , 
    mux_sel , TX_OUT , test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  start_bit ;
input  stop_bit ;
input  ser_data ;
input  par_bit ;
input  [1:0] mux_sel ;
output TX_OUT ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N13 ;
wire n3 ;
wire n4 ;
wire n1 ;
wire n2 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

AO22X1 U5 ( .IN1 ( mux_sel[1] ) , .IN2 ( n3 ) , .IN3 ( n4 ) , .IN4 ( n2 ) , 
    .Q ( N13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U6 ( .IN1 ( stop_bit ) , .IN2 ( mux_sel[0] ) , .IN3 ( start_bit ) , 
    .IN4 ( n1 ) , .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( par_bit ) , .IN2 ( mux_sel[0] ) , .IN3 ( ser_data ) , 
    .IN4 ( n1 ) , .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 TX_OUT_reg ( .D ( N13 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .SETB ( RST ) , .Q ( TX_OUT ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U3 ( .INP ( mux_sel[0] ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U4 ( .INP ( mux_sel[1] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module parity_calc ( CLK , RST , Data_Valid , P_DATA , PAR_TYP , par_bit , 
    test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  Data_Valid ;
input  [7:0] P_DATA ;
input  PAR_TYP ;
output par_bit ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire par_bit_comb ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n30 ;
wire n31 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

XOR3X1 U3 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( PAR_TYP ) , 
    .Q ( par_bit_comb ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U4 ( .IN1 ( n20 ) , .IN2 ( n21 ) , .IN3 ( n3 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U5 ( .IN1 ( n18 ) , .IN2 ( n19 ) , .Q ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR3X1 U6 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .IN3 ( n4 ) , .Q ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .Q ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U8 ( .IN1 ( P_DATA[0] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n13 ) , .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( P_DATA[1] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n12 ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U12 ( .IN1 ( P_DATA[2] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n11 ) , .Q ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U14 ( .IN1 ( P_DATA[3] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n10 ) , .Q ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U16 ( .IN1 ( P_DATA[4] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n9 ) , .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U18 ( .IN1 ( P_DATA[5] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n8 ) , .Q ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( P_DATA[6] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n7 ) , .Q ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U22 ( .IN1 ( P_DATA[7] ) , .IN2 ( Data_Valid ) , .IN3 ( n30 ) , 
    .IN4 ( n6 ) , .Q ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U9 ( .INP ( RST ) , .Z ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n29 ) , .SI ( n7 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n6 ) , .QN ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n28 ) , .SI ( n8 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n7 ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n27 ) , .SI ( n9 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n8 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n26 ) , .SI ( n10 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n9 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n25 ) , .SI ( n11 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n10 ) , .QN ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n24 ) , .SI ( n12 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n11 ) , .QN ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n23 ) , .SI ( n13 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( n12 ) , .QN ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n22 ) , .SI ( test_si ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n13 ) , .QN ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 par_bit_reg ( .D ( par_bit_comb ) , .SI ( n6 ) , .SE ( n31 ) , 
    .CLK ( CLK ) , .RSTB ( n5 ) , .Q ( par_bit ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U11 ( .INP ( Data_Valid ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U13 ( .INP ( test_se ) , .Z ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module controller_fsm ( Data_Valid , PAR_EN , CLK , RST , ser_done , ser_en , 
    mux_sel , busy , test_si , test_so , test_se , VDD , VSS ) ;
input  Data_Valid ;
input  PAR_EN ;
input  CLK ;
input  RST ;
input  ser_done ;
output ser_en ;
output [1:0] mux_sel ;
output busy ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire [2:0] cs ;
wire busy_c ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n1 ;
wire n2 ;
wire [2:0] ns ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

assign cs[2] = test_so ;

NAND3X0 U13 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( ser_done ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U14 ( .IN1 ( ser_done ) , .IN2 ( n2 ) , .IN3 ( n9 ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U15 ( .IN1 ( n14 ) , .IN2 ( n4 ) , .IN3 ( Data_Valid ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U16 ( .IN1 ( ser_en ) , .IN2 ( ser_done ) , .IN3 ( PAR_EN ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U17 ( .IN1 ( cs[1] ) , .IN2 ( n14 ) , .Q ( ser_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( cs[1] ) , .IN2 ( n3 ) , .IN3 ( cs[0] ) , .QN ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U20 ( .IN1 ( n5 ) , .IN2 ( n3 ) , .IN3 ( cs[1] ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U21 ( .IN1 ( n4 ) , .IN2 ( n3 ) , .IN3 ( cs[0] ) , .QN ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U3 ( .IN1 ( cs[1] ) , .IN2 ( cs[0] ) , .IN3 ( n5 ) , .IN4 ( n4 ) , 
    .IN5 ( test_so ) , .Q ( mux_sel[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U4 ( .IN1 ( n10 ) , .IN2 ( n9 ) , .IN3 ( n7 ) , .QN ( busy_c ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( ns[0] ) , .SI ( busy ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( cs[0] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( cs[1] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( cs[0] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( cs[1] ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 busy_reg ( .D ( busy_c ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( busy ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U5 ( .IN1 ( n9 ) , .IN2 ( n7 ) , .QN ( mux_sel[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U7 ( .IN1 ( cs[0] ) , .IN2 ( test_so ) , .QN ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U8 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .QN ( ns[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U9 ( .IN1 ( n7 ) , .IN2 ( n8 ) , .QN ( ns[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U10 ( .INP ( n9 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U11 ( .IN1 ( n12 ) , .IN2 ( n13 ) , .QN ( ns[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( PAR_EN ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module serializer ( P_DATA , ser_en , busy , Data_Valid , CLK , RST , 
    ser_done , ser_data , test_si , test_so , test_se , VDD , VSS ) ;
input  [7:0] P_DATA ;
input  ser_en ;
input  busy ;
input  Data_Valid ;
input  CLK ;
input  RST ;
output ser_done ;
output ser_data ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire [2:0] counter ;
wire N27 ;
wire N23 ;
wire N24 ;
wire N25 ;
wire n1 ;
wire n2 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n3 ;
wire n4 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire [7:1] P_DATA_Valid ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

assign counter[2] = test_so ;
assign N27 = ser_done ;

AO222X1 U11 ( .IN1 ( P_DATA[0] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[1] ) , 
    .IN4 ( n6 ) , .IN5 ( ser_data ) , .IN6 ( n7 ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U12 ( .IN1 ( P_DATA_Valid[7] ) , .IN2 ( n7 ) , .IN3 ( P_DATA[7] ) , 
    .IN4 ( n4 ) , .Q ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U13 ( .IN1 ( P_DATA[6] ) , .IN2 ( n4 ) , .IN3 ( P_DATA_Valid[7] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[6] ) , .IN6 ( n7 ) , .Q ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U14 ( .IN1 ( P_DATA[5] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[6] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[5] ) , .IN6 ( n7 ) , .Q ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U15 ( .IN1 ( P_DATA[4] ) , .IN2 ( n4 ) , .IN3 ( P_DATA_Valid[5] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[4] ) , .IN6 ( n7 ) , .Q ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U16 ( .IN1 ( P_DATA[3] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[4] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[3] ) , .IN6 ( n7 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U17 ( .IN1 ( P_DATA[2] ) , .IN2 ( n4 ) , .IN3 ( P_DATA_Valid[3] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[2] ) , .IN6 ( n7 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U18 ( .IN1 ( P_DATA[1] ) , .IN2 ( n4 ) , .IN3 ( P_DATA_Valid[2] ) , 
    .IN4 ( n6 ) , .IN5 ( n7 ) , .IN6 ( P_DATA_Valid[1] ) , .Q ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( N23 ) , .IN2 ( test_so ) , .IN3 ( ser_en ) , .IN4 ( n8 ) , 
    .Q ( N25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( test_so ) , .IN2 ( n1 ) , .IN3 ( n9 ) , 
    .IN4 ( counter[1] ) , .Q ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U22 ( .IN1 ( counter[0] ) , .IN2 ( counter[1] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U3 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , .QN ( ser_done ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U5 ( .INP ( RST ) , .Z ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U8 ( .INP ( n5 ) , .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n12 ) , .SI ( P_DATA_Valid[6] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n13 ) , .SI ( P_DATA_Valid[5] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n14 ) , .SI ( P_DATA_Valid[4] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n15 ) , .SI ( P_DATA_Valid[3] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n16 ) , .SI ( P_DATA_Valid[2] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n17 ) , .SI ( P_DATA_Valid[1] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n18 ) , .SI ( ser_data ) , .SE ( n22 ) , 
    .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( P_DATA_Valid[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n11 ) , .SI ( test_si ) , .SE ( n22 ) , 
    .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( ser_data ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N23 ) , .SI ( P_DATA_Valid[7] ) , 
    .SE ( n22 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( counter[0] ) , 
    .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N24 ) , .SI ( counter[0] ) , .SE ( n22 ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( counter[1] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N25 ) , .SI ( counter[1] ) , .SE ( n22 ) , 
    .CLK ( CLK ) , .RSTB ( n19 ) , .Q ( test_so ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U4 ( .IN1 ( n21 ) , .IN2 ( busy ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U6 ( .IN1 ( ser_en ) , .IN2 ( n5 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U7 ( .INP ( ser_en ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U9 ( .INP ( Data_Valid ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U10 ( .IN1 ( n20 ) , .IN2 ( n4 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U19 ( .IN1 ( test_so ) , .IN2 ( n2 ) , .QN ( n9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U23 ( .IN1 ( n10 ) , .IN2 ( n20 ) , .QN ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U24 ( .IN1 ( n20 ) , .IN2 ( counter[0] ) , .QN ( N23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U25 ( .INP ( test_se ) , .Z ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART_TX ( CLK , RST , PAR_TYP , PAR_EN , P_DATA , Data_Valid , TX_OUT , 
    Busy , test_si , test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  PAR_TYP ;
input  PAR_EN ;
input  [7:0] P_DATA ;
input  Data_Valid ;
output TX_OUT ;
output Busy ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire Serial_En ;
wire Serial_Done ;
wire Serial_Data ;
wire PARITY_BIT ;
wire n1 ;
wire n3 ;
wire n4 ;
wire n2 ;
wire n5 ;
wire [1:0] MUX_Sel ;
supply1 VDD ;
supply0 VSS ;

NBUFFX2 U3 ( .INP ( RST ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
serializer U0_SER ( .P_DATA ( P_DATA ) , .ser_en ( Serial_En ) , 
    .busy ( Busy ) , .Data_Valid ( Data_Valid ) , .CLK ( CLK ) , .RST ( n1 ) , 
    .ser_done ( Serial_Done ) , .ser_data ( Serial_Data ) , 
    .test_si ( PARITY_BIT ) , .test_so ( n3 ) , .test_se ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
controller_fsm U0_FSM ( .Data_Valid ( Data_Valid ) , .PAR_EN ( PAR_EN ) , 
    .CLK ( CLK ) , .RST ( n1 ) , .ser_done ( Serial_Done ) , 
    .ser_en ( Serial_En ) , .mux_sel ( MUX_Sel ) , .busy ( Busy ) , 
    .test_si ( test_si ) , .test_so ( n4 ) , .test_se ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
parity_calc U0_PARITY_CALC ( .CLK ( CLK ) , .RST ( n1 ) , 
    .Data_Valid ( Data_Valid ) , .P_DATA ( P_DATA ) , .PAR_TYP ( PAR_TYP ) , 
    .par_bit ( PARITY_BIT ) , .test_si ( n4 ) , .test_se ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
mux4x1 U0_MUX ( .CLK ( CLK ) , .RST ( n1 ) , .start_bit ( VSS ) , 
    .stop_bit ( VDD ) , .ser_data ( Serial_Data ) , .par_bit ( PARITY_BIT ) , 
    .mux_sel ( MUX_Sel ) , .TX_OUT ( TX_OUT ) , .test_si ( n3 ) , 
    .test_se ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U4 ( .INP ( test_se ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U5 ( .INP ( test_se ) , .Z ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART ( TX_CLK , RX_CLK , RST , PAR_TYP , PAR_EN , Prescale , TX_IN_P , 
    TX_IN_V , TX_OUT_S , TX_OUT_V , RX_IN_S , RX_OUT_P , RX_OUT_V , test_si , 
    test_se , VDD , VSS ) ;
input  TX_CLK ;
input  RX_CLK ;
input  RST ;
input  PAR_TYP ;
input  PAR_EN ;
input  [5:0] Prescale ;
input  [7:0] TX_IN_P ;
input  TX_IN_V ;
output TX_OUT_S ;
output TX_OUT_V ;
input  RX_IN_S ;
output [7:0] RX_OUT_P ;
output RX_OUT_V ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n2 ;
supply1 VDD ;
supply0 VSS ;

UART_TX U0_TX ( .CLK ( TX_CLK ) , .RST ( RST ) , .PAR_TYP ( PAR_TYP ) , 
    .PAR_EN ( PAR_EN ) , .P_DATA ( TX_IN_P ) , .Data_Valid ( TX_IN_V ) , 
    .TX_OUT ( TX_OUT_S ) , .Busy ( TX_OUT_V ) , .test_si ( n2 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
UART_RX U0_RX ( .CLK ( RX_CLK ) , .RST ( RST ) , .RX_IN ( RX_IN_S ) , 
    .PAR_EN ( PAR_EN ) , .PAR_TYP ( PAR_TYP ) , .Prescale ( Prescale ) , 
    .Data_valid ( RX_OUT_V ) , .P_DATA ( RX_OUT_P ) , .test_si ( test_si ) , 
    .test_so ( n2 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module REG_FILE ( WrData , Address , WrEn , RdEn , CLK , RST , RdData , 
    RdData_Valid , REG0 , REG1 , REG2 , REG3 , test_si3 , test_si2 , 
    test_si1 , test_so3 , test_so2 , test_so1 , test_se , VDD , VSS ) ;
input  [7:0] WrData ;
input  [3:0] Address ;
input  WrEn ;
input  RdEn ;
input  CLK ;
input  RST ;
output [7:0] RdData ;
output RdData_Valid ;
output [7:0] REG0 ;
output [7:0] REG1 ;
output [7:0] REG2 ;
output [7:0] REG3 ;
input  test_si3 ;
input  test_si2 ;
input  test_si1 ;
output test_so3 ;
output test_so2 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N10 ;
wire N11 ;
wire N12 ;
wire N13 ;
wire n401 ;
wire \regfile[15][7] ;
wire \regfile[13][0] ;
wire n383 ;
wire n384 ;
wire n385 ;
wire n386 ;
wire n387 ;
wire n388 ;
wire n389 ;
wire n390 ;
wire n391 ;
wire n392 ;
wire n393 ;
wire n394 ;
wire n395 ;
wire n396 ;
wire n397 ;
wire n398 ;
wire n399 ;
wire n400 ;
wire \regfile[15][6] ;
wire \regfile[15][5] ;
wire \regfile[15][4] ;
wire \regfile[15][3] ;
wire \regfile[15][2] ;
wire \regfile[15][1] ;
wire \regfile[15][0] ;
wire \regfile[14][7] ;
wire \regfile[14][6] ;
wire \regfile[14][5] ;
wire \regfile[14][4] ;
wire \regfile[14][3] ;
wire \regfile[14][2] ;
wire \regfile[14][1] ;
wire \regfile[14][0] ;
wire \regfile[13][7] ;
wire \regfile[13][6] ;
wire \regfile[13][5] ;
wire \regfile[13][4] ;
wire \regfile[13][3] ;
wire \regfile[13][2] ;
wire \regfile[13][1] ;
wire \regfile[12][7] ;
wire \regfile[12][6] ;
wire \regfile[12][5] ;
wire \regfile[12][4] ;
wire \regfile[12][3] ;
wire \regfile[12][2] ;
wire \regfile[12][1] ;
wire \regfile[12][0] ;
wire \regfile[11][7] ;
wire \regfile[11][6] ;
wire \regfile[11][5] ;
wire \regfile[11][4] ;
wire \regfile[11][3] ;
wire \regfile[11][2] ;
wire \regfile[11][1] ;
wire \regfile[11][0] ;
wire \regfile[10][7] ;
wire \regfile[10][6] ;
wire \regfile[10][5] ;
wire \regfile[10][4] ;
wire \regfile[10][3] ;
wire \regfile[10][2] ;
wire \regfile[10][1] ;
wire \regfile[10][0] ;
wire \regfile[9][7] ;
wire \regfile[9][6] ;
wire \regfile[9][5] ;
wire \regfile[9][4] ;
wire \regfile[9][3] ;
wire \regfile[9][2] ;
wire \regfile[9][1] ;
wire \regfile[9][0] ;
wire \regfile[8][7] ;
wire \regfile[8][6] ;
wire \regfile[8][5] ;
wire \regfile[8][4] ;
wire \regfile[8][3] ;
wire \regfile[8][2] ;
wire \regfile[8][1] ;
wire \regfile[8][0] ;
wire \regfile[7][7] ;
wire \regfile[7][6] ;
wire \regfile[7][5] ;
wire \regfile[7][4] ;
wire \regfile[7][3] ;
wire \regfile[7][2] ;
wire \regfile[7][1] ;
wire \regfile[7][0] ;
wire \regfile[6][7] ;
wire \regfile[6][6] ;
wire \regfile[6][5] ;
wire \regfile[6][4] ;
wire \regfile[6][3] ;
wire \regfile[6][2] ;
wire \regfile[6][1] ;
wire \regfile[6][0] ;
wire \regfile[5][7] ;
wire \regfile[5][6] ;
wire \regfile[5][5] ;
wire \regfile[5][4] ;
wire \regfile[5][3] ;
wire \regfile[5][2] ;
wire \regfile[5][1] ;
wire \regfile[5][0] ;
wire \regfile[4][7] ;
wire \regfile[4][6] ;
wire \regfile[4][5] ;
wire \regfile[4][4] ;
wire \regfile[4][3] ;
wire \regfile[4][2] ;
wire \regfile[4][1] ;
wire \regfile[4][0] ;
wire N33 ;
wire N34 ;
wire N35 ;
wire N36 ;
wire N37 ;
wire N38 ;
wire N39 ;
wire N40 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n57 ;
wire n58 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n63 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
wire n100 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n119 ;
wire n120 ;
wire n121 ;
wire n122 ;
wire n123 ;
wire n124 ;
wire n125 ;
wire n126 ;
wire n127 ;
wire n128 ;
wire n129 ;
wire n130 ;
wire n131 ;
wire n132 ;
wire n133 ;
wire n134 ;
wire n135 ;
wire n136 ;
wire n137 ;
wire n138 ;
wire n139 ;
wire n140 ;
wire n141 ;
wire n142 ;
wire n143 ;
wire n144 ;
wire n145 ;
wire n146 ;
wire n147 ;
wire n148 ;
wire n149 ;
wire n150 ;
wire n151 ;
wire n152 ;
wire n153 ;
wire n154 ;
wire n155 ;
wire n156 ;
wire n157 ;
wire n158 ;
wire n159 ;
wire n160 ;
wire n161 ;
wire n162 ;
wire n163 ;
wire n164 ;
wire n165 ;
wire n166 ;
wire n167 ;
wire n168 ;
wire n169 ;
wire n170 ;
wire n171 ;
wire n172 ;
wire n173 ;
wire n174 ;
wire n175 ;
wire n176 ;
wire n177 ;
wire n178 ;
wire n179 ;
wire n180 ;
wire n181 ;
wire n182 ;
wire n183 ;
wire net7279 ;
wire net7283 ;
wire net7287 ;
wire net7288 ;
wire net7289 ;
wire net7290 ;
wire net7292 ;
wire net8782 ;
wire net8781 ;
wire net9000 ;
wire net9024 ;
wire net9114 ;
wire net9131 ;
wire net9134 ;
wire net9155 ;
wire net9164 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n16 ;
wire n18 ;
wire n25 ;
wire n34 ;
wire n185 ;
wire n187 ;
wire n189 ;
wire n191 ;
wire n193 ;
wire n195 ;
wire n197 ;
wire n199 ;
wire n200 ;
wire n202 ;
wire n204 ;
wire n206 ;
wire n209 ;
wire n210 ;
wire n211 ;
wire n212 ;
wire n213 ;
wire n214 ;
wire n215 ;
wire n216 ;
wire n217 ;
wire n218 ;
wire n219 ;
wire n220 ;
wire n221 ;
wire n222 ;
wire n223 ;
wire n224 ;
wire n225 ;
wire n226 ;
wire n227 ;
wire n228 ;
wire n229 ;
wire n230 ;
wire n231 ;
wire n232 ;
wire n233 ;
wire n234 ;
wire n235 ;
wire n236 ;
wire n237 ;
wire n238 ;
wire n239 ;
wire n240 ;
wire n241 ;
wire n242 ;
wire n243 ;
wire n244 ;
wire n245 ;
wire n246 ;
wire n247 ;
wire n248 ;
wire n249 ;
wire n250 ;
wire n251 ;
wire n252 ;
wire n253 ;
wire n254 ;
wire n255 ;
wire n256 ;
wire n257 ;
wire n258 ;
wire n259 ;
wire n260 ;
wire n261 ;
wire n262 ;
wire n263 ;
wire n264 ;
wire n265 ;
wire n266 ;
wire n267 ;
wire n268 ;
wire n269 ;
wire n270 ;
wire n271 ;
wire n272 ;
wire n273 ;
wire n274 ;
wire n275 ;
wire n276 ;
wire n277 ;
wire n278 ;
wire n279 ;
wire n280 ;
wire n281 ;
wire n282 ;
wire n283 ;
wire n284 ;
wire n285 ;
wire n286 ;
wire n287 ;
wire n289 ;
wire n290 ;
wire n291 ;
wire n292 ;
wire n294 ;
wire n295 ;
wire n296 ;
wire n297 ;
wire n298 ;
wire n299 ;
wire n300 ;
wire n301 ;
wire n302 ;
wire n303 ;
wire n304 ;
wire n305 ;
wire n306 ;
wire n307 ;
wire n308 ;
wire n309 ;
wire n310 ;
wire n311 ;
wire n312 ;
wire n313 ;
wire n314 ;
wire n315 ;
wire n316 ;
wire n317 ;
wire n318 ;
wire n319 ;
wire n320 ;
wire n321 ;
wire n323 ;
wire n324 ;
wire n325 ;
wire n326 ;
wire n328 ;
wire n330 ;
wire n331 ;
wire n332 ;
wire n333 ;
wire n335 ;
wire n336 ;
wire n337 ;
wire n338 ;
wire n339 ;
wire n340 ;
wire n341 ;
wire n342 ;
wire n343 ;
wire n344 ;
wire n345 ;
wire n346 ;
wire n347 ;
wire n348 ;
wire n349 ;
wire n350 ;
wire n351 ;
wire n352 ;
wire n356 ;
wire n357 ;
wire n358 ;
wire n360 ;
wire n361 ;
wire n362 ;
wire n363 ;
wire n364 ;
wire n365 ;
wire n366 ;
wire n367 ;
wire n368 ;
wire n369 ;
wire n370 ;
wire n371 ;
wire n372 ;
wire n373 ;
wire n374 ;
wire n375 ;
wire n376 ;
wire n377 ;
wire n378 ;
wire n379 ;
wire n380 ;
wire n381 ;
wire n382 ;
wire n402 ;
wire n403 ;
wire n404 ;
wire n405 ;
wire n407 ;
wire n408 ;
wire n409 ;
wire n411 ;
wire n412 ;
wire n413 ;
wire n414 ;
wire n4 ;
wire n15 ;
wire n17 ;
wire n19 ;
wire n30 ;
wire n184 ;
wire n186 ;
wire n188 ;
wire n190 ;
wire n192 ;
wire n194 ;
wire n196 ;
wire n198 ;
wire n201 ;
wire n203 ;
wire n205 ;
wire n207 ;
wire n208 ;
wire n288 ;
wire n293 ;
wire n322 ;
wire n327 ;
wire n329 ;
wire n334 ;
wire n353 ;
wire n354 ;
wire n355 ;
wire n359 ;
wire n406 ;
wire n410 ;
wire n415 ;
wire n416 ;
wire n417 ;
wire n418 ;
wire n419 ;
wire n420 ;
wire n421 ;
wire n422 ;
wire n423 ;
wire n424 ;
wire n425 ;
wire n426 ;
wire n427 ;
wire n428 ;
wire n429 ;
wire n430 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;
wire SYNOPSYS_UNCONNECTED_19 ;
wire SYNOPSYS_UNCONNECTED_20 ;
wire SYNOPSYS_UNCONNECTED_21 ;
wire SYNOPSYS_UNCONNECTED_22 ;
wire SYNOPSYS_UNCONNECTED_23 ;
wire SYNOPSYS_UNCONNECTED_24 ;
wire SYNOPSYS_UNCONNECTED_25 ;
wire SYNOPSYS_UNCONNECTED_26 ;
wire SYNOPSYS_UNCONNECTED_27 ;
wire SYNOPSYS_UNCONNECTED_28 ;
wire SYNOPSYS_UNCONNECTED_29 ;
wire SYNOPSYS_UNCONNECTED_30 ;
wire SYNOPSYS_UNCONNECTED_31 ;
wire SYNOPSYS_UNCONNECTED_32 ;
wire SYNOPSYS_UNCONNECTED_33 ;
wire SYNOPSYS_UNCONNECTED_34 ;
wire SYNOPSYS_UNCONNECTED_35 ;
wire SYNOPSYS_UNCONNECTED_36 ;
wire SYNOPSYS_UNCONNECTED_37 ;
wire SYNOPSYS_UNCONNECTED_38 ;
wire SYNOPSYS_UNCONNECTED_39 ;
wire SYNOPSYS_UNCONNECTED_40 ;
wire SYNOPSYS_UNCONNECTED_41 ;
wire SYNOPSYS_UNCONNECTED_42 ;
wire SYNOPSYS_UNCONNECTED_43 ;
wire SYNOPSYS_UNCONNECTED_44 ;
wire SYNOPSYS_UNCONNECTED_45 ;
wire SYNOPSYS_UNCONNECTED_46 ;
wire SYNOPSYS_UNCONNECTED_47 ;
wire SYNOPSYS_UNCONNECTED_48 ;
wire SYNOPSYS_UNCONNECTED_49 ;
wire SYNOPSYS_UNCONNECTED_50 ;
wire SYNOPSYS_UNCONNECTED_51 ;
wire SYNOPSYS_UNCONNECTED_52 ;
wire SYNOPSYS_UNCONNECTED_53 ;
wire SYNOPSYS_UNCONNECTED_54 ;
wire SYNOPSYS_UNCONNECTED_55 ;
wire SYNOPSYS_UNCONNECTED_56 ;
wire SYNOPSYS_UNCONNECTED_57 ;
wire SYNOPSYS_UNCONNECTED_58 ;
wire SYNOPSYS_UNCONNECTED_59 ;
wire SYNOPSYS_UNCONNECTED_60 ;
wire SYNOPSYS_UNCONNECTED_61 ;
wire SYNOPSYS_UNCONNECTED_62 ;
wire SYNOPSYS_UNCONNECTED_63 ;
wire SYNOPSYS_UNCONNECTED_64 ;
wire SYNOPSYS_UNCONNECTED_65 ;
wire SYNOPSYS_UNCONNECTED_66 ;
wire SYNOPSYS_UNCONNECTED_67 ;
wire SYNOPSYS_UNCONNECTED_68 ;
wire SYNOPSYS_UNCONNECTED_69 ;
wire SYNOPSYS_UNCONNECTED_70 ;
wire SYNOPSYS_UNCONNECTED_71 ;
wire SYNOPSYS_UNCONNECTED_72 ;
wire SYNOPSYS_UNCONNECTED_73 ;
wire SYNOPSYS_UNCONNECTED_74 ;
wire SYNOPSYS_UNCONNECTED_75 ;
wire SYNOPSYS_UNCONNECTED_76 ;
wire SYNOPSYS_UNCONNECTED_77 ;
wire SYNOPSYS_UNCONNECTED_78 ;
wire SYNOPSYS_UNCONNECTED_79 ;
wire SYNOPSYS_UNCONNECTED_80 ;
wire SYNOPSYS_UNCONNECTED_81 ;
wire SYNOPSYS_UNCONNECTED_82 ;
wire SYNOPSYS_UNCONNECTED_83 ;
wire SYNOPSYS_UNCONNECTED_84 ;
wire SYNOPSYS_UNCONNECTED_85 ;
wire SYNOPSYS_UNCONNECTED_86 ;
wire SYNOPSYS_UNCONNECTED_87 ;
wire SYNOPSYS_UNCONNECTED_88 ;
wire SYNOPSYS_UNCONNECTED_89 ;
wire SYNOPSYS_UNCONNECTED_90 ;
wire SYNOPSYS_UNCONNECTED_91 ;
wire SYNOPSYS_UNCONNECTED_92 ;
wire SYNOPSYS_UNCONNECTED_93 ;
wire SYNOPSYS_UNCONNECTED_94 ;
wire SYNOPSYS_UNCONNECTED_95 ;
wire SYNOPSYS_UNCONNECTED_96 ;
wire SYNOPSYS_UNCONNECTED_97 ;
wire SYNOPSYS_UNCONNECTED_98 ;
wire SYNOPSYS_UNCONNECTED_99 ;
wire SYNOPSYS_UNCONNECTED_100 ;
wire SYNOPSYS_UNCONNECTED_101 ;
wire SYNOPSYS_UNCONNECTED_102 ;
wire SYNOPSYS_UNCONNECTED_103 ;
wire SYNOPSYS_UNCONNECTED_104 ;
wire SYNOPSYS_UNCONNECTED_105 ;
wire SYNOPSYS_UNCONNECTED_106 ;
wire SYNOPSYS_UNCONNECTED_107 ;
wire SYNOPSYS_UNCONNECTED_108 ;
wire SYNOPSYS_UNCONNECTED_109 ;
wire SYNOPSYS_UNCONNECTED_110 ;
wire SYNOPSYS_UNCONNECTED_111 ;
wire SYNOPSYS_UNCONNECTED_112 ;
wire SYNOPSYS_UNCONNECTED_113 ;
wire SYNOPSYS_UNCONNECTED_114 ;
wire SYNOPSYS_UNCONNECTED_115 ;
wire SYNOPSYS_UNCONNECTED_116 ;
wire SYNOPSYS_UNCONNECTED_117 ;
wire SYNOPSYS_UNCONNECTED_118 ;
wire SYNOPSYS_UNCONNECTED_119 ;

assign N10 = Address[0] ;
assign N11 = Address[1] ;
assign N12 = Address[2] ;
assign N13 = Address[3] ;
assign n401 = test_so1 ;
assign \regfile[15][7] = test_so3 ;
assign \regfile[13][0] = test_so2 ;

AO22X1 U57 ( .IN1 ( net7288 ) , .IN2 ( n337 ) , .IN3 ( REG2[0] ) , 
    .IN4 ( net9024 ) , .Q ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( net7288 ) , .IN2 ( n343 ) , .IN3 ( n319 ) , 
    .IN4 ( net9024 ) , .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( net7292 ) , .IN2 ( n338 ) , .IN3 ( REG3[1] ) , 
    .IN4 ( net9131 ) , .Q ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( net7292 ) , .IN2 ( n340 ) , .IN3 ( REG3[2] ) , 
    .IN4 ( net9131 ) , .Q ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( net7292 ) , .IN2 ( n342 ) , .IN3 ( REG3[3] ) , 
    .IN4 ( net9131 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U69 ( .IN1 ( net7292 ) , .IN2 ( n344 ) , .IN3 ( REG3[4] ) , 
    .IN4 ( net9131 ) , .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( net7292 ) , .IN2 ( n14 ) , .IN3 ( REG3[6] ) , 
    .IN4 ( net9131 ) , .Q ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( net7292 ) , .IN2 ( n348 ) , .IN3 ( REG3[7] ) , 
    .IN4 ( net9131 ) , .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( net7289 ) , .IN2 ( n339 ) , .IN3 ( \regfile[4][1] ) , 
    .IN4 ( net9000 ) , .Q ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( net7289 ) , .IN2 ( n341 ) , .IN3 ( \regfile[4][2] ) , 
    .IN4 ( net9000 ) , .Q ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( net7289 ) , .IN2 ( n343 ) , .IN3 ( \regfile[4][3] ) , 
    .IN4 ( net9000 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U77 ( .IN1 ( net7289 ) , .IN2 ( n345 ) , .IN3 ( \regfile[4][4] ) , 
    .IN4 ( net9000 ) , .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( net7289 ) , .IN2 ( n347 ) , .IN3 ( \regfile[4][5] ) , 
    .IN4 ( net9000 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( net7289 ) , .IN2 ( n349 ) , .IN3 ( \regfile[4][7] ) , 
    .IN4 ( net9000 ) , .Q ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( n373 ) , .IN2 ( n336 ) , .IN3 ( n293 ) , 
    .IN4 ( \regfile[5][0] ) , .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( n373 ) , .IN2 ( n340 ) , .IN3 ( \regfile[5][2] ) , 
    .IN4 ( n196 ) , .Q ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( n373 ) , .IN2 ( n342 ) , .IN3 ( \regfile[5][3] ) , 
    .IN4 ( n196 ) , .Q ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( n373 ) , .IN2 ( n344 ) , .IN3 ( n293 ) , 
    .IN4 ( \regfile[5][4] ) , .Q ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U89 ( .IN1 ( net7290 ) , .IN2 ( n337 ) , .IN3 ( \regfile[6][0] ) , 
    .IN4 ( net9114 ) , .Q ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U91 ( .IN1 ( net7290 ) , .IN2 ( n341 ) , .IN3 ( \regfile[6][2] ) , 
    .IN4 ( net9114 ) , .Q ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U92 ( .IN1 ( net7290 ) , .IN2 ( n343 ) , .IN3 ( \regfile[6][3] ) , 
    .IN4 ( net9114 ) , .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U93 ( .IN1 ( net7290 ) , .IN2 ( n345 ) , .IN3 ( \regfile[6][4] ) , 
    .IN4 ( net9114 ) , .Q ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U95 ( .IN1 ( net7290 ) , .IN2 ( n14 ) , .IN3 ( \regfile[6][6] ) , 
    .IN4 ( net9114 ) , .Q ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U96 ( .IN1 ( net7290 ) , .IN2 ( n349 ) , .IN3 ( \regfile[6][7] ) , 
    .IN4 ( net9114 ) , .Q ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U100 ( .IN1 ( n372 ) , .IN2 ( n340 ) , .IN3 ( \regfile[7][2] ) , 
    .IN4 ( n201 ) , .Q ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U101 ( .IN1 ( n372 ) , .IN2 ( n342 ) , .IN3 ( n208 ) , 
    .IN4 ( \regfile[7][3] ) , .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U102 ( .IN1 ( n372 ) , .IN2 ( n344 ) , .IN3 ( \regfile[7][4] ) , 
    .IN4 ( n201 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U103 ( .IN1 ( n372 ) , .IN2 ( n346 ) , .IN3 ( n208 ) , 
    .IN4 ( \regfile[7][5] ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( n321 ) , .IN2 ( n336 ) , .IN3 ( \regfile[9][0] ) , 
    .IN4 ( n320 ) , .Q ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U116 ( .IN1 ( n321 ) , .IN2 ( n338 ) , .IN3 ( \regfile[9][1] ) , 
    .IN4 ( n320 ) , .Q ( n120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U117 ( .IN1 ( n321 ) , .IN2 ( n340 ) , .IN3 ( \regfile[9][2] ) , 
    .IN4 ( n320 ) , .Q ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U118 ( .IN1 ( n321 ) , .IN2 ( n342 ) , .IN3 ( \regfile[9][3] ) , 
    .IN4 ( n320 ) , .Q ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U119 ( .IN1 ( n321 ) , .IN2 ( n344 ) , .IN3 ( \regfile[9][4] ) , 
    .IN4 ( n320 ) , .Q ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U120 ( .IN1 ( n321 ) , .IN2 ( n346 ) , .IN3 ( \regfile[9][5] ) , 
    .IN4 ( n320 ) , .Q ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U123 ( .IN1 ( net7279 ) , .IN2 ( n337 ) , .IN3 ( \regfile[10][0] ) , 
    .IN4 ( net9134 ) , .Q ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U127 ( .IN1 ( net7279 ) , .IN2 ( n345 ) , .IN3 ( \regfile[10][4] ) , 
    .IN4 ( net9134 ) , .Q ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U128 ( .IN1 ( net7279 ) , .IN2 ( n347 ) , .IN3 ( \regfile[10][5] ) , 
    .IN4 ( net9134 ) , .Q ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U129 ( .IN1 ( net7279 ) , .IN2 ( net8782 ) , .IN3 ( \regfile[10][6] ) , 
    .IN4 ( n184 ) , .Q ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( net7279 ) , .IN2 ( n349 ) , .IN3 ( \regfile[10][7] ) , 
    .IN4 ( net9134 ) , .Q ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( net7283 ) , .IN2 ( n336 ) , .IN3 ( \regfile[11][0] ) , 
    .IN4 ( net9155 ) , .Q ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U132 ( .IN1 ( net7283 ) , .IN2 ( n338 ) , .IN3 ( \regfile[11][1] ) , 
    .IN4 ( net9155 ) , .Q ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U135 ( .IN1 ( net7283 ) , .IN2 ( n344 ) , .IN3 ( \regfile[11][4] ) , 
    .IN4 ( net9155 ) , .Q ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U136 ( .IN1 ( net7283 ) , .IN2 ( n346 ) , .IN3 ( \regfile[11][5] ) , 
    .IN4 ( net9155 ) , .Q ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U137 ( .IN1 ( net7283 ) , .IN2 ( net8781 ) , .IN3 ( \regfile[11][6] ) , 
    .IN4 ( net9155 ) , .Q ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U138 ( .IN1 ( net7283 ) , .IN2 ( n348 ) , .IN3 ( \regfile[11][7] ) , 
    .IN4 ( net9155 ) , .Q ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U139 ( .IN1 ( n379 ) , .IN2 ( n337 ) , .IN3 ( \regfile[12][0] ) , 
    .IN4 ( n323 ) , .Q ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U140 ( .IN1 ( n379 ) , .IN2 ( n339 ) , .IN3 ( \regfile[12][1] ) , 
    .IN4 ( n323 ) , .Q ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U141 ( .IN1 ( n379 ) , .IN2 ( n341 ) , .IN3 ( \regfile[12][2] ) , 
    .IN4 ( n323 ) , .Q ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U142 ( .IN1 ( n379 ) , .IN2 ( n343 ) , .IN3 ( \regfile[12][3] ) , 
    .IN4 ( n323 ) , .Q ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U147 ( .IN1 ( n377 ) , .IN2 ( n336 ) , .IN3 ( test_so2 ) , 
    .IN4 ( n330 ) , .Q ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U148 ( .IN1 ( n377 ) , .IN2 ( n338 ) , .IN3 ( \regfile[13][1] ) , 
    .IN4 ( n330 ) , .Q ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U149 ( .IN1 ( n377 ) , .IN2 ( n340 ) , .IN3 ( \regfile[13][2] ) , 
    .IN4 ( n330 ) , .Q ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( n377 ) , .IN2 ( n342 ) , .IN3 ( \regfile[13][3] ) , 
    .IN4 ( n330 ) , .Q ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U153 ( .IN1 ( n377 ) , .IN2 ( net8781 ) , .IN3 ( \regfile[13][6] ) , 
    .IN4 ( n330 ) , .Q ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( n377 ) , .IN2 ( n348 ) , .IN3 ( \regfile[13][7] ) , 
    .IN4 ( n330 ) , .Q ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U156 ( .IN1 ( n378 ) , .IN2 ( n337 ) , .IN3 ( \regfile[14][0] ) , 
    .IN4 ( n331 ) , .Q ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( n378 ) , .IN2 ( n339 ) , .IN3 ( \regfile[14][1] ) , 
    .IN4 ( n331 ) , .Q ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U158 ( .IN1 ( n378 ) , .IN2 ( n341 ) , .IN3 ( \regfile[14][2] ) , 
    .IN4 ( n331 ) , .Q ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( n343 ) , .IN2 ( n378 ) , .IN3 ( \regfile[14][3] ) , 
    .IN4 ( n331 ) , .Q ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U160 ( .IN1 ( n378 ) , .IN2 ( n345 ) , .IN3 ( \regfile[14][4] ) , 
    .IN4 ( n331 ) , .Q ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U165 ( .IN1 ( n376 ) , .IN2 ( n336 ) , .IN3 ( \regfile[15][0] ) , 
    .IN4 ( n203 ) , .Q ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U166 ( .IN1 ( n376 ) , .IN2 ( n338 ) , .IN3 ( \regfile[15][1] ) , 
    .IN4 ( n203 ) , .Q ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U167 ( .IN1 ( n376 ) , .IN2 ( n340 ) , .IN3 ( \regfile[15][2] ) , 
    .IN4 ( n203 ) , .Q ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U168 ( .IN1 ( n376 ) , .IN2 ( n342 ) , .IN3 ( \regfile[15][3] ) , 
    .IN4 ( n203 ) , .Q ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U169 ( .IN1 ( n376 ) , .IN2 ( n344 ) , .IN3 ( \regfile[15][4] ) , 
    .IN4 ( n203 ) , .Q ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U170 ( .IN1 ( n376 ) , .IN2 ( n346 ) , .IN3 ( \regfile[15][5] ) , 
    .IN4 ( n203 ) , .Q ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U176 ( .IN1 ( RdData[0] ) , .IN2 ( n335 ) , .IN3 ( N40 ) , 
    .IN4 ( n46 ) , .Q ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U178 ( .IN1 ( RdData[2] ) , .IN2 ( n335 ) , .IN3 ( N38 ) , 
    .IN4 ( n46 ) , .Q ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U179 ( .IN1 ( RdData[3] ) , .IN2 ( n335 ) , .IN3 ( N37 ) , 
    .IN4 ( n46 ) , .Q ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U180 ( .IN1 ( RdData[4] ) , .IN2 ( n335 ) , .IN3 ( N36 ) , 
    .IN4 ( n409 ) , .Q ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U181 ( .IN1 ( RdData[5] ) , .IN2 ( n335 ) , .IN3 ( N35 ) , 
    .IN4 ( n409 ) , .Q ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U182 ( .IN1 ( RdData[6] ) , .IN2 ( n335 ) , .IN3 ( N34 ) , 
    .IN4 ( n409 ) , .Q ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( n349 ) , .IN2 ( n398 ) , .S ( n355 ) , .Q ( n70 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( n339 ) , .IN2 ( REG2[1] ) , .S ( n12 ) , .Q ( n64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U18 ( .IN1 ( n14 ) , .IN2 ( \regfile[9][6] ) , .S ( n37 ) , 
    .Q ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U23 ( .IN1 ( n348 ) , .IN2 ( \regfile[9][7] ) , .S ( n37 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( n337 ) , .IN2 ( \regfile[8][0] ) , .S ( n408 ) , 
    .Q ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U26 ( .IN1 ( n343 ) , .IN2 ( \regfile[10][3] ) , .S ( n39 ) , 
    .Q ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( n344 ) , .IN2 ( \regfile[13][4] ) , .S ( n205 ) , 
    .Q ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U30 ( .IN1 ( n349 ) , .IN2 ( \regfile[14][7] ) , .S ( n30 ) , 
    .Q ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U31 ( .IN1 ( net8781 ) , .IN2 ( \regfile[15][6] ) , .S ( n45 ) , 
    .Q ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U33 ( .IN1 ( n339 ) , .IN2 ( \regfile[8][1] ) , .S ( n408 ) , 
    .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( n341 ) , .IN2 ( \regfile[10][2] ) , .S ( net9134 ) , 
    .Q ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( n346 ) , .IN2 ( \regfile[13][5] ) , .S ( n205 ) , 
    .Q ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U38 ( .IN1 ( net8782 ) , .IN2 ( \regfile[14][6] ) , .S ( n30 ) , 
    .Q ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U39 ( .IN1 ( n348 ) , .IN2 ( test_so3 ) , .S ( n45 ) , .Q ( n174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( Address[3] ) , .IN2 ( WrEn ) , .Q ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( n332 ) , .IN2 ( n199 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U55 ( .INP ( n39 ) , .Z ( net9134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U63 ( .INP ( WrData[5] ) , .Z ( n346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( n397 ) , .IN2 ( n314 ) , .IN3 ( n389 ) , .IN4 ( n11 ) , 
    .Q ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U70 ( .IN1 ( n396 ) , .IN2 ( n311 ) , .IN3 ( n388 ) , .IN4 ( n304 ) , 
    .Q ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( n374 ) , .IN2 ( n338 ) , .IN3 ( n396 ) , .IN4 ( n324 ) , 
    .Q ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U79 ( .IN1 ( n374 ) , .IN2 ( n342 ) , .IN3 ( n394 ) , .IN4 ( n324 ) , 
    .Q ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( n374 ) , .IN2 ( net8781 ) , .IN3 ( n391 ) , 
    .IN4 ( n324 ) , .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U86 ( .IN1 ( n374 ) , .IN2 ( n348 ) , .IN3 ( n390 ) , .IN4 ( n324 ) , 
    .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U87 ( .IN1 ( n13 ) , .IN2 ( n341 ) , .IN3 ( REG2[2] ) , 
    .IN4 ( net9024 ) , .Q ( n65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U90 ( .IN1 ( net7288 ) , .IN2 ( n347 ) , .IN3 ( n400 ) , 
    .IN4 ( net9024 ) , .Q ( n68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( n399 ) , .IN2 ( net8782 ) , .S ( net7288 ) , .Q ( n69 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U97 ( .IN1 ( n379 ) , .IN2 ( n349 ) , .IN3 ( \regfile[12][7] ) , 
    .IN4 ( n323 ) , .Q ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U108 ( .INP ( n398 ) , .Z ( REG2[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U112 ( .IN1 ( n374 ) , .IN2 ( n340 ) , .IN3 ( n395 ) , .IN4 ( n324 ) , 
    .Q ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U113 ( .IN1 ( n374 ) , .IN2 ( n344 ) , .IN3 ( n393 ) , .IN4 ( n324 ) , 
    .Q ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U114 ( .INP ( n210 ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U122 ( .INP ( Address[3] ) , .Z ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U125 ( .IN1 ( \regfile[13][4] ) , .IN2 ( n313 ) , 
    .IN3 ( \regfile[12][4] ) , .IN4 ( n305 ) , .Q ( n251 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U126 ( .IN1 ( \regfile[13][1] ) , .IN2 ( n314 ) , 
    .IN3 ( \regfile[12][1] ) , .IN4 ( n307 ) , .Q ( n224 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U133 ( .IN1 ( \regfile[9][3] ) , .IN2 ( n311 ) , 
    .IN3 ( \regfile[8][3] ) , .IN4 ( n305 ) , .Q ( n241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U134 ( .IN1 ( n393 ) , .IN2 ( n313 ) , .IN3 ( n385 ) , .IN4 ( n307 ) , 
    .Q ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( \regfile[5][0] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][0] ) , .IN4 ( n306 ) , .Q ( n216 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U164 ( .INP ( WrData[6] ) , .Z ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U171 ( .INP ( WrData[6] ) , .Z ( net8782 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U172 ( .INP ( WrData[6] ) , .Z ( net8781 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX2 U183 ( .INP ( n1 ) , .ZN ( REG2[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U192 ( .IN1 ( n337 ) , .IN2 ( net7287 ) , .IN3 ( n389 ) , 
    .IN4 ( n404 ) , .Q ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U207 ( .INP ( n400 ) , .Z ( REG2[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U213 ( .INP ( test_so1 ) , .Z ( REG2[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U217 ( .INP ( n281 ) , .Z ( n303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U221 ( .INP ( n42 ) , .Z ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U227 ( .INP ( n43 ) , .Z ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U228 ( .IN1 ( n294 ) , .IN2 ( n2 ) , .Q ( n281 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U229 ( .INP ( n369 ) , .Z ( n367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U230 ( .INP ( n369 ) , .Z ( n366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U231 ( .INP ( n369 ) , .Z ( n365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U232 ( .INP ( n370 ) , .Z ( n364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U233 ( .INP ( n370 ) , .Z ( n363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U234 ( .INP ( n370 ) , .Z ( n362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U235 ( .INP ( n370 ) , .Z ( n361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U236 ( .INP ( n370 ) , .Z ( n360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U237 ( .INP ( n371 ) , .Z ( n358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U238 ( .INP ( n370 ) , .Z ( n357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U239 ( .INP ( n369 ) , .Z ( n356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U243 ( .INP ( n371 ) , .Z ( n352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U244 ( .INP ( n371 ) , .Z ( n351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U245 ( .INP ( n371 ) , .Z ( n350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U247 ( .INP ( n369 ) , .Z ( n368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U252 ( .INP ( WrData[0] ) , .Z ( n336 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U253 ( .INP ( WrData[1] ) , .Z ( n338 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U255 ( .INP ( WrData[0] ) , .Z ( n337 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U256 ( .INP ( WrData[1] ) , .Z ( n339 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U257 ( .INP ( WrData[5] ) , .Z ( n347 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U261 ( .IN1 ( RdEn ) , .IN2 ( n3 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U264 ( .INP ( WrData[7] ) , .Z ( n348 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U265 ( .INP ( WrData[7] ) , .Z ( n349 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U267 ( .IN1 ( n380 ) , .IN2 ( n349 ) , .IN3 ( \regfile[8][7] ) , 
    .IN4 ( n35 ) , .Q ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U268 ( .IN1 ( n380 ) , .IN2 ( n343 ) , .IN3 ( \regfile[8][3] ) , 
    .IN4 ( n408 ) , .Q ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U269 ( .IN1 ( n380 ) , .IN2 ( n347 ) , .IN3 ( \regfile[8][5] ) , 
    .IN4 ( n408 ) , .Q ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U270 ( .IN1 ( n380 ) , .IN2 ( n341 ) , .IN3 ( \regfile[8][2] ) , 
    .IN4 ( n35 ) , .Q ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U271 ( .IN1 ( n380 ) , .IN2 ( n345 ) , .IN3 ( \regfile[8][4] ) , 
    .IN4 ( n408 ) , .Q ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U272 ( .IN1 ( n380 ) , .IN2 ( n14 ) , .IN3 ( \regfile[8][6] ) , 
    .IN4 ( n35 ) , .Q ( n117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U273 ( .IN1 ( n345 ) , .IN2 ( net9164 ) , .IN3 ( n385 ) , 
    .IN4 ( n404 ) , .Q ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U275 ( .IN1 ( n341 ) , .IN2 ( net7287 ) , .IN3 ( n387 ) , 
    .IN4 ( n404 ) , .Q ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U276 ( .IN1 ( n339 ) , .IN2 ( net7287 ) , .IN3 ( n388 ) , 
    .IN4 ( n404 ) , .Q ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U278 ( .IN1 ( n395 ) , .IN2 ( n312 ) , .IN3 ( n387 ) , .IN4 ( n11 ) , 
    .Q ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U280 ( .IN1 ( \regfile[10][0] ) , .IN2 ( n317 ) , 
    .IN3 ( \regfile[11][0] ) , .IN4 ( n296 ) , .IN5 ( n214 ) , .Q ( n222 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U282 ( .IN1 ( \regfile[14][0] ) , .IN2 ( n317 ) , 
    .IN3 ( \regfile[15][0] ) , .IN4 ( n295 ) , .IN5 ( n215 ) , .Q ( n221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U283 ( .IN1 ( \regfile[6][0] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][0] ) , .IN4 ( n295 ) , .IN5 ( n216 ) , .Q ( n219 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U284 ( .IN1 ( REG2[0] ) , .IN2 ( n309 ) , .IN3 ( REG3[0] ) , 
    .IN4 ( n301 ) , .IN5 ( n217 ) , .Q ( n218 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U285 ( .IN1 ( n219 ) , .IN2 ( n285 ) , .IN3 ( n218 ) , .IN4 ( n283 ) , 
    .Q ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U286 ( .IN1 ( n222 ) , .IN2 ( n290 ) , .IN3 ( n221 ) , .IN4 ( n412 ) , 
    .IN5 ( n220 ) , .Q ( N40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U288 ( .IN1 ( \regfile[10][1] ) , .IN2 ( n316 ) , 
    .IN3 ( \regfile[11][1] ) , .IN4 ( n297 ) , .IN5 ( n223 ) , .Q ( n231 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U289 ( .IN1 ( \regfile[14][1] ) , .IN2 ( n317 ) , 
    .IN3 ( \regfile[15][1] ) , .IN4 ( n303 ) , .IN5 ( n224 ) , .Q ( n230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U290 ( .IN1 ( \regfile[5][1] ) , .IN2 ( n314 ) , 
    .IN3 ( \regfile[4][1] ) , .IN4 ( n306 ) , .Q ( n225 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U291 ( .IN1 ( \regfile[6][1] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][1] ) , .IN4 ( n296 ) , .IN5 ( n225 ) , .Q ( n228 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U292 ( .IN1 ( REG2[1] ) , .IN2 ( n309 ) , .IN3 ( REG3[1] ) , 
    .IN4 ( n300 ) , .IN5 ( n226 ) , .Q ( n227 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U293 ( .IN1 ( n228 ) , .IN2 ( n285 ) , .IN3 ( n227 ) , .IN4 ( n283 ) , 
    .Q ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U294 ( .IN1 ( n231 ) , .IN2 ( n290 ) , .IN3 ( n230 ) , .IN4 ( n411 ) , 
    .IN5 ( n229 ) , .Q ( N39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U295 ( .IN1 ( \regfile[9][2] ) , .IN2 ( n314 ) , 
    .IN3 ( \regfile[8][2] ) , .IN4 ( n307 ) , .Q ( n232 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U296 ( .IN1 ( \regfile[10][2] ) , .IN2 ( n317 ) , 
    .IN3 ( \regfile[11][2] ) , .IN4 ( n297 ) , .IN5 ( n232 ) , .Q ( n240 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U297 ( .IN1 ( \regfile[14][2] ) , .IN2 ( n310 ) , 
    .IN3 ( \regfile[15][2] ) , .IN4 ( n295 ) , .IN5 ( n233 ) , .Q ( n239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U298 ( .IN1 ( \regfile[5][2] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][2] ) , .IN4 ( n307 ) , .Q ( n234 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U299 ( .IN1 ( \regfile[6][2] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][2] ) , .IN4 ( n300 ) , .IN5 ( n234 ) , .Q ( n237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U300 ( .IN1 ( REG2[2] ) , .IN2 ( n316 ) , .IN3 ( REG3[2] ) , 
    .IN4 ( n299 ) , .IN5 ( n235 ) , .Q ( n236 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U301 ( .IN1 ( n237 ) , .IN2 ( n285 ) , .IN3 ( n236 ) , .IN4 ( n283 ) , 
    .Q ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U302 ( .IN1 ( n240 ) , .IN2 ( n290 ) , .IN3 ( n239 ) , .IN4 ( n411 ) , 
    .IN5 ( n238 ) , .Q ( N38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U303 ( .IN1 ( \regfile[10][3] ) , .IN2 ( n309 ) , 
    .IN3 ( \regfile[11][3] ) , .IN4 ( n301 ) , .IN5 ( n241 ) , .Q ( n249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U305 ( .IN1 ( \regfile[14][3] ) , .IN2 ( n309 ) , 
    .IN3 ( \regfile[15][3] ) , .IN4 ( n296 ) , .IN5 ( n242 ) , .Q ( n248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U306 ( .IN1 ( \regfile[5][3] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][3] ) , .IN4 ( n305 ) , .Q ( n243 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U307 ( .IN1 ( \regfile[6][3] ) , .IN2 ( n310 ) , 
    .IN3 ( \regfile[7][3] ) , .IN4 ( n301 ) , .IN5 ( n243 ) , .Q ( n246 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U308 ( .IN1 ( n319 ) , .IN2 ( n317 ) , .IN3 ( REG3[3] ) , 
    .IN4 ( n297 ) , .IN5 ( n244 ) , .Q ( n245 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U309 ( .IN1 ( n246 ) , .IN2 ( n285 ) , .IN3 ( n245 ) , .IN4 ( n283 ) , 
    .Q ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U310 ( .IN1 ( n249 ) , .IN2 ( n290 ) , .IN3 ( n248 ) , .IN4 ( n411 ) , 
    .IN5 ( n247 ) , .Q ( N37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U312 ( .IN1 ( \regfile[10][4] ) , .IN2 ( n309 ) , 
    .IN3 ( \regfile[11][4] ) , .IN4 ( n299 ) , .IN5 ( n250 ) , .Q ( n258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U313 ( .IN1 ( \regfile[14][4] ) , .IN2 ( n316 ) , 
    .IN3 ( \regfile[15][4] ) , .IN4 ( n297 ) , .IN5 ( n251 ) , .Q ( n257 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U314 ( .IN1 ( \regfile[5][4] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][4] ) , .IN4 ( n307 ) , .Q ( n252 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U315 ( .IN1 ( \regfile[6][4] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][4] ) , .IN4 ( n300 ) , .IN5 ( n252 ) , .Q ( n255 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U316 ( .IN1 ( test_so1 ) , .IN2 ( n316 ) , .IN3 ( REG3[4] ) , 
    .IN4 ( n303 ) , .IN5 ( n253 ) , .Q ( n254 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U317 ( .IN1 ( n255 ) , .IN2 ( n285 ) , .IN3 ( n254 ) , .IN4 ( n283 ) , 
    .Q ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U318 ( .IN1 ( n258 ) , .IN2 ( n290 ) , .IN3 ( n257 ) , .IN4 ( n411 ) , 
    .IN5 ( n256 ) , .Q ( N36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U319 ( .IN1 ( \regfile[9][5] ) , .IN2 ( n311 ) , 
    .IN3 ( \regfile[8][5] ) , .IN4 ( n305 ) , .Q ( n259 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U320 ( .IN1 ( \regfile[10][5] ) , .IN2 ( n310 ) , 
    .IN3 ( \regfile[11][5] ) , .IN4 ( n301 ) , .IN5 ( n259 ) , .Q ( n267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U321 ( .IN1 ( \regfile[14][5] ) , .IN2 ( n310 ) , 
    .IN3 ( \regfile[15][5] ) , .IN4 ( n295 ) , .IN5 ( n260 ) , .Q ( n266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U323 ( .IN1 ( \regfile[6][5] ) , .IN2 ( n309 ) , 
    .IN3 ( \regfile[7][5] ) , .IN4 ( n301 ) , .IN5 ( n261 ) , .Q ( n264 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U324 ( .IN1 ( n400 ) , .IN2 ( n310 ) , .IN3 ( REG3[5] ) , 
    .IN4 ( n299 ) , .IN5 ( n262 ) , .Q ( n263 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U325 ( .IN1 ( n264 ) , .IN2 ( n354 ) , .IN3 ( n263 ) , .IN4 ( n283 ) , 
    .Q ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U326 ( .IN1 ( n267 ) , .IN2 ( n290 ) , .IN3 ( n266 ) , .IN4 ( n412 ) , 
    .IN5 ( n265 ) , .Q ( N35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U328 ( .IN1 ( \regfile[10][6] ) , .IN2 ( n310 ) , 
    .IN3 ( \regfile[11][6] ) , .IN4 ( n300 ) , .IN5 ( n268 ) , .Q ( n276 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U329 ( .IN1 ( \regfile[13][6] ) , .IN2 ( n314 ) , 
    .IN3 ( \regfile[12][6] ) , .IN4 ( n307 ) , .Q ( n269 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U330 ( .IN1 ( \regfile[14][6] ) , .IN2 ( n309 ) , 
    .IN3 ( \regfile[15][6] ) , .IN4 ( n303 ) , .IN5 ( n269 ) , .Q ( n275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U331 ( .IN1 ( \regfile[5][6] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][6] ) , .IN4 ( n306 ) , .Q ( n270 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U332 ( .IN1 ( \regfile[6][6] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][6] ) , .IN4 ( n296 ) , .IN5 ( n270 ) , .Q ( n273 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U333 ( .IN1 ( n391 ) , .IN2 ( n314 ) , .IN3 ( n384 ) , .IN4 ( n305 ) , 
    .Q ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U334 ( .IN1 ( n399 ) , .IN2 ( n317 ) , .IN3 ( REG3[6] ) , 
    .IN4 ( n300 ) , .IN5 ( n271 ) , .Q ( n272 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U335 ( .IN1 ( n273 ) , .IN2 ( n354 ) , .IN3 ( n272 ) , .IN4 ( n283 ) , 
    .Q ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U336 ( .IN1 ( n276 ) , .IN2 ( n290 ) , .IN3 ( n275 ) , .IN4 ( n412 ) , 
    .IN5 ( n274 ) , .Q ( N34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U338 ( .IN1 ( \regfile[10][7] ) , .IN2 ( n316 ) , 
    .IN3 ( \regfile[11][7] ) , .IN4 ( n281 ) , .IN5 ( n277 ) , .Q ( n289 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U339 ( .IN1 ( \regfile[13][7] ) , .IN2 ( n311 ) , 
    .IN3 ( \regfile[12][7] ) , .IN4 ( n307 ) , .Q ( n278 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U340 ( .IN1 ( \regfile[14][7] ) , .IN2 ( n316 ) , .IN3 ( test_so3 ) , 
    .IN4 ( n299 ) , .IN5 ( n278 ) , .Q ( n287 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U341 ( .IN1 ( \regfile[5][7] ) , .IN2 ( n315 ) , 
    .IN3 ( \regfile[4][7] ) , .IN4 ( n306 ) , .Q ( n279 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U342 ( .IN1 ( \regfile[6][7] ) , .IN2 ( n308 ) , 
    .IN3 ( \regfile[7][7] ) , .IN4 ( n295 ) , .IN5 ( n279 ) , .Q ( n284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U343 ( .IN1 ( n398 ) , .IN2 ( n310 ) , .IN3 ( REG3[7] ) , 
    .IN4 ( n299 ) , .IN5 ( n280 ) , .Q ( n282 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U344 ( .IN1 ( n354 ) , .IN2 ( n284 ) , .IN3 ( n283 ) , .IN4 ( n282 ) , 
    .Q ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U345 ( .IN1 ( n290 ) , .IN2 ( n289 ) , .IN3 ( n412 ) , .IN4 ( n287 ) , 
    .IN5 ( n286 ) , .Q ( N33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U370 ( .IN1 ( n390 ) , .IN2 ( n311 ) , .IN3 ( n383 ) , .IN4 ( n305 ) , 
    .Q ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U392 ( .INP ( RST ) , .Z ( n369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U393 ( .INP ( RST ) , .Z ( n370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U394 ( .INP ( RST ) , .Z ( n371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U210 ( .INP ( n5 ) , .Z ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U174 ( .IN1 ( Address[2] ) , .IN2 ( n403 ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U218 ( .INP ( n46 ) , .Z ( n409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 RdData_Valid_reg ( .D ( n183 ) , .SI ( test_si1 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( RdData_Valid ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[7] ( .D ( n182 ) , .SI ( RdData[6] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[6] ( .D ( n181 ) , .SI ( RdData[5] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[5] ( .D ( n180 ) , .SI ( RdData[4] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[4] ( .D ( n179 ) , .SI ( RdData[3] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[3] ( .D ( n178 ) , .SI ( RdData[2] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[2] ( .D ( n177 ) , .SI ( RdData[1] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( RdData[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[1] ( .D ( n176 ) , .SI ( RdData[0] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( RdData[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[0] ( .D ( n175 ) , .SI ( RdData_Valid ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( RdData[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][7] ( .D ( n174 ) , .SI ( \regfile[15][6] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( test_so3 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][6] ( .D ( n173 ) , .SI ( \regfile[15][5] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( \regfile[15][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][5] ( .D ( n172 ) , .SI ( \regfile[15][4] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( \regfile[15][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][4] ( .D ( n171 ) , .SI ( \regfile[15][3] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( \regfile[15][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][3] ( .D ( n170 ) , .SI ( \regfile[15][2] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n351 ) , .Q ( \regfile[15][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][2] ( .D ( n169 ) , .SI ( \regfile[15][1] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[15][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][1] ( .D ( n168 ) , .SI ( \regfile[15][0] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[15][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][0] ( .D ( n167 ) , .SI ( \regfile[14][7] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[15][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][7] ( .D ( n166 ) , .SI ( \regfile[14][6] ) , 
    .SE ( n417 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[14][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][6] ( .D ( n165 ) , .SI ( \regfile[14][5] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[14][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][7] ( .D ( n158 ) , .SI ( \regfile[13][6] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( \regfile[13][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][6] ( .D ( n157 ) , .SI ( \regfile[13][5] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[13][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][5] ( .D ( n156 ) , .SI ( \regfile[13][4] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \regfile[13][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][4] ( .D ( n155 ) , .SI ( \regfile[13][3] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( \regfile[13][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][3] ( .D ( n154 ) , .SI ( \regfile[13][2] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[13][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][2] ( .D ( n153 ) , .SI ( \regfile[13][1] ) , 
    .SE ( n415 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( \regfile[13][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][1] ( .D ( n152 ) , .SI ( test_si3 ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[13][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][0] ( .D ( n151 ) , .SI ( \regfile[12][7] ) , 
    .SE ( n415 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( test_so2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][5] ( .D ( n148 ) , .SI ( \regfile[12][4] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[12][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][4] ( .D ( n147 ) , .SI ( \regfile[12][3] ) , 
    .SE ( n426 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[12][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][7] ( .D ( n142 ) , .SI ( \regfile[11][6] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[11][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][6] ( .D ( n141 ) , .SI ( \regfile[11][5] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][5] ( .D ( n140 ) , .SI ( \regfile[11][4] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][4] ( .D ( n139 ) , .SI ( \regfile[11][3] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][3] ( .D ( n138 ) , .SI ( \regfile[11][2] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][2] ( .D ( n137 ) , .SI ( \regfile[11][1] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][1] ( .D ( n136 ) , .SI ( \regfile[11][0] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][0] ( .D ( n135 ) , .SI ( \regfile[10][7] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( \regfile[11][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][3] ( .D ( n130 ) , .SI ( \regfile[10][2] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][2] ( .D ( n129 ) , .SI ( \regfile[10][1] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][7] ( .D ( n126 ) , .SI ( \regfile[9][6] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][6] ( .D ( n125 ) , .SI ( \regfile[9][5] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][5] ( .D ( n124 ) , .SI ( \regfile[9][4] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][4] ( .D ( n123 ) , .SI ( \regfile[9][3] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][3] ( .D ( n122 ) , .SI ( \regfile[9][2] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][2] ( .D ( n121 ) , .SI ( \regfile[9][1] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[9][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][1] ( .D ( n120 ) , .SI ( \regfile[9][0] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( \regfile[9][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][0] ( .D ( n119 ) , .SI ( \regfile[8][7] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( \regfile[9][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][7] ( .D ( n118 ) , .SI ( \regfile[8][6] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[8][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][6] ( .D ( n117 ) , .SI ( \regfile[8][5] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( \regfile[8][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][5] ( .D ( n116 ) , .SI ( \regfile[8][4] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( \regfile[8][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][4] ( .D ( n115 ) , .SI ( \regfile[8][3] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( \regfile[8][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][3] ( .D ( n114 ) , .SI ( \regfile[8][2] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[8][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][2] ( .D ( n113 ) , .SI ( \regfile[8][1] ) , 
    .SE ( n423 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[8][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][1] ( .D ( n112 ) , .SI ( \regfile[8][0] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[8][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][0] ( .D ( n111 ) , .SI ( \regfile[7][7] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[8][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][7] ( .D ( n110 ) , .SI ( \regfile[7][6] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[7][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][6] ( .D ( n109 ) , .SI ( \regfile[7][5] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[7][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][5] ( .D ( n108 ) , .SI ( \regfile[7][4] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[7][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][4] ( .D ( n107 ) , .SI ( \regfile[7][3] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[7][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][3] ( .D ( n106 ) , .SI ( \regfile[7][2] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[7][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][2] ( .D ( n105 ) , .SI ( \regfile[7][1] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[7][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][1] ( .D ( n104 ) , .SI ( \regfile[7][0] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[7][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][0] ( .D ( n103 ) , .SI ( \regfile[6][7] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[7][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][7] ( .D ( n102 ) , .SI ( \regfile[6][6] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[6][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][6] ( .D ( n101 ) , .SI ( \regfile[6][5] ) , 
    .SE ( n422 ) , .CLK ( CLK ) , .RSTB ( n361 ) , .Q ( \regfile[6][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][5] ( .D ( n100 ) , .SI ( \regfile[6][4] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][4] ( .D ( n99 ) , .SI ( \regfile[6][3] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][3] ( .D ( n98 ) , .SI ( \regfile[6][2] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][2] ( .D ( n97 ) , .SI ( \regfile[6][1] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][1] ( .D ( n96 ) , .SI ( \regfile[6][0] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][0] ( .D ( n95 ) , .SI ( \regfile[5][7] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[6][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][7] ( .D ( n94 ) , .SI ( \regfile[5][6] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n362 ) , .Q ( \regfile[5][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][6] ( .D ( n93 ) , .SI ( \regfile[5][5] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][5] ( .D ( n92 ) , .SI ( \regfile[5][4] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][4] ( .D ( n91 ) , .SI ( \regfile[5][3] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][3] ( .D ( n90 ) , .SI ( \regfile[5][2] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][2] ( .D ( n89 ) , .SI ( \regfile[5][1] ) , 
    .SE ( n421 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][1] ( .D ( n88 ) , .SI ( \regfile[5][0] ) , 
    .SE ( n420 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][0] ( .D ( n87 ) , .SI ( \regfile[4][7] ) , 
    .SE ( n420 ) , .CLK ( CLK ) , .RSTB ( n363 ) , .Q ( \regfile[5][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][7] ( .D ( n86 ) , .SI ( \regfile[4][6] ) , 
    .SE ( n420 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][6] ( .D ( n85 ) , .SI ( \regfile[4][5] ) , 
    .SE ( n420 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][5] ( .D ( n84 ) , .SI ( \regfile[4][4] ) , 
    .SE ( n420 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][4] ( .D ( n83 ) , .SI ( \regfile[4][3] ) , 
    .SE ( n419 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][3] ( .D ( n82 ) , .SI ( \regfile[4][2] ) , 
    .SE ( n419 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][2] ( .D ( n81 ) , .SI ( \regfile[4][1] ) , 
    .SE ( n419 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][1] ( .D ( n80 ) , .SI ( \regfile[4][0] ) , 
    .SE ( n419 ) , .CLK ( CLK ) , .RSTB ( n364 ) , .Q ( \regfile[4][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][0] ( .D ( n79 ) , .SI ( REG3[7] ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( \regfile[4][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][7] ( .D ( n78 ) , .SI ( REG3[6] ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][6] ( .D ( n77 ) , .SI ( REG3[5] ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[3][5] ( .D ( n76 ) , .SI ( REG3[4] ) , .SE ( n426 ) , 
    .CLK ( CLK ) , .SETB ( n368 ) , .Q ( REG3[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][4] ( .D ( n75 ) , .SI ( REG3[3] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][3] ( .D ( n74 ) , .SI ( REG3[2] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][2] ( .D ( n73 ) , .SI ( REG3[1] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][1] ( .D ( n72 ) , .SI ( REG3[0] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( REG3[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][0] ( .D ( n71 ) , .SI ( n398 ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( REG3[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[2][7] ( .D ( n70 ) , .SI ( n399 ) , .SE ( n426 ) , 
    .CLK ( CLK ) , .SETB ( n368 ) , .Q ( n398 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][6] ( .D ( n69 ) , .SI ( n400 ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( n399 ) , .QN ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][5] ( .D ( n68 ) , .SI ( test_si2 ) , .SE ( n417 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( n400 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][4] ( .D ( n67 ) , .SI ( REG2[3] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( test_so1 ) , .QN ( n413 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][3] ( .D ( n66 ) , .SI ( REG2[2] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( REG2[3] ) , .QN ( n318 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][2] ( .D ( n65 ) , .SI ( REG2[1] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( REG2[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][1] ( .D ( n64 ) , .SI ( REG2[0] ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( REG2[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][7] ( .D ( n62 ) , .SI ( n391 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( n390 ) , .QN ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][6] ( .D ( n61 ) , .SI ( n392 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n391 ) , .QN ( n185 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][5] ( .D ( n60 ) , .SI ( n393 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n392 ) , .QN ( n197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][4] ( .D ( n59 ) , .SI ( n394 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n393 ) , .QN ( n191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][3] ( .D ( n58 ) , .SI ( n395 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n394 ) , .QN ( n189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][2] ( .D ( n57 ) , .SI ( n396 ) , .SE ( n420 ) , 
    .CLK ( CLK ) , .RSTB ( n365 ) , .Q ( n395 ) , .QN ( n193 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][1] ( .D ( n56 ) , .SI ( n397 ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n396 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][7] ( .D ( n54 ) , .SI ( n384 ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( n383 ) , .QN ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][6] ( .D ( n53 ) , .SI ( REG0[5] ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( n384 ) , .QN ( n187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][5] ( .D ( n52 ) , .SI ( n385 ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n367 ) , .Q ( REG0[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][4] ( .D ( n51 ) , .SI ( n386 ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n366 ) , .Q ( n385 ) , .QN ( n195 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][3] ( .D ( n50 ) , .SI ( n387 ) , .SE ( n418 ) , 
    .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( n386 ) , .QN ( n204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][2] ( .D ( n49 ) , .SI ( n388 ) , .SE ( n417 ) , 
    .CLK ( CLK ) , .RSTB ( n368 ) , .Q ( n387 ) , .QN ( n206 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][1] ( .D ( n48 ) , .SI ( n389 ) , .SE ( n417 ) , 
    .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( n388 ) , .QN ( n202 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][0] ( .D ( n47 ) , .SI ( RdData[7] ) , .SE ( n415 ) , 
    .CLK ( CLK ) , .RSTB ( n350 ) , .Q ( n389 ) , .QN ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][0] ( .D ( n55 ) , .SI ( n383 ) , .SE ( n419 ) , 
    .CLK ( CLK ) , .RSTB ( n356 ) , .Q ( n397 ) , .QN ( n333 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][5] ( .D ( n164 ) , .SI ( \regfile[14][4] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[14][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][7] ( .D ( n150 ) , .SI ( \regfile[12][6] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[12][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][6] ( .D ( n149 ) , .SI ( \regfile[12][5] ) , 
    .SE ( n426 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[12][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][1] ( .D ( n160 ) , .SI ( \regfile[14][0] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[14][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][0] ( .D ( n159 ) , .SI ( \regfile[13][7] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( \regfile[14][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][1] ( .D ( n144 ) , .SI ( \regfile[12][0] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n360 ) , .Q ( \regfile[12][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][0] ( .D ( n143 ) , .SI ( \regfile[11][7] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( \regfile[12][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][2] ( .D ( n161 ) , .SI ( \regfile[14][1] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n369 ) , .Q ( \regfile[14][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][2] ( .D ( n145 ) , .SI ( \regfile[12][1] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( \regfile[12][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][4] ( .D ( n163 ) , .SI ( \regfile[14][3] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n352 ) , .Q ( \regfile[14][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][3] ( .D ( n162 ) , .SI ( \regfile[14][2] ) , 
    .SE ( n416 ) , .CLK ( CLK ) , .RSTB ( n370 ) , .Q ( \regfile[14][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][3] ( .D ( n146 ) , .SI ( \regfile[12][2] ) , 
    .SE ( n425 ) , .CLK ( CLK ) , .RSTB ( n371 ) , .Q ( \regfile[12][3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][6] ( .D ( n133 ) , .SI ( \regfile[10][5] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][7] ( .D ( n134 ) , .SI ( \regfile[10][6] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][5] ( .D ( n132 ) , .SI ( \regfile[10][4] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][1] ( .D ( n128 ) , .SI ( \regfile[10][0] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][0] ( .D ( n127 ) , .SI ( \regfile[9][7] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n358 ) , .Q ( \regfile[10][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][4] ( .D ( n131 ) , .SI ( \regfile[10][3] ) , 
    .SE ( n424 ) , .CLK ( CLK ) , .RSTB ( n357 ) , .Q ( \regfile[10][4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U27 ( .INP ( n204 ) , .ZN ( REG0[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U44 ( .INP ( WrData[4] ) , .Z ( n345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U50 ( .INP ( n410 ) , .Z ( n344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( n394 ) , .IN2 ( n313 ) , .IN3 ( n386 ) , .IN4 ( n306 ) , 
    .Q ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U105 ( .IN1 ( RdData[7] ) , .IN2 ( n5 ) , .IN3 ( N33 ) , .IN4 ( n46 ) , 
    .Q ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U107 ( .IN1 ( \regfile[5][5] ) , .IN2 ( n311 ) , 
    .IN3 ( \regfile[4][5] ) , .IN4 ( n305 ) , .Q ( n261 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U109 ( .IN1 ( n339 ) , .IN2 ( \regfile[10][1] ) , .S ( n39 ) , 
    .Q ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U111 ( .IN1 ( n347 ) , .IN2 ( \regfile[14][5] ) , .S ( n43 ) , 
    .Q ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U124 ( .IN1 ( n413 ) , .IN2 ( net7288 ) , .IN3 ( n405 ) , 
    .QN ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U144 ( .IN1 ( n342 ) , .IN2 ( \regfile[11][3] ) , .S ( n322 ) , 
    .Q ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U145 ( .IN1 ( RdData_Valid ) , .IN2 ( n335 ) , .IN3 ( n46 ) , 
    .Q ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U161 ( .IN1 ( n291 ) , .IN2 ( n292 ) , .Q ( n414 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U348 ( .INP ( WrData[2] ) , .Z ( n341 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U351 ( .INP ( n40 ) , .Z ( net9155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U356 ( .INP ( WrData[2] ) , .Z ( n340 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U376 ( .IN1 ( n340 ) , .IN2 ( \regfile[11][2] ) , .S ( n322 ) , 
    .Q ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U4 ( .INP ( n333 ) , .ZN ( REG1[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U13 ( .INP ( n25 ) , .ZN ( REG0[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U17 ( .INP ( n402 ) , .ZN ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U146 ( .INP ( n13 ) , .ZN ( net9024 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U186 ( .INP ( n6 ) , .ZN ( n407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U379 ( .INP ( n414 ) , .ZN ( n411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U380 ( .INP ( n414 ) , .ZN ( n412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U35 ( .INP ( n185 ) , .ZN ( REG1[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U41 ( .INP ( n18 ) , .ZN ( REG1[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U155 ( .INP ( n197 ) , .ZN ( REG1[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U184 ( .INP ( n189 ) , .ZN ( REG1[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U185 ( .INP ( n34 ) , .ZN ( REG1[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U189 ( .INP ( n16 ) , .ZN ( REG0[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U195 ( .INP ( n193 ) , .ZN ( REG1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U196 ( .INP ( n206 ) , .ZN ( REG0[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U206 ( .INP ( n303 ) , .ZN ( n298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U214 ( .INP ( n281 ) , .ZN ( n302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U220 ( .INP ( n7 ) , .ZN ( n308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U240 ( .INP ( n8 ) , .ZN ( n291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U242 ( .INP ( n41 ) , .ZN ( n379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U250 ( .INP ( n318 ) , .ZN ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U263 ( .INP ( n328 ) , .ZN ( n373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U322 ( .INP ( n325 ) , .ZN ( n372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U347 ( .INP ( n37 ) , .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U352 ( .INP ( n188 ) , .ZN ( net7283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U354 ( .INP ( n186 ) , .ZN ( n377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U357 ( .INP ( n45 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U359 ( .INP ( n7 ) , .ZN ( n317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U360 ( .INP ( n298 ) , .ZN ( n296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U361 ( .INP ( n298 ) , .ZN ( n297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U364 ( .INP ( n302 ) , .ZN ( n301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U365 ( .INP ( n210 ) , .ZN ( n310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U368 ( .INP ( n302 ) , .ZN ( n300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U369 ( .INP ( n210 ) , .ZN ( n309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U371 ( .INP ( n7 ) , .ZN ( n316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U372 ( .INP ( n302 ) , .ZN ( n299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U374 ( .INP ( n5 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX2 \regfile_reg[2][0] ( .D ( n63 ) , .SI ( n390 ) , .SE ( n426 ) , 
    .CLK ( CLK ) , .SETB ( n368 ) , .Q ( REG2[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n202 ) , .ZN ( REG0[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n191 ) , .ZN ( REG1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n187 ) , .ZN ( REG0[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U8 ( .INP ( n195 ) , .ZN ( REG0[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U9 ( .IN1 ( n29 ) , .IN2 ( n24 ) , .Q ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U11 ( .INP ( n38 ) , .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U12 ( .IN1 ( n44 ) , .IN2 ( n19 ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U14 ( .IN1 ( Address[2] ) , .IN2 ( n353 ) , .Q ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U15 ( .INP ( n36 ) , .Z ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U16 ( .IN1 ( n44 ) , .IN2 ( n6 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n382 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n382 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( Address[0] ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n17 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( Address[1] ) , .ZN ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n302 ) , .ZN ( n295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( n378 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n43 ) , .ZN ( n378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( net7279 ) , .ZN ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n39 ) , .ZN ( net7279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U46 ( .INP ( n42 ) , .Z ( n186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U47 ( .INP ( n40 ) , .Z ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U48 ( .IN1 ( n291 ) , .IN2 ( n200 ) , .QN ( n290 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X1 U49 ( .IN1 ( n200 ) , .IN2 ( n8 ) , .QN ( n283 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n24 ) , .ZN ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n190 ) , .ZN ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n328 ) , .ZN ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n194 ) , .ZN ( n196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n326 ) , .ZN ( n198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n198 ) , .ZN ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U61 ( .IN1 ( n4 ) , .IN2 ( n32 ) , .QN ( n203 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 U62 ( .INP ( n186 ) , .Z ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U64 ( .INP ( n326 ) , .ZN ( n207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U88 ( .INP ( n207 ) , .ZN ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( n328 ) , .ZN ( n288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( n288 ) , .ZN ( n293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U104 ( .INP ( n188 ) , .Z ( n322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U106 ( .INP ( n375 ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( n381 ) , .ZN ( n327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U121 ( .INP ( n327 ) , .ZN ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U143 ( .INP ( Address[0] ) , .ZN ( n381 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U151 ( .INP ( Address[1] ) , .ZN ( n334 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U162 ( .INP ( n334 ) , .ZN ( n353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U163 ( .INP ( n285 ) , .Z ( n354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U173 ( .IN1 ( n22 ) , .IN2 ( n32 ) , .QN ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U175 ( .IN1 ( n29 ) , .IN2 ( n22 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X2 U177 ( .IN1 ( \regfile[7][6] ) , .IN2 ( net8782 ) , .S ( n212 ) , 
    .Q ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U187 ( .IN1 ( \regfile[7][7] ) , .IN2 ( n348 ) , .S ( n212 ) , 
    .Q ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U188 ( .INP ( n212 ) , .ZN ( n326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U190 ( .INP ( n23 ) , .Z ( n324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U191 ( .IN1 ( n346 ) , .IN2 ( n392 ) , .S ( n23 ) , .Q ( n60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U193 ( .IN1 ( n336 ) , .IN2 ( n397 ) , .S ( n23 ) , .Q ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U194 ( .INP ( n23 ) , .ZN ( n374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U197 ( .INP ( n27 ) , .Z ( net9131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U198 ( .IN1 ( n336 ) , .IN2 ( REG3[0] ) , .S ( n27 ) , .Q ( n71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U199 ( .IN1 ( n346 ) , .IN2 ( REG3[5] ) , .S ( n27 ) , .Q ( n76 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U200 ( .INP ( n27 ) , .ZN ( net7292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U201 ( .INP ( n31 ) , .Z ( net9114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U202 ( .IN1 ( n347 ) , .IN2 ( \regfile[6][5] ) , .S ( n31 ) , 
    .Q ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U203 ( .IN1 ( n339 ) , .IN2 ( \regfile[6][1] ) , .S ( n31 ) , 
    .Q ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U204 ( .INP ( n31 ) , .ZN ( net7290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U205 ( .INP ( n28 ) , .Z ( net9000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U208 ( .IN1 ( n337 ) , .IN2 ( \regfile[4][0] ) , .S ( n28 ) , 
    .Q ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U209 ( .IN1 ( net8782 ) , .IN2 ( \regfile[4][6] ) , .S ( n28 ) , 
    .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U211 ( .INP ( n28 ) , .ZN ( net7289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U212 ( .IN1 ( n33 ) , .IN2 ( n6 ) , .Q ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U215 ( .IN1 ( n375 ) , .IN2 ( Address[3] ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U216 ( .INP ( WrEn ) , .ZN ( n375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U219 ( .INP ( n13 ) , .ZN ( n355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U222 ( .INP ( n12 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U223 ( .IN1 ( n22 ) , .IN2 ( n26 ) , .QN ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U224 ( .IN1 ( n402 ) , .IN2 ( n329 ) , .QN ( n210 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U225 ( .INP ( n19 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U226 ( .IN1 ( n33 ) , .IN2 ( n407 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U241 ( .IN1 ( n343 ) , .IN2 ( net7287 ) , .IN3 ( n386 ) , 
    .IN4 ( n359 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U246 ( .INP ( n209 ) , .ZN ( n307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U248 ( .INP ( n209 ) , .ZN ( n305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U249 ( .INP ( n199 ) , .ZN ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U251 ( .INP ( Address[2] ) , .ZN ( n199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U254 ( .IN1 ( n292 ) , .IN2 ( n8 ) , .QN ( n285 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U258 ( .INP ( n200 ) , .ZN ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U259 ( .INP ( WrData[3] ) , .Z ( n343 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U260 ( .INP ( WrData[3] ) , .Z ( n342 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U262 ( .IN1 ( n15 ) , .IN2 ( n32 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U266 ( .IN1 ( n26 ) , .IN2 ( n15 ) , .QN ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U274 ( .INP ( net7287 ) , .ZN ( n359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U277 ( .INP ( n35 ) , .ZN ( n380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U279 ( .INP ( n35 ) , .Z ( n408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X2 U281 ( .IN1 ( n381 ) , .IN2 ( n332 ) , .Q ( n211 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U287 ( .INP ( n212 ) , .ZN ( n325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U304 ( .INP ( n213 ) , .ZN ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U311 ( .IN1 ( \regfile[5][6] ) , .IN2 ( n14 ) , .S ( n213 ) , 
    .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U327 ( .IN1 ( \regfile[5][7] ) , .IN2 ( n348 ) , .S ( n213 ) , 
    .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U337 ( .IN1 ( \regfile[5][1] ) , .IN2 ( n338 ) , .S ( n213 ) , 
    .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U346 ( .INP ( n10 ) , .ZN ( n306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U349 ( .INP ( n209 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U350 ( .IN1 ( n347 ) , .IN2 ( \regfile[12][5] ) , .S ( n41 ) , 
    .Q ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U353 ( .IN1 ( n345 ) , .IN2 ( \regfile[12][4] ) , .S ( n41 ) , 
    .Q ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U355 ( .IN1 ( n14 ) , .IN2 ( \regfile[12][6] ) , .S ( n41 ) , 
    .Q ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U358 ( .INP ( n41 ) , .Z ( n323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U362 ( .IN1 ( RdData[1] ) , .IN2 ( n335 ) , .IN3 ( N39 ) , 
    .IN4 ( n46 ) , .Q ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U363 ( .IN1 ( \regfile[13][3] ) , .IN2 ( n311 ) , 
    .IN3 ( \regfile[12][3] ) , .IN4 ( n304 ) , .Q ( n242 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U366 ( .IN1 ( \regfile[13][5] ) , .IN2 ( n313 ) , 
    .IN3 ( \regfile[12][5] ) , .IN4 ( n304 ) , .Q ( n260 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U367 ( .IN1 ( \regfile[9][4] ) , .IN2 ( n314 ) , 
    .IN3 ( \regfile[8][4] ) , .IN4 ( n304 ) , .Q ( n250 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U373 ( .IN1 ( \regfile[9][6] ) , .IN2 ( n312 ) , 
    .IN3 ( \regfile[8][6] ) , .IN4 ( n304 ) , .Q ( n268 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U375 ( .IN1 ( \regfile[9][0] ) , .IN2 ( n313 ) , 
    .IN3 ( \regfile[8][0] ) , .IN4 ( n304 ) , .Q ( n214 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U377 ( .INP ( n10 ) , .ZN ( n304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X2 U378 ( .IN1 ( n294 ) , .IN2 ( n2 ) , .Q ( n209 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U381 ( .INP ( n329 ) , .ZN ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U382 ( .INP ( n403 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U383 ( .INP ( n9 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U384 ( .IN1 ( net7288 ) , .IN2 ( n345 ) , .QN ( n405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U385 ( .INP ( n12 ) , .ZN ( net7288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U386 ( .INP ( WrData[4] ) , .ZN ( n406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U387 ( .INP ( n406 ) , .ZN ( n410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U388 ( .IN1 ( \regfile[9][7] ) , .IN2 ( n312 ) , 
    .IN3 ( \regfile[8][7] ) , .IN4 ( n11 ) , .Q ( n277 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U389 ( .IN1 ( \regfile[9][1] ) , .IN2 ( n313 ) , 
    .IN3 ( \regfile[8][1] ) , .IN4 ( n11 ) , .Q ( n223 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U390 ( .IN1 ( test_so2 ) , .IN2 ( n312 ) , .IN3 ( \regfile[12][0] ) , 
    .IN4 ( n11 ) , .Q ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U391 ( .IN1 ( \regfile[13][2] ) , .IN2 ( n312 ) , 
    .IN3 ( \regfile[12][2] ) , .IN4 ( n11 ) , .Q ( n233 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U395 ( .INP ( n10 ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U396 ( .IN1 ( n32 ) , .IN2 ( n24 ) , .Q ( n212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U397 ( .IN1 ( n192 ) , .IN2 ( n21 ) , .QN ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U398 ( .IN1 ( n26 ) , .IN2 ( n192 ) , .QN ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X2 U399 ( .IN1 ( \regfile[5][5] ) , .IN2 ( n346 ) , .S ( n213 ) , 
    .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U400 ( .IN1 ( n36 ) , .IN2 ( n29 ) , .QN ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U401 ( .INP ( n211 ) , .ZN ( n314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U402 ( .INP ( n211 ) , .ZN ( n311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U403 ( .INP ( n211 ) , .ZN ( n312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U404 ( .INP ( n211 ) , .ZN ( n315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U405 ( .INP ( n211 ) , .ZN ( n313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U406 ( .IN1 ( \regfile[7][0] ) , .IN2 ( n336 ) , .S ( n212 ) , 
    .Q ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U407 ( .IN1 ( \regfile[7][1] ) , .IN2 ( n338 ) , .S ( n212 ) , 
    .Q ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U408 ( .INP ( n20 ) , .Z ( n404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U409 ( .INP ( n20 ) , .ZN ( net9164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U410 ( .INP ( n20 ) , .ZN ( net7287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U411 ( .IN1 ( n349 ) , .IN2 ( net9164 ) , .IN3 ( n383 ) , 
    .IN4 ( n359 ) , .Q ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U412 ( .IN1 ( net8781 ) , .IN2 ( net9164 ) , .IN3 ( n384 ) , 
    .IN4 ( n359 ) , .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U413 ( .IN1 ( n22 ) , .IN2 ( n21 ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U414 ( .IN1 ( n353 ) , .IN2 ( Address[2] ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U415 ( .IN1 ( n15 ) , .IN2 ( n21 ) , .QN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U416 ( .IN1 ( n4 ) , .IN2 ( n21 ) , .QN ( n320 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U417 ( .IN1 ( n38 ) , .IN2 ( n21 ) , .QN ( n37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U418 ( .IN1 ( n38 ) , .IN2 ( n29 ) , .QN ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U419 ( .IN1 ( n38 ) , .IN2 ( n32 ) , .QN ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U420 ( .IN1 ( n26 ) , .IN2 ( n38 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X2 U421 ( .IN1 ( n392 ) , .IN2 ( n312 ) , .IN3 ( REG0[5] ) , .IN4 ( n9 ) , 
    .Q ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2 U422 ( .IN1 ( n347 ) , .IN2 ( net9164 ) , .IN3 ( REG0[5] ) , 
    .IN4 ( n404 ) , .Q ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U423 ( .INP ( n430 ) , .Z ( n415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U424 ( .INP ( n430 ) , .Z ( n416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U425 ( .INP ( n430 ) , .Z ( n417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U426 ( .INP ( n429 ) , .Z ( n418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U427 ( .INP ( n429 ) , .Z ( n419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U428 ( .INP ( n429 ) , .Z ( n420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U429 ( .INP ( n428 ) , .Z ( n421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U430 ( .INP ( n428 ) , .Z ( n422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U431 ( .INP ( n428 ) , .Z ( n423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U432 ( .INP ( n427 ) , .Z ( n424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U433 ( .INP ( n427 ) , .Z ( n425 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U434 ( .INP ( n427 ) , .Z ( n426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U435 ( .INP ( test_se ) , .Z ( n427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U436 ( .INP ( test_se ) , .Z ( n428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U437 ( .INP ( test_se ) , .Z ( n429 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U438 ( .INP ( test_se ) , .Z ( n430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Prescale_mux ( prescale , div_ratio , VDD , VSS ) ;
input  [5:0] prescale ;
output [7:0] div_ratio ;
input  VDD ;
input  VSS ;

wire n3 ;
wire n4 ;
wire n5 ;
wire n14 ;
wire n15 ;
supply1 VDD ;
supply0 VSS ;

AO21X1 U7 ( .IN1 ( n5 ) , .IN2 ( n3 ) , .IN3 ( n4 ) , .Q ( div_ratio[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( n15 ) , .IN2 ( n14 ) , .IN3 ( prescale[4] ) , 
    .QN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U15 ( .IN1 ( prescale[4] ) , .IN2 ( prescale[5] ) , .IN3 ( n15 ) , 
    .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U19 ( .IN1 ( prescale[2] ) , .IN2 ( prescale[1] ) , 
    .IN3 ( prescale[0] ) , .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U16 ( .INP ( prescale[3] ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U17 ( .INP ( prescale[5] ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U18 ( .IN1 ( n4 ) , .IN2 ( n5 ) , .QN ( div_ratio[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U20 ( .IN1 ( n3 ) , .IN2 ( n4 ) , .QN ( div_ratio[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( VDD ) , .ZN ( div_ratio[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( VDD ) , .ZN ( div_ratio[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( VDD ) , .ZN ( div_ratio[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( VDD ) , .ZN ( div_ratio[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( VDD ) , .ZN ( div_ratio[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ClkDiv_1_DW01_inc_0 ( A , SUM , VDD , VSS ) ;
input  [6:0] A ;
output [6:0] SUM ;
input  VDD ;
input  VSS ;

wire [6:2] carry ;
supply1 VDD ;
supply0 VSS ;

HADDX1 U1_1_5 ( .A0 ( A[5] ) , .B0 ( carry[5] ) , .C1 ( carry[6] ) , 
    .SO ( SUM[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_4 ( .A0 ( A[4] ) , .B0 ( carry[4] ) , .C1 ( carry[5] ) , 
    .SO ( SUM[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_3 ( .A0 ( A[3] ) , .B0 ( carry[3] ) , .C1 ( carry[4] ) , 
    .SO ( SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_2 ( .A0 ( A[2] ) , .B0 ( carry[2] ) , .C1 ( carry[3] ) , 
    .SO ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_1 ( .A0 ( A[1] ) , .B0 ( A[0] ) , .C1 ( carry[2] ) , 
    .SO ( SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U1 ( .IN1 ( carry[6] ) , .IN2 ( A[6] ) , .Q ( SUM[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( A[0] ) , .ZN ( SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ClkDiv_1 ( i_ref_clk , i_rst_n , i_div_ratio , i_clk_en , o_div_clk , 
    test_si , test_so , test_se , VDD , VSS ) ;
input  i_ref_clk ;
input  i_rst_n ;
input  [7:0] i_div_ratio ;
input  i_clk_en ;
output o_div_clk ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire odd_flag_toggle ;
wire N1 ;
wire div_clk ;
wire N6 ;
wire N17 ;
wire N18 ;
wire N19 ;
wire N20 ;
wire N21 ;
wire N22 ;
wire N23 ;
wire N24 ;
wire N25 ;
wire N26 ;
wire N27 ;
wire N28 ;
wire N29 ;
wire N30 ;
wire \add_25/carry[6] ;
wire \add_25/carry[5] ;
wire \add_25/carry[4] ;
wire \add_25/carry[3] ;
wire \add_25/carry[2] ;
wire \add_25/carry[1] ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n11 ;
wire [6:0] counter ;
wire [6:0] toggle_at_half ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

assign odd_flag_toggle = test_so ;

XOR3X1 U3 ( .IN1 ( n37 ) , .IN2 ( toggle_at_half[6] ) , 
    .IN3 ( \add_25/carry[6] ) , .Q ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U4 ( .IN1 ( n35 ) , .IN2 ( toggle_at_half[5] ) , 
    .IN3 ( \add_25/carry[5] ) , .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U5 ( .IN1 ( n38 ) , .IN2 ( toggle_at_half[1] ) , 
    .IN3 ( \add_25/carry[1] ) , .Q ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U6 ( .IN1 ( n39 ) , .IN2 ( toggle_at_half[3] ) , 
    .IN3 ( \add_25/carry[3] ) , .Q ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U7 ( .IN1 ( n36 ) , .IN2 ( toggle_at_half[4] ) , 
    .IN3 ( \add_25/carry[4] ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U8 ( .IN1 ( n40 ) , .IN2 ( toggle_at_half[2] ) , 
    .IN3 ( \add_25/carry[2] ) , .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U13 ( .IN1 ( \add_25/carry[5] ) , .IN2 ( toggle_at_half[5] ) , 
    .Q ( \add_25/carry[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U14 ( .IN1 ( \add_25/carry[4] ) , .IN2 ( toggle_at_half[4] ) , 
    .Q ( \add_25/carry[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U15 ( .IN1 ( \add_25/carry[3] ) , .IN2 ( toggle_at_half[3] ) , 
    .Q ( \add_25/carry[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( \add_25/carry[2] ) , .IN2 ( toggle_at_half[2] ) , 
    .Q ( \add_25/carry[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U17 ( .IN1 ( \add_25/carry[1] ) , .IN2 ( toggle_at_half[1] ) , 
    .Q ( \add_25/carry[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U18 ( .IN1 ( i_div_ratio[0] ) , .IN2 ( toggle_at_half[0] ) , 
    .Q ( \add_25/carry[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U19 ( .IN1 ( toggle_at_half[0] ) , .IN2 ( i_div_ratio[0] ) , 
    .Q ( N6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U22 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .IN3 ( n1 ) , 
    .Q ( toggle_at_half[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U24 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( n6 ) , .IN3 ( n2 ) , 
    .Q ( toggle_at_half[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U26 ( .IN1 ( i_div_ratio[4] ) , .IN2 ( n7 ) , .IN3 ( n3 ) , 
    .Q ( toggle_at_half[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U28 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( n8 ) , .IN3 ( n4 ) , 
    .Q ( toggle_at_half[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U29 ( .IN1 ( i_div_ratio[6] ) , .IN2 ( n9 ) , 
    .Q ( toggle_at_half[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( i_div_ratio[7] ) , .IN2 ( n5 ) , 
    .Q ( toggle_at_half[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U32 ( .IN1 ( i_ref_clk ) , .IN2 ( div_clk ) , .S ( N1 ) , 
    .Q ( o_div_clk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U33 ( .IN1 ( n10 ) , .IN2 ( test_so ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( div_clk ) , .IN2 ( n10 ) , .Q ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U35 ( .IN1 ( N23 ) , .IN2 ( n13 ) , .Q ( N30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U36 ( .IN1 ( N22 ) , .IN2 ( n13 ) , .Q ( N29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U37 ( .IN1 ( N21 ) , .IN2 ( n13 ) , .Q ( N28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( N20 ) , .IN2 ( n13 ) , .Q ( N27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U39 ( .IN1 ( N19 ) , .IN2 ( n13 ) , .Q ( N26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( N18 ) , .IN2 ( n13 ) , .Q ( N25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U41 ( .IN1 ( N17 ) , .IN2 ( n13 ) , .Q ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U43 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .S ( test_so ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U45 ( .IN1 ( n20 ) , .IN2 ( n21 ) , .IN3 ( n22 ) , .IN4 ( n23 ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U46 ( .IN1 ( n34 ) , .IN2 ( N6 ) , .Q ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U48 ( .IN1 ( n36 ) , .IN2 ( toggle_at_half[4] ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U49 ( .IN1 ( n34 ) , .IN2 ( toggle_at_half[0] ) , .Q ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U50 ( .IN1 ( n35 ) , .IN2 ( toggle_at_half[5] ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U51 ( .IN1 ( n28 ) , .IN2 ( n29 ) , .IN3 ( n30 ) , .IN4 ( n31 ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U52 ( .IN1 ( toggle_at_half[2] ) , .IN2 ( n40 ) , .Q ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U53 ( .IN1 ( toggle_at_half[3] ) , .IN2 ( n39 ) , .Q ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U54 ( .IN1 ( toggle_at_half[1] ) , .IN2 ( n38 ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U55 ( .IN1 ( toggle_at_half[6] ) , .IN2 ( n37 ) , .Q ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U56 ( .IN1 ( i_clk_en ) , .IN2 ( n32 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U57 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( i_div_ratio[2] ) , 
    .IN3 ( i_div_ratio[1] ) , .IN4 ( n33 ) , .Q ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U58 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( i_div_ratio[4] ) , 
    .IN3 ( i_div_ratio[7] ) , .IN4 ( i_div_ratio[6] ) , .Q ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( test_si ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[0] ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( counter[5] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[6] ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n41 ) , .SI ( div_clk ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( test_so ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[4] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[5] ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[3] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[4] ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[2] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[3] ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[2] ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( counter[0] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[1] ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n42 ) , .SI ( counter[6] ) , .SE ( n11 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( div_clk ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U9 ( .INP ( n1 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U10 ( .IN1 ( n6 ) , .IN2 ( i_div_ratio[3] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U11 ( .INP ( n2 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U12 ( .IN1 ( n7 ) , .IN2 ( i_div_ratio[4] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U20 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U21 ( .INP ( n3 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U23 ( .IN1 ( n8 ) , .IN2 ( i_div_ratio[5] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U25 ( .INP ( n4 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U27 ( .IN1 ( i_div_ratio[6] ) , .IN2 ( n9 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U30 ( .INP ( i_div_ratio[1] ) , .ZN ( toggle_at_half[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U42 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( n26 ) , .IN4 ( n27 ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U44 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .IN3 ( n18 ) , .IN4 ( n19 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U47 ( .INP ( n10 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_1_DW01_inc_0 add_30 ( .A ( counter ) ,
    .SUM ( { N23 , N22 , N21 , N20 , N19 , N18 , N17 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U59 ( .INP ( test_se ) , .Z ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ClkDiv_0_DW01_inc_0 ( A , SUM , VDD , VSS ) ;
input  [6:0] A ;
output [6:0] SUM ;
input  VDD ;
input  VSS ;

wire [6:2] carry ;
supply1 VDD ;
supply0 VSS ;

HADDX1 U1_1_5 ( .A0 ( A[5] ) , .B0 ( carry[5] ) , .C1 ( carry[6] ) , 
    .SO ( SUM[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_4 ( .A0 ( A[4] ) , .B0 ( carry[4] ) , .C1 ( carry[5] ) , 
    .SO ( SUM[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_3 ( .A0 ( A[3] ) , .B0 ( carry[3] ) , .C1 ( carry[4] ) , 
    .SO ( SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_2 ( .A0 ( A[2] ) , .B0 ( carry[2] ) , .C1 ( carry[3] ) , 
    .SO ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1 U1_1_1 ( .A0 ( A[1] ) , .B0 ( A[0] ) , .C1 ( carry[2] ) , 
    .SO ( SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U1 ( .IN1 ( carry[6] ) , .IN2 ( A[6] ) , .Q ( SUM[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( A[0] ) , .ZN ( SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ClkDiv_0 ( i_ref_clk , i_rst_n , i_div_ratio , i_clk_en , o_div_clk , 
    test_si , test_so , test_se , VDD , VSS ) ;
input  i_ref_clk ;
input  i_rst_n ;
input  [7:0] i_div_ratio ;
input  i_clk_en ;
output o_div_clk ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;

wire odd_flag_toggle ;
wire N1 ;
wire div_clk ;
wire N6 ;
wire N17 ;
wire N18 ;
wire N19 ;
wire N20 ;
wire N21 ;
wire N22 ;
wire N23 ;
wire N24 ;
wire N25 ;
wire N26 ;
wire N27 ;
wire N28 ;
wire N29 ;
wire N30 ;
wire n11 ;
wire n12 ;
wire \add_25/carry[6] ;
wire \add_25/carry[5] ;
wire \add_25/carry[4] ;
wire \add_25/carry[3] ;
wire \add_25/carry[2] ;
wire \add_25/carry[1] ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire [6:0] counter ;
wire [6:0] toggle_at_half ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

assign odd_flag_toggle = test_so ;

XOR3X1 U3 ( .IN1 ( n36 ) , .IN2 ( toggle_at_half[5] ) , 
    .IN3 ( \add_25/carry[5] ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U4 ( .IN1 ( n39 ) , .IN2 ( toggle_at_half[1] ) , 
    .IN3 ( \add_25/carry[1] ) , .Q ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U5 ( .IN1 ( n40 ) , .IN2 ( toggle_at_half[3] ) , 
    .IN3 ( \add_25/carry[3] ) , .Q ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U6 ( .IN1 ( n37 ) , .IN2 ( toggle_at_half[4] ) , 
    .IN3 ( \add_25/carry[4] ) , .Q ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1 U7 ( .IN1 ( n41 ) , .IN2 ( toggle_at_half[2] ) , 
    .IN3 ( \add_25/carry[2] ) , .Q ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U8 ( .INP ( i_rst_n ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U14 ( .IN1 ( \add_25/carry[5] ) , .IN2 ( toggle_at_half[5] ) , 
    .Q ( \add_25/carry[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U15 ( .IN1 ( \add_25/carry[4] ) , .IN2 ( toggle_at_half[4] ) , 
    .Q ( \add_25/carry[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( \add_25/carry[3] ) , .IN2 ( toggle_at_half[3] ) , 
    .Q ( \add_25/carry[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U17 ( .IN1 ( \add_25/carry[2] ) , .IN2 ( toggle_at_half[2] ) , 
    .Q ( \add_25/carry[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U18 ( .IN1 ( \add_25/carry[1] ) , .IN2 ( toggle_at_half[1] ) , 
    .Q ( \add_25/carry[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U19 ( .IN1 ( i_div_ratio[0] ) , .IN2 ( toggle_at_half[0] ) , 
    .Q ( \add_25/carry[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U20 ( .IN1 ( toggle_at_half[0] ) , .IN2 ( i_div_ratio[0] ) , 
    .Q ( N6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U23 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .IN3 ( n2 ) , 
    .Q ( toggle_at_half[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U25 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( n7 ) , .IN3 ( n3 ) , 
    .Q ( toggle_at_half[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U27 ( .IN1 ( i_div_ratio[4] ) , .IN2 ( n8 ) , .IN3 ( n4 ) , 
    .Q ( toggle_at_half[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U29 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( n9 ) , .IN3 ( n5 ) , 
    .Q ( toggle_at_half[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U30 ( .IN1 ( i_div_ratio[6] ) , .IN2 ( n10 ) , 
    .Q ( toggle_at_half[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U32 ( .IN1 ( i_div_ratio[7] ) , .IN2 ( n6 ) , 
    .Q ( toggle_at_half[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U33 ( .IN1 ( i_ref_clk ) , .IN2 ( div_clk ) , .S ( N1 ) , 
    .Q ( o_div_clk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( n13 ) , .IN2 ( test_so ) , .Q ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( div_clk ) , .IN2 ( n13 ) , .Q ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U36 ( .IN1 ( N23 ) , .IN2 ( n14 ) , .Q ( N30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U37 ( .IN1 ( N22 ) , .IN2 ( n14 ) , .Q ( N29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( N21 ) , .IN2 ( n14 ) , .Q ( N28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U39 ( .IN1 ( N20 ) , .IN2 ( n14 ) , .Q ( N27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( N19 ) , .IN2 ( n14 ) , .Q ( N26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U41 ( .IN1 ( N18 ) , .IN2 ( n14 ) , .Q ( N25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U42 ( .IN1 ( N17 ) , .IN2 ( n14 ) , .Q ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U44 ( .IN1 ( n15 ) , .IN2 ( n16 ) , .S ( test_so ) , .Q ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U46 ( .IN1 ( n21 ) , .IN2 ( n22 ) , .IN3 ( n23 ) , .IN4 ( n24 ) , 
    .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U48 ( .IN1 ( n35 ) , .IN2 ( N6 ) , .Q ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U50 ( .IN1 ( n37 ) , .IN2 ( toggle_at_half[4] ) , .Q ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U51 ( .IN1 ( n35 ) , .IN2 ( toggle_at_half[0] ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U52 ( .IN1 ( n36 ) , .IN2 ( toggle_at_half[5] ) , .Q ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U53 ( .IN1 ( n29 ) , .IN2 ( n30 ) , .IN3 ( n31 ) , .IN4 ( n32 ) , 
    .QN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U54 ( .IN1 ( toggle_at_half[2] ) , .IN2 ( n41 ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U55 ( .IN1 ( toggle_at_half[3] ) , .IN2 ( n40 ) , .Q ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U56 ( .IN1 ( toggle_at_half[1] ) , .IN2 ( n39 ) , .Q ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U57 ( .IN1 ( toggle_at_half[6] ) , .IN2 ( n38 ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U58 ( .IN1 ( i_clk_en ) , .IN2 ( n33 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U59 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( i_div_ratio[2] ) , 
    .IN3 ( i_div_ratio[1] ) , .IN4 ( n34 ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U60 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( i_div_ratio[4] ) , 
    .IN3 ( i_div_ratio[7] ) , .IN4 ( i_div_ratio[6] ) , .Q ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( test_si ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[0] ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( counter[5] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[6] ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n12 ) , .SI ( div_clk ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( test_so ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[4] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[5] ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[3] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[4] ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[2] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[3] ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( counter[2] ) , .QN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( counter[0] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( counter[1] ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n11 ) , .SI ( counter[6] ) , .SE ( n42 ) , 
    .CLK ( i_ref_clk ) , .RSTB ( n1 ) , .Q ( div_clk ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U9 ( .IN1 ( n38 ) , .IN2 ( toggle_at_half[6] ) , 
    .IN3 ( \add_25/carry[6] ) , .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U10 ( .INP ( n2 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U11 ( .IN1 ( n7 ) , .IN2 ( i_div_ratio[3] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U12 ( .INP ( n3 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U13 ( .IN1 ( n8 ) , .IN2 ( i_div_ratio[4] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U21 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U22 ( .INP ( n4 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U24 ( .IN1 ( n9 ) , .IN2 ( i_div_ratio[5] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U26 ( .INP ( n5 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U28 ( .IN1 ( i_div_ratio[6] ) , .IN2 ( n10 ) , .QN ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U31 ( .INP ( i_div_ratio[1] ) , .ZN ( toggle_at_half[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U43 ( .IN1 ( n25 ) , .IN2 ( n26 ) , .IN3 ( n27 ) , .IN4 ( n28 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U45 ( .IN1 ( n17 ) , .IN2 ( n18 ) , .IN3 ( n19 ) , .IN4 ( n20 ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U47 ( .INP ( n13 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_0_DW01_inc_0 add_30 ( .A ( counter ) ,
    .SUM ( { N23 , N22 , N21 , N20 , N19 , N18 , N17 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U49 ( .INP ( test_se ) , .Z ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_1 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS ) ;
input  RST ;
input  CLK ;
output SYNC_RST ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire \sync_rst[0] ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( VDD ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \sync_rst[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_rst_reg[1] ( .D ( \sync_rst[0] ) , .SI ( \sync_rst[0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC_RST ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_0 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS ) ;
input  RST ;
input  CLK ;
output SYNC_RST ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire \sync_rst[0] ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( VDD ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \sync_rst[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_rst_reg[1] ( .D ( \sync_rst[0] ) , .SI ( \sync_rst[0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC_RST ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_5 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_6 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_0 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_2 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_3 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_4 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_1 ( in_0 , in_1 , sel , out , VDD , VSS ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

MUX21X1 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module SYSTEM_TOP ( RX_IN , FUN_REF_CLK , FUN_UART_CLK , FUN_RST , SCAN_CLK , 
    SCAN_RST , TEST_MODE , TX_OUT , SCAN_EN , SCAN_IN_1 , SCAN_OUT_1 , 
    SCAN_IN_2 , SCAN_OUT_2 , SCAN_IN_3 , SCAN_OUT_3 , SCAN_IN_4 , SCAN_OUT_4 , 
    VDD , VSS ) ;
input  RX_IN ;
input  FUN_REF_CLK ;
input  FUN_UART_CLK ;
input  FUN_RST ;
input  SCAN_CLK ;
input  SCAN_RST ;
input  TEST_MODE ;
output TX_OUT ;
input  SCAN_EN ;
input  SCAN_IN_1 ;
output SCAN_OUT_1 ;
input  SCAN_IN_2 ;
output SCAN_OUT_2 ;
input  SCAN_IN_3 ;
output SCAN_OUT_3 ;
input  SCAN_IN_4 ;
output SCAN_OUT_4 ;
input  VDD ;
input  VSS ;

wire REF_CLK ;
wire UART_CLK ;
wire FUN_TX_CLK ;
wire TX_CLK ;
wire FUN_RX_CLK ;
wire RX_CLK ;
wire RST ;
wire FUN_REF_RST ;
wire REF_RST ;
wire FUN_UART_RST ;
wire UART_RST ;
wire WrEn ;
wire RdEn ;
wire Rd_D_Vld ;
wire Busy ;
wire RX_VLD_SIG ;
wire F_EMPTY ;
wire SYNC_RX_VLD_SIG ;
wire F_FULL ;
wire ALU_OUT_VLD ;
wire EN ;
wire Gate_EN ;
wire WR_INC ;
wire ALU_CLK ;
wire RD_INC ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n11 ;
wire n12 ;
wire n17 ;
wire n18 ;
wire n21 ;
wire n22 ;
wire n26 ;
wire n27 ;
wire [7:0] DEF_DIV_RATIO ;
wire [7:0] DIV_RATIO ;
wire [7:0] UART_CONFIG ;
wire [7:0] Wr_D ;
wire [3:0] Addr ;
wire [7:0] Rd_D ;
wire [7:0] OPERAND_A ;
wire [7:0] OPERAND_B ;
wire [7:0] RD_DATA ;
wire [7:0] RX_P_DATA ;
wire [7:0] SYNC_RX_P_DATA ;
wire [15:0] ALU_OUT ;
wire [3:0] FUN ;
wire [7:0] WR_DATA ;
wire SYNOPSYS_UNCONNECTED__0 ;
wire SYNOPSYS_UNCONNECTED__1 ;
wire SYNOPSYS_UNCONNECTED__2 ;
wire SYNOPSYS_UNCONNECTED__3 ;
wire SYNOPSYS_UNCONNECTED__4 ;
supply1 VDD ;
supply0 VSS ;

NBUFFX2 U7 ( .INP ( REF_RST ) , .Z ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U8 ( .INP ( UART_RST ) , .Z ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U9 ( .INP ( UART_RST ) , .Z ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 U10 ( .INP ( UART_RST ) , .Z ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 U17 ( .INP ( TX_OUT ) , .Z ( SCAN_OUT_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U3 ( .INP ( F_EMPTY ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U4 ( .INP ( n2 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U6 ( .INP ( n4 ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U11 ( .INP ( WrEn ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_1 U0_MUX2x1 ( .in_0 ( FUN_REF_CLK ) , .in_1 ( SCAN_CLK ) , 
    .sel ( TEST_MODE ) , .out ( REF_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_4 U1_MUX2x1 ( .in_0 ( FUN_UART_CLK ) , .in_1 ( SCAN_CLK ) , 
    .sel ( TEST_MODE ) , .out ( UART_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_3 U2_MUX2x1 ( .in_0 ( FUN_TX_CLK ) , .in_1 ( SCAN_CLK ) , 
    .sel ( TEST_MODE ) , .out ( TX_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_2 U3_MUX2x1 ( .in_0 ( FUN_RX_CLK ) , .in_1 ( SCAN_CLK ) , 
    .sel ( TEST_MODE ) , .out ( RX_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_0 U4_MUX2x1 ( .in_0 ( FUN_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( RST ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_6 U5_MUX2x1 ( .in_0 ( FUN_REF_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( REF_RST ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_5 U6_MUX2x1 ( .in_0 ( FUN_UART_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( UART_RST ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
RST_SYNC_0 RST_SYNC_1 ( .RST ( RST ) , .CLK ( REF_CLK ) , 
    .SYNC_RST ( FUN_REF_RST ) , .test_si ( SCAN_IN_1 ) , .test_se ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
RST_SYNC_1 RST_SYNC_2 ( .RST ( RST ) , .CLK ( UART_CLK ) , 
    .SYNC_RST ( FUN_UART_RST ) , .test_si ( FUN_REF_RST ) , .test_se ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_0 TX_CLK_DIV ( .i_ref_clk ( UART_CLK ) , .i_rst_n ( n7 ) , 
    .i_div_ratio ( DEF_DIV_RATIO ) , .i_clk_en ( VDD ) , 
    .o_div_clk ( FUN_TX_CLK ) , .test_si ( n22 ) , .test_so ( n21 ) , 
    .test_se ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_1 RX_CLK_DIV ( .i_ref_clk ( UART_CLK ) , .i_rst_n ( n7 ) ,
    .i_div_ratio ( { VSS , VSS , VSS , VSS , VSS , DIV_RATIO[2] , 
        DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .i_clk_en ( VDD ) , .o_div_clk ( FUN_RX_CLK ) , 
    .test_si ( FUN_UART_RST ) , .test_so ( n22 ) , .test_se ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
Prescale_mux Mux3x1 ( .prescale ( UART_CONFIG[7:2] ) ,
    .div_ratio ( { SYNOPSYS_UNCONNECTED__0 , SYNOPSYS_UNCONNECTED__1 , 
        SYNOPSYS_UNCONNECTED__2 , SYNOPSYS_UNCONNECTED__3 , 
        SYNOPSYS_UNCONNECTED__4 , DIV_RATIO[2] , DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
REG_FILE U0_REG_FILE ( .WrData ( Wr_D ) , .Address ( Addr ) , .WrEn ( n5 ) , 
    .RdEn ( RdEn ) , .CLK ( REF_CLK ) , .RST ( n9 ) , .RdData ( Rd_D ) , 
    .RdData_Valid ( Rd_D_Vld ) , .REG0 ( OPERAND_A ) , .REG1 ( OPERAND_B ) , 
    .REG2 ( UART_CONFIG ) , .REG3 ( DEF_DIV_RATIO ) , 
    .test_si3 ( SCAN_IN_4 ) , .test_si2 ( SCAN_IN_3 ) , .test_si1 ( n17 ) , 
    .test_so3 ( n12 ) , .test_so2 ( SCAN_OUT_3 ) , .test_so1 ( SCAN_OUT_2 ) , 
    .test_se ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
UART U0_UART ( .TX_CLK ( TX_CLK ) , .RX_CLK ( RX_CLK ) , .RST ( n8 ) , 
    .PAR_TYP ( UART_CONFIG[1] ) , .PAR_EN ( UART_CONFIG[0] ) , 
    .Prescale ( UART_CONFIG[7:2] ) , .TX_IN_P ( RD_DATA ) , .TX_IN_V ( n1 ) , 
    .TX_OUT_S ( TX_OUT ) , .TX_OUT_V ( Busy ) , .RX_IN_S ( RX_IN ) , 
    .RX_OUT_P ( RX_P_DATA ) , .RX_OUT_V ( RX_VLD_SIG ) , .test_si ( n11 ) , 
    .test_se ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DATA_SYNC U0_DATA_SYNC ( .Unsync_bus ( RX_P_DATA ) , 
    .bus_enable ( RX_VLD_SIG ) , .CLK ( REF_CLK ) , .RST ( n9 ) , 
    .sync_bus ( SYNC_RX_P_DATA ) , .enable_pulse ( SYNC_RX_VLD_SIG ) , 
    .test_si ( n18 ) , .test_se ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SYS_CTRL U0_SYS_CTRL ( .CLK ( REF_CLK ) , .RST ( n9 ) , .RdData ( Rd_D ) , 
    .RdData_Valid ( Rd_D_Vld ) , .RX_P_DATA ( SYNC_RX_P_DATA ) , 
    .RX_D_VLD ( SYNC_RX_VLD_SIG ) , .FIFO_FULL ( F_FULL ) , 
    .ALU_OUT ( ALU_OUT ) , .ALU_OUT_VLD ( ALU_OUT_VLD ) , .ALU_FUN ( FUN ) , 
    .ALU_EN ( EN ) , .GATE_EN ( Gate_EN ) , .UART_TX_DATA ( WR_DATA ) , 
    .UART_TX_VLD ( WR_INC ) , .Address ( Addr ) , .WrEn ( WrEn ) , 
    .RdEn ( RdEn ) , .WrData ( Wr_D ) , .test_si ( n12 ) , .test_so ( n11 ) , 
    .test_se ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
CLK_GATE U0_CLK_GATE ( .CLK ( REF_CLK ) , .CLK_EN ( Gate_EN ) , 
    .SCAN_EN ( TEST_MODE ) , .GATED_CLK ( ALU_CLK ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
ALU U0_ALU ( .CLK ( ALU_CLK ) , .RST ( REF_RST ) ,
    .A ( { OPERAND_A[7] , OPERAND_A[6] , n3 , OPERAND_A[4] , OPERAND_A[3] , 
        OPERAND_A[2] , OPERAND_A[1] , OPERAND_A[0] } ) ,
    .B ( OPERAND_B ) , .ALU_FUN ( FUN ) , .Enable ( EN ) , 
    .ALU_OUT ( ALU_OUT ) , .OUT_VALID ( ALU_OUT_VLD ) , .test_si ( n21 ) , 
    .test_se ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ASYNC_FIFO U0_ASYN_FIFO ( .W_CLK ( REF_CLK ) , .W_RST ( REF_RST ) , 
    .W_INC ( WR_INC ) , .R_CLK ( TX_CLK ) , .R_RST ( n6 ) , 
    .R_INC ( RD_INC ) , .WR_DATA ( WR_DATA ) , .RD_DATA ( RD_DATA ) , 
    .FULL ( F_FULL ) , .EMPTY ( F_EMPTY ) , .test_si2 ( SCAN_IN_2 ) , 
    .test_si1 ( ALU_OUT_VLD ) , .test_so2 ( n18 ) , .test_so1 ( SCAN_OUT_1 ) , 
    .test_se ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
PULSE_GEN_0 U0_PULSE_GEN ( .LVL_SIG ( Busy ) , .CLK ( TX_CLK ) , .RST ( n8 ) , 
    .PULSE_SIG ( RD_INC ) , .test_si ( SYNC_RX_P_DATA[7] ) , 
    .test_so ( n17 ) , .test_se ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( OPERAND_A[5] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 U18 ( .INP ( SCAN_EN ) , .Z ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 U19 ( .INP ( SCAN_EN ) , .Z ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


