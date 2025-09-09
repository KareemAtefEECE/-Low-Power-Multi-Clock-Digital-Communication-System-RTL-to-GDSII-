// IC Compiler II Verilog Writer
// Generated on 09/03/2025 at 16:49:16
// Library Name: SYSTEM_TOP.dlib
// Block Name: SYSTEM_TOP_pl
// User Label: 
// Write Command: write_verilog -include { all } ../outputs/SYSTEM_TOP.v
module PULSE_GEN_0 ( LVL_SIG , CLK , RST , PULSE_SIG , test_si , test_so , 
    test_se , VDD , VSS , dftopt0 , dftopt30 ) ;
input  LVL_SIG ;
input  CLK ;
input  RST ;
output PULSE_SIG ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt30 ;

wire n1 ;
supply1 VDD ;
supply0 VSS ;

AND2X1 U3 ( .IN1 ( n1 ) , .IN2 ( LVL_SIG ) , .Q ( PULSE_SIG ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 SYNC_REG_reg ( .D ( LVL_SIG ) , .SI ( dftopt30 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 ( ASYNC , CLK , PLACE_HFSNET_112 , 
    SYNC , test_si , test_se , VDD , VSS , dftopt0 , PLACE_HFSNET_30 , 
    dftopt42 , dftopt2 ) ;
input  [3:0] ASYNC ;
input  CLK ;
input  PLACE_HFSNET_112 ;
output [3:0] SYNC ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  PLACE_HFSNET_30 ;
input  dftopt42 ;
input  dftopt2 ;

wire PLACE_HFSNET_110 ;
wire PLACE_HFSNET_28 ;
wire \q[0][3] ;
wire \q[0][2] ;
wire \q[0][1] ;
wire \q[0][0] ;
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

NBUFFX2 PLACE_HFSBUF_2898_68 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( SYNC[2] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][3] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( \q[0][1] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][2] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( \q[0][0] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][1] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( dftopt42 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][0] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( \q[0][3] ) , .SI ( \q[0][3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , .Q ( SYNC[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( \q[0][2] ) , .SI ( \q[0][2] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( \q[0][1] ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( SYNC[1] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[0] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2298_172 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 ( ASYNC , CLK , PLACE_HFSNET_105 , 
    SYNC , test_se , VDD , VSS , dftopt14 , dftopt0 , dftopt1 , dftopt17 , 
    PLACE_HFSNET_56 , dftopt2 ) ;
input  [3:0] ASYNC ;
input  CLK ;
input  PLACE_HFSNET_105 ;
output [3:0] SYNC ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt14 ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt17 ;
input  PLACE_HFSNET_56 ;
output dftopt2 ;

wire \q[0][3] ;
wire \q[0][2] ;
wire \q[0][0] ;
supply1 VDD ;
supply0 VSS ;
wire PLACE_HFSNET_53 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( \q[0][3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( \q[0][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( \q[0][3] ) , .SI ( SYNC[2] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( SYNC[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( \q[0][2] ) , .SI ( SYNC[0] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( SYNC[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( dftopt2 ) , .SI ( \q[0][2] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( SYNC[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( SYNC[1] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( \q[0][3] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( \q[0][0] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( dftopt2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( SYNC[3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( \q[0][0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_846_99 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_RD_PTR_WIDTH4 ( r_clk , r_rst_n , r_inc , rq2_wptr , r_addr , 
    r_empty , gray_r_ptr , test_si , test_se , VDD , VSS , dftopt0 , dftopt2 , 
    PLACE_HFSNET_109 , PLACE_HFSNET_110 , dftopt19 , dftopt1 ) ;
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
input  dftopt0 ;
input  dftopt2 ;
input  PLACE_HFSNET_109 ;
input  PLACE_HFSNET_110 ;
input  dftopt19 ;
input  dftopt1 ;

wire n1 ;
wire n2 ;
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
NAND4X1 U12 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .IN4 ( n11 ) , 
    .QN ( r_empty ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
SDFFARX1 \r_ptr_reg[0] ( .D ( n15 ) , .SI ( dftopt19 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[0] ) , .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[1] ( .D ( n14 ) , .SI ( r_addr[2] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[1] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[2] ( .D ( n13 ) , .SI ( gray_r_ptr[3] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[2] ) , .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[3] ( .D ( n12 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( r_clk ) , .RSTB ( r_rst_n ) , .Q ( gray_r_ptr[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U4 ( .IN1 ( n6 ) , .IN2 ( r_addr[1] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U5 ( .IN1 ( n7 ) , .IN2 ( n2 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U6 ( .IN1 ( r_inc ) , .IN2 ( r_empty ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U7 ( .IN1 ( n1 ) , .IN2 ( n5 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module FIFO_WR_PTR_WIDTH4 ( w_clk , w_rst_n , w_inc , wq2_rptr , w_addr , 
    w_full , gray_w_ptr , test_si , test_se , VDD , VSS , dftopt1 , dftopt0 , 
    PLACE_HFSNET_173 , dftopt2 ) ;
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
input  dftopt1 ;
output dftopt0 ;
input  PLACE_HFSNET_173 ;
input  dftopt2 ;

wire n19 ;
wire n20 ;
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
wire n22 ;
wire n27 ;
wire n28 ;
wire n30 ;
supply1 VDD ;
supply0 VSS ;

XNOR2X1 U9 ( .IN1 ( w_addr[2] ) , .IN2 ( n5 ) , .Q ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U11 ( .IN1 ( w_addr[0] ) , .IN2 ( n7 ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U12 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .IN4 ( n11 ) , 
    .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U13 ( .IN1 ( wq2_rptr[3] ) , .IN2 ( gray_w_ptr[3] ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( n2 ) , .IN2 ( w_addr[1] ) , .Q ( gray_w_ptr[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[0] ( .D ( n15 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( w_addr[0] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[1] ( .D ( n14 ) , .SI ( w_addr[0] ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n20 ) , .QN ( w_addr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[2] ( .D ( n13 ) , .SI ( PLACE_HFSNET_173 ) , 
    .SE ( test_se ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n19 ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[3] ( .D ( n12 ) , .SI ( w_addr[2] ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( gray_w_ptr[3] ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U8 ( .IN1 ( gray_w_ptr[0] ) , .IN2 ( wq2_rptr[0] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U6 ( .IN1 ( n6 ) , .IN2 ( PLACE_HFSNET_173 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U10 ( .IN1 ( gray_w_ptr[1] ) , .IN2 ( wq2_rptr[1] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U14 ( .IN1 ( n20 ) , .IN2 ( n1 ) , .Q ( gray_w_ptr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U15 ( .IN1 ( n7 ) , .IN2 ( n2 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n19 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n22 ) , .ZN ( w_addr[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( n22 ) , .IN2 ( n5 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U21 ( .IN1 ( w_addr[1] ) , .IN2 ( n6 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( w_inc ) , .IN2 ( n3 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U26 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n11 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U27 ( .IN1 ( n27 ) , .IN2 ( n10 ) , .Q ( w_full ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n28 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U29 ( .IN1 ( wq2_rptr[2] ) , .IN2 ( gray_w_ptr[2] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U30 ( .IN1 ( gray_w_ptr[3] ) , .IN2 ( n4 ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( n30 ) , .IN2 ( n19 ) , .Q ( gray_w_ptr[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 ( w_data , w_full , 
    w_inc , w_addr , w_clk , w_rst_n , \r_addr[2] , \r_addr[1] , 
    PLACE_HFSNET_173 , r_data , test_si2 , test_si1 , test_so2 , test_so1 , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt3 , dftopt2 , dftopt5 , 
    dftopt4 , dftopt8 , dftopt6 , dftopt11 , dftopt7 , dftopt18 , dftopt9 , 
    dftopt21 , dftopt10 , dftopt24 , dftopt12 , dftopt27 , dftopt13 , 
    PLACE_HFSNET_30 , PLACE_HFSNET_51 , PLACE_HFSNET_92 , PLACE_HFSNET_93 , 
    PLACE_HFSNET_102 , PLACE_HFSNET_109 , PLACE_HFSNET_110 , 
    PLACE_HFSNET_113 , PLACE_HFSNET_116 , PLACE_HFSNET_172 , dftopt30 , 
    dftopt14 , dftopt15 , dftopt35 , dftopt16 , dftopt17 , dftopt40 , 
    dftopt19 , dftopt44 ) ;
input  [7:0] w_data ;
input  w_full ;
input  w_inc ;
input  [2:0] w_addr ;
input  w_clk ;
input  w_rst_n ;
input  \r_addr[2] ;
input  \r_addr[1] ;
input  PLACE_HFSNET_173 ;
output [7:0] r_data ;
input  test_si2 ;
input  test_si1 ;
output test_so2 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt3 ;
output dftopt2 ;
input  dftopt5 ;
output dftopt4 ;
input  dftopt8 ;
output dftopt6 ;
input  dftopt11 ;
output dftopt7 ;
input  dftopt18 ;
output dftopt9 ;
input  dftopt21 ;
output dftopt10 ;
input  dftopt24 ;
output dftopt12 ;
input  dftopt27 ;
output dftopt13 ;
input  PLACE_HFSNET_30 ;
input  PLACE_HFSNET_51 ;
input  PLACE_HFSNET_92 ;
input  PLACE_HFSNET_93 ;
input  PLACE_HFSNET_102 ;
input  PLACE_HFSNET_109 ;
input  PLACE_HFSNET_110 ;
input  PLACE_HFSNET_113 ;
input  PLACE_HFSNET_116 ;
input  PLACE_HFSNET_172 ;
input  dftopt30 ;
output dftopt14 ;
output dftopt15 ;
input  dftopt35 ;
output dftopt16 ;
output dftopt17 ;
input  dftopt40 ;
output dftopt19 ;
input  dftopt44 ;

wire test_so2_gOb19 ;
wire \fifo[7][7] ;
wire PLACE_HFSNET_27 ;
wire \fifo[0][7] ;
wire \fifo[0][6] ;
wire \fifo[0][5] ;
wire \fifo[0][4] ;
wire \fifo[0][3] ;
wire \fifo[0][2] ;
wire \fifo[0][1] ;
wire \fifo[0][0] ;
wire \fifo[1][7] ;
wire \fifo[1][5] ;
wire \fifo[1][4] ;
wire \fifo[1][3] ;
wire \fifo[1][2] ;
wire \fifo[1][0] ;
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
wire \fifo[7][5] ;
wire \fifo[7][4] ;
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
wire PLACE_HFSNET_132 ;
wire PLACE_HFSNET_131 ;
wire PLACE_HFSNET_137 ;
wire PLACE_HFSNET_138 ;
wire PLACE_HFSNET_149 ;
wire n138 ;
wire PLACE_HFSNET_76 ;
wire n148 ;
wire n149 ;
wire PLACE_HFSNET_134 ;
wire PLACE_HFSNET_136 ;
wire PLACE_HFSNET_72 ;
wire PLACE_HFSNET_74 ;
wire PLACE_HFSNET_170 ;
wire PLACE_HFSNET_171 ;
wire PLACE_HFSNET_78 ;
wire PLACE_HFSNET_80 ;
wire PLACE_HFSNET_130 ;
wire PLACE_HFSNET_32 ;
wire PLACE_HFSNET_33 ;
wire PLACE_HFSNET_34 ;
wire PLACE_HFSNET_35 ;
wire PLACE_HFSNET_36 ;
wire PLACE_HFSNET_37 ;
wire PLACE_HFSNET_38 ;
wire PLACE_HFSNET_39 ;
wire PLACE_HFSNET_107 ;
wire PLACE_HFSNET_108 ;
wire n185 ;
wire n186 ;
wire n188 ;
wire n189 ;
wire PLACE_HFSNET_114 ;
wire PLACE_HFSNET_115 ;
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

assign \fifo[7][7] = test_so2_gOb19 ;

AO22X1 U17 ( .IN1 ( w_data[0] ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( \fifo[7][0] ) , .IN4 ( n13 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( w_data[3] ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( dftopt14 ) , .IN4 ( n13 ) , .Q ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( w_data[4] ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( \fifo[7][4] ) , .IN4 ( n13 ) , .Q ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U22 ( .IN1 ( w_data[5] ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( \fifo[7][5] ) , .IN4 ( n13 ) , .Q ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U23 ( .IN1 ( w_data[6] ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( dftopt17 ) , .IN4 ( n13 ) , .Q ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U26 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[6][0] ) , .IN4 ( n15 ) , .Q ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U27 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[1] ) , 
    .IN3 ( \fifo[6][1] ) , .IN4 ( n15 ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U28 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[6][2] ) , .IN4 ( n15 ) , .Q ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U30 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[6][4] ) , .IN4 ( n15 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U32 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[6] ) , 
    .IN3 ( \fifo[6][6] ) , .IN4 ( n15 ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U33 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( w_data[7] ) , 
    .IN3 ( \fifo[6][7] ) , .IN4 ( n15 ) , .Q ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U35 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[5][0] ) , .IN4 ( n16 ) , .Q ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U36 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[1] ) , 
    .IN3 ( \fifo[5][1] ) , .IN4 ( n16 ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U38 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[3] ) , 
    .IN3 ( \fifo[5][3] ) , .IN4 ( n16 ) , .Q ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U39 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[5][4] ) , .IN4 ( n16 ) , .Q ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U41 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[6] ) , 
    .IN3 ( \fifo[5][6] ) , .IN4 ( n16 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U42 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( w_data[7] ) , 
    .IN3 ( \fifo[5][7] ) , .IN4 ( n16 ) , .Q ( n47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U44 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[4][0] ) , .IN4 ( n17 ) , .Q ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U45 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( w_data[1] ) , 
    .IN3 ( \fifo[4][1] ) , .IN4 ( n17 ) , .Q ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U46 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[4][2] ) , .IN4 ( n17 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U48 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[4][4] ) , .IN4 ( n17 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[3][0] ) , .IN4 ( n19 ) , .Q ( n56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U54 ( .IN1 ( w_data[1] ) , .IN2 ( PLACE_HFSNET_74 ) , 
    .IN3 ( \fifo[3][1] ) , .IN4 ( n19 ) , .Q ( n57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U55 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[3][2] ) , .IN4 ( n19 ) , .Q ( n58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U57 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[3][4] ) , .IN4 ( n19 ) , .Q ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( w_data[7] ) , 
    .IN3 ( \fifo[3][7] ) , .IN4 ( n19 ) , .Q ( n63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U62 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[2][0] ) , .IN4 ( n21 ) , .Q ( n64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U64 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[2][2] ) , .IN4 ( n21 ) , .Q ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[3] ) , 
    .IN3 ( \fifo[2][3] ) , .IN4 ( n21 ) , .Q ( n67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[2][4] ) , .IN4 ( n21 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[5] ) , 
    .IN3 ( \fifo[2][5] ) , .IN4 ( n21 ) , .Q ( n69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[6] ) , 
    .IN3 ( \fifo[2][6] ) , .IN4 ( n21 ) , .Q ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[1][0] ) , .IN4 ( n22 ) , .Q ( n72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[1] ) , 
    .IN3 ( dftopt2 ) , .IN4 ( n22 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[1][2] ) , .IN4 ( n22 ) , .Q ( n74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[3] ) , 
    .IN3 ( \fifo[1][3] ) , .IN4 ( n22 ) , .Q ( n75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[1][4] ) , .IN4 ( n22 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[5] ) , 
    .IN3 ( \fifo[1][5] ) , .IN4 ( n22 ) , .Q ( n77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( w_data[7] ) , 
    .IN3 ( \fifo[1][7] ) , .IN4 ( n22 ) , .Q ( n79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[0] ) , 
    .IN3 ( \fifo[0][0] ) , .IN4 ( n23 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[1] ) , 
    .IN3 ( \fifo[0][1] ) , .IN4 ( n23 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[2] ) , 
    .IN3 ( \fifo[0][2] ) , .IN4 ( n23 ) , .Q ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[3] ) , 
    .IN3 ( \fifo[0][3] ) , .IN4 ( n23 ) , .Q ( n83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[4] ) , 
    .IN3 ( \fifo[0][4] ) , .IN4 ( n23 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( w_data[5] ) , 
    .IN3 ( \fifo[0][5] ) , .IN4 ( n23 ) , .Q ( n85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U3 ( .IN1 ( n105 ) , .IN2 ( n106 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( \fifo[3][7] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][7] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n119 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U6 ( .IN1 ( w_data[5] ) , .IN2 ( \fifo[3][5] ) , .S ( n19 ) , 
    .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( n117 ) , .IN2 ( n118 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( \fifo[3][4] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][4] ) , 
    .IN4 ( PLACE_HFSNET_138 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( w_data[3] ) , .IN2 ( \fifo[4][3] ) , .S ( n17 ) , 
    .Q ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U11 ( .IN1 ( w_data[7] ) , .IN2 ( test_so2_gOb19 ) , .S ( n13 ) , 
    .Q ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U13 ( .IN1 ( w_data[6] ) , .IN2 ( \fifo[3][6] ) , .S ( n19 ) , 
    .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U14 ( .IN1 ( n109 ) , .IN2 ( n110 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( w_data[3] ) , .IN2 ( \fifo[6][3] ) , .S ( n15 ) , 
    .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U24 ( .IN1 ( w_data[7] ) , .IN2 ( dftopt16 ) , .S ( n21 ) , 
    .Q ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( w_data[6] ) , .IN2 ( \fifo[0][6] ) , .S ( n23 ) , 
    .Q ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( n113 ) , .IN2 ( n114 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( w_data[3] ) , .IN2 ( \fifo[3][3] ) , .S ( n19 ) , 
    .Q ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( w_data[6] ) , .IN2 ( dftopt19 ) , .S ( n22 ) , 
    .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( w_data[7] ) , .IN2 ( \fifo[0][7] ) , .S ( n23 ) , 
    .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U52 ( .IN1 ( w_addr[0] ) , .IN2 ( n138 ) , .IN3 ( PLACE_HFSNET_173 ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U59 ( .IN1 ( w_addr[0] ) , .IN2 ( w_addr[1] ) , .IN3 ( n20 ) , 
    .QN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U95 ( .IN1 ( PLACE_HFSNET_173 ) , .IN2 ( w_addr[0] ) , .IN3 ( n148 ) , 
    .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_763_204 ( .INP ( n23 ) , .ZN ( PLACE_HFSNET_134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_37_201 ( .INP ( n123 ) , .Z ( PLACE_HFSNET_131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_765_126 ( .INP ( n22 ) , .ZN ( PLACE_HFSNET_72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_102_211 ( .INP ( n120 ) , .Z ( PLACE_HFSNET_138 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_236_225 ( .INP ( w_addr[0] ) , .ZN ( PLACE_HFSNET_149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_101_210 ( .INP ( n121 ) , .Z ( PLACE_HFSNET_137 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_105_202 ( .INP ( n124 ) , .Z ( PLACE_HFSNET_132 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U126 ( .IN1 ( \fifo[3][0] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][0] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U127 ( .IN1 ( \fifo[5][0] ) , .IN2 ( n124 ) , .IN3 ( \fifo[7][0] ) , 
    .IN4 ( n123 ) , .IN5 ( n91 ) , .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U128 ( .IN1 ( \fifo[2][0] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][0] ) , 
    .IN4 ( n120 ) , .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U129 ( .IN1 ( \fifo[4][0] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][0] ) , 
    .IN4 ( n123 ) , .IN5 ( n92 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( n94 ) , .IN2 ( PLACE_HFSNET_171 ) , .IN3 ( n93 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( \fifo[3][1] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( dftopt2 ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U132 ( .IN1 ( \fifo[5][1] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( \fifo[7][1] ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n95 ) , 
    .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U133 ( .IN1 ( \fifo[2][1] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][1] ) , 
    .IN4 ( n120 ) , .Q ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U134 ( .IN1 ( \fifo[4][1] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][1] ) , 
    .IN4 ( n123 ) , .IN5 ( n96 ) , .Q ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U135 ( .IN1 ( n98 ) , .IN2 ( PLACE_HFSNET_171 ) , .IN3 ( n97 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U136 ( .IN1 ( \fifo[3][2] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][2] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n99 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U137 ( .IN1 ( \fifo[5][2] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( \fifo[7][2] ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n99 ) , 
    .Q ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U138 ( .IN1 ( \fifo[2][2] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][2] ) , 
    .IN4 ( n120 ) , .Q ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U139 ( .IN1 ( \fifo[4][2] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][2] ) , 
    .IN4 ( n123 ) , .IN5 ( n100 ) , .Q ( n101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U140 ( .IN1 ( n102 ) , .IN2 ( PLACE_HFSNET_171 ) , .IN3 ( n101 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U141 ( .IN1 ( \fifo[3][3] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][3] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U142 ( .IN1 ( \fifo[5][3] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( dftopt14 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n103 ) , 
    .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U143 ( .IN1 ( \fifo[2][3] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][3] ) , 
    .IN4 ( n120 ) , .Q ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U144 ( .IN1 ( \fifo[4][3] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][3] ) , 
    .IN4 ( n123 ) , .IN5 ( n104 ) , .Q ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U145 ( .IN1 ( \fifo[5][4] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( \fifo[7][4] ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n107 ) , 
    .Q ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U146 ( .IN1 ( \fifo[2][4] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][4] ) , 
    .IN4 ( n120 ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U147 ( .IN1 ( \fifo[4][4] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][4] ) , 
    .IN4 ( n123 ) , .IN5 ( n108 ) , .Q ( n109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U148 ( .IN1 ( \fifo[3][5] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][5] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U149 ( .IN1 ( dftopt15 ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( \fifo[7][5] ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n111 ) , 
    .Q ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( \fifo[2][5] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][5] ) , 
    .IN4 ( n120 ) , .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U151 ( .IN1 ( \fifo[4][5] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][5] ) , 
    .IN4 ( n123 ) , .IN5 ( n112 ) , .Q ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( \fifo[3][6] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( dftopt19 ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U153 ( .IN1 ( \fifo[5][6] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( dftopt17 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n115 ) , 
    .Q ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( \fifo[2][6] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][6] ) , 
    .IN4 ( n120 ) , .Q ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U155 ( .IN1 ( \fifo[4][6] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][6] ) , 
    .IN4 ( n123 ) , .IN5 ( n116 ) , .Q ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U156 ( .IN1 ( \fifo[5][7] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( test_so2_gOb19 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n119 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( dftopt16 ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][7] ) , 
    .IN4 ( n120 ) , .Q ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U158 ( .IN1 ( \fifo[4][7] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][7] ) , 
    .IN4 ( n123 ) , .IN5 ( n122 ) , .Q ( n125 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( PLACE_HFSNET_171 ) , .IN2 ( n126 ) , .IN3 ( n125 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U160 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( w_data[5] ) , 
    .IN3 ( \fifo[4][5] ) , .IN4 ( n17 ) , .Q ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U161 ( .IN1 ( w_full ) , .IN2 ( w_addr[2] ) , .Q ( n149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U164 ( .IN1 ( n14 ) , .IN2 ( w_addr[1] ) , .IN3 ( PLACE_HFSNET_149 ) , 
    .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2663_66 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3892_74 ( .INP ( PLACE_HFSNET_36 ) , 
    .Z ( PLACE_HFSNET_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3949_75 ( .INP ( PLACE_HFSNET_36 ) , 
    .Z ( PLACE_HFSNET_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3777_76 ( .INP ( PLACE_HFSNET_36 ) , 
    .Z ( PLACE_HFSNET_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3726_77 ( .INP ( PLACE_HFSNET_36 ) , 
    .Z ( PLACE_HFSNET_35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4144_78 ( .INP ( PLACE_HFSNET_51 ) , 
    .Z ( PLACE_HFSNET_36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3431_79 ( .INP ( w_rst_n ) , .Z ( PLACE_HFSNET_37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3494_80 ( .INP ( w_rst_n ) , .Z ( PLACE_HFSNET_38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][7] ( .D ( n87 ) , .SI ( \fifo[0][4] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][6] ( .D ( n86 ) , .SI ( \fifo[2][6] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[0][6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][4] ( .D ( n84 ) , .SI ( \fifo[0][0] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][4] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][7] ( .D ( n79 ) , .SI ( \fifo[2][1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[1][7] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][6] ( .D ( n78 ) , .SI ( \fifo[4][4] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt19 ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][5] ( .D ( n77 ) , .SI ( \fifo[1][2] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[1][5] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][4] ( .D ( n76 ) , .SI ( \fifo[7][5] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][4] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][3] ( .D ( n75 ) , .SI ( \fifo[1][4] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][3] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][2] ( .D ( n74 ) , .SI ( \fifo[1][3] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][2] ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][1] ( .D ( n73 ) , .SI ( \fifo[1][0] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt2 ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][0] ( .D ( n72 ) , .SI ( dftopt44 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][0] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][7] ( .D ( n71 ) , .SI ( \fifo[2][4] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( dftopt16 ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][6] ( .D ( n70 ) , .SI ( \fifo[2][2] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[2][6] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][6] ( .D ( n62 ) , .SI ( \fifo[0][2] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][6] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][3] ( .D ( n59 ) , .SI ( \fifo[3][4] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][3] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][1] ( .D ( n57 ) , .SI ( \fifo[3][5] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][1] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][7] ( .D ( n47 ) , .SI ( test_so2_gOb19 ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][7] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][6] ( .D ( n46 ) , .SI ( \fifo[5][2] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][6] ) , .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][5] ( .D ( n45 ) , .SI ( dftopt8 ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( dftopt15 ) , .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][2] ( .D ( n42 ) , .SI ( \fifo[7][2] ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][2] ) , .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][7] ( .D ( n39 ) , .SI ( \fifo[4][6] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[6][7] ) , .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][6] ( .D ( n38 ) , .SI ( \fifo[4][1] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][6] ) , .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][5] ( .D ( n37 ) , .SI ( \fifo[5][0] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][5] ) , .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][4] ( .D ( n36 ) , .SI ( \fifo[6][6] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[6][4] ) , .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][3] ( .D ( n35 ) , .SI ( \fifo[6][2] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][3] ) , .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][2] ( .D ( n34 ) , .SI ( \fifo[6][5] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][2] ) , .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][1] ( .D ( n33 ) , .SI ( \fifo[6][3] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[6][1] ) , .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][0] ( .D ( n32 ) , .SI ( \fifo[6][4] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][0] ) , .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][7] ( .D ( n31 ) , .SI ( \fifo[7][1] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( test_so2_gOb19 ) , .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][6] ( .D ( n30 ) , .SI ( \fifo[0][6] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( dftopt17 ) , .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][5] ( .D ( n29 ) , .SI ( \fifo[5][4] ) , 
    .SE ( test_se ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[7][5] ) , .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][4] ( .D ( n28 ) , .SI ( \fifo[3][3] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[7][4] ) , .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][3] ( .D ( n27 ) , .SI ( \fifo[7][4] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( dftopt14 ) , .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][2] ( .D ( n26 ) , .SI ( \fifo[5][7] ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[7][2] ) , .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][1] ( .D ( n25 ) , .SI ( \fifo[7][0] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[7][1] ) , .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][0] ( .D ( n24 ) , .SI ( \fifo[4][5] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[7][0] ) , .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][5] ( .D ( n61 ) , .SI ( \fifo[1][7] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][5] ) , .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][0] ( .D ( n56 ) , .SI ( \fifo[3][7] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][0] ) , .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][5] ( .D ( n85 ) , .SI ( \fifo[1][5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[0][5] ) , .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][5] ( .D ( n69 ) , .SI ( \fifo[2][0] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][5] ) , .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][3] ( .D ( n83 ) , .SI ( \fifo[6][7] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][3] ) , .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][2] ( .D ( n82 ) , .SI ( \fifo[0][1] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][2] ) , .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][1] ( .D ( n81 ) , .SI ( \fifo[0][5] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][1] ) , .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][0] ( .D ( n80 ) , .SI ( \fifo[0][3] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][0] ) , .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][4] ( .D ( n68 ) , .SI ( \fifo[0][7] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[2][4] ) , .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][3] ( .D ( n67 ) , .SI ( dftopt30 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][3] ) , .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][2] ( .D ( n66 ) , .SI ( dftopt18 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][2] ) , .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][1] ( .D ( n65 ) , .SI ( \fifo[2][5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][1] ) , .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][0] ( .D ( n64 ) , .SI ( \fifo[2][3] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][0] ) , .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][7] ( .D ( n63 ) , .SI ( \fifo[3][6] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][7] ) , .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][4] ( .D ( n60 ) , .SI ( \fifo[3][1] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][4] ) , .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][2] ( .D ( n58 ) , .SI ( \fifo[3][0] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][2] ) , .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][7] ( .D ( n55 ) , .SI ( \fifo[4][3] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][7] ) , .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][6] ( .D ( n54 ) , .SI ( \fifo[4][7] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][6] ) , .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][4] ( .D ( n52 ) , .SI ( \fifo[4][2] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[4][4] ) , .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][3] ( .D ( n51 ) , .SI ( \fifo[6][1] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][3] ) , .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][2] ( .D ( n50 ) , .SI ( \fifo[6][0] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][2] ) , .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][1] ( .D ( n49 ) , .SI ( \fifo[4][0] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][1] ) , .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][0] ( .D ( n48 ) , .SI ( dftopt40 ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][0] ) , .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][5] ( .D ( n53 ) , .SI ( \fifo[3][2] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[4][5] ) , .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][1] ( .D ( n41 ) , .SI ( \fifo[5][3] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][1] ) , .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][3] ( .D ( n43 ) , .SI ( \fifo[5][6] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][3] ) , .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][0] ( .D ( n40 ) , .SI ( \fifo[5][1] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][0] ) , .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][4] ( .D ( n44 ) , .SI ( dftopt35 ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( w_clk ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][4] ) , .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U88 ( .IN1 ( w_data[5] ) , .IN2 ( \fifo[6][5] ) , .S ( n15 ) , 
    .Q ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( w_data[2] ) , .IN2 ( \fifo[5][2] ) , .S ( n16 ) , 
    .Q ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U97 ( .IN1 ( w_data[5] ) , .IN2 ( dftopt15 ) , .S ( n16 ) , 
    .Q ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U179 ( .IN1 ( \fifo[2][1] ) , .IN2 ( n21 ) , .QN ( n186 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_501_134 ( .INP ( n15 ) , .ZN ( PLACE_HFSNET_80 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_336_132 ( .INP ( n16 ) , .ZN ( PLACE_HFSNET_78 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U107 ( .INP ( \r_addr[2] ) , .ZN ( n127 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U111 ( .INP ( \r_addr[1] ) , .ZN ( n128 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U112 ( .IN1 ( n127 ) , .IN2 ( n128 ) , .QN ( n123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U113 ( .IN1 ( n127 ) , .IN2 ( \r_addr[1] ) , .QN ( n124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U119 ( .IN1 ( n128 ) , .IN2 ( \r_addr[2] ) , .QN ( n121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U121 ( .IN1 ( \r_addr[1] ) , .IN2 ( \r_addr[2] ) , .QN ( n120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_710_250 ( .INP ( PLACE_HFSNET_172 ) , 
    .ZN ( PLACE_HFSNET_170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_295_251 ( .INP ( PLACE_HFSNET_172 ) , 
    .Z ( PLACE_HFSNET_171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_741_206 ( .INP ( n21 ) , .ZN ( PLACE_HFSNET_136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_886_128 ( .INP ( n19 ) , .ZN ( PLACE_HFSNET_74 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1957_166 ( .INP ( PLACE_HFSNET_108 ) , 
    .Z ( PLACE_HFSNET_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U8 ( .IN1 ( w_inc ) , .IN2 ( n149 ) , .Q ( n138 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X1 U51 ( .IN1 ( PLACE_HFSNET_149 ) , .IN2 ( w_addr[1] ) , .IN3 ( n20 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_348_130 ( .INP ( n17 ) , .ZN ( PLACE_HFSNET_76 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U58 ( .IN1 ( \fifo[7][1] ) , .IN2 ( n13 ) , .QN ( n189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U77 ( .IN1 ( PLACE_HFSNET_173 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( n148 ) , .QN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2073_167 ( .INP ( test_se ) , .Z ( PLACE_HFSNET_108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U96 ( .IN1 ( w_inc ) , .IN2 ( n149 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3028_177 ( .INP ( PLACE_HFSNET_116 ) , 
    .Z ( PLACE_HFSNET_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U102 ( .IN1 ( n138 ) , .IN2 ( w_addr[1] ) , .IN3 ( w_addr[0] ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2927_178 ( .INP ( PLACE_HFSNET_116 ) , 
    .Z ( PLACE_HFSNET_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_341_200 ( .INP ( n13 ) , .ZN ( PLACE_HFSNET_130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U115 ( .IN1 ( n14 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_173 ) , .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U165 ( .IN1 ( w_data[6] ) , .IN2 ( \fifo[4][6] ) , .S ( n17 ) , 
    .Q ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U166 ( .IN1 ( w_data[7] ) , .IN2 ( \fifo[4][7] ) , .S ( n17 ) , 
    .Q ( n55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U172 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U180 ( .IN1 ( w_full ) , .IN2 ( w_inc ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U194 ( .IN1 ( w_data[2] ) , .IN2 ( \fifo[7][2] ) , .S ( n13 ) , 
    .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U196 ( .IN1 ( n189 ) , .IN2 ( n188 ) , .QN ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U197 ( .IN1 ( n185 ) , .IN2 ( n186 ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U198 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( w_data[1] ) , .QN ( n185 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U199 ( .IN1 ( w_data[1] ) , .IN2 ( PLACE_HFSNET_130 ) , .QN ( n188 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3274_81 ( .INP ( w_rst_n ) , .Z ( PLACE_HFSNET_39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ASYNC_FIFO ( W_CLK , PLACE_HFSNET_53 , W_INC , R_CLK , 
    PLACE_HFSNET_92 , R_INC , WR_DATA , RD_DATA , FULL , EMPTY , test_si2 , 
    test_si1 , test_so2 , test_so1 , test_se , VDD , VSS , dftopt0 , 
    \wq2_rptr_tp[0] , dftopt3 , \r_addr_tp[1] , dftopt5 , dftopt7 , dftopt8 , 
    dftopt10 , dftopt11 , dftopt13 , dftopt14 , dftopt16 , dftopt17 , 
    \rq2_wptr_tp[2] , dftopt18 , dftopt20 , dftopt21 , dftopt23 , dftopt24 , 
    dftopt26 , dftopt27 , dftopt29 , PLACE_HFSNET_28 , PLACE_HFSNET_30 , 
    PLACE_HFSNET_39 , PLACE_HFSNET_51 , PLACE_HFSNET_56 , PLACE_HFSNET_93 , 
    PLACE_HFSNET_102 , PLACE_HFSNET_105 , PLACE_HFSNET_110 , 
    PLACE_HFSNET_111 , PLACE_HFSNET_112 , PLACE_HFSNET_113 , 
    PLACE_HFSNET_116 , PLACE_HFSNET_118 , PLACE_HFSNET_169 , dftopt30 , 
    dftopt32 , dftopt34 , dftopt35 , dftopt37 , dftopt39 , dftopt40 , 
    PLACE_HFSNET_172 , dftopt42 , dftopt44 , dftopt45 ) ;
input  W_CLK ;
input  PLACE_HFSNET_53 ;
input  W_INC ;
input  R_CLK ;
input  PLACE_HFSNET_92 ;
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
input  dftopt0 ;
output \wq2_rptr_tp[0] ;
input  dftopt3 ;
output \r_addr_tp[1] ;
input  dftopt5 ;
output dftopt7 ;
input  dftopt8 ;
output dftopt10 ;
input  dftopt11 ;
output dftopt13 ;
input  dftopt14 ;
output dftopt16 ;
input  dftopt17 ;
output \rq2_wptr_tp[2] ;
input  dftopt18 ;
output dftopt20 ;
input  dftopt21 ;
output dftopt23 ;
input  dftopt24 ;
output dftopt26 ;
input  dftopt27 ;
output dftopt29 ;
input  PLACE_HFSNET_28 ;
input  PLACE_HFSNET_30 ;
input  PLACE_HFSNET_39 ;
input  PLACE_HFSNET_51 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_93 ;
input  PLACE_HFSNET_102 ;
input  PLACE_HFSNET_105 ;
input  PLACE_HFSNET_110 ;
input  PLACE_HFSNET_111 ;
input  PLACE_HFSNET_112 ;
input  PLACE_HFSNET_113 ;
input  PLACE_HFSNET_116 ;
input  PLACE_HFSNET_118 ;
input  PLACE_HFSNET_169 ;
input  dftopt30 ;
output dftopt32 ;
output dftopt34 ;
input  dftopt35 ;
output dftopt37 ;
output dftopt39 ;
input  dftopt40 ;
output PLACE_HFSNET_172 ;
input  dftopt42 ;
input  dftopt44 ;
output dftopt45 ;

wire test_so2_gOb6 ;
wire [3:1] wq2_rptr_tp ;
wire [2:0] w_addr_tp ;
wire [2:2] r_addr_tp ;
wire \_gOb20_wq2_rptr_tp[0] ;
wire [2:0] gray_w_ptr_tp ;
wire [3:0] rq2_wptr_tp ;
wire \_gOb24_rq2_wptr_tp[2] ;
wire [3:0] gray_r_ptr_tp ;
supply1 VDD ;
supply0 VSS ;
wire dftopt4 ;
wire PLACE_HFSNET_109 ;
wire PLACE_HFSNET_117 ;
wire PLACE_HFSNET_174 ;
wire dftopt41 ;
wire dftopt43 ;
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

assign wq2_rptr_tp[3] = test_so2_gOb6 ;
assign rq2_wptr_tp[2] = \rq2_wptr_tp[2] ;

NBUFFX2 PLACE_HFSBUF_2188_170 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 U0_FIFO_MEM_CNTRL ( 
    .w_data ( WR_DATA ) , .w_full ( PLACE_HFSNET_169 ) , .w_inc ( W_INC ) , 
    .w_addr ( w_addr_tp ) , .w_clk ( W_CLK ) , .w_rst_n ( PLACE_HFSNET_39 ) , 
    .\r_addr[2] ( r_addr_tp[2] ) , .\r_addr[1] ( \r_addr_tp[1] ) , 
    .PLACE_HFSNET_173 ( PLACE_HFSNET_174 ) , .r_data ( RD_DATA ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_4 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_7 ) , .dftopt2 ( dftopt4 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_9 ) , .dftopt8 ( dftopt8 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt18 ( dftopt18 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt21 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt24 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_18 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_19 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_51 ( PLACE_HFSNET_51 ) , 
    .PLACE_HFSNET_92 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_93 ( PLACE_HFSNET_93 ) , 
    .PLACE_HFSNET_102 ( PLACE_HFSNET_102 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_113 ( PLACE_HFSNET_113 ) , 
    .PLACE_HFSNET_116 ( PLACE_HFSNET_116 ) , 
    .PLACE_HFSNET_172 ( PLACE_HFSNET_172 ) , .dftopt30 ( dftopt30 ) , 
    .dftopt14 ( dftopt32 ) , .dftopt15 ( dftopt34 ) , .dftopt35 ( dftopt35 ) , 
    .dftopt16 ( dftopt37 ) , .dftopt17 ( dftopt39 ) , .dftopt40 ( dftopt40 ) , 
    .dftopt19 ( dftopt41 ) , .dftopt44 ( dftopt44 ) ) ;
FIFO_WR_PTR_WIDTH4 U0_FIFO_WR ( .w_clk ( W_CLK ) , 
    .w_rst_n ( PLACE_HFSNET_28 ) , .w_inc ( W_INC ) ,
    .wq2_rptr ( { test_so2_gOb6 , wq2_rptr_tp[2] , wq2_rptr_tp[1] , 
        \_gOb20_wq2_rptr_tp[0] } ) ,
    .w_addr ( w_addr_tp ) , .w_full ( FULL ) ,
    .gray_w_ptr ( { dftopt45 , gray_w_ptr_tp[2] , gray_w_ptr_tp[1] , 
        gray_w_ptr_tp[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_20 ) , .test_se ( PLACE_HFSNET_118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_22 ) , 
    .PLACE_HFSNET_173 ( PLACE_HFSNET_174 ) , .dftopt2 ( dftopt4 ) ) ;
FIFO_RD_PTR_WIDTH4 U0_FIFO_RD ( .r_clk ( R_CLK ) , 
    .r_rst_n ( PLACE_HFSNET_53 ) , .r_inc ( R_INC ) ,
    .rq2_wptr ( { rq2_wptr_tp[3] , \_gOb24_rq2_wptr_tp[2] , rq2_wptr_tp[1] , 
        rq2_wptr_tp[0] } ) ,
    .r_addr ( { r_addr_tp[2] , \r_addr_tp[1] , PLACE_HFSNET_172 } ) ,
    .r_empty ( EMPTY ) , .gray_r_ptr ( gray_r_ptr_tp ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_23 ) , .test_se ( PLACE_HFSNET_118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_25 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , .dftopt19 ( dftopt41 ) , 
    .dftopt1 ( \_gOb20_wq2_rptr_tp[0] ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 U0_SYNC_W2R (
    .ASYNC ( { dftopt45 , gray_w_ptr_tp[2] , gray_w_ptr_tp[1] , 
        gray_w_ptr_tp[0] } ) ,
    .CLK ( R_CLK ) , .PLACE_HFSNET_105 ( PLACE_HFSNET_105 ) ,
    .SYNC ( { rq2_wptr_tp[3] , \_gOb24_rq2_wptr_tp[2] , rq2_wptr_tp[1] , 
        rq2_wptr_tp[0] } ) ,
    .test_se ( PLACE_HFSNET_117 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_26 ) , .dftopt0 ( test_so2_gOb6 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_28 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , .dftopt2 ( dftopt43 ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 U1_SYNC_R2W ( .ASYNC ( gray_r_ptr_tp ) , 
    .CLK ( W_CLK ) , .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) ,
    .SYNC ( { test_so2_gOb6 , wq2_rptr_tp[2] , wq2_rptr_tp[1] , 
        \_gOb20_wq2_rptr_tp[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_29 ) , .test_se ( PLACE_HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , .dftopt42 ( dftopt42 ) , 
    .dftopt2 ( dftopt43 ) ) ;
INVX0 PLACE_HFSINV_305_253 ( .INP ( w_addr_tp[1] ) , 
    .ZN ( PLACE_HFSNET_174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1780_180 ( .INP ( test_se ) , .Z ( PLACE_HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
wire n38 ;
wire n39 ;
wire n40 ;
supply1 VDD ;
supply0 VSS ;

assign SUM[6] = A[6] ;
assign SUM[5] = A[5] ;
assign SUM[4] = A[4] ;
assign SUM[3] = A[3] ;
assign SUM[2] = A[2] ;
assign SUM[1] = A[1] ;
assign SUM[0] = A[0] ;

XOR2X1 U12 ( .IN1 ( net5781 ) , .IN2 ( n32 ) , .Q ( SUM[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( n1 ) , .IN2 ( net10920 ) , .Q ( SUM[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U37 ( .IN1 ( n29 ) , .IN2 ( n35 ) , .Q ( SUM[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
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
XOR3X1 U18 ( .IN1 ( B[12] ) , .IN2 ( A[12] ) , .IN3 ( net10994 ) , 
    .Q ( SUM[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( A[12] ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U4 ( .IN1 ( n10 ) , .IN2 ( n5 ) , .IN3 ( n17 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( n27 ) , .IN2 ( B[13] ) , .Q ( SUM[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n28 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U46 ( .IN1 ( A[7] ) , .IN2 ( B[7] ) , .Q ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U3 ( .IN1 ( B[7] ) , .IN2 ( A[7] ) , .Q ( SUM[7] ) , .VDD ( VDD ) , 
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
AND2X1 U32 ( .IN1 ( A[8] ) , .IN2 ( B[8] ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ALU_DW02_mult_0 ( PLACE_HFSNET_185 , PLACE_HFSNET_194 , 
    PLACE_HFSNET_199 , PLACE_HFSNET_192 , PLACE_HFSNET_230 , 
    PLACE_HFSNET_237 , PLACE_HFSNET_219 , PLACE_HFSNET_216 , 
    PLACE_HFSNET_203 , PLACE_HFSNET_208 , PLACE_HFSNET_211 , \B[3] , 
    PLACE_HFSNET_242 , PLACE_HFSNET_244 , PLACE_HFSNET_224 , TC , PRODUCT , 
    VDD , VSS , PLACE_HFSNET_182 , PLACE_HFSNET_239 , PLACE_HFSNET_247 ) ;
input  PLACE_HFSNET_185 ;
input  PLACE_HFSNET_194 ;
input  PLACE_HFSNET_199 ;
input  PLACE_HFSNET_192 ;
input  PLACE_HFSNET_230 ;
input  PLACE_HFSNET_237 ;
input  PLACE_HFSNET_219 ;
input  PLACE_HFSNET_216 ;
input  PLACE_HFSNET_203 ;
input  PLACE_HFSNET_208 ;
input  PLACE_HFSNET_211 ;
input  \B[3] ;
input  PLACE_HFSNET_242 ;
input  PLACE_HFSNET_244 ;
input  PLACE_HFSNET_224 ;
input  TC ;
output [15:0] PRODUCT ;
input  VDD ;
input  VSS ;
input  PLACE_HFSNET_182 ;
input  PLACE_HFSNET_239 ;
input  PLACE_HFSNET_247 ;

wire PLACE_HFSNET_181 ;
wire PLACE_HFSNET_184 ;
wire PLACE_HFSNET_198 ;
wire PLACE_HFSNET_191 ;
wire PLACE_HFSNET_229 ;
wire PLACE_HFSNET_218 ;
wire PLACE_HFSNET_215 ;
wire PLACE_HFSNET_202 ;
wire PLACE_HFSNET_207 ;
wire PLACE_HFSNET_210 ;
wire PLACE_HFSNET_241 ;
wire PLACE_HFSNET_222 ;
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
wire PLACE_HFSNET_246 ;
wire net10887 ;
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
wire \SUMB[5][2] ;
wire \SUMB[5][1] ;
wire \SUMB[4][2] ;
wire \CARRYB[5][1] ;
wire \CARRYB[4][2] ;
wire \SUMB[7][1] ;
wire \CARRYB[7][1] ;
wire \ab[2][2] ;
wire \ab[1][3] ;
wire \ab[0][4] ;
wire \SUMB[2][2] ;
wire \SUMB[1][3] ;
wire \CARRYB[2][2] ;
wire net11211 ;
wire \ab[3][3] ;
wire \ab[3][2] ;
wire \ab[2][3] ;
wire \SUMB[3][3] ;
wire \SUMB[3][2] ;
wire \SUMB[2][3] ;
wire \SUMB[1][4] ;
wire \CARRYB[3][2] ;
wire \CARRYB[2][3] ;
wire net11130 ;
wire \ab[1][2] ;
wire \ab[0][3] ;
wire n3 ;
wire n4 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire net3022 ;
wire n7 ;
wire \SUMB[4][3] ;
wire \CARRYB[4][3] ;
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
wire \ab[1][5] ;
wire \ab[0][6] ;
wire \SUMB[1][5] ;
wire \SUMB[6][2] ;
wire \SUMB[5][3] ;
wire \SUMB[4][4] ;
wire \CARRYB[6][2] ;
wire \CARRYB[5][3] ;
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
NOR2X0 U10 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U11 ( .IN1 ( \ab[0][4] ) , .IN2 ( \ab[1][3] ) , .Q ( net11211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U12 ( .IN1 ( \ab[1][3] ) , .IN2 ( \ab[0][4] ) , .Q ( \SUMB[1][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U13 ( .IN1 ( PLACE_HFSNET_239 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U14 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( \ab[1][0] ) , .IN2 ( \ab[0][1] ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_322_263 ( .INP ( PLACE_HFSNET_182 ) , 
    .Z ( PLACE_HFSNET_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U18 ( .IN1 ( \CARRYB[7][6] ) , .IN2 ( \ab[7][7] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U24 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .QN ( \ab[7][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_436_295 ( .INP ( PLACE_HFSNET_211 ) , 
    .Z ( PLACE_HFSNET_210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U30 ( .IN1 ( \ab[1][2] ) , .IN2 ( \ab[0][3] ) , .Q ( net11130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U31 ( .IN1 ( PLACE_HFSNET_215 ) , .IN2 ( \B[3] ) , .QN ( \ab[0][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( PLACE_HFSNET_246 ) , .IN2 ( \B[3] ) , .QN ( \ab[1][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_41_300 ( .INP ( PLACE_HFSNET_216 ) , 
    .Z ( PLACE_HFSNET_215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_47_327 ( .INP ( PLACE_HFSNET_242 ) , 
    .Z ( PLACE_HFSNET_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_125_333 ( .INP ( PLACE_HFSNET_247 ) , 
    .Z ( PLACE_HFSNET_246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U49 ( .IN1 ( \B[3] ) , .IN2 ( PLACE_HFSNET_229 ) , .QN ( \ab[2][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U50 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U51 ( .IN1 ( PLACE_HFSNET_239 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U52 ( .IN1 ( \B[3] ) , .IN2 ( PLACE_HFSNET_222 ) , .QN ( \ab[3][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U54 ( .IN1 ( \ab[0][5] ) , .IN2 ( \ab[1][4] ) , .Q ( \SUMB[1][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_277_308 ( .INP ( PLACE_HFSNET_224 ) , 
    .Z ( PLACE_HFSNET_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U61 ( .IN1 ( PLACE_HFSNET_239 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U62 ( .IN1 ( PLACE_HFSNET_239 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U66 ( .IN1 ( \SUMB[7][1] ) , .IN2 ( \CARRYB[7][0] ) , .Q ( net10887 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U72 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_224 ) , 
    .QN ( \ab[3][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U80 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U82 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U83 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_241 ) , 
    .QN ( \ab[7][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U87 ( .IN1 ( \ab[0][2] ) , .IN2 ( \ab[1][1] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_205_304 ( .INP ( PLACE_HFSNET_219 ) , 
    .Z ( PLACE_HFSNET_218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U90 ( .IN1 ( PLACE_HFSNET_215 ) , .IN2 ( PLACE_HFSNET_239 ) , 
    .QN ( \ab[0][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U93 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( PRODUCT[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_333_266 ( .INP ( PLACE_HFSNET_185 ) , 
    .Z ( PLACE_HFSNET_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_390_275 ( .INP ( PLACE_HFSNET_192 ) , 
    .Z ( PLACE_HFSNET_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_430_283 ( .INP ( PLACE_HFSNET_199 ) , 
    .Z ( PLACE_HFSNET_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_41_287 ( .INP ( PLACE_HFSNET_203 ) , 
    .Z ( PLACE_HFSNET_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_47_292 ( .INP ( PLACE_HFSNET_208 ) , 
    .Z ( PLACE_HFSNET_207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_79_315 ( .INP ( PLACE_HFSNET_230 ) , 
    .Z ( PLACE_HFSNET_229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U103 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_246 ) , 
    .QN ( \ab[1][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U104 ( .IN1 ( \CARRYB[7][3] ) , .IN2 ( \SUMB[7][4] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U105 ( .IN1 ( \CARRYB[7][4] ) , .IN2 ( \SUMB[7][5] ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U106 ( .IN1 ( \CARRYB[7][5] ) , .IN2 ( \SUMB[7][6] ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NOR2X0 U122 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_210 ) , 
    .QN ( \ab[7][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U123 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_202 ) , 
    .QN ( \ab[7][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U124 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( \B[3] ) , .QN ( \ab[7][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U125 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_239 ) , 
    .QN ( \ab[7][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U126 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_218 ) , 
    .QN ( \ab[7][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U128 ( .IN1 ( PLACE_HFSNET_191 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .QN ( \ab[6][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U129 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U131 ( .IN1 ( \B[3] ) , .IN2 ( PLACE_HFSNET_191 ) , .QN ( \ab[6][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U132 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U133 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U135 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U136 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U138 ( .IN1 ( \B[3] ) , .IN2 ( PLACE_HFSNET_194 ) , .QN ( \ab[5][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U139 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U141 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U142 ( .IN1 ( \B[3] ) , .IN2 ( PLACE_HFSNET_184 ) , .QN ( \ab[4][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U143 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U9 ( .IN1 ( \ab[1][4] ) , .IN2 ( \ab[0][5] ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_2 ( .A ( \ab[5][2] ) , .B ( \CARRYB[4][2] ) , 
    .CI ( \SUMB[4][3] ) , .CO ( \CARRYB[5][2] ) , .S ( \SUMB[5][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U71 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_207 ) , 
    .QN ( \ab[7][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U70 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_3 ( .A ( \CARRYB[2][3] ) , .B ( \ab[3][3] ) , 
    .CI ( \SUMB[2][4] ) , .CO ( \CARRYB[3][3] ) , .S ( \SUMB[3][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U137 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U58 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U57 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_224 ) , 
    .QN ( \ab[3][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U55 ( .IN1 ( PLACE_HFSNET_239 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U73 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U67 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U68 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_5 ( .A ( n8 ) , .B ( \ab[2][5] ) , .CI ( \SUMB[1][6] ) , 
    .CO ( \CARRYB[2][5] ) , .S ( \SUMB[2][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_4_3 ( .A ( \CARRYB[3][3] ) , .B ( \ab[4][3] ) , 
    .CI ( \SUMB[3][4] ) , .CO ( \CARRYB[4][3] ) , .S ( \SUMB[4][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_3_4 ( .A ( \CARRYB[2][4] ) , .B ( \ab[3][4] ) , 
    .CI ( \SUMB[2][5] ) , .CO ( \CARRYB[3][4] ) , .S ( \SUMB[3][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( PLACE_HFSNET_237 ) , 
    .Q ( \ab[1][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U63 ( .IN1 ( PLACE_HFSNET_246 ) , .IN2 ( PLACE_HFSNET_207 ) , 
    .QN ( \ab[1][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U149 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( PLACE_HFSNET_246 ) , .IN2 ( PLACE_HFSNET_202 ) , 
    .QN ( \ab[1][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U65 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U28 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U78 ( .IN1 ( \ab[1][5] ) , .IN2 ( \ab[0][6] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_4 ( .A ( n7 ) , .B ( \ab[2][4] ) , .CI ( \SUMB[1][5] ) , 
    .CO ( \CARRYB[2][4] ) , .S ( \SUMB[2][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U147 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_246 ) , 
    .QN ( \ab[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_3 ( .A ( \CARRYB[4][3] ) , .B ( \ab[5][3] ) , 
    .CI ( \SUMB[4][4] ) , .CO ( \CARRYB[5][3] ) , .S ( \SUMB[5][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_1 ( .A ( \CARRYB[6][1] ) , .B ( \ab[7][1] ) , .CI ( \SUMB[6][2] ) , 
    .CO ( \CARRYB[7][1] ) , .S ( \SUMB[7][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U127 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U25 ( .IN1 ( PLACE_HFSNET_246 ) , .IN2 ( PLACE_HFSNET_210 ) , 
    .QN ( \ab[1][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U146 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_246 ) , 
    .QN ( \ab[1][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U148 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U144 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U145 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
AND2X1 U3 ( .IN1 ( \SUMB[7][2] ) , .IN2 ( \CARRYB[7][1] ) , .Q ( net3022 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U4 ( .IN1 ( \CARRYB[7][0] ) , .IN2 ( \SUMB[7][1] ) , .Q ( \A1[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U7 ( .IN1 ( \ab[0][7] ) , .IN2 ( \ab[1][6] ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U8 ( .IN1 ( \ab[0][2] ) , .IN2 ( \ab[1][1] ) , .Q ( \SUMB[1][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( \ab[0][6] ) , .IN2 ( \ab[1][5] ) , .Q ( \SUMB[1][5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( \ab[0][7] ) , .IN2 ( \ab[1][6] ) , .Q ( \SUMB[1][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U69 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( \ab[6][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW01_add_1 FS_1 (
    .A ( { VSS , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] } ) ,
    .B ( { n4 , n12 , n11 , n10 , n17 , net3022 , net10887 , VSS , VSS , VSS , 
        VSS , VSS , VSS , VSS } ) ,
    .CI ( VSS ) , .SUM ( PRODUCT[15:2] ) , .CO ( SYNOPSYS_UNCONNECTED_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_6_2 ( .A ( \CARRYB[5][2] ) , .B ( \ab[6][2] ) , 
    .CI ( \SUMB[5][3] ) , .CO ( \CARRYB[6][2] ) , .S ( \SUMB[6][2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_2 ( .A ( net11130 ) , .B ( \ab[2][2] ) , .CI ( \SUMB[1][3] ) , 
    .CO ( \CARRYB[2][2] ) , .S ( \SUMB[2][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_1 ( .A ( \SUMB[4][2] ) , .B ( \ab[5][1] ) , 
    .CI ( \CARRYB[4][1] ) , .CO ( \CARRYB[5][1] ) , .S ( \SUMB[5][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U5 ( .IN1 ( \CARRYB[7][2] ) , .IN2 ( \SUMB[7][3] ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
wire [7:2] carry ;
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


module ALU_DW01_sub_0 ( \A[8] , PLACE_HFSNET_190 , PLACE_HFSNET_216 , \A[5] , 
    \A[4] , \A[3] , \A[2] , \A[0] , B , CI , DIFF , CO , VDD , VSS , 
    PLACE_HFSNET_180 , PLACE_HFSNET_244 ) ;
input  \A[8] ;
input  PLACE_HFSNET_190 ;
input  PLACE_HFSNET_216 ;
input  \A[5] ;
input  \A[4] ;
input  \A[3] ;
input  \A[2] ;
input  \A[0] ;
input  [8:0] B ;
input  CI ;
output [8:0] DIFF ;
output CO ;
input  VDD ;
input  VSS ;
input  PLACE_HFSNET_180 ;
input  PLACE_HFSNET_244 ;

wire [8:1] carry ;
supply1 VDD ;
supply0 VSS ;

FADDX1 U2_7 ( .A ( PLACE_HFSNET_180 ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( carry[8] ) , .S ( DIFF[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_6 ( .A ( PLACE_HFSNET_190 ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( DIFF[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_5 ( .A ( \A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( DIFF[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_4 ( .A ( \A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( DIFF[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_3 ( .A ( \A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( DIFF[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_2 ( .A ( \A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( DIFF[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U2_1 ( .A ( PLACE_HFSNET_244 ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( DIFF[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U1 ( .IN1 ( B[0] ) , .IN2 ( \A[0] ) , .Q ( carry[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U2 ( .IN1 ( PLACE_HFSNET_216 ) , .IN2 ( \A[0] ) , .Q ( DIFF[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( carry[8] ) , .ZN ( DIFF[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module ALU_DW_div_uns_0 ( a , \b[3] , \b[2] , \b[1] , PLACE_HFSNET_220 , 
    quotient , remainder , divide_by_0 , VDD , VSS , PLACE_HFSNET_217 , 
    PLACE_HFSNET_226 , PLACE_HFSNET_244 ) ;
input  [3:0] a ;
input  \b[3] ;
input  \b[2] ;
input  \b[1] ;
input  PLACE_HFSNET_220 ;
output [3:0] quotient ;
output [3:0] remainder ;
output divide_by_0 ;
input  VDD ;
input  VSS ;
input  PLACE_HFSNET_217 ;
input  PLACE_HFSNET_226 ;
input  PLACE_HFSNET_244 ;

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
wire n5 ;
wire n6 ;
wire n8 ;
wire n12 ;
wire n14 ;
wire n15 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
supply1 VDD ;
supply0 VSS ;

FADDX1 \u_div/u_fa_PartRem_0_1_2 ( .A ( \u_div/PartRem[2][2] ) , 
    .B ( \b[2] ) , .CI ( \u_div/CryTmp[1][2] ) , .CO ( \u_div/CryTmp[1][3] ) , 
    .S ( \u_div/SumTmp[1][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U4 ( .A ( \u_div/CryTmp[1][1] ) , .B ( \b[1] ) , 
    .CI ( \u_div/PartRem[2][1] ) , .CO ( \u_div/CryTmp[1][2] ) , 
    .S ( \u_div/SumTmp[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U6 ( .IN1 ( n6 ) , .IN2 ( \u_div/SumTmp[1][1] ) , .S ( quotient[1] ) , 
    .Q ( \u_div/PartRem[1][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U7 ( .IN1 ( \b[2] ) , .IN2 ( \b[3] ) , .Q ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U8 ( .IN1 ( \u_div/PartRem[1][2] ) , .IN2 ( \u_div/CryTmp[0][2] ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U9 ( .IN1 ( \u_div/CryTmp[0][2] ) , .IN2 ( \b[2] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U10 ( .IN1 ( \b[2] ) , .IN2 ( \u_div/PartRem[1][2] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U11 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , 
    .QN ( \u_div/CryTmp[0][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( \u_div/SumTmp[1][0] ) , .IN2 ( PLACE_HFSNET_244 ) , 
    .S ( n5 ) , .Q ( \u_div/PartRem[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U17 ( .IN1 ( \u_div/PartRem[3][1] ) , .IN2 ( \u_div/SumTmp[2][1] ) , 
    .S ( quotient[2] ) , .Q ( \u_div/PartRem[2][2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U18 ( .IN1 ( PLACE_HFSNET_226 ) , .IN2 ( n8 ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U19 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( a[1] ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( \u_div/CryTmp[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U22 ( .A ( \u_div/CryTmp[2][1] ) , .B ( \b[1] ) , 
    .CI ( \u_div/PartRem[3][1] ) , .CO ( \u_div/CryTmp[2][2] ) , 
    .S ( \u_div/SumTmp[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U23 ( .IN1 ( \u_div/CryTmp[2][2] ) , .IN2 ( n12 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n8 ) , .ZN ( quotient[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U31 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( \u_div/PartRem[2][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U36 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( a[0] ) , 
    .QN ( \u_div/CryTmp[0][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U39 ( .IN1 ( a[3] ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( \u_div/CryTmp[3][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( PLACE_HFSNET_220 ) , .IN2 ( \u_div/SumTmp[3][0] ) , 
    .S ( quotient[3] ) , .Q ( \u_div/PartRem[3][1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U13 ( .IN1 ( \u_div/PartRem[2][2] ) , .IN2 ( \u_div/SumTmp[1][2] ) , 
    .S ( quotient[1] ) , .Q ( \u_div/PartRem[1][3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U1 ( .IN1 ( \u_div/PartRem[1][3] ) , .IN2 ( \u_div/CryTmp[0][3] ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U2 ( .IN1 ( \u_div/CryTmp[0][3] ) , .IN2 ( \b[3] ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U3 ( .IN1 ( \b[3] ) , .IN2 ( \u_div/PartRem[1][3] ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U5 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( n26 ) , 
    .QN ( quotient[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U21 ( .IN1 ( \u_div/CryTmp[0][1] ) , .IN2 ( \u_div/PartRem[1][1] ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U24 ( .IN1 ( \b[1] ) , .IN2 ( \u_div/PartRem[1][1] ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( \b[1] ) , .IN2 ( \u_div/CryTmp[0][1] ) , .QN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U26 ( .IN1 ( n28 ) , .IN2 ( n27 ) , .IN3 ( n29 ) , 
    .QN ( \u_div/CryTmp[0][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U37 ( .IN1 ( \b[1] ) , .IN2 ( \b[2] ) , .IN3 ( \b[3] ) , .Q ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( \u_div/CryTmp[3][1] ) , .IN2 ( n30 ) , 
    .Q ( quotient[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U42 ( .IN1 ( \u_div/CryTmp[1][3] ) , .IN2 ( \b[3] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U43 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_244 ) , 
    .Q ( \u_div/SumTmp[1][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U44 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_226 ) , 
    .Q ( \u_div/SumTmp[2][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U45 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_220 ) , 
    .Q ( \u_div/SumTmp[3][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U47 ( .IN1 ( \u_div/SumTmp[2][0] ) , .IN2 ( \u_div/CryTmp[2][2] ) , 
    .IN3 ( \b[2] ) , .IN4 ( \b[3] ) , .QN ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U48 ( .IN1 ( a[2] ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( \u_div/CryTmp[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U50 ( .IN1 ( \u_div/CryTmp[1][3] ) , .IN2 ( \b[3] ) , 
    .Q ( quotient[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ALU ( CLK , RST , PLACE_HFSNET_186 , PLACE_HFSNET_196 , 
    PLACE_HFSNET_200 , PLACE_HFSNET_192 , PLACE_HFSNET_230 , 
    PLACE_HFSNET_235 , dftopt2 , PLACE_HFSNET_219 , PLACE_HFSNET_216 , 
    PLACE_HFSNET_204 , PLACE_HFSNET_208 , PLACE_HFSNET_212 , 
    PLACE_HFSNET_239 , PLACE_HFSNET_243 , PLACE_HFSNET_248 , 
    PLACE_HFSNET_225 , ALU_FUN , Enable , ALU_OUT , OUT_VALID , test_si , 
    PLACE_HFSNET_182 , VDD , VSS , dftopt0 , dftopt16 , dftopt1 , 
    PLACE_HFSNET_28 , PLACE_HFSNET_105 , PLACE_HFSNET_118 , PLACE_HFSNET_120 , 
    dftopt45 , dftopt3 ) ;
input  CLK ;
input  RST ;
input  PLACE_HFSNET_186 ;
input  PLACE_HFSNET_196 ;
input  PLACE_HFSNET_200 ;
input  PLACE_HFSNET_192 ;
input  PLACE_HFSNET_230 ;
input  PLACE_HFSNET_235 ;
input  dftopt2 ;
input  PLACE_HFSNET_219 ;
input  PLACE_HFSNET_216 ;
input  PLACE_HFSNET_204 ;
input  PLACE_HFSNET_208 ;
input  PLACE_HFSNET_212 ;
input  PLACE_HFSNET_239 ;
input  PLACE_HFSNET_243 ;
input  PLACE_HFSNET_248 ;
input  PLACE_HFSNET_225 ;
input  [3:0] ALU_FUN ;
input  Enable ;
output [15:0] ALU_OUT ;
output OUT_VALID ;
input  test_si ;
input  PLACE_HFSNET_182 ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt16 ;
input  dftopt1 ;
input  PLACE_HFSNET_28 ;
input  PLACE_HFSNET_105 ;
input  PLACE_HFSNET_118 ;
input  PLACE_HFSNET_120 ;
input  dftopt45 ;
input  dftopt3 ;

wire PLACE_HFSNET_193 ;
wire PLACE_HFSNET_217 ;
wire PLACE_HFSNET_244 ;
wire PLACE_HFSNET_220 ;
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
wire PLACE_HFSNET_137 ;
wire PLACE_HFSNET_206 ;
wire n24 ;
wire n25 ;
wire PLACE_HFSNET_237 ;
wire PLACE_HFSNET_238 ;
wire PLACE_HFSNET_202 ;
wire n58 ;
wire n112 ;
wire PLACE_HFSNET_222 ;
wire PLACE_HFSNET_198 ;
wire PLACE_HFSNET_194 ;
wire PLACE_HFSNET_184 ;
wire PLACE_HFSNET_210 ;
wire PLACE_HFSNET_246 ;
wire PLACE_HFSNET_214 ;
wire PLACE_HFSNET_227 ;
wire PLACE_HFSNET_228 ;
wire n131 ;
wire n134 ;
wire n135 ;
wire n147 ;
wire n148 ;
wire PLACE_HFSNET_218 ;
wire PLACE_HFSNET_148 ;
wire n154 ;
wire n155 ;
wire PLACE_HFSNET_232 ;
wire PLACE_HFSNET_233 ;
wire PLACE_HFSNET_234 ;
wire PLACE_HFSNET_241 ;
wire PLACE_HFSNET_242 ;
wire PLACE_HFSNET_152 ;
wire PLACE_HFSNET_195 ;
wire PLACE_HFSNET_191 ;
wire PLACE_HFSNET_181 ;
wire PLACE_HFSNET_147 ;
wire PLACE_HFSNET_149 ;
wire PLACE_HFSNET_155 ;
wire PLACE_HFSNET_29 ;
wire PLACE_HFSNET_30 ;
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
wire n209 ;
wire n212 ;
wire n213 ;
wire n215 ;
wire n216 ;
wire n230 ;
wire net3035 ;
wire net9563 ;
wire net9545 ;
wire net9544 ;
wire n234 ;
wire n235 ;
wire n239 ;
wire n240 ;
wire n241 ;
wire n242 ;
wire n5 ;
wire PLACE_HFSNET_119 ;
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

AO221X1 U57 ( .IN1 ( PLACE_HFSNET_155 ) , .IN2 ( PLACE_HFSNET_182 ) , 
    .IN3 ( n43 ) , .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( n46 ) , .Q ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U60 ( .IN1 ( n154 ) , .IN2 ( PLACE_HFSNET_182 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( PLACE_HFSNET_155 ) , .Q ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U63 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( n56 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1 U68 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( n36 ) , 
    .IN3 ( PLACE_HFSNET_195 ) , .IN4 ( n43 ) , .IN5 ( N110 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U69 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( n64 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_191 ) , .IN5 ( n62 ) , .Q ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U71 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( n58 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_193 ) , .IN5 ( n43 ) , .Q ( n64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U72 ( .IN1 ( n155 ) , .IN2 ( PLACE_HFSNET_193 ) , 
    .IN3 ( PLACE_HFSNET_195 ) , .IN4 ( n50 ) , .IN5 ( PLACE_HFSNET_155 ) , 
    .Q ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U74 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_155 ) , .IN4 ( PLACE_HFSNET_186 ) , .IN5 ( N109 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U75 ( .IN1 ( PLACE_HFSNET_220 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_195 ) , .IN5 ( n68 ) , .Q ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U78 ( .IN1 ( n154 ) , .IN2 ( PLACE_HFSNET_186 ) , 
    .IN3 ( PLACE_HFSNET_184 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_155 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U80 ( .IN1 ( PLACE_HFSNET_220 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_184 ) , .IN4 ( n55 ) , .IN5 ( N108 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U83 ( .IN1 ( PLACE_HFSNET_222 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( PLACE_HFSNET_225 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U84 ( .IN1 ( n155 ) , .IN2 ( PLACE_HFSNET_225 ) , 
    .IN3 ( PLACE_HFSNET_222 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U86 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( n36 ) , 
    .IN3 ( PLACE_HFSNET_220 ) , .IN4 ( n55 ) , .IN5 ( N107 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U87 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( PLACE_HFSNET_230 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( PLACE_HFSNET_149 ) , 
    .IN5 ( PLACE_HFSNET_237 ) , .IN6 ( n85 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U89 ( .IN1 ( PLACE_HFSNET_227 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( PLACE_HFSNET_230 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U90 ( .IN1 ( n154 ) , .IN2 ( PLACE_HFSNET_230 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U92 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( n55 ) , .IN5 ( N97 ) , .IN6 ( n45 ) , 
    .Q ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U93 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( PLACE_HFSNET_248 ) , 
    .IN3 ( PLACE_HFSNET_214 ) , .IN4 ( n36 ) , .IN5 ( PLACE_HFSNET_241 ) , 
    .IN6 ( n94 ) , .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U96 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( PLACE_HFSNET_248 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U97 ( .IN1 ( n154 ) , .IN2 ( PLACE_HFSNET_248 ) , 
    .IN3 ( PLACE_HFSNET_244 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U99 ( .IN1 ( N119 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U113 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( n55 ) , 
    .IN3 ( PLACE_HFSNET_152 ) , .IN4 ( PLACE_HFSNET_216 ) , .IN5 ( n105 ) , 
    .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( N150 ) , .IN2 ( n92 ) , .IN3 ( N149 ) , .IN4 ( n109 ) , 
    .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U116 ( .IN1 ( PLACE_HFSNET_214 ) , .IN2 ( n58 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( PLACE_HFSNET_216 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U119 ( .IN1 ( n155 ) , .IN2 ( PLACE_HFSNET_216 ) , 
    .IN3 ( PLACE_HFSNET_214 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U123 ( .IN1 ( n91 ) , .IN2 ( n109 ) , .Q ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .QN ( n68 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U15 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( n58 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( PLACE_HFSNET_186 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( n11 ) , .IN2 ( n12 ) , .IN3 ( n13 ) , .QN ( n197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_112_222 ( .INP ( n50 ) , .Z ( PLACE_HFSNET_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_249_223 ( .INP ( n147 ) , .ZN ( PLACE_HFSNET_148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_115_224 ( .INP ( n43 ) , .Z ( PLACE_HFSNET_149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_497_298 ( .INP ( PLACE_HFSNET_216 ) , 
    .ZN ( PLACE_HFSNET_214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_203_262 ( .INP ( PLACE_HFSNET_182 ) , 
    .ZN ( PLACE_HFSNET_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U70 ( .IN1 ( n193 ) , .IN2 ( PLACE_HFSNET_246 ) , .Q ( n192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U73 ( .IN1 ( PLACE_HFSNET_212 ) , .IN2 ( PLACE_HFSNET_181 ) , 
    .Q ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U82 ( .IN1 ( N123 ) , .IN2 ( n76 ) , .IN3 ( n84 ) , 
    .IN4 ( PLACE_HFSNET_238 ) , .IN5 ( n212 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U100 ( .IN1 ( n47 ) , .IN2 ( PLACE_HFSNET_212 ) , 
    .IN3 ( PLACE_HFSNET_191 ) , .IN4 ( n36 ) , .IN5 ( n212 ) , .Q ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U101 ( .IN1 ( N117 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U102 ( .IN1 ( N118 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U109 ( .IN1 ( N115 ) , .IN2 ( n33 ) , .IN3 ( net3035 ) , 
    .Q ( ALU_OUT_Comb[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_674_294 ( .INP ( PLACE_HFSNET_212 ) , 
    .ZN ( PLACE_HFSNET_210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U125 ( .IN1 ( n110 ) , .IN2 ( n111 ) , .Q ( n148 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U126 ( .IN1 ( n209 ) , .IN2 ( n200 ) , .IN3 ( n201 ) , .Q ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_460_312 ( .INP ( PLACE_HFSNET_228 ) , 
    .Z ( PLACE_HFSNET_227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_884_313 ( .INP ( PLACE_HFSNET_230 ) , 
    .ZN ( PLACE_HFSNET_228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U149 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( n215 ) , .Q ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U172 ( .IN1 ( n134 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .IN3 ( PLACE_HFSNET_200 ) , .IN4 ( n135 ) , .IN5 ( n97 ) , .QN ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U173 ( .IN1 ( n155 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .IN3 ( PLACE_HFSNET_191 ) , .IN4 ( n50 ) , .IN5 ( PLACE_HFSNET_155 ) , 
    .QN ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U174 ( .IN1 ( PLACE_HFSNET_191 ) , .IN2 ( n58 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_192 ) , .IN5 ( n43 ) , .QN ( n135 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2763_70 ( .INP ( RST ) , .Z ( PLACE_HFSNET_29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2533_71 ( .INP ( RST ) , .Z ( PLACE_HFSNET_30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1600_182 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U234 ( .IN1 ( PLACE_HFSNET_238 ) , .IN2 ( PLACE_HFSNET_227 ) , 
    .Q ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U240 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( n193 ) , .IN3 ( n192 ) , 
    .IN4 ( PLACE_HFSNET_242 ) , .IN5 ( n201 ) , .Q ( n194 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U241 ( .IN1 ( PLACE_HFSNET_227 ) , .IN2 ( PLACE_HFSNET_238 ) , 
    .IN3 ( PLACE_HFSNET_222 ) , .IN4 ( PLACE_HFSNET_233 ) , .IN5 ( n194 ) , 
    .Q ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U242 ( .IN1 ( n197 ) , .IN2 ( n198 ) , .IN3 ( PLACE_HFSNET_191 ) , 
    .IN4 ( PLACE_HFSNET_200 ) , .Q ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U243 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_212 ) , 
    .IN3 ( n199 ) , .IN4 ( n200 ) , .Q ( N150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA22X1 U244 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( n204 ) , .IN3 ( n204 ) , 
    .IN4 ( PLACE_HFSNET_248 ) , .Q ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U170 ( .IN1 ( n3 ) , .IN2 ( n230 ) , .Q ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U203 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( ALU_FUN[1] ) , .IN3 ( n103 ) , 
    .QN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[8] ( .D ( ALU_OUT_Comb[8] ) , .SI ( ALU_OUT[11] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[8] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[7] ( .D ( ALU_OUT_Comb[7] ) , .SI ( ALU_OUT[9] ) , 
    .SE ( PLACE_HFSNET_118 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[6] ( .D ( ALU_OUT_Comb[6] ) , .SI ( ALU_OUT[15] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[5] ( .D ( ALU_OUT_Comb[5] ) , .SI ( ALU_OUT[4] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[5] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[4] ( .D ( ALU_OUT_Comb[4] ) , .SI ( ALU_OUT[8] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[4] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[2] ( .D ( ALU_OUT_Comb[2] ) , .SI ( OUT_VALID ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 OUT_VALID_reg ( .D ( Enable ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( OUT_VALID ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[14] ( .D ( ALU_OUT_Comb[14] ) , .SI ( ALU_OUT[5] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[14] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[10] ( .D ( ALU_OUT_Comb[10] ) , .SI ( ALU_OUT[12] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[10] ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[9] ( .D ( ALU_OUT_Comb[9] ) , .SI ( ALU_OUT[13] ) , 
    .SE ( PLACE_HFSNET_118 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[9] ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[13] ( .D ( ALU_OUT_Comb[13] ) , .SI ( dftopt45 ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[13] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[12] ( .D ( ALU_OUT_Comb[12] ) , .SI ( ALU_OUT[14] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[12] ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[11] ( .D ( ALU_OUT_Comb[11] ) , .SI ( ALU_OUT[6] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[11] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[3] ( .D ( ALU_OUT_Comb[3] ) , .SI ( ALU_OUT[1] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[3] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[1] ( .D ( ALU_OUT_Comb[1] ) , .SI ( ALU_OUT[2] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[1] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[15] ( .D ( ALU_OUT_Comb[15] ) , .SI ( ALU_OUT[3] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( ALU_OUT[15] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1 U54 ( .IN1 ( N95 ) , .IN2 ( n39 ) , .IN3 ( n40 ) , .Q ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[0] ( .D ( ALU_OUT_Comb[0] ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[0] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1 U8 ( .IN1 ( n106 ) , .IN2 ( PLACE_HFSNET_219 ) , .IN3 ( n212 ) , 
    .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U22 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( n107 ) , .Q ( n230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U23 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( PLACE_HFSNET_225 ) , 
    .IN3 ( PLACE_HFSNET_232 ) , .IN4 ( n78 ) , .IN5 ( n212 ) , .Q ( n72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U28 ( .IN1 ( N100 ) , .IN2 ( n45 ) , .IN3 ( N91 ) , .IN4 ( n39 ) , 
    .IN5 ( n67 ) , .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U30 ( .IN1 ( N92 ) , .IN2 ( n39 ) , .IN3 ( N101 ) , .IN4 ( n45 ) , 
    .IN5 ( n61 ) , .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U38 ( .IN1 ( n63 ) , .IN2 ( PLACE_HFSNET_204 ) , 
    .IN3 ( PLACE_HFSNET_155 ) , .IN4 ( PLACE_HFSNET_193 ) , .IN5 ( n212 ) , 
    .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U43 ( .IN1 ( N102 ) , .IN2 ( n45 ) , .IN3 ( N93 ) , .IN4 ( n39 ) , 
    .IN5 ( n54 ) , .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_216 ) , 
    .Q ( n204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI22X1 U46 ( .IN1 ( PLACE_HFSNET_214 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( N105 ) , .IN4 ( PLACE_HFSNET_148 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U62 ( .IN1 ( n104 ) , .IN2 ( n109 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1 U104 ( .IN1 ( n77 ) , .IN2 ( PLACE_HFSNET_233 ) , .IN3 ( N124 ) , 
    .IN4 ( n76 ) , .IN5 ( n36 ) , .IN6 ( PLACE_HFSNET_227 ) , .Q ( n73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U111 ( .IN1 ( PLACE_HFSNET_148 ) , .IN2 ( N111 ) , .IN3 ( n234 ) , 
    .QN ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U122 ( .IN1 ( n43 ) , .IN2 ( PLACE_HFSNET_191 ) , .Q ( n234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_765_302 ( .INP ( PLACE_HFSNET_218 ) , 
    .Z ( PLACE_HFSNET_217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U147 ( .IN1 ( N96 ) , .IN2 ( n45 ) , .IN3 ( N87 ) , .IN4 ( n39 ) , 
    .IN5 ( n100 ) , .Q ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U183 ( .IN1 ( n103 ) , .IN2 ( n101 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_485_330 ( .INP ( PLACE_HFSNET_246 ) , 
    .Z ( PLACE_HFSNET_244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U47 ( .IN1 ( n72 ) , .IN2 ( n73 ) , .IN3 ( n74 ) , .IN4 ( n75 ) , 
    .QN ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U105 ( .IN1 ( n191 ) , .IN2 ( n202 ) , .QN ( n196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_709_282 ( .INP ( PLACE_HFSNET_200 ) , 
    .ZN ( PLACE_HFSNET_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_943_303 ( .INP ( PLACE_HFSNET_219 ) , 
    .ZN ( PLACE_HFSNET_218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( PLACE_HFSNET_155 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U121 ( .IN1 ( n239 ) , .IN2 ( n240 ) , .QN ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_712_305 ( .INP ( PLACE_HFSNET_222 ) , 
    .Z ( PLACE_HFSNET_220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U146 ( .IN1 ( n242 ) , .IN2 ( n20 ) , .QN ( n241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1374_307 ( .INP ( PLACE_HFSNET_225 ) , 
    .ZN ( PLACE_HFSNET_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_702_290 ( .INP ( PLACE_HFSNET_208 ) , 
    .ZN ( PLACE_HFSNET_206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U156 ( .INP ( n148 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_646_286 ( .INP ( PLACE_HFSNET_204 ) , 
    .ZN ( PLACE_HFSNET_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U169 ( .INP ( n148 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U176 ( .INP ( n17 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_783_317 ( .INP ( PLACE_HFSNET_235 ) , 
    .ZN ( PLACE_HFSNET_232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_378_318 ( .INP ( PLACE_HFSNET_235 ) , 
    .Z ( PLACE_HFSNET_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_54_319 ( .INP ( PLACE_HFSNET_235 ) , 
    .Z ( PLACE_HFSNET_234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U184 ( .IN1 ( n69 ) , .IN2 ( PLACE_HFSNET_208 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U185 ( .IN1 ( PLACE_HFSNET_206 ) , .IN2 ( n70 ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_609_276 ( .INP ( PLACE_HFSNET_194 ) , 
    .Z ( PLACE_HFSNET_193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_241_274 ( .INP ( PLACE_HFSNET_192 ) , 
    .ZN ( PLACE_HFSNET_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_259_265 ( .INP ( PLACE_HFSNET_186 ) , 
    .ZN ( PLACE_HFSNET_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U201 ( .IN1 ( n196 ) , .IN2 ( n195 ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U204 ( .IN1 ( PLACE_HFSNET_208 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( n202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U205 ( .IN1 ( PLACE_HFSNET_200 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( n206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U209 ( .INP ( n191 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U210 ( .IN1 ( n24 ) , .IN2 ( n5 ) , .IN3 ( n110 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U216 ( .INP ( ALU_FUN[3] ) , .ZN ( n216 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U217 ( .INP ( n24 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_860_322 ( .INP ( PLACE_HFSNET_239 ) , 
    .ZN ( PLACE_HFSNET_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_505_323 ( .INP ( PLACE_HFSNET_239 ) , 
    .Z ( PLACE_HFSNET_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_784_326 ( .INP ( PLACE_HFSNET_243 ) , 
    .ZN ( PLACE_HFSNET_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U221 ( .INP ( n17 ) , .ZN ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_485_328 ( .INP ( PLACE_HFSNET_243 ) , 
    .Z ( PLACE_HFSNET_242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_1758_332 ( .INP ( PLACE_HFSNET_248 ) , 
    .ZN ( PLACE_HFSNET_246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U232 ( .IN1 ( n71 ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .QN ( ALU_OUT_Comb[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U237 ( .IN1 ( n52 ) , .IN2 ( n53 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U239 ( .IN1 ( n35 ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .QN ( ALU_OUT_Comb[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW_div_uns_0 div_43 (
    .a ( { PLACE_HFSNET_225 , PLACE_HFSNET_230 , PLACE_HFSNET_248 , 
        PLACE_HFSNET_216 } ) ,
    .\b[3] ( PLACE_HFSNET_233 ) , .\b[2] ( PLACE_HFSNET_238 ) , 
    .\b[1] ( PLACE_HFSNET_242 ) , .PLACE_HFSNET_220 ( PLACE_HFSNET_222 ) ,
    .quotient ( { N124 , N123 , N122 , N121 } ) ,
    .remainder ( { SYNOPSYS_UNCONNECTED_18 , SYNOPSYS_UNCONNECTED_19 , 
        SYNOPSYS_UNCONNECTED_20 , SYNOPSYS_UNCONNECTED_21 } ) ,
    .divide_by_0 ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .PLACE_HFSNET_217 ( PLACE_HFSNET_218 ) , 
    .PLACE_HFSNET_226 ( PLACE_HFSNET_227 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_246 ) ) ;
ALU_DW01_sub_0 sub_41 ( .\A[8] ( VSS ) , 
    .PLACE_HFSNET_190 ( PLACE_HFSNET_191 ) , 
    .PLACE_HFSNET_216 ( PLACE_HFSNET_217 ) , .\A[5] ( PLACE_HFSNET_196 ) , 
    .\A[4] ( PLACE_HFSNET_184 ) , .\A[3] ( PLACE_HFSNET_220 ) , 
    .\A[2] ( PLACE_HFSNET_228 ) , .\A[0] ( PLACE_HFSNET_214 ) ,
    .B ( { VSS , PLACE_HFSNET_212 , PLACE_HFSNET_200 , PLACE_HFSNET_204 , 
        PLACE_HFSNET_208 , PLACE_HFSNET_234 , PLACE_HFSNET_238 , 
        PLACE_HFSNET_242 , PLACE_HFSNET_219 } ) ,
    .CI ( VSS ) ,
    .DIFF ( { N104 , N103 , N102 , N101 , N100 , N99 , N98 , N97 , N96 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .PLACE_HFSNET_180 ( PLACE_HFSNET_181 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_244 ) ) ;
ALU_DW01_add_0 add_40 (
    .A ( { VSS , PLACE_HFSNET_181 , PLACE_HFSNET_191 , PLACE_HFSNET_195 , 
        PLACE_HFSNET_184 , PLACE_HFSNET_220 , PLACE_HFSNET_228 , 
        PLACE_HFSNET_244 , PLACE_HFSNET_214 } ) ,
    .B ( { VSS , PLACE_HFSNET_210 , PLACE_HFSNET_198 , PLACE_HFSNET_202 , 
        PLACE_HFSNET_206 , PLACE_HFSNET_232 , PLACE_HFSNET_237 , 
        PLACE_HFSNET_241 , PLACE_HFSNET_217 } ) ,
    .CI ( VSS ) ,
    .SUM ( { N95 , N94 , N93 , N92 , N91 , N90 , N89 , N88 , N87 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW02_mult_0 mult_42 ( .PLACE_HFSNET_185 ( PLACE_HFSNET_186 ) , 
    .PLACE_HFSNET_194 ( PLACE_HFSNET_194 ) , 
    .PLACE_HFSNET_199 ( PLACE_HFSNET_200 ) , 
    .PLACE_HFSNET_192 ( PLACE_HFSNET_192 ) , 
    .PLACE_HFSNET_230 ( PLACE_HFSNET_230 ) , 
    .PLACE_HFSNET_237 ( PLACE_HFSNET_237 ) , 
    .PLACE_HFSNET_219 ( PLACE_HFSNET_219 ) , 
    .PLACE_HFSNET_216 ( PLACE_HFSNET_216 ) , 
    .PLACE_HFSNET_203 ( PLACE_HFSNET_204 ) , 
    .PLACE_HFSNET_208 ( PLACE_HFSNET_208 ) , 
    .PLACE_HFSNET_211 ( PLACE_HFSNET_212 ) , .\B[3] ( PLACE_HFSNET_234 ) , 
    .PLACE_HFSNET_242 ( PLACE_HFSNET_243 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_246 ) , 
    .PLACE_HFSNET_224 ( PLACE_HFSNET_225 ) , .TC ( VSS ) ,
    .PRODUCT ( { N120 , N119 , N118 , N117 , N116 , N115 , N114 , N113 , 
        N112 , N111 , N110 , N109 , N108 , N107 , N106 , N105 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) , .PLACE_HFSNET_182 ( PLACE_HFSNET_182 ) , 
    .PLACE_HFSNET_239 ( PLACE_HFSNET_239 ) , 
    .PLACE_HFSNET_247 ( PLACE_HFSNET_248 ) ) ;
NAND2X1 U3 ( .IN1 ( n235 ) , .IN2 ( net9544 ) , .QN ( ALU_OUT_Comb[15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_798_278 ( .INP ( PLACE_HFSNET_196 ) , 
    .ZN ( PLACE_HFSNET_194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U9 ( .IN1 ( n87 ) , .IN2 ( n88 ) , .IN3 ( n89 ) , .IN4 ( n90 ) , 
    .QN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U11 ( .IN1 ( n80 ) , .IN2 ( n81 ) , .IN3 ( n82 ) , .IN4 ( n83 ) , 
    .QN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U21 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( PLACE_HFSNET_204 ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U26 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( n215 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_513_279 ( .INP ( PLACE_HFSNET_196 ) , 
    .Z ( PLACE_HFSNET_195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U32 ( .IN1 ( n41 ) , .IN2 ( n42 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U34 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( n48 ) , .IN3 ( N94 ) , 
    .IN4 ( n39 ) , .IN5 ( n44 ) , .Q ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U39 ( .IN1 ( n91 ) , .IN2 ( n92 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( ALU_FUN[1] ) , .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U56 ( .IN1 ( n131 ) , .IN2 ( n19 ) , .QN ( n100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U58 ( .IN1 ( N120 ) , .IN2 ( n33 ) , .QN ( n235 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( PLACE_HFSNET_216 ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( n193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U67 ( .IN1 ( N121 ) , .IN2 ( n76 ) , .QN ( n131 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_309_230 ( .INP ( PLACE_HFSNET_155 ) , 
    .Z ( PLACE_HFSNET_152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U77 ( .IN1 ( n25 ) , .IN2 ( ALU_FUN[1] ) , .IN3 ( ALU_FUN[2] ) , 
    .QN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( n86 ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .QN ( ALU_OUT_Comb[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( net9544 ) , .ZN ( net3035 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U103 ( .IN1 ( n95 ) , .IN2 ( n16 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U106 ( .IN1 ( n79 ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .QN ( ALU_OUT_Comb[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U112 ( .IN1 ( n104 ) , .IN2 ( n92 ) , .QN ( n110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U124 ( .IN1 ( PLACE_HFSNET_148 ) , .IN2 ( Enable ) , .Q ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U128 ( .IN1 ( n59 ) , .IN2 ( n60 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U130 ( .IN1 ( Enable ) , .IN2 ( n40 ) , .QN ( net9544 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U132 ( .IN1 ( n98 ) , .IN2 ( n99 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_319_209 ( .INP ( Enable ) , .ZN ( PLACE_HFSNET_137 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U134 ( .INP ( ALU_FUN[0] ) , .ZN ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U135 ( .INP ( n102 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U136 ( .IN1 ( n104 ) , .IN2 ( n102 ) , .Q ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U137 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( ALU_FUN[1] ) , .QN ( n104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( PLACE_HFSNET_233 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U153 ( .IN1 ( n213 ) , .IN2 ( n216 ) , .QN ( n92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1252_233 ( .INP ( n96 ) , .ZN ( PLACE_HFSNET_155 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U159 ( .IN1 ( PLACE_HFSNET_204 ) , .IN2 ( PLACE_HFSNET_195 ) , 
    .QN ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U160 ( .IN1 ( n203 ) , .IN2 ( n206 ) , .QN ( n198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U161 ( .IN1 ( n203 ) , .IN2 ( n202 ) , .IN3 ( n206 ) , .IN4 ( n205 ) , 
    .QN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U162 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( PLACE_HFSNET_208 ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U165 ( .IN1 ( n97 ) , .IN2 ( n148 ) , .IN3 ( n96 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U168 ( .IN1 ( n93 ) , .IN2 ( PLACE_HFSNET_242 ) , .IN3 ( N122 ) , 
    .IN4 ( n76 ) , .IN5 ( n212 ) , .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n213 ) , .IN2 ( ALU_FUN[3] ) , .QN ( n103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U175 ( .INP ( n212 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U180 ( .INP ( n97 ) , .ZN ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U187 ( .IN1 ( n215 ) , .IN2 ( ALU_FUN[2] ) , .QN ( n101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U192 ( .IN1 ( n101 ) , .IN2 ( n25 ) , .QN ( n147 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U196 ( .IN1 ( n108 ) , .IN2 ( n101 ) , .QN ( n97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U197 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .IN3 ( Enable ) , 
    .Q ( ALU_OUT_Comb[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U199 ( .IN1 ( N150 ) , .IN2 ( n241 ) , .QN ( N149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U200 ( .IN1 ( net9544 ) , .IN2 ( net9563 ) , .QN ( ALU_OUT_Comb[9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U202 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( n36 ) , .IN3 ( N113 ) , 
    .IN4 ( PLACE_HFSNET_148 ) , .IN5 ( n38 ) , .QN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U207 ( .IN1 ( n216 ) , .IN2 ( ALU_FUN[0] ) , .QN ( n109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U211 ( .IN1 ( ALU_FUN[3] ) , .IN2 ( ALU_FUN[0] ) , .QN ( n102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U215 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( n112 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_182 ) , .IN5 ( n43 ) , .Q ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U222 ( .IN1 ( n91 ) , .IN2 ( n103 ) , .Q ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U229 ( .IN1 ( N90 ) , .IN2 ( n39 ) , .IN3 ( N99 ) , .IN4 ( n45 ) , 
    .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U230 ( .IN1 ( N89 ) , .IN2 ( n39 ) , .IN3 ( N98 ) , .IN4 ( n45 ) , 
    .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U231 ( .IN1 ( N88 ) , .IN2 ( n39 ) , .IN3 ( N106 ) , 
    .IN4 ( PLACE_HFSNET_148 ) , .Q ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U233 ( .IN1 ( N103 ) , .IN2 ( n45 ) , .IN3 ( N112 ) , 
    .IN4 ( PLACE_HFSNET_148 ) , .Q ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U236 ( .IN1 ( N104 ) , .IN2 ( n45 ) , .QN ( n95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U238 ( .IN1 ( net9544 ) , .IN2 ( net9545 ) , 
    .QN ( ALU_OUT_Comb[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U246 ( .IN1 ( N116 ) , .IN2 ( n33 ) , .QN ( net9545 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U247 ( .IN1 ( n33 ) , .IN2 ( N114 ) , .QN ( net9563 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U249 ( .IN1 ( n104 ) , .IN2 ( n103 ) , .Q ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
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
    test_so , test_se , VDD , VSS , dftopt4 , \stored_addr[2] , \cs[2] , 
    dftopt9 , \cs[0] , dftopt26 , PLACE_HFSNET_49 , PLACE_HFSNET_90 , 
    PLACE_HFSNET_91 , PLACE_HFSNET_164 , PLACE_HFSNET_165 , PLACE_HFSNET_169 , 
    dftopt18 , \stored_addr[0] , dftopt21 , dftopt27 ) ;
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
input  dftopt4 ;
output \stored_addr[2] ;
output \cs[2] ;
input  dftopt9 ;
output \cs[0] ;
input  dftopt26 ;
input  PLACE_HFSNET_49 ;
input  PLACE_HFSNET_90 ;
input  PLACE_HFSNET_91 ;
input  PLACE_HFSNET_164 ;
input  PLACE_HFSNET_165 ;
input  PLACE_HFSNET_169 ;
input  dftopt18 ;
output \stored_addr[0] ;
input  dftopt21 ;
input  dftopt27 ;

wire test_so_gOb3 ;
wire [3:1] stored_addr ;
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
wire n4 ;
wire n10 ;
wire n16 ;
wire n17 ;
wire n22 ;
wire n86 ;
wire PLACE_HFSNET_175 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n98 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire PLACE_HFSNET_168 ;
wire n109 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n124 ;
wire n126 ;
wire n128 ;
wire n129 ;
wire n1 ;
wire [3:1] cs ;
wire [3:1] ns ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;

assign stored_addr[3] = test_so_gOb3 ;
assign stored_addr[2] = \stored_addr[2] ;
assign cs[2] = \cs[2] ;

NOR4X1 U3 ( .IN1 ( n34 ) , .IN2 ( n36 ) , .IN3 ( n35 ) , .IN4 ( n105 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U58 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[0] ) , 
    .IN3 ( \stored_addr[0] ) , .IN4 ( n24 ) , .Q ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[2] ) , 
    .IN3 ( \stored_addr[2] ) , .IN4 ( n24 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U61 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[3] ) , .IN3 ( test_so_gOb3 ) , 
    .IN4 ( n24 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U62 ( .IN1 ( n25 ) , .IN2 ( n26 ) , .IN3 ( ns[3] ) , .Q ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U63 ( .IN1 ( n107 ) , .IN2 ( n27 ) , .IN3 ( n28 ) , .QN ( ns[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U64 ( .IN1 ( n111 ) , .IN2 ( n29 ) , .IN3 ( n30 ) , .IN4 ( n31 ) , 
    .IN5 ( n32 ) , .Q ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U65 ( .IN1 ( n23 ) , .IN2 ( n106 ) , .IN3 ( ns[1] ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U67 ( .IN1 ( n37 ) , .IN2 ( n38 ) , .IN3 ( n39 ) , .IN4 ( n40 ) , 
    .QN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U70 ( .IN1 ( n118 ) , .IN2 ( n114 ) , .IN3 ( n42 ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( ALU_OUT_VLD ) , .IN2 ( n10 ) , .IN3 ( n43 ) , 
    .IN4 ( n111 ) , .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U74 ( .IN1 ( RdEn ) , .IN2 ( RdData_Valid ) , .IN3 ( n52 ) , 
    .IN4 ( n46 ) , .IN5 ( n105 ) , .QN ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U77 ( .IN1 ( n44 ) , .IN2 ( n32 ) , .Q ( n50 ) , .VDD ( VDD ) , 
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
NAND3X0 U84 ( .IN1 ( n118 ) , .IN2 ( n114 ) , .IN3 ( n63 ) , .QN ( n62 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U86 ( .IN1 ( n14 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n46 ) , 
    .IN4 ( n64 ) , .QN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U87 ( .IN1 ( RX_P_DATA[3] ) , .IN2 ( RX_D_VLD ) , 
    .IN3 ( RX_P_DATA[7] ) , .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U88 ( .IN1 ( n40 ) , .IN2 ( n44 ) , .IN3 ( n49 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U94 ( .IN1 ( n48 ) , .IN2 ( n39 ) , .IN3 ( n68 ) , .QN ( WrEn ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U98 ( .IN1 ( RdData[7] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[15] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[7] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U99 ( .IN1 ( RdData[6] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[14] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[6] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U101 ( .IN1 ( RdData[4] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[12] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[4] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U104 ( .IN1 ( RdData[1] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[9] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[1] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U105 ( .IN1 ( RdData[0] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[8] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[0] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U7 ( .IN1 ( n90 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( RX_D_VLD ) , 
    .QN ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U38 ( .IN1 ( n48 ) , .IN2 ( n32 ) , .IN3 ( n81 ) , .QN ( GATE_EN ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U130 ( .IN1 ( \cs[2] ) , .IN2 ( cs[1] ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR3X0 U147 ( .IN1 ( \cs[2] ) , .IN2 ( n11 ) , .IN3 ( cs[1] ) , .QN ( n101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U50 ( .IN1 ( PLACE_HFSNET_165 ) , .IN2 ( RX_P_DATA[2] ) , 
    .Q ( WrData[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U93 ( .IN1 ( n10 ) , .IN2 ( RX_P_DATA[2] ) , .Q ( ALU_FUN[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U122 ( .IN1 ( cs[1] ) , .IN2 ( n86 ) , .IN3 ( n90 ) , .QN ( n67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( n103 ) , .SI ( RX_P_DATA[7] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \cs[0] ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt27 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( cs[1] ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[0] ( .D ( n82 ) , .SI ( test_so_gOb3 ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \stored_addr[0] ) , .QN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( cs[3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \cs[2] ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[3] ( .D ( ns[3] ) , .SI ( cs[1] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( cs[3] ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[1] ( .D ( n83 ) , .SI ( dftopt21 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( stored_addr[1] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[2] ( .D ( n84 ) , .SI ( stored_addr[1] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \stored_addr[2] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[3] ( .D ( n85 ) , .SI ( dftopt18 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( test_so_gOb3 ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U12 ( .IN1 ( n124 ) , .IN2 ( PLACE_HFSNET_169 ) , .Q ( UART_TX_VLD ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U14 ( .IN1 ( n32 ) , .IN2 ( n22 ) , .IN3 ( n67 ) , .QN ( ALU_EN ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U16 ( .IN1 ( n59 ) , .IN2 ( n129 ) , .Q ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI222X1 U29 ( .IN1 ( RdData[3] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[11] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[3] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U36 ( .IN1 ( RdData[5] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[13] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[5] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U39 ( .IN1 ( cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( n59 ) , .QN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U43 ( .IN1 ( stored_addr[1] ) , .IN2 ( n17 ) , .Q ( Address[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U47 ( .IN1 ( ns[1] ) , .IN2 ( n23 ) , .IN3 ( n106 ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U48 ( .IN1 ( n13 ) , .IN2 ( n11 ) , .IN3 ( n59 ) , .QN ( n58 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U55 ( .IN1 ( n13 ) , .IN2 ( n11 ) , .IN3 ( n66 ) , .QN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U69 ( .IN1 ( n50 ) , .IN2 ( n49 ) , .IN3 ( n48 ) , .Q ( n128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U80 ( .IN1 ( n59 ) , .IN2 ( n129 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U102 ( .IN1 ( n39 ) , .IN2 ( n67 ) , .IN3 ( n48 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U107 ( .IN1 ( n86 ) , .IN2 ( n13 ) , .IN3 ( n91 ) , .QN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U109 ( .IN1 ( n14 ) , .IN2 ( n13 ) , .IN3 ( n86 ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U117 ( .IN1 ( RX_D_VLD ) , .IN2 ( n41 ) , .IN3 ( n14 ) , 
    .IN4 ( n11 ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U129 ( .IN1 ( n10 ) , .IN2 ( RX_P_DATA[1] ) , .Q ( ALU_FUN[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U57 ( .IN1 ( n12 ) , .IN2 ( n14 ) , .QN ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X4 U68 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n112 ) , .QN ( WrData[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( n73 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n126 ) , .ZN ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U73 ( .IN1 ( n128 ) , .IN2 ( n51 ) , .QN ( ns[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( RX_D_VLD ) , .ZN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U111 ( .INP ( ns[2] ) , .ZN ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_473_247 ( .INP ( n67 ) , .ZN ( PLACE_HFSNET_168 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U114 ( .INP ( n70 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U115 ( .INP ( RX_P_DATA[4] ) , .ZN ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U116 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .QN ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U118 ( .IN1 ( n44 ) , .IN2 ( n45 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U119 ( .INP ( n47 ) , .ZN ( RdEn ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n53 ) , .ZN ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U124 ( .INP ( n33 ) , .ZN ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U135 ( .INP ( RX_P_DATA[3] ) , .ZN ( n115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U136 ( .INP ( RX_P_DATA[5] ) , .ZN ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U137 ( .INP ( RX_P_DATA[6] ) , .ZN ( n112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X2 U139 ( .IN1 ( FIFO_FULL ) , .IN2 ( n77 ) , .QN ( UART_TX_DATA[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U140 ( .IN1 ( FIFO_FULL ) , .IN2 ( n72 ) , .QN ( UART_TX_DATA[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U143 ( .IN1 ( FIFO_FULL ) , .IN2 ( n75 ) , .QN ( UART_TX_DATA[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U144 ( .INP ( n24 ) , .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U148 ( .IN1 ( RdData_Valid ) , .IN2 ( n47 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U150 ( .IN1 ( n33 ) , .IN2 ( n111 ) , .QN ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U152 ( .INP ( n23 ) , .ZN ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_504_255 ( .INP ( cs[1] ) , .ZN ( PLACE_HFSNET_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U5 ( .IN1 ( n67 ) , .IN2 ( n70 ) , .Q ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X2 U8 ( .IN1 ( n102 ) , .IN2 ( \stored_addr[2] ) , .Q ( Address[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U9 ( .IN1 ( n4 ) , .IN2 ( n101 ) , .IN3 ( n14 ) , .IN4 ( n102 ) , 
    .QN ( Address[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U11 ( .IN1 ( n22 ) , .IN2 ( n1 ) , .QN ( n124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U15 ( .IN1 ( cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( \cs[2] ) , 
    .QN ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U17 ( .IN1 ( cs[3] ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n66 ) , 
    .QN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U18 ( .IN1 ( n113 ) , .IN2 ( n117 ) , .IN3 ( n60 ) , .IN4 ( n31 ) , 
    .QN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( n66 ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U22 ( .IN1 ( FIFO_FULL ) , .IN2 ( n78 ) , .QN ( UART_TX_DATA[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U23 ( .IN1 ( FIFO_FULL ) , .IN2 ( n76 ) , .QN ( UART_TX_DATA[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U24 ( .IN1 ( FIFO_FULL ) , .IN2 ( n80 ) , .QN ( UART_TX_DATA[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U25 ( .IN1 ( FIFO_FULL ) , .IN2 ( n74 ) , .QN ( UART_TX_DATA[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U30 ( .IN1 ( RdData[2] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[10] ) , 
    .IN4 ( n73 ) , .IN5 ( ALU_OUT[2] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U32 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n115 ) , .QN ( WrData[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U33 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n114 ) , .QN ( WrData[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U34 ( .IN1 ( test_so_gOb3 ) , .IN2 ( n17 ) , .Q ( Address[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U37 ( .IN1 ( n91 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n54 ) , 
    .QN ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( n12 ) , .IN2 ( n91 ) , .Q ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n101 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n101 ) , .ZN ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U44 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n118 ) , .QN ( WrData[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U45 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n117 ) , .QN ( WrData[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U49 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n113 ) , .QN ( WrData[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U52 ( .IN1 ( FIFO_FULL ) , .IN2 ( n79 ) , .QN ( UART_TX_DATA[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U53 ( .IN1 ( PLACE_HFSNET_165 ) , .IN2 ( RX_P_DATA[7] ) , 
    .Q ( WrData[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U56 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U59 ( .IN1 ( \cs[2] ) , .IN2 ( cs[3] ) , .QN ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U72 ( .IN1 ( n2 ) , .IN2 ( n65 ) , .QN ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U75 ( .IN1 ( n13 ) , .IN2 ( cs[3] ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U76 ( .IN1 ( n115 ) , .IN2 ( n32 ) , .QN ( ALU_FUN[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U89 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[1] ) , .IN3 ( stored_addr[1] ) , 
    .IN4 ( n24 ) , .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U92 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .IN3 ( RX_P_DATA[1] ) , 
    .IN4 ( RX_P_DATA[5] ) , .QN ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( RX_P_DATA[1] ) , .ZN ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1 U96 ( .IN1 ( \cs[2] ) , .IN2 ( n11 ) , .Q ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U97 ( .IN1 ( PLACE_HFSNET_175 ) , .IN2 ( cs[3] ) , .Q ( n129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U100 ( .IN1 ( PLACE_HFSNET_175 ) , .IN2 ( \cs[0] ) , .IN3 ( n46 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U103 ( .IN1 ( n16 ) , .IN2 ( \cs[0] ) , .IN3 ( PLACE_HFSNET_175 ) , 
    .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n89 ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( n89 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U125 ( .INP ( n16 ) , .ZN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U126 ( .IN1 ( n118 ) , .IN2 ( n32 ) , .QN ( ALU_FUN[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U127 ( .INP ( RX_P_DATA[0] ) , .ZN ( n118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X4 U128 ( .IN1 ( RX_P_DATA[0] ) , .IN2 ( n63 ) , .IN3 ( RX_P_DATA[4] ) , 
    .QN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U131 ( .INP ( RX_P_DATA[2] ) , .ZN ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U132 ( .INP ( \cs[0] ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( n12 ) , .IN2 ( n90 ) , .QN ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U138 ( .IN1 ( n65 ) , .IN2 ( n59 ) , .QN ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( n32 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module PULSE_GEN_1 ( LVL_SIG , CLK , RST , PULSE_SIG , test_so , test_se , 
    VDD , VSS , dftopt23 ) ;
input  LVL_SIG ;
input  CLK ;
input  RST ;
output PULSE_SIG ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt23 ;

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
    VSS , dftopt0 , dftopt1 , dftopt2 ) ;
input  [0:0] ASYNC ;
input  CLK ;
input  RST ;
output [0:0] SYNC ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
output dftopt2 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( dftopt2 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module DATA_SYNC ( Unsync_bus , bus_enable , CLK , RST , sync_bus , 
    enable_pulse , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , 
    dftopt23 , dftopt3 , PLACE_HFSNET_40 , PLACE_HFSNET_92 , PLACE_HFSNET_93 , 
    dftopt4 , dftopt5 ) ;
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
input  dftopt0 ;
input  dftopt1 ;
input  dftopt23 ;
output dftopt3 ;
input  PLACE_HFSNET_40 ;
input  PLACE_HFSNET_92 ;
input  PLACE_HFSNET_93 ;
input  dftopt4 ;
output dftopt5 ;

wire PLACE_HFSNET_39 ;
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
wire PLACE_HFSNET_129 ;
wire n33 ;
wire n14 ;
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

AO22X1 U3 ( .IN1 ( sync_bus[0] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( enable_pulse_comb ) , .IN4 ( Unsync_bus[0] ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( sync_bus[1] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[1] ) , .IN4 ( enable_pulse_comb ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U5 ( .IN1 ( n18 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[2] ) , .IN4 ( enable_pulse_comb ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U6 ( .IN1 ( sync_bus[3] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[3] ) , .IN4 ( enable_pulse_comb ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( sync_bus[4] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[4] ) , .IN4 ( enable_pulse_comb ) , .Q ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U8 ( .IN1 ( sync_bus[5] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[5] ) , .IN4 ( enable_pulse_comb ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( sync_bus[6] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[6] ) , .IN4 ( enable_pulse_comb ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( sync_bus[7] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[7] ) , .IN4 ( enable_pulse_comb ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3339_82 ( .INP ( PLACE_HFSNET_40 ) , 
    .Z ( PLACE_HFSNET_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 enable_pulse_reg ( .D ( enable_pulse_comb ) , .SI ( dftopt4 ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( enable_pulse ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[7] ( .D ( n9 ) , .SI ( sync_bus[3] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[6] ( .D ( n8 ) , .SI ( sync_bus[4] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( sync_bus[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[5] ( .D ( n7 ) , .SI ( enable_pulse ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( sync_bus[5] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[4] ( .D ( n6 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sync_bus[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[3] ( .D ( n5 ) , .SI ( n18 ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[3] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[2] ( .D ( n4 ) , .SI ( sync_bus[6] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_39 ) , .Q ( n18 ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[1] ( .D ( n3 ) , .SI ( Unsync_bus[1] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[0] ( .D ( n2 ) , .SI ( n33 ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[0] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_738_197 ( .INP ( enable_pulse_comb ) , 
    .ZN ( PLACE_HFSNET_129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
BIT_SYNC_1_2 U0_BIT_SYNC (
    .ASYNC ( { bus_enable } ) ,
    .CLK ( CLK ) , .RST ( PLACE_HFSNET_39 ) ,
    .SYNC ( { sync_enable } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_9 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( sync_bus[0] ) , 
    .dftopt1 ( sync_bus[1] ) , .dftopt2 ( dftopt5 ) ) ;
PULSE_GEN_1 U0_PULSE_GEN ( .LVL_SIG ( sync_enable ) , .CLK ( CLK ) , 
    .RST ( PLACE_HFSNET_39 ) , .PULSE_SIG ( enable_pulse_comb ) , 
    .test_so ( n33 ) , .test_se ( PLACE_HFSNET_93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt23 ( SYNOPSYS_UNCONNECTED_10 ) ) ;
INVX0 U16 ( .INP ( n14 ) , .ZN ( sync_bus[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module stop_check ( CLK , RST , sampled_bit , enable , stp_err , test_si , 
    test_se , VDD , VSS , dftopt0 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  enable ;
output stp_err ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

wire n2 ;
wire n3 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

OAI22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( n1 ) , .IN3 ( enable ) , 
    .IN4 ( n2 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 stp_err_reg ( .D ( n3 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( stp_err ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module strt_check ( CLK , RST , sampled_bit , enable , strt_glitch , test_si , 
    test_se , VDD , VSS , dftopt0 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  enable ;
output strt_glitch ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

wire n2 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

AO22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( enable ) , .IN3 ( strt_glitch ) , 
    .IN4 ( n1 ) , .Q ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 strt_glitch_reg ( .D ( n2 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
XOR3X1 U3 ( .IN1 ( par_typ ) , .IN2 ( P_DATA[4] ) , .IN3 ( n3 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U4 ( .IN1 ( n4 ) , .IN2 ( n5 ) , .IN3 ( n6 ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U5 ( .IN1 ( P_DATA[7] ) , .IN2 ( P_DATA[5] ) , .IN3 ( n7 ) , 
    .Q ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U6 ( .IN1 ( sampled_bit ) , .IN2 ( P_DATA[6] ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( P_DATA[1] ) , .IN2 ( P_DATA[0] ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U8 ( .IN1 ( P_DATA[2] ) , .IN2 ( P_DATA[3] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 par_err_reg ( .D ( n8 ) , .SI ( P_DATA[3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( par_err ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module deserializer ( CLK , RST , s_data , deser_en , P_DATA , test_si , 
    test_se , VDD , VSS , dftopt3 , dftopt0 , dftopt1 , PLACE_HFSNET_56 , 
    PLACE_HFSNET_88 , PLACE_HFSNET_91 , dftopt2 , dftopt20 ) ;
input  CLK ;
input  RST ;
input  s_data ;
input  deser_en ;
output [7:0] P_DATA ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt3 ;
input  dftopt0 ;
input  dftopt1 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_88 ;
input  PLACE_HFSNET_91 ;
input  dftopt2 ;
input  dftopt20 ;

wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire PLACE_HFSNET_71 ;
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

AO22X1 U9 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[5] ) , 
    .IN3 ( PLACE_HFSNET_71 ) , .IN4 ( P_DATA[4] ) , .Q ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U11 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[6] ) , 
    .IN3 ( PLACE_HFSNET_71 ) , .IN4 ( P_DATA[5] ) , .Q ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U13 ( .IN1 ( deser_en ) , .IN2 ( P_DATA[7] ) , 
    .IN3 ( PLACE_HFSNET_71 ) , .IN4 ( P_DATA[6] ) , .Q ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U15 ( .IN1 ( s_data ) , .IN2 ( deser_en ) , .IN3 ( PLACE_HFSNET_71 ) , 
    .IN4 ( P_DATA[7] ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U2 ( .IN1 ( P_DATA[0] ) , .IN2 ( P_DATA[1] ) , .S ( deser_en ) , 
    .Q ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U3 ( .IN1 ( P_DATA[1] ) , .IN2 ( P_DATA[2] ) , .S ( deser_en ) , 
    .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U4 ( .IN1 ( P_DATA[2] ) , .IN2 ( P_DATA[3] ) , .S ( deser_en ) , 
    .Q ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U5 ( .IN1 ( P_DATA[3] ) , .IN2 ( P_DATA[4] ) , .S ( deser_en ) , 
    .Q ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_346_124 ( .INP ( deser_en ) , .ZN ( PLACE_HFSNET_71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[7] ( .D ( n23 ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[6] ( .D ( n22 ) , .SI ( P_DATA[5] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[5] ( .D ( n21 ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[5] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[4] ( .D ( n20 ) , .SI ( P_DATA[7] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( P_DATA[4] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[3] ( .D ( n19 ) , .SI ( P_DATA[2] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( P_DATA[3] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[2] ( .D ( n18 ) , .SI ( P_DATA[0] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( P_DATA[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[1] ( .D ( n17 ) , .SI ( P_DATA[4] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , .Q ( P_DATA[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[0] ( .D ( n16 ) , .SI ( dftopt20 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , .Q ( P_DATA[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module data_sampling ( CLK , RST , RX_IN , prescale , edge_cnt , enable , 
    sampled_bit , test_si , test_so , test_se , VDD , VSS , dftopt16 , 
    PLACE_HFSNET_89 , PLACE_HFSNET_151 , dftopt0 , dftopt26 , dftopt1 ) ;
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
input  dftopt16 ;
input  PLACE_HFSNET_89 ;
input  PLACE_HFSNET_151 ;
input  dftopt0 ;
input  dftopt26 ;
output dftopt1 ;

wire test_so_gOb5 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire \add_18/carry[4] ;
wire \add_18/carry[3] ;
wire \add_18/carry[2] ;
wire n1 ;
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
wire [3:1] half_edges_neg1 ;
wire [3:1] half_edges_plus1 ;
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
SDFFARX1 \samples_reg[2] ( .D ( n24 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so_gOb5 ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[1] ( .D ( n23 ) , .SI ( test_so_gOb5 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt1 ) , 
    .QN ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[0] ( .D ( n22 ) , .SI ( dftopt26 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , 
    .QN ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 sampled_bit_reg ( .D ( n21 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sampled_bit ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U3 ( .IN1 ( prescale[2] ) , .IN2 ( prescale[1] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n5 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U8 ( .IN1 ( n8 ) , .IN2 ( prescale[3] ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n6 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( edge_cnt[1] ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( edge_cnt[0] ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U22 ( .IN1 ( prescale[4] ) , .IN2 ( n9 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U27 ( .IN1 ( n1 ) , .IN2 ( dftopt1 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U29 ( .IN1 ( n36 ) , .IN2 ( n37 ) , .IN3 ( n38 ) , .IN4 ( n39 ) , 
    .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U32 ( .IN1 ( n45 ) , .IN2 ( PLACE_HFSNET_151 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U35 ( .IN1 ( n40 ) , .IN2 ( n41 ) , .QN ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U37 ( .IN1 ( n26 ) , .IN2 ( n27 ) , .IN3 ( n28 ) , .IN4 ( n29 ) , 
    .QN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U40 ( .IN1 ( n46 ) , .IN2 ( PLACE_HFSNET_151 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U41 ( .IN1 ( n30 ) , .IN2 ( n31 ) , .QN ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U43 ( .IN1 ( n13 ) , .IN2 ( n14 ) , .IN3 ( n15 ) , .IN4 ( n16 ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U45 ( .IN1 ( n44 ) , .IN2 ( PLACE_HFSNET_151 ) , .QN ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U46 ( .IN1 ( n17 ) , .IN2 ( n18 ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module edge_bit_counter ( CLK , RST , enable , par_en , prescale , bit_cnt , 
    edge_cnt , test_si , PLACE_HFSNET_151 , VDD , VSS , dftopt14 , dftopt0 , 
    PLACE_HFSNET_58 , PLACE_HFSNET_88 , PLACE_HFSNET_90 , dftopt1 ) ;
input  CLK ;
input  RST ;
input  enable ;
input  par_en ;
input  [5:0] prescale ;
output [3:0] bit_cnt ;
output [5:0] edge_cnt ;
input  test_si ;
input  PLACE_HFSNET_151 ;
input  VDD ;
input  VSS ;
input  dftopt14 ;
input  dftopt0 ;
input  PLACE_HFSNET_58 ;
input  PLACE_HFSNET_88 ;
input  PLACE_HFSNET_90 ;
output dftopt1 ;

wire PLACE_HFSNET_56 ;
wire PLACE_HFSNET_136 ;
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
supply1 VDD ;
supply0 VSS ;
wire PLACE_HFSNET_89 ;
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
NOR3X0 U18 ( .IN1 ( n8 ) , .IN2 ( n15 ) , .IN3 ( PLACE_HFSNET_151 ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U19 ( .IN1 ( bit_cnt[3] ) , .IN2 ( par_en ) , .IN3 ( bit_cnt[2] ) , 
    .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( n18 ) , .IN2 ( bit_cnt[1] ) , .IN3 ( n19 ) , 
    .IN4 ( enable ) , .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U21 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( n7 ) , .IN3 ( bit_cnt[0] ) , 
    .QN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U22 ( .IN1 ( n8 ) , .IN2 ( PLACE_HFSNET_136 ) , .IN3 ( n23 ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U23 ( .IN1 ( PLACE_HFSNET_151 ) , .IN2 ( n18 ) , .IN3 ( n20 ) , 
    .IN4 ( bit_cnt[0] ) , .Q ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
XOR2X1 U46 ( .IN1 ( \add_24/carry[5] ) , .IN2 ( dftopt1 ) , .Q ( N35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U47 ( .IN1 ( N14 ) , .IN2 ( dftopt1 ) , .Q ( n32 ) , .VDD ( VDD ) , 
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
SDFFARX1 \edge_cnt_reg[0] ( .D ( N47 ) , .SI ( dftopt14 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[0] ) , .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[5] ( .D ( N52 ) , .SI ( edge_cnt[0] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( dftopt1 ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[4] ( .D ( N51 ) , .SI ( edge_cnt[1] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[4] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[3] ( .D ( N50 ) , .SI ( bit_cnt[0] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[3] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[2] ( .D ( N49 ) , .SI ( bit_cnt[1] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[2] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[1] ( .D ( N48 ) , .SI ( edge_cnt[3] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[1] ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[0] ( .D ( n27 ) , .SI ( bit_cnt[3] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( bit_cnt[0] ) , .QN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[1] ( .D ( n26 ) , .SI ( edge_cnt[4] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( bit_cnt[1] ) , .QN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[2] ( .D ( n25 ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( bit_cnt[2] ) , .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[3] ( .D ( n24 ) , .SI ( bit_cnt[2] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( bit_cnt[3] ) , .QN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U6 ( .IN1 ( PLACE_HFSNET_151 ) , .IN2 ( N16 ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U7 ( .IN1 ( prescale[1] ) , .IN2 ( prescale[0] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n3 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U9 ( .IN1 ( n28 ) , .IN2 ( prescale[3] ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n4 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U11 ( .IN1 ( n29 ) , .IN2 ( prescale[4] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( prescale[0] ) , .ZN ( N9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n5 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n2 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U31 ( .IN1 ( n9 ) , .IN2 ( prescale[2] ) , .QN ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U32 ( .IN1 ( n30 ) , .IN2 ( prescale[5] ) , .QN ( N15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U34 ( .IN1 ( bit_cnt[1] ) , .IN2 ( N16 ) , .QN ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_87_207 ( .INP ( n18 ) , .ZN ( PLACE_HFSNET_136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U38 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .QN ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U40 ( .IN1 ( n15 ) , .IN2 ( n8 ) , .IN3 ( enable ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U42 ( .IN1 ( n20 ) , .IN2 ( n21 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U44 ( .IN1 ( bit_cnt[0] ) , .IN2 ( n7 ) , .IN3 ( n22 ) , .Q ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( par_en ) , .IN2 ( bit_cnt[2] ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5156_145 ( .INP ( PLACE_HFSNET_90 ) , 
    .Z ( PLACE_HFSNET_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_382_105 ( .INP ( PLACE_HFSNET_58 ) , 
    .Z ( PLACE_HFSNET_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module uart_rx_fsm ( clk , rst , par_en , par_err , strt_glitch , stp_err , 
    prescale , ser_data , bit_cnt , edge_cnt , dftopt19 , dftopt0 , 
    par_chk_en , strt_chk_en , stp_chk_en , deser_en , data_valid , test_si , 
    test_so , test_se , VDD , VSS , \cs[0] , PLACE_HFSNET_56 , 
    PLACE_HFSNET_89 , PLACE_HFSNET_151 , \cs[1] , dftopt1 ) ;
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
input  dftopt19 ;
input  dftopt0 ;
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
output \cs[0] ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_89 ;
output PLACE_HFSNET_151 ;
output \cs[1] ;
input  dftopt1 ;

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
wire [2:4] half_edges_plus1 ;
wire [2:0] ns ;
supply1 VDD ;
supply0 VSS ;

NOR3X0 U24 ( .IN1 ( n21 ) , .IN2 ( n11 ) , .IN3 ( n2 ) , .QN ( par_chk_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U27 ( .IN1 ( n25 ) , .IN2 ( n21 ) , .IN3 ( n26 ) , .QN ( ns[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U28 ( .IN1 ( n27 ) , .IN2 ( n19 ) , .IN3 ( bit_cnt[3] ) , 
    .IN4 ( strt_glitch ) , .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U29 ( .IN1 ( n10 ) , .IN2 ( n9 ) , .IN3 ( \cs[0] ) , .QN ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U30 ( .IN1 ( \cs[0] ) , .IN2 ( n28 ) , .IN3 ( n11 ) , .IN4 ( n29 ) , 
    .Q ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U31 ( .IN1 ( \cs[1] ) , .IN2 ( n32 ) , .IN3 ( n33 ) , .IN4 ( n10 ) , 
    .Q ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U32 ( .IN1 ( n30 ) , .IN2 ( n11 ) , .IN3 ( par_en ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR4X1 U33 ( .IN1 ( n41 ) , .IN2 ( n39 ) , .IN3 ( bit_cnt[0] ) , 
    .IN4 ( bit_cnt[2] ) , .Q ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U34 ( .IN1 ( n11 ) , .IN2 ( n35 ) , .IN3 ( ser_data ) , 
    .IN4 ( \cs[0] ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U35 ( .IN1 ( n37 ) , .IN2 ( n41 ) , .IN3 ( strt_glitch ) , .Q ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U36 ( .IN1 ( n39 ) , .IN2 ( n40 ) , .IN3 ( bit_cnt[0] ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X1 U37 ( .IN1 ( n21 ) , .IN2 ( \cs[0] ) , .IN3 ( n2 ) , .QN ( deser_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U38 ( .IN1 ( n21 ) , .IN2 ( n20 ) , .IN3 ( n36 ) , 
    .QN ( PLACE_HFSNET_151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
OR3X1 U20 ( .IN1 ( n38 ) , .IN2 ( par_en ) , .IN3 ( \cs[0] ) , .Q ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U43 ( .IN1 ( prescale[3] ) , .IN2 ( prescale[2] ) , 
    .Q ( \add_34/carry[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U46 ( .IN1 ( prescale[3] ) , .IN2 ( prescale[2] ) , 
    .Q ( half_edges_plus1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U47 ( .IN1 ( half_edges_plus1[4] ) , .IN2 ( edge_cnt[4] ) , 
    .Q ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U49 ( .IN1 ( half_edges_plus1[2] ) , .IN2 ( edge_cnt[2] ) , 
    .Q ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U51 ( .IN1 ( n13 ) , .IN2 ( prescale[2] ) , .IN3 ( edge_cnt[1] ) , 
    .IN4 ( n13 ) , .Q ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( ns[0] ) , .SI ( dftopt1 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( clk ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( \cs[0] ) , .QN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( dftopt19 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst ) , .Q ( test_so ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( clk ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( \cs[1] ) , .QN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( edge_cnt[0] ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U6 ( .IN1 ( prescale[4] ) , .IN2 ( \add_34/carry[3] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U7 ( .IN1 ( prescale[1] ) , .IN2 ( n22 ) , .QN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U8 ( .IN1 ( n22 ) , .IN2 ( prescale[1] ) , .QN ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U9 ( .IN1 ( n12 ) , .IN2 ( n8 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( bit_cnt[1] ) , .ZN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( bit_cnt[3] ) , .ZN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U14 ( .IN1 ( n27 ) , .IN2 ( n41 ) , .QN ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U16 ( .IN1 ( \cs[0] ) , .IN2 ( n9 ) , .QN ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( bit_cnt[2] ) , .ZN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n30 ) , .ZN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U22 ( .IN1 ( \cs[1] ) , .IN2 ( n9 ) , .QN ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n27 ) , .ZN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U25 ( .IN1 ( n24 ) , .IN2 ( n23 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( par_err ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U40 ( .IN1 ( n2 ) , .IN2 ( n20 ) , .QN ( stp_chk_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U41 ( .IN1 ( n19 ) , .IN2 ( n2 ) , .QN ( strt_chk_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U44 ( .IN1 ( test_so ) , .IN2 ( n31 ) , .QN ( ns[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U48 ( .IN1 ( n11 ) , .IN2 ( n29 ) , .IN3 ( n34 ) , .Q ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U50 ( .IN1 ( stp_err ) , .IN2 ( n20 ) , .QN ( data_valid ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U42 ( .IN1 ( par_en ) , .IN2 ( n38 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module UART_RX ( CLK , PLACE_HFSNET_89 , RX_IN , PAR_EN , PAR_TYP , 
    \Prescale[5] , \Prescale[4] , \Prescale[3] , PLACE_HFSNET_179 , dftopt19 , 
    \Prescale[0] , Data_valid , P_DATA , test_si , test_so , 
    PLACE_HFSNET_177 , VDD , VSS , dftopt3 , dftopt0 , dftopt14 , 
    \EDGE_CNT[0] , dftopt16 , PLACE_HFSNET_59 , PLACE_HFSNET_90 , 
    PLACE_HFSNET_91 , PLACE_HFSNET_94 , dftopt20 , dftopt2 , dftopt5 , 
    dftopt26 , dftopt1 ) ;
input  CLK ;
input  PLACE_HFSNET_89 ;
input  RX_IN ;
input  PAR_EN ;
input  PAR_TYP ;
input  \Prescale[5] ;
input  \Prescale[4] ;
input  \Prescale[3] ;
input  PLACE_HFSNET_179 ;
input  dftopt19 ;
input  \Prescale[0] ;
output Data_valid ;
output [7:0] P_DATA ;
input  test_si ;
output test_so ;
input  PLACE_HFSNET_177 ;
input  VDD ;
input  VSS ;
input  dftopt3 ;
output dftopt0 ;
input  dftopt14 ;
output \EDGE_CNT[0] ;
input  dftopt16 ;
input  PLACE_HFSNET_59 ;
input  PLACE_HFSNET_90 ;
input  PLACE_HFSNET_91 ;
input  PLACE_HFSNET_94 ;
input  dftopt20 ;
output dftopt2 ;
output dftopt5 ;
input  dftopt26 ;
output dftopt1 ;

wire test_so_gOb1 ;
wire STRT_GLITCH ;
wire PLACE_HFSNET_88 ;
wire PLACE_HFSNET_178 ;
wire PLACE_HFSNET_56 ;
wire PLACE_HFSNET_151 ;
wire PAR_ERR ;
wire STP_ERR ;
wire PLACE_HFSNET_176 ;
wire PAR_CHK_EN ;
wire STRT_CHK_EN ;
wire STP_CHK_EN ;
wire DESER_EN ;
wire SAMPLED_BIT ;
wire PLACE_HFSNET_57 ;
wire PLACE_HFSNET_58 ;
wire [3:0] BIT_CNT ;
wire [4:1] EDGE_CNT ;
wire \_gOb27_EDGE_CNT[0] ;
supply1 VDD ;
supply0 VSS ;
wire PLACE_HFSNET_152 ;
wire dftopt6 ;
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

assign STRT_GLITCH = test_so_gOb1 ;

NBUFFX2 PLACE_HFSBUF_456_106 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_314_107 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_260_108 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
uart_rx_fsm fsm_inst ( .clk ( CLK ) , .rst ( PLACE_HFSNET_58 ) , 
    .par_en ( PAR_EN ) , .par_err ( PAR_ERR ) , 
    .strt_glitch ( test_so_gOb1 ) , .stp_err ( STP_ERR ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , SYNOPSYS_UNCONNECTED_1 } ) ,
    .ser_data ( RX_IN ) , .bit_cnt ( BIT_CNT ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_2 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .dftopt19 ( dftopt19 ) , .dftopt0 ( SAMPLED_BIT ) , 
    .par_chk_en ( PAR_CHK_EN ) , .strt_chk_en ( STRT_CHK_EN ) , 
    .stp_chk_en ( STP_CHK_EN ) , .deser_en ( DESER_EN ) , 
    .data_valid ( Data_valid ) , .test_si ( SYNOPSYS_UNCONNECTED_3 ) , 
    .test_so ( dftopt0 ) , .test_se ( PLACE_HFSNET_91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .\cs[0] ( dftopt1 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_152 ) , .\cs[1] ( dftopt2 ) , 
    .dftopt1 ( dftopt6 ) ) ;
edge_bit_counter counter_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_57 ) , 
    .enable ( PLACE_HFSNET_152 ) , .par_en ( PAR_EN ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , \Prescale[0] } ) ,
    .bit_cnt ( BIT_CNT ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_4 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_5 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_151 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt14 ( dftopt14 ) , .dftopt0 ( PAR_ERR ) , 
    .PLACE_HFSNET_58 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_88 ( PLACE_HFSNET_88 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , .dftopt1 ( dftopt5 ) ) ;
data_sampling samp_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_56 ) , 
    .RX_IN ( RX_IN ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , SYNOPSYS_UNCONNECTED_6 } ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_7 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .enable ( PLACE_HFSNET_152 ) , .sampled_bit ( SAMPLED_BIT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_8 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_9 ) , .test_se ( PLACE_HFSNET_90 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt16 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_151 ) , .dftopt0 ( test_so_gOb1 ) , 
    .dftopt26 ( dftopt26 ) , .dftopt1 ( dftopt6 ) ) ;
deserializer deser_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_58 ) , 
    .s_data ( SAMPLED_BIT ) , .deser_en ( DESER_EN ) , .P_DATA ( P_DATA ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_11 ) , .test_se ( PLACE_HFSNET_94 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt3 ( dftopt3 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_57 ) , 
    .PLACE_HFSNET_88 ( PLACE_HFSNET_88 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_91 ) , .dftopt2 ( STP_ERR ) , 
    .dftopt20 ( dftopt20 ) ) ;
parity_check par_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_57 ) , 
    .par_typ ( PAR_TYP ) , .sampled_bit ( SAMPLED_BIT ) , .P_DATA ( P_DATA ) , 
    .enable ( PAR_CHK_EN ) , .par_err ( PAR_ERR ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_14 ) , .test_se ( PLACE_HFSNET_88 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
strt_check strt_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_56 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STRT_CHK_EN ) , 
    .strt_glitch ( test_so_gOb1 ) , .test_si ( SYNOPSYS_UNCONNECTED_15 ) , 
    .test_se ( PLACE_HFSNET_90 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( EDGE_CNT[2] ) ) ;
stop_check stp_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_58 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STP_CHK_EN ) , 
    .stp_err ( STP_ERR ) , .test_si ( SYNOPSYS_UNCONNECTED_16 ) , 
    .test_se ( PLACE_HFSNET_91 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( P_DATA[6] ) ) ;
NBUFFX2 PLACE_HFSBUF_5209_144 ( .INP ( PLACE_HFSNET_90 ) , 
    .Z ( PLACE_HFSNET_88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_534_229 ( .INP ( PLACE_HFSNET_152 ) , 
    .ZN ( PLACE_HFSNET_151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_85_258 ( .INP ( PLACE_HFSNET_177 ) , 
    .Z ( PLACE_HFSNET_176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_104_259 ( .INP ( PLACE_HFSNET_179 ) , 
    .Z ( PLACE_HFSNET_178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux4x1 ( CLK , RST , start_bit , stop_bit , ser_data , par_bit , 
    mux_sel , TX_OUT , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , 
    p1 , p3 ) ;
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
input  dftopt0 ;
input  dftopt1 ;
input  p1 ;
input  p3 ;

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
AO22X1 U6 ( .IN1 ( p3 ) , .IN2 ( mux_sel[0] ) , .IN3 ( p1 ) , .IN4 ( n1 ) , 
    .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( par_bit ) , .IN2 ( mux_sel[0] ) , .IN3 ( ser_data ) , 
    .IN4 ( n1 ) , .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 TX_OUT_reg ( .D ( N13 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .SETB ( RST ) , .Q ( TX_OUT ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( mux_sel[0] ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( mux_sel[1] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module parity_calc ( CLK , PLACE_HFSNET_108 , Data_Valid , P_DATA , PAR_TYP , 
    par_bit , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt7 , 
    dftopt2 , dftopt10 , dftopt3 , dftopt14 , dftopt4 , PLACE_HFSNET_54 , 
    PLACE_HFSNET_56 , PLACE_HFSNET_156 , dftopt5 , dftopt34 , dftopt6 ) ;
input  CLK ;
input  PLACE_HFSNET_108 ;
input  Data_Valid ;
input  [7:0] P_DATA ;
input  PAR_TYP ;
output par_bit ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt7 ;
output dftopt2 ;
input  dftopt10 ;
output dftopt3 ;
input  dftopt14 ;
output dftopt4 ;
input  PLACE_HFSNET_54 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_156 ;
input  dftopt5 ;
input  dftopt34 ;
output dftopt6 ;

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
wire PLACE_HFSNET_55 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

XOR3X1 U3 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( PAR_TYP ) , 
    .Q ( par_bit_comb ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U4 ( .IN1 ( n21 ) , .IN2 ( n20 ) , .IN3 ( n3 ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U5 ( .IN1 ( n19 ) , .IN2 ( n18 ) , .Q ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR3X1 U6 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .IN3 ( n4 ) , .Q ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .Q ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U8 ( .IN1 ( P_DATA[0] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n13 ) , .Q ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( P_DATA[1] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n12 ) , .Q ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U12 ( .IN1 ( P_DATA[2] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n11 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U14 ( .IN1 ( P_DATA[3] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n10 ) , .Q ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U16 ( .IN1 ( P_DATA[4] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n9 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U18 ( .IN1 ( P_DATA[5] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( n8 ) , .Q ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( P_DATA[6] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( dftopt6 ) , .Q ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U22 ( .IN1 ( P_DATA[7] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( dftopt2 ) , .Q ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1085_103 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n29 ) , .SI ( par_bit ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( dftopt2 ) , .QN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n28 ) , .SI ( dftopt34 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( dftopt6 ) , .QN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n27 ) , .SI ( n9 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( n8 ) , .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n26 ) , .SI ( n12 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( n9 ) , .QN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n25 ) , .SI ( n11 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , .Q ( n10 ) , .QN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n24 ) , .SI ( n13 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( n11 ) , .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n23 ) , .SI ( n10 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( n12 ) , .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n22 ) , .SI ( dftopt5 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( n13 ) , .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 par_bit_reg ( .D ( par_bit_comb ) , .SI ( n8 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( par_bit ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module controller_fsm ( Data_Valid , PAR_EN , CLK , RST , ser_done , ser_en , 
    mux_sel , busy , test_si , test_so , test_se , VDD , VSS , dftopt0 , 
    dftopt1 , \cs[0] , PLACE_HFSNET_53 , PLACE_HFSNET_109 , dftopt28 , 
    dftopt2 , dftopt31 ) ;
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
input  dftopt0 ;
input  dftopt1 ;
output \cs[0] ;
input  PLACE_HFSNET_53 ;
input  PLACE_HFSNET_109 ;
input  dftopt28 ;
output dftopt2 ;
input  dftopt31 ;

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
wire [1:1] cs ;
wire [2:0] ns ;
supply1 VDD ;
supply0 VSS ;
wire PLACE_HFSNET_127 ;
wire SYNOPSYS_UNCONNECTED_1 ;

NAND3X0 U13 ( .IN1 ( n1 ) , .IN2 ( PLACE_HFSNET_127 ) , .IN3 ( ser_done ) , 
    .QN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U14 ( .IN1 ( ser_done ) , .IN2 ( PLACE_HFSNET_127 ) , .IN3 ( n9 ) , 
    .Q ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U15 ( .IN1 ( n14 ) , .IN2 ( n4 ) , .IN3 ( Data_Valid ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U16 ( .IN1 ( ser_en ) , .IN2 ( ser_done ) , .IN3 ( PAR_EN ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U17 ( .IN1 ( cs[1] ) , .IN2 ( n14 ) , .Q ( ser_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( cs[1] ) , .IN2 ( n3 ) , .IN3 ( \cs[0] ) , .QN ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U20 ( .IN1 ( n5 ) , .IN2 ( n3 ) , .IN3 ( cs[1] ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U21 ( .IN1 ( n4 ) , .IN2 ( n3 ) , .IN3 ( \cs[0] ) , .QN ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U3 ( .IN1 ( cs[1] ) , .IN2 ( \cs[0] ) , .IN3 ( n5 ) , .IN4 ( n4 ) , 
    .IN5 ( dftopt2 ) , .Q ( mux_sel[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U4 ( .IN1 ( n10 ) , .IN2 ( n9 ) , .IN3 ( n7 ) , .QN ( busy_c ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( ns[0] ) , .SI ( cs[1] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \cs[0] ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( dftopt28 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( dftopt2 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt31 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( cs[1] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 busy_reg ( .D ( busy_c ) , .SI ( dftopt1 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( busy ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U5 ( .IN1 ( n9 ) , .IN2 ( n7 ) , .QN ( mux_sel[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U7 ( .IN1 ( \cs[0] ) , .IN2 ( dftopt2 ) , .QN ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U8 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .QN ( ns[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U9 ( .IN1 ( n7 ) , .IN2 ( n8 ) , .QN ( ns[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n9 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U11 ( .IN1 ( n12 ) , .IN2 ( n13 ) , .QN ( ns[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_566_193 ( .INP ( PAR_EN ) , .ZN ( PLACE_HFSNET_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module serializer ( P_DATA , ser_en , busy , dftopt32 , CLK , RST , ser_done , 
    ser_data , test_si , test_so , test_se , VDD , VSS , dftopt0 , 
    \counter[1] , dftopt1 , \P_DATA_Valid[5] , dftopt3 , dftopt13 , 
    PLACE_HFSNET_54 , PLACE_HFSNET_109 , PLACE_HFSNET_111 , PLACE_HFSNET_156 , 
    \P_DATA_Valid[7] , dftopt39 ) ;
input  [7:0] P_DATA ;
input  ser_en ;
input  busy ;
input  dftopt32 ;
input  CLK ;
input  RST ;
output ser_done ;
output ser_data ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output \counter[1] ;
input  dftopt1 ;
output \P_DATA_Valid[5] ;
input  dftopt3 ;
input  dftopt13 ;
input  PLACE_HFSNET_54 ;
input  PLACE_HFSNET_109 ;
input  PLACE_HFSNET_111 ;
input  PLACE_HFSNET_156 ;
output \P_DATA_Valid[7] ;
input  dftopt39 ;

wire test_so_gOb23 ;
wire [2:0] counter ;
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
wire PLACE_HFSNET_108 ;
wire n20 ;
wire [6:1] P_DATA_Valid ;
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

assign counter[2] = test_so_gOb23 ;
assign counter[1] = \counter[1] ;
assign P_DATA_Valid[5] = \P_DATA_Valid[5] ;

AO222X1 U11 ( .IN1 ( P_DATA[0] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[1] ) , 
    .IN4 ( n6 ) , .IN5 ( ser_data ) , .IN6 ( n7 ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U12 ( .IN1 ( \P_DATA_Valid[7] ) , .IN2 ( n7 ) , .IN3 ( P_DATA[7] ) , 
    .IN4 ( n5 ) , .Q ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U13 ( .IN1 ( P_DATA[6] ) , .IN2 ( n5 ) , .IN3 ( \P_DATA_Valid[7] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[6] ) , .IN6 ( n7 ) , .Q ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U14 ( .IN1 ( P_DATA[5] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[6] ) , 
    .IN4 ( n6 ) , .IN5 ( \P_DATA_Valid[5] ) , .IN6 ( n7 ) , .Q ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U15 ( .IN1 ( P_DATA[4] ) , .IN2 ( n5 ) , .IN3 ( \P_DATA_Valid[5] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[4] ) , .IN6 ( n7 ) , .Q ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U16 ( .IN1 ( P_DATA[3] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[4] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[3] ) , .IN6 ( n7 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U17 ( .IN1 ( P_DATA[2] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[3] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[2] ) , .IN6 ( n7 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U18 ( .IN1 ( P_DATA[1] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[2] ) , 
    .IN4 ( n6 ) , .IN5 ( n7 ) , .IN6 ( P_DATA_Valid[1] ) , .Q ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( N23 ) , .IN2 ( test_so_gOb23 ) , .IN3 ( ser_en ) , 
    .IN4 ( n8 ) , .Q ( N25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( test_so_gOb23 ) , .IN2 ( n1 ) , .IN3 ( n9 ) , 
    .IN4 ( \counter[1] ) , .Q ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U22 ( .IN1 ( counter[0] ) , .IN2 ( \counter[1] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U3 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , .QN ( ser_done ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2506_168 ( .INP ( PLACE_HFSNET_111 ) , 
    .Z ( PLACE_HFSNET_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n12 ) , .SI ( dftopt32 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \P_DATA_Valid[7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n13 ) , .SI ( dftopt39 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA_Valid[6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n14 ) , .SI ( P_DATA_Valid[4] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \P_DATA_Valid[5] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n15 ) , .SI ( P_DATA_Valid[2] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA_Valid[4] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n16 ) , .SI ( test_so_gOb23 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( P_DATA_Valid[3] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n17 ) , .SI ( P_DATA_Valid[3] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA_Valid[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n18 ) , .SI ( P_DATA_Valid[6] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( P_DATA_Valid[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n11 ) , .SI ( P_DATA_Valid[1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( ser_data ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N23 ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( counter[0] ) , .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N24 ) , .SI ( counter[0] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , .Q ( \counter[1] ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N25 ) , .SI ( ser_data ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( test_so_gOb23 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U4 ( .IN1 ( PLACE_HFSNET_156 ) , .IN2 ( busy ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U6 ( .IN1 ( ser_en ) , .IN2 ( n5 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( ser_en ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U10 ( .IN1 ( n20 ) , .IN2 ( n5 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( test_so_gOb23 ) , .IN2 ( n2 ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( n10 ) , .IN2 ( n20 ) , .QN ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U24 ( .IN1 ( n20 ) , .IN2 ( counter[0] ) , .QN ( N23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module UART_TX ( CLK , PLACE_HFSNET_110 , PAR_TYP , PAR_EN , P_DATA , 
    dftopt32 , TX_OUT , Busy , test_si , test_se , VDD , VSS , dftopt0 , 
    dftopt1 , dftopt5 , dftopt7 , dftopt8 , dftopt10 , dftopt11 , dftopt13 , 
    dftopt12 , dftopt14 , dftopt16 , PLACE_HFSNET_53 , PLACE_HFSNET_56 , 
    PLACE_HFSNET_111 , PLACE_HFSNET_112 , PLACE_HFSNET_159 , dftopt34 , 
    dftopt19 , dftopt39 , dftopt28 , dftopt21 , dftopt31 , dftopt22 , p1 , 
    p3 ) ;
input  CLK ;
input  PLACE_HFSNET_110 ;
input  PAR_TYP ;
input  PAR_EN ;
input  [7:0] P_DATA ;
input  dftopt32 ;
output TX_OUT ;
output Busy ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
output dftopt5 ;
input  dftopt7 ;
output dftopt8 ;
input  dftopt10 ;
output dftopt11 ;
input  dftopt13 ;
output dftopt12 ;
input  dftopt14 ;
output dftopt16 ;
input  PLACE_HFSNET_53 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_111 ;
input  PLACE_HFSNET_112 ;
input  PLACE_HFSNET_159 ;
input  dftopt34 ;
output dftopt19 ;
input  dftopt39 ;
input  dftopt28 ;
output dftopt21 ;
input  dftopt31 ;
output dftopt22 ;
input  p1 ;
input  p3 ;

wire PLACE_HFSNET_109 ;
wire Serial_En ;
wire Serial_Done ;
wire Serial_Data ;
wire PARITY_BIT ;
wire PLACE_HFSNET_54 ;
wire PLACE_HFSNET_55 ;
wire [1:0] MUX_Sel ;
supply1 VDD ;
supply0 VSS ;
wire dftopt2 ;
wire dftopt17 ;
wire PLACE_HFSNET_157 ;
wire PLACE_HFSNET_158 ;
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

NBUFFX2 PLACE_HFSBUF_982_101 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
serializer U0_SER ( .P_DATA ( P_DATA ) , .ser_en ( Serial_En ) , 
    .busy ( Busy ) , .dftopt32 ( dftopt32 ) , .CLK ( CLK ) , 
    .RST ( PLACE_HFSNET_55 ) , .ser_done ( Serial_Done ) , 
    .ser_data ( Serial_Data ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_2 ) , .test_se ( PLACE_HFSNET_111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( dftopt2 ) , 
    .\counter[1] ( dftopt22 ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .\P_DATA_Valid[5] ( dftopt5 ) , .dftopt3 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .PLACE_HFSNET_54 ( PLACE_HFSNET_54 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_156 ( PLACE_HFSNET_157 ) , .\P_DATA_Valid[7] ( dftopt17 ) , 
    .dftopt39 ( dftopt39 ) ) ;
controller_fsm U0_FSM ( .Data_Valid ( PLACE_HFSNET_158 ) , 
    .PAR_EN ( PAR_EN ) , .CLK ( CLK ) , .RST ( PLACE_HFSNET_54 ) , 
    .ser_done ( Serial_Done ) , .ser_en ( Serial_En ) , .mux_sel ( MUX_Sel ) , 
    .busy ( Busy ) , .test_si ( SYNOPSYS_UNCONNECTED_6 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_7 ) , .test_se ( PLACE_HFSNET_111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt1 ( dftopt1 ) , .\cs[0] ( dftopt2 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_53 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_110 ) , .dftopt28 ( dftopt28 ) , 
    .dftopt2 ( dftopt21 ) , .dftopt31 ( dftopt31 ) ) ;
parity_calc U0_PARITY_CALC ( .CLK ( CLK ) , 
    .PLACE_HFSNET_108 ( PLACE_HFSNET_109 ) , 
    .Data_Valid ( PLACE_HFSNET_158 ) , .P_DATA ( P_DATA ) , 
    .PAR_TYP ( PAR_TYP ) , .par_bit ( PARITY_BIT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_9 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt2 ( dftopt8 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .PLACE_HFSNET_54 ( PLACE_HFSNET_55 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_156 ( PLACE_HFSNET_157 ) , .dftopt5 ( dftopt17 ) , 
    .dftopt34 ( dftopt34 ) , .dftopt6 ( dftopt19 ) ) ;
mux4x1 U0_MUX ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_53 ) , 
    .start_bit ( SYNOPSYS_UNCONNECTED_17 ) , 
    .stop_bit ( SYNOPSYS_UNCONNECTED_18 ) , .ser_data ( Serial_Data ) , 
    .par_bit ( PARITY_BIT ) , .mux_sel ( MUX_Sel ) , .TX_OUT ( TX_OUT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_19 ) , .test_se ( PLACE_HFSNET_110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .dftopt1 ( Busy ) , .p1 ( p1 ) , .p3 ( p3 ) ) ;
NBUFFX2 PLACE_HFSBUF_2441_169 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1046_102 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_874_236 ( .INP ( PLACE_HFSNET_159 ) , 
    .ZN ( PLACE_HFSNET_157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_604_237 ( .INP ( PLACE_HFSNET_159 ) , 
    .Z ( PLACE_HFSNET_158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART ( TX_CLK , RX_CLK , PLACE_HFSNET_89 , PAR_TYP , PAR_EN , 
    \Prescale[5] , \Prescale[4] , \Prescale[3] , PLACE_HFSNET_179 , dftopt19 , 
    \Prescale[0] , TX_IN_P , PLACE_HFSNET_177 , TX_OUT_S , TX_OUT_V , 
    RX_IN_S , RX_OUT_P , RX_OUT_V , test_si , PLACE_HFSNET_159 , VDD , VSS , 
    dftopt0 , dftopt1 , dftopt5 , dftopt7 , dftopt8 , dftopt10 , dftopt11 , 
    dftopt13 , dftopt12 , dftopt3 , dftopt9 , dftopt14 , dftopt15 , dftopt16 , 
    dftopt18 , PLACE_HFSNET_53 , PLACE_HFSNET_56 , PLACE_HFSNET_59 , 
    PLACE_HFSNET_90 , PLACE_HFSNET_91 , PLACE_HFSNET_94 , PLACE_HFSNET_110 , 
    PLACE_HFSNET_111 , PLACE_HFSNET_112 , PLACE_HFSNET_113 , dftopt20 , 
    dftopt21 , dftopt32 , dftopt34 , dftopt23 , dftopt39 , dftopt25 , 
    dftopt26 , dftopt27 , dftopt28 , dftopt30 , dftopt31 , dftopt33 , p1 , 
    p3 ) ;
input  TX_CLK ;
input  RX_CLK ;
input  PLACE_HFSNET_89 ;
input  PAR_TYP ;
input  PAR_EN ;
input  \Prescale[5] ;
input  \Prescale[4] ;
input  \Prescale[3] ;
input  PLACE_HFSNET_179 ;
input  dftopt19 ;
input  \Prescale[0] ;
input  [7:0] TX_IN_P ;
input  PLACE_HFSNET_177 ;
output TX_OUT_S ;
output TX_OUT_V ;
input  RX_IN_S ;
output [7:0] RX_OUT_P ;
output RX_OUT_V ;
input  test_si ;
input  PLACE_HFSNET_159 ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
output dftopt5 ;
input  dftopt7 ;
output dftopt8 ;
input  dftopt10 ;
output dftopt11 ;
input  dftopt13 ;
output dftopt12 ;
input  dftopt3 ;
output dftopt9 ;
input  dftopt14 ;
output dftopt15 ;
input  dftopt16 ;
output dftopt18 ;
input  PLACE_HFSNET_53 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_59 ;
input  PLACE_HFSNET_90 ;
input  PLACE_HFSNET_91 ;
input  PLACE_HFSNET_94 ;
input  PLACE_HFSNET_110 ;
input  PLACE_HFSNET_111 ;
input  PLACE_HFSNET_112 ;
input  PLACE_HFSNET_113 ;
input  dftopt20 ;
output dftopt21 ;
input  dftopt32 ;
input  dftopt34 ;
output dftopt23 ;
input  dftopt39 ;
output dftopt25 ;
input  dftopt26 ;
output dftopt27 ;
input  dftopt28 ;
output dftopt30 ;
input  dftopt31 ;
output dftopt33 ;
input  p1 ;
input  p3 ;

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

UART_TX U0_TX ( .CLK ( TX_CLK ) , .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .PAR_TYP ( PAR_TYP ) , .PAR_EN ( PAR_EN ) , .P_DATA ( TX_IN_P ) , 
    .dftopt32 ( dftopt32 ) , .TX_OUT ( TX_OUT_S ) , .Busy ( TX_OUT_V ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , .test_se ( PLACE_HFSNET_113 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt1 ( dftopt1 ) , .dftopt5 ( dftopt5 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_3 ) , .dftopt8 ( dftopt8 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_7 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_53 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_159 ( PLACE_HFSNET_159 ) , .dftopt34 ( dftopt34 ) , 
    .dftopt19 ( dftopt23 ) , .dftopt39 ( dftopt39 ) , .dftopt28 ( dftopt28 ) , 
    .dftopt21 ( dftopt30 ) , .dftopt31 ( dftopt31 ) , .dftopt22 ( dftopt33 ) , 
    .p1 ( p1 ) , .p3 ( p3 ) ) ;
UART_RX U0_RX ( .CLK ( RX_CLK ) , .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .RX_IN ( RX_IN_S ) , .PAR_EN ( PAR_EN ) , .PAR_TYP ( PAR_TYP ) , 
    .\Prescale[5] ( \Prescale[5] ) , .\Prescale[4] ( \Prescale[4] ) , 
    .\Prescale[3] ( \Prescale[3] ) , .PLACE_HFSNET_179 ( PLACE_HFSNET_179 ) , 
    .dftopt19 ( dftopt19 ) , .\Prescale[0] ( \Prescale[0] ) , 
    .Data_valid ( RX_OUT_V ) , .P_DATA ( RX_OUT_P ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_10 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_11 ) , 
    .PLACE_HFSNET_177 ( PLACE_HFSNET_177 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt3 ( dftopt3 ) , .dftopt0 ( dftopt9 ) , .dftopt14 ( dftopt14 ) , 
    .\EDGE_CNT[0] ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_94 ( PLACE_HFSNET_94 ) , .dftopt20 ( dftopt20 ) , 
    .dftopt2 ( dftopt21 ) , .dftopt5 ( dftopt25 ) , .dftopt26 ( dftopt26 ) , 
    .dftopt1 ( dftopt27 ) ) ;
endmodule


module REG_FILE ( WrData , Address , PLACE_HFSNET_186 , RdEn , CLK , RST , 
    RdData , RdData_Valid , REG0 , REG1 , REG2 , REG3 , test_si3 , test_si2 , 
    test_si1 , test_so3 , test_so2 , test_so1 , test_se , VDD , VSS , 
    dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , dftopt6 , 
    dftopt7 , dftopt8 , dftopt20 , dftopt9 , dftopt10 , dftopt11 , dftopt12 , 
    PLACE_HFSNET_30 , PLACE_HFSNET_49 , PLACE_HFSNET_52 , PLACE_HFSNET_53 , 
    PLACE_HFSNET_89 , PLACE_HFSNET_90 , PLACE_HFSNET_96 , PLACE_HFSNET_103 , 
    PLACE_HFSNET_105 , PLACE_HFSNET_122 , PLACE_HFSNET_123 , 
    PLACE_HFSNET_164 , PLACE_HFSNET_165 , PLACE_HFSNET_167 , 
    PLACE_HFSNET_188 , dftopt13 , dftopt14 , dftopt15 , dftopt16 , dftopt17 , 
    dftopt18 , dftopt19 , dftopt21 , dftopt22 , dftopt23 , dftopt37 , 
    dftopt25 , dftopt24 , dftopt26 , dftopt27 , dftopt28 , dftopt29 , 
    dftopt30 ) ;
input  [7:0] WrData ;
input  [3:0] Address ;
input  PLACE_HFSNET_186 ;
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
input  dftopt0 ;
output dftopt1 ;
input  dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt5 ;
input  dftopt6 ;
input  dftopt7 ;
input  dftopt8 ;
input  dftopt20 ;
input  dftopt9 ;
output dftopt10 ;
input  dftopt11 ;
output dftopt12 ;
input  PLACE_HFSNET_30 ;
input  PLACE_HFSNET_49 ;
input  PLACE_HFSNET_52 ;
input  PLACE_HFSNET_53 ;
input  PLACE_HFSNET_89 ;
input  PLACE_HFSNET_90 ;
input  PLACE_HFSNET_96 ;
input  PLACE_HFSNET_103 ;
input  PLACE_HFSNET_105 ;
input  PLACE_HFSNET_122 ;
input  PLACE_HFSNET_123 ;
input  PLACE_HFSNET_164 ;
input  PLACE_HFSNET_165 ;
input  PLACE_HFSNET_167 ;
input  PLACE_HFSNET_188 ;
output dftopt13 ;
input  dftopt14 ;
output dftopt15 ;
input  dftopt16 ;
output dftopt17 ;
output dftopt18 ;
input  dftopt19 ;
output dftopt21 ;
input  dftopt22 ;
input  dftopt23 ;
input  dftopt37 ;
input  dftopt25 ;
output dftopt24 ;
input  dftopt26 ;
output dftopt27 ;
input  dftopt28 ;
input  dftopt29 ;
output dftopt30 ;

wire test_so2_gOb25 ;
wire \regfile[13][0] ;
wire PLACE_HFSNET_1 ;
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
wire n394 ;
wire n396 ;
wire n397 ;
wire n399 ;
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
wire \regfile[12][6] ;
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
wire PLACE_HFSNET_3 ;
wire PLACE_HFSNET_13 ;
wire PLACE_HFSNET_14 ;
wire PLACE_HFSNET_5 ;
wire PLACE_HFSNET_61 ;
wire PLACE_HFSNET_7 ;
wire PLACE_HFSNET_65 ;
wire PLACE_HFSNET_71 ;
wire PLACE_HFSNET_67 ;
wire n2 ;
wire n6 ;
wire PLACE_HFSNET_138 ;
wire PLACE_HFSNET_159 ;
wire PLACE_HFSNET_160 ;
wire PLACE_HFSNET_161 ;
wire n12 ;
wire PLACE_HFSNET_15 ;
wire n199 ;
wire n200 ;
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
wire PLACE_HFSNET_149 ;
wire PLACE_HFSNET_150 ;
wire PLACE_HFSNET_151 ;
wire PLACE_HFSNET_163 ;
wire PLACE_HFSNET_166 ;
wire PLACE_HFSNET_139 ;
wire PLACE_HFSNET_140 ;
wire PLACE_HFSNET_143 ;
wire PLACE_HFSNET_144 ;
wire PLACE_HFSNET_145 ;
wire PLACE_HFSNET_146 ;
wire PLACE_HFSNET_147 ;
wire PLACE_HFSNET_142 ;
wire n318 ;
wire n319 ;
wire n320 ;
wire n321 ;
wire PLACE_HFSNET_9 ;
wire PLACE_HFSNET_128 ;
wire PLACE_HFSNET_129 ;
wire PLACE_HFSNET_127 ;
wire PLACE_HFSNET_63 ;
wire n332 ;
wire PLACE_HFSNET_17 ;
wire PLACE_HFSNET_18 ;
wire PLACE_HFSNET_19 ;
wire PLACE_HFSNET_20 ;
wire PLACE_HFSNET_12 ;
wire PLACE_HFSNET_16 ;
wire PLACE_HFSNET_21 ;
wire PLACE_HFSNET_22 ;
wire PLACE_HFSNET_23 ;
wire PLACE_HFSNET_24 ;
wire PLACE_HFSNET_25 ;
wire PLACE_HFSNET_26 ;
wire PLACE_HFSNET_27 ;
wire PLACE_HFSNET_28 ;
wire PLACE_HFSNET_40 ;
wire PLACE_HFSNET_41 ;
wire PLACE_HFSNET_42 ;
wire PLACE_HFSNET_43 ;
wire PLACE_HFSNET_44 ;
wire PLACE_HFSNET_45 ;
wire PLACE_HFSNET_46 ;
wire PLACE_HFSNET_47 ;
wire PLACE_HFSNET_50 ;
wire PLACE_HFSNET_51 ;
wire PLACE_HFSNET_69 ;
wire PLACE_HFSNET_11 ;
wire n376 ;
wire PLACE_HFSNET_80 ;
wire PLACE_HFSNET_81 ;
wire PLACE_HFSNET_82 ;
wire PLACE_HFSNET_83 ;
wire n381 ;
wire n382 ;
wire n402 ;
wire n403 ;
wire PLACE_HFSNET_84 ;
wire n405 ;
wire n407 ;
wire PLACE_HFSNET_85 ;
wire n411 ;
wire n412 ;
wire n413 ;
wire n414 ;
wire PLACE_HFSNET_86 ;
wire PLACE_HFSNET_88 ;
wire n203 ;
wire PLACE_HFSNET_97 ;
wire PLACE_HFSNET_98 ;
wire PLACE_HFSNET_99 ;
wire PLACE_HFSNET_100 ;
wire PLACE_HFSNET_101 ;
wire PLACE_HFSNET_102 ;
wire PLACE_HFSNET_104 ;
wire PLACE_HFSNET_120 ;
wire PLACE_HFSNET_121 ;
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

assign \regfile[13][0] = test_so2_gOb25 ;

AO22X1 U57 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( WrData[0] ) , 
    .IN3 ( REG2[0] ) , .IN4 ( n12 ) , .Q ( n63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( WrData[3] ) , .IN3 ( n319 ) , 
    .IN4 ( n12 ) , .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( WrData[1] ) , .IN3 ( REG3[1] ) , 
    .IN4 ( n27 ) , .Q ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( REG3[2] ) , .IN4 ( n27 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( WrData[3] ) , .IN3 ( REG3[3] ) , 
    .IN4 ( n27 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U69 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( WrData[4] ) , .IN3 ( REG3[4] ) , 
    .IN4 ( n27 ) , .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_14 ) , 
    .IN3 ( REG3[6] ) , .IN4 ( n27 ) , .Q ( n77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( REG3[7] ) , .IN4 ( n27 ) , .Q ( n78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( WrData[1] ) , 
    .IN3 ( \regfile[4][1] ) , .IN4 ( n28 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( \regfile[4][2] ) , .IN4 ( n28 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( WrData[3] ) , 
    .IN3 ( \regfile[4][3] ) , .IN4 ( n28 ) , .Q ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U77 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( \regfile[4][4] ) , .IN4 ( n28 ) , .Q ( n83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( \regfile[4][5] ) , .IN4 ( n28 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( \regfile[4][7] ) , .IN4 ( n28 ) , .Q ( n86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( n213 ) , .IN2 ( WrData[0] ) , .IN3 ( PLACE_HFSNET_127 ) , 
    .IN4 ( \regfile[5][0] ) , .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( n213 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( \regfile[5][2] ) , .IN4 ( PLACE_HFSNET_127 ) , .Q ( n89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( n213 ) , .IN2 ( WrData[3] ) , .IN3 ( \regfile[5][3] ) , 
    .IN4 ( PLACE_HFSNET_127 ) , .Q ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( n213 ) , .IN2 ( WrData[4] ) , .IN3 ( PLACE_HFSNET_127 ) , 
    .IN4 ( \regfile[5][4] ) , .Q ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U89 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[0] ) , 
    .IN3 ( \regfile[6][0] ) , .IN4 ( n31 ) , .Q ( n95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U91 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( dftopt13 ) , .IN4 ( n31 ) , .Q ( n97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U92 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[3] ) , 
    .IN3 ( \regfile[6][3] ) , .IN4 ( n31 ) , .Q ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U93 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( \regfile[6][4] ) , .IN4 ( n31 ) , .Q ( n99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U95 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .IN3 ( \regfile[6][6] ) , .IN4 ( n31 ) , .Q ( n101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U96 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( \regfile[6][7] ) , .IN4 ( n31 ) , .Q ( n102 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U100 ( .IN1 ( n212 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( \regfile[7][2] ) , .IN4 ( PLACE_HFSNET_128 ) , .Q ( n105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U101 ( .IN1 ( n212 ) , .IN2 ( PLACE_HFSNET_16 ) , 
    .IN3 ( PLACE_HFSNET_128 ) , .IN4 ( \regfile[7][3] ) , .Q ( n106 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U102 ( .IN1 ( n212 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[7][4] ) , .IN4 ( PLACE_HFSNET_128 ) , .Q ( n107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U103 ( .IN1 ( n212 ) , .IN2 ( WrData[5] ) , .IN3 ( PLACE_HFSNET_128 ) , 
    .IN4 ( \regfile[7][5] ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[9][0] ) , .IN4 ( n320 ) , .Q ( n119 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U116 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[9][1] ) , .IN4 ( n320 ) , .Q ( n120 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U117 ( .IN1 ( n321 ) , .IN2 ( WrData[2] ) , .IN3 ( \regfile[9][2] ) , 
    .IN4 ( n320 ) , .Q ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U118 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_16 ) , 
    .IN3 ( \regfile[9][3] ) , .IN4 ( n320 ) , .Q ( n122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U119 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[9][4] ) , .IN4 ( n320 ) , .Q ( n123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U120 ( .IN1 ( n321 ) , .IN2 ( WrData[5] ) , .IN3 ( \regfile[9][5] ) , 
    .IN4 ( n320 ) , .Q ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U123 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[10][0] ) , .IN4 ( n39 ) , .Q ( n127 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U127 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[10][4] ) , .IN4 ( n39 ) , .Q ( n131 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U128 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( \regfile[10][5] ) , .IN4 ( n39 ) , .Q ( n132 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U129 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( \regfile[10][6] ) , .IN4 ( n39 ) , .Q ( n133 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( \regfile[10][7] ) , .IN4 ( n39 ) , .Q ( n134 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[11][0] ) , .IN4 ( n40 ) , .Q ( n135 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U132 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[11][1] ) , .IN4 ( n40 ) , .Q ( n136 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U135 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[11][4] ) , .IN4 ( n40 ) , .Q ( n139 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U136 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( \regfile[11][5] ) , .IN4 ( n40 ) , .Q ( n140 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U137 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( \regfile[11][6] ) , .IN4 ( n40 ) , .Q ( n141 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U138 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( \regfile[11][7] ) , .IN4 ( n40 ) , .Q ( n142 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U139 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[12][0] ) , .IN4 ( n41 ) , .Q ( n143 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U140 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[12][1] ) , .IN4 ( n41 ) , .Q ( n144 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U141 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( WrData[2] ) , 
    .IN3 ( \regfile[12][2] ) , .IN4 ( n41 ) , .Q ( n145 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U142 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( PLACE_HFSNET_16 ) , 
    .IN3 ( \regfile[12][3] ) , .IN4 ( n41 ) , .Q ( n146 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U147 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( test_so2_gOb25 ) , .IN4 ( n42 ) , .Q ( n151 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U148 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[13][1] ) , .IN4 ( n42 ) , .Q ( n152 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U149 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( WrData[2] ) , 
    .IN3 ( \regfile[13][2] ) , .IN4 ( n42 ) , .Q ( n153 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_15 ) , 
    .IN3 ( \regfile[13][3] ) , .IN4 ( n42 ) , .Q ( n154 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U153 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( \regfile[13][6] ) , .IN4 ( n42 ) , .Q ( n157 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( \regfile[13][7] ) , .IN4 ( n42 ) , .Q ( n158 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U156 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[14][0] ) , .IN4 ( n43 ) , .Q ( n159 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[14][1] ) , .IN4 ( n43 ) , .Q ( n160 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U158 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( WrData[2] ) , 
    .IN3 ( \regfile[14][2] ) , .IN4 ( n43 ) , .Q ( n161 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( PLACE_HFSNET_15 ) , .IN2 ( PLACE_HFSNET_63 ) , 
    .IN3 ( dftopt27 ) , .IN4 ( n43 ) , .Q ( n162 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U160 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[14][4] ) , .IN4 ( n43 ) , .Q ( n163 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U165 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[15][0] ) , .IN4 ( n203 ) , .Q ( n167 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U166 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[15][1] ) , .IN4 ( n203 ) , .Q ( n168 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U167 ( .IN1 ( n376 ) , .IN2 ( WrData[2] ) , .IN3 ( \regfile[15][2] ) , 
    .IN4 ( n203 ) , .Q ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U168 ( .IN1 ( n376 ) , .IN2 ( WrData[3] ) , .IN3 ( \regfile[15][3] ) , 
    .IN4 ( n203 ) , .Q ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U169 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[15][4] ) , .IN4 ( n203 ) , .Q ( n171 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U170 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( \regfile[15][5] ) , .IN4 ( n203 ) , .Q ( n172 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U176 ( .IN1 ( RdData[0] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N40 ) , 
    .IN4 ( n46 ) , .Q ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U178 ( .IN1 ( RdData[2] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N38 ) , 
    .IN4 ( n46 ) , .Q ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U179 ( .IN1 ( RdData[3] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N37 ) , 
    .IN4 ( n46 ) , .Q ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U180 ( .IN1 ( RdData[4] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N36 ) , 
    .IN4 ( n46 ) , .Q ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U181 ( .IN1 ( RdData[5] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N35 ) , 
    .IN4 ( n46 ) , .Q ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U182 ( .IN1 ( RdData[6] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N34 ) , 
    .IN4 ( n46 ) , .Q ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( PLACE_HFSNET_186 ) , 
    .S ( n12 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( WrData[1] ) , .IN2 ( REG2[1] ) , .S ( n12 ) , 
    .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U18 ( .IN1 ( WrData[6] ) , .IN2 ( \regfile[9][6] ) , .S ( n37 ) , 
    .Q ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U23 ( .IN1 ( WrData[7] ) , .IN2 ( \regfile[9][7] ) , .S ( n37 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( PLACE_HFSNET_17 ) , .IN2 ( \regfile[8][0] ) , 
    .S ( n35 ) , .Q ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U26 ( .IN1 ( PLACE_HFSNET_16 ) , .IN2 ( \regfile[10][3] ) , 
    .S ( n39 ) , .Q ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( PLACE_HFSNET_129 ) , .IN2 ( \regfile[13][4] ) , 
    .S ( n42 ) , .Q ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U30 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( \regfile[14][7] ) , 
    .S ( n43 ) , .Q ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U31 ( .IN1 ( PLACE_HFSNET_14 ) , .IN2 ( \regfile[15][6] ) , 
    .S ( n45 ) , .Q ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U33 ( .IN1 ( PLACE_HFSNET_18 ) , .IN2 ( \regfile[8][1] ) , 
    .S ( n35 ) , .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( WrData[2] ) , .IN2 ( \regfile[10][2] ) , .S ( n39 ) , 
    .Q ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( WrData[5] ) , .IN2 ( \regfile[13][5] ) , .S ( n42 ) , 
    .Q ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U38 ( .IN1 ( WrData[6] ) , .IN2 ( \regfile[14][6] ) , .S ( n43 ) , 
    .Q ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U39 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( dftopt17 ) , .S ( n45 ) , 
    .Q ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( Address[3] ) , .IN2 ( PLACE_HFSNET_165 ) , .Q ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( n332 ) , .IN2 ( n199 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_123_57 ( .INP ( WrData[5] ) , .Z ( PLACE_HFSNET_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( n397 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n389 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U70 ( .IN1 ( n396 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n388 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( WrData[1] ) , .IN3 ( n396 ) , 
    .IN4 ( n23 ) , .Q ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U79 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( WrData[3] ) , .IN3 ( n394 ) , 
    .IN4 ( n23 ) , .Q ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_14 ) , 
    .IN3 ( n391 ) , .IN4 ( n23 ) , .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U86 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( n390 ) , .IN4 ( n23 ) , .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U87 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( REG2[2] ) , .IN4 ( n12 ) , .Q ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U90 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( PLACE_HFSNET_188 ) , .IN4 ( n12 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( n399 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( PLACE_HFSNET_61 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U97 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( dftopt18 ) , .IN4 ( n41 ) , .Q ( n150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U112 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( dftopt15 ) , .IN4 ( n23 ) , .Q ( n57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U113 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( dftopt30 ) , .IN4 ( n23 ) , .Q ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_632_212 ( .INP ( PLACE_HFSNET_140 ) , 
    .Z ( PLACE_HFSNET_138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U125 ( .IN1 ( \regfile[13][4] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][4] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U126 ( .IN1 ( \regfile[13][1] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][1] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U133 ( .IN1 ( \regfile[9][3] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( dftopt24 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U134 ( .IN1 ( dftopt30 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n385 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( \regfile[5][0] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][0] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_107_51 ( .INP ( WrData[6] ) , .Z ( PLACE_HFSNET_13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_287_52 ( .INP ( WrData[6] ) , .Z ( PLACE_HFSNET_14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_127_53 ( .INP ( WrData[3] ) , .Z ( PLACE_HFSNET_15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U192 ( .IN1 ( WrData[0] ) , .IN2 ( PLACE_HFSNET_67 ) , .IN3 ( n389 ) , 
    .IN4 ( n20 ) , .Q ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_78_226 ( .INP ( n281 ) , .Z ( PLACE_HFSNET_149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U228 ( .IN1 ( n294 ) , .IN2 ( n2 ) , .Q ( n281 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_131_59 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_201_60 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_71_61 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_520_62 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_578_63 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_647_64 ( .INP ( PLACE_HFSNET_27 ) , 
    .Z ( PLACE_HFSNET_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_795_65 ( .INP ( PLACE_HFSNET_53 ) , 
    .Z ( PLACE_HFSNET_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2590_67 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1785_84 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1910_85 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1847_86 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1581_87 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1628_88 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1526_89 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_850_90 ( .INP ( RST ) , .Z ( PLACE_HFSNET_46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_162_55 ( .INP ( WrData[0] ) , .Z ( PLACE_HFSNET_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_105_56 ( .INP ( WrData[1] ) , .Z ( PLACE_HFSNET_18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_105_58 ( .INP ( WrData[7] ) , .Z ( PLACE_HFSNET_20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1077_91 ( .INP ( RST ) , .Z ( PLACE_HFSNET_47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U261 ( .IN1 ( RdEn ) , .IN2 ( PLACE_HFSNET_164 ) , .Q ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1117_94 ( .INP ( RST ) , .Z ( PLACE_HFSNET_50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_890_96 ( .INP ( RST ) , .Z ( PLACE_HFSNET_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U267 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( WrData[7] ) , 
    .IN3 ( \regfile[8][7] ) , .IN4 ( n35 ) , .Q ( n118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U268 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( PLACE_HFSNET_16 ) , 
    .IN3 ( dftopt24 ) , .IN4 ( n35 ) , .Q ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U269 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( \regfile[8][5] ) , .IN4 ( n35 ) , .Q ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U270 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( WrData[2] ) , 
    .IN3 ( \regfile[8][2] ) , .IN4 ( n35 ) , .Q ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U271 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[8][4] ) , .IN4 ( n35 ) , .Q ( n115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U272 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( \regfile[8][6] ) , .IN4 ( n35 ) , .Q ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U273 ( .IN1 ( WrData[4] ) , .IN2 ( PLACE_HFSNET_67 ) , .IN3 ( n385 ) , 
    .IN4 ( n20 ) , .Q ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U275 ( .IN1 ( PLACE_HFSNET_12 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( n387 ) , .IN4 ( n20 ) , .Q ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U276 ( .IN1 ( WrData[1] ) , .IN2 ( PLACE_HFSNET_67 ) , .IN3 ( n388 ) , 
    .IN4 ( n20 ) , .Q ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U278 ( .IN1 ( dftopt15 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n387 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U280 ( .IN1 ( \regfile[10][0] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][0] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n214 ) , 
    .Q ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U282 ( .IN1 ( \regfile[14][0] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][0] ) , .IN4 ( n281 ) , .IN5 ( n215 ) , .Q ( n221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U283 ( .IN1 ( \regfile[6][0] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][0] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n216 ) , 
    .Q ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U284 ( .IN1 ( REG2[0] ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[0] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n217 ) , 
    .Q ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U285 ( .IN1 ( n219 ) , .IN2 ( n285 ) , .IN3 ( n218 ) , .IN4 ( n283 ) , 
    .Q ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U286 ( .IN1 ( n222 ) , .IN2 ( n290 ) , .IN3 ( n221 ) , .IN4 ( n412 ) , 
    .IN5 ( n220 ) , .Q ( N40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U288 ( .IN1 ( \regfile[10][1] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][1] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n223 ) , 
    .Q ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U289 ( .IN1 ( \regfile[14][1] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][1] ) , .IN4 ( n281 ) , .IN5 ( n224 ) , .Q ( n230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U290 ( .IN1 ( \regfile[5][1] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][1] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n225 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U291 ( .IN1 ( \regfile[6][1] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][1] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n225 ) , 
    .Q ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U292 ( .IN1 ( REG2[1] ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[1] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n226 ) , 
    .Q ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U293 ( .IN1 ( n228 ) , .IN2 ( n285 ) , .IN3 ( n227 ) , .IN4 ( n283 ) , 
    .Q ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U294 ( .IN1 ( n231 ) , .IN2 ( n290 ) , .IN3 ( n230 ) , .IN4 ( n411 ) , 
    .IN5 ( n229 ) , .Q ( N39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U295 ( .IN1 ( \regfile[9][2] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][2] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n232 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U296 ( .IN1 ( \regfile[10][2] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][2] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n232 ) , 
    .Q ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U297 ( .IN1 ( \regfile[14][2] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][2] ) , .IN4 ( n281 ) , .IN5 ( n233 ) , .Q ( n239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U298 ( .IN1 ( \regfile[5][2] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][2] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U299 ( .IN1 ( dftopt13 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][2] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n234 ) , 
    .Q ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U300 ( .IN1 ( REG2[2] ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[2] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n235 ) , 
    .Q ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U301 ( .IN1 ( n237 ) , .IN2 ( n285 ) , .IN3 ( n236 ) , .IN4 ( n283 ) , 
    .Q ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U302 ( .IN1 ( n240 ) , .IN2 ( n290 ) , .IN3 ( n239 ) , .IN4 ( n411 ) , 
    .IN5 ( n238 ) , .Q ( N38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U303 ( .IN1 ( \regfile[10][3] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][3] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n241 ) , 
    .Q ( n249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U305 ( .IN1 ( dftopt27 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][3] ) , .IN4 ( n281 ) , .IN5 ( n242 ) , .Q ( n248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U306 ( .IN1 ( \regfile[5][3] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][3] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n243 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U307 ( .IN1 ( \regfile[6][3] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][3] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n243 ) , 
    .Q ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U308 ( .IN1 ( n319 ) , .IN2 ( PLACE_HFSNET_139 ) , .IN3 ( REG3[3] ) , 
    .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n244 ) , .Q ( n245 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U309 ( .IN1 ( n246 ) , .IN2 ( n285 ) , .IN3 ( n245 ) , .IN4 ( n283 ) , 
    .Q ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U310 ( .IN1 ( n249 ) , .IN2 ( n290 ) , .IN3 ( n248 ) , .IN4 ( n411 ) , 
    .IN5 ( n247 ) , .Q ( N37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U312 ( .IN1 ( \regfile[10][4] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][4] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n250 ) , 
    .Q ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U313 ( .IN1 ( \regfile[14][4] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][4] ) , .IN4 ( n281 ) , .IN5 ( n251 ) , .Q ( n257 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U314 ( .IN1 ( \regfile[5][4] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][4] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n252 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U315 ( .IN1 ( \regfile[6][4] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][4] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n252 ) , 
    .Q ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U316 ( .IN1 ( REG2[4] ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[4] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n253 ) , 
    .Q ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U317 ( .IN1 ( n255 ) , .IN2 ( n285 ) , .IN3 ( n254 ) , .IN4 ( n283 ) , 
    .Q ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U318 ( .IN1 ( n258 ) , .IN2 ( n290 ) , .IN3 ( n257 ) , .IN4 ( n411 ) , 
    .IN5 ( n256 ) , .Q ( N36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U319 ( .IN1 ( \regfile[9][5] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][5] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n259 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U320 ( .IN1 ( \regfile[10][5] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][5] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n259 ) , 
    .Q ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U321 ( .IN1 ( \regfile[14][5] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][5] ) , .IN4 ( n281 ) , .IN5 ( n260 ) , .Q ( n266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U323 ( .IN1 ( \regfile[6][5] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][5] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n261 ) , 
    .Q ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U324 ( .IN1 ( PLACE_HFSNET_188 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[5] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n262 ) , 
    .Q ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U325 ( .IN1 ( n264 ) , .IN2 ( n285 ) , .IN3 ( n263 ) , .IN4 ( n283 ) , 
    .Q ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U326 ( .IN1 ( n267 ) , .IN2 ( n290 ) , .IN3 ( n266 ) , .IN4 ( n412 ) , 
    .IN5 ( n265 ) , .Q ( N35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U328 ( .IN1 ( \regfile[10][6] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][6] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n268 ) , 
    .Q ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U329 ( .IN1 ( \regfile[13][6] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][6] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U330 ( .IN1 ( \regfile[14][6] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][6] ) , .IN4 ( n281 ) , .IN5 ( n269 ) , .Q ( n275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U331 ( .IN1 ( \regfile[5][6] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][6] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U332 ( .IN1 ( \regfile[6][6] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][6] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n270 ) , 
    .Q ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U333 ( .IN1 ( n391 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n384 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U334 ( .IN1 ( n399 ) , .IN2 ( PLACE_HFSNET_139 ) , .IN3 ( REG3[6] ) , 
    .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n271 ) , .Q ( n272 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U335 ( .IN1 ( n273 ) , .IN2 ( n285 ) , .IN3 ( n272 ) , .IN4 ( n283 ) , 
    .Q ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U336 ( .IN1 ( n276 ) , .IN2 ( n290 ) , .IN3 ( n275 ) , .IN4 ( n412 ) , 
    .IN5 ( n274 ) , .Q ( N34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U338 ( .IN1 ( \regfile[10][7] ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( \regfile[11][7] ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n277 ) , 
    .Q ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U339 ( .IN1 ( \regfile[13][7] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( dftopt18 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n278 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U340 ( .IN1 ( \regfile[14][7] ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( dftopt17 ) , .IN4 ( n281 ) , .IN5 ( n278 ) , .Q ( n287 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U341 ( .IN1 ( \regfile[5][7] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][7] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n279 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U342 ( .IN1 ( \regfile[6][7] ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( \regfile[7][7] ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n279 ) , 
    .Q ( n284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U343 ( .IN1 ( PLACE_HFSNET_186 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[7] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n280 ) , 
    .Q ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U344 ( .IN1 ( n285 ) , .IN2 ( n284 ) , .IN3 ( n283 ) , .IN4 ( n282 ) , 
    .Q ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U345 ( .IN1 ( n290 ) , .IN2 ( n289 ) , .IN3 ( n412 ) , .IN4 ( n287 ) , 
    .IN5 ( n286 ) , .Q ( N33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U370 ( .IN1 ( n390 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n383 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_297_113 ( .INP ( n12 ) , .ZN ( PLACE_HFSNET_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_282_115 ( .INP ( n43 ) , .ZN ( PLACE_HFSNET_63 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_110_245 ( .INP ( PLACE_HFSNET_167 ) , 
    .Z ( PLACE_HFSNET_166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U174 ( .IN1 ( Address[2] ) , .IN2 ( n403 ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 RdData_Valid_reg ( .D ( n183 ) , .SI ( \regfile[15][5] ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( RdData_Valid ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[7] ( .D ( n182 ) , .SI ( \regfile[13][1] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[6] ( .D ( n181 ) , .SI ( dftopt28 ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[5] ( .D ( n180 ) , .SI ( RdData[1] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[5] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[4] ( .D ( n179 ) , .SI ( RdData[6] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[4] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[3] ( .D ( n178 ) , .SI ( \regfile[15][0] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[3] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[2] ( .D ( n177 ) , .SI ( RdData[7] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[2] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[1] ( .D ( n176 ) , .SI ( \regfile[15][2] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[1] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[0] ( .D ( n175 ) , .SI ( RdData[4] ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( RdData[0] ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][7] ( .D ( n174 ) , .SI ( \regfile[15][6] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( dftopt17 ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][6] ( .D ( n173 ) , .SI ( \regfile[14][7] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][6] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][5] ( .D ( n172 ) , .SI ( dftopt23 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][5] ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][4] ( .D ( n171 ) , .SI ( \regfile[15][3] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][4] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][3] ( .D ( n170 ) , .SI ( RdData_Valid ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][3] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][2] ( .D ( n169 ) , .SI ( \regfile[14][6] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][2] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][1] ( .D ( n168 ) , .SI ( \regfile[15][4] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][1] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][0] ( .D ( n167 ) , .SI ( \regfile[15][1] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][0] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][7] ( .D ( n166 ) , .SI ( n385 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[14][7] ) , .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][6] ( .D ( n165 ) , .SI ( \regfile[13][4] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[14][6] ) , .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][7] ( .D ( n158 ) , .SI ( \regfile[13][3] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][7] ) , .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][6] ( .D ( n157 ) , .SI ( \regfile[13][5] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[13][6] ) , .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][5] ( .D ( n156 ) , .SI ( \regfile[13][7] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][5] ) , .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][4] ( .D ( n155 ) , .SI ( \regfile[13][6] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[13][4] ) , .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][3] ( .D ( n154 ) , .SI ( \regfile[14][0] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \regfile[13][3] ) , .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][2] ( .D ( n153 ) , .SI ( dftopt37 ) , 
    .SE ( PLACE_HFSNET_103 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][2] ) , .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][1] ( .D ( n152 ) , .SI ( test_so2_gOb25 ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][1] ) , .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][0] ( .D ( n151 ) , .SI ( \regfile[13][2] ) , 
    .SE ( PLACE_HFSNET_103 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( test_so2_gOb25 ) , .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][5] ( .D ( n148 ) , .SI ( dftopt19 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( dftopt21 ) , .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][4] ( .D ( n147 ) , .SI ( \regfile[11][7] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[12][4] ) , .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][7] ( .D ( n142 ) , .SI ( \regfile[7][7] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][7] ) , .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][6] ( .D ( n141 ) , .SI ( \regfile[11][5] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][6] ) , .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][5] ( .D ( n140 ) , .SI ( \regfile[11][3] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][5] ) , .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][4] ( .D ( n139 ) , .SI ( \regfile[12][4] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][4] ) , .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][3] ( .D ( n138 ) , .SI ( \regfile[11][2] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][3] ) , .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][2] ( .D ( n137 ) , .SI ( \regfile[8][0] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][2] ) , .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][1] ( .D ( n136 ) , .SI ( \regfile[10][2] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][1] ) , .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][0] ( .D ( n135 ) , .SI ( \regfile[11][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][0] ) , .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][3] ( .D ( n130 ) , .SI ( \regfile[8][2] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[10][3] ) , .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][2] ( .D ( n129 ) , .SI ( \regfile[8][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[10][2] ) , .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][7] ( .D ( n126 ) , .SI ( \regfile[9][6] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][7] ) , .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][6] ( .D ( n125 ) , .SI ( \regfile[8][7] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][6] ) , .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][5] ( .D ( n124 ) , .SI ( \regfile[9][0] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][5] ) , .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][4] ( .D ( n123 ) , .SI ( \regfile[9][3] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][4] ) , .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][3] ( .D ( n122 ) , .SI ( \regfile[9][2] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][3] ) , .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][2] ( .D ( n121 ) , .SI ( \regfile[9][5] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][2] ) , .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][1] ( .D ( n120 ) , .SI ( \regfile[11][4] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][1] ) , .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][0] ( .D ( n119 ) , .SI ( \regfile[9][7] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][0] ) , .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][7] ( .D ( n118 ) , .SI ( \regfile[8][6] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][7] ) , .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][6] ( .D ( n117 ) , .SI ( \regfile[8][4] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][6] ) , .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][5] ( .D ( n116 ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][5] ) , .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][4] ( .D ( n115 ) , .SI ( dftopt25 ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][4] ) , .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][3] ( .D ( n114 ) , .SI ( \regfile[9][4] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( dftopt24 ) , .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][2] ( .D ( n113 ) , .SI ( \regfile[8][5] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][2] ) , .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][1] ( .D ( n112 ) , .SI ( \regfile[10][3] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][1] ) , .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][0] ( .D ( n111 ) , .SI ( \regfile[11][0] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][0] ) , .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][7] ( .D ( n110 ) , .SI ( \regfile[7][6] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][7] ) , .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][6] ( .D ( n109 ) , .SI ( \regfile[7][1] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][6] ) , .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][5] ( .D ( n108 ) , .SI ( \regfile[5][1] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][5] ) , .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][4] ( .D ( n107 ) , .SI ( \regfile[7][3] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][4] ) , .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][3] ( .D ( n106 ) , .SI ( \regfile[7][0] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][3] ) , .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][2] ( .D ( n105 ) , .SI ( \regfile[6][7] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[7][2] ) , .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][1] ( .D ( n104 ) , .SI ( \regfile[7][5] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][1] ) , .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][0] ( .D ( n103 ) , .SI ( \regfile[9][1] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][0] ) , .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][7] ( .D ( n102 ) , .SI ( \regfile[7][4] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][7] ) , .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][6] ( .D ( n101 ) , .SI ( \regfile[7][2] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][6] ) , .QN ( SYNOPSYS_UNCONNECTED_65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][5] ( .D ( n100 ) , .SI ( \regfile[6][1] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[6][5] ) , .QN ( SYNOPSYS_UNCONNECTED_66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][4] ( .D ( n99 ) , .SI ( \regfile[5][3] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][4] ) , .QN ( SYNOPSYS_UNCONNECTED_67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][3] ( .D ( n98 ) , .SI ( \regfile[5][2] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[6][3] ) , .QN ( SYNOPSYS_UNCONNECTED_68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][2] ( .D ( n97 ) , .SI ( \regfile[6][3] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( dftopt13 ) , .QN ( SYNOPSYS_UNCONNECTED_69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][1] ( .D ( n96 ) , .SI ( REG2[3] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[6][1] ) , .QN ( SYNOPSYS_UNCONNECTED_70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][0] ( .D ( n95 ) , .SI ( \regfile[5][0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[6][0] ) , .QN ( SYNOPSYS_UNCONNECTED_71 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][7] ( .D ( n94 ) , .SI ( \regfile[4][6] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[5][7] ) , .QN ( SYNOPSYS_UNCONNECTED_72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][6] ( .D ( n93 ) , .SI ( \regfile[5][5] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][6] ) , .QN ( SYNOPSYS_UNCONNECTED_73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][5] ( .D ( n92 ) , .SI ( \regfile[6][6] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][5] ) , .QN ( SYNOPSYS_UNCONNECTED_74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][4] ( .D ( n91 ) , .SI ( \regfile[6][4] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][4] ) , .QN ( SYNOPSYS_UNCONNECTED_75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][3] ( .D ( n90 ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][3] ) , .QN ( SYNOPSYS_UNCONNECTED_76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][2] ( .D ( n89 ) , .SI ( \regfile[5][6] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][2] ) , .QN ( SYNOPSYS_UNCONNECTED_77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][1] ( .D ( n88 ) , .SI ( \regfile[5][7] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[5][1] ) , .QN ( SYNOPSYS_UNCONNECTED_78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][0] ( .D ( n87 ) , .SI ( \regfile[5][4] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[5][0] ) , .QN ( SYNOPSYS_UNCONNECTED_79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][7] ( .D ( n86 ) , .SI ( dftopt16 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][7] ) , .QN ( SYNOPSYS_UNCONNECTED_80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][6] ( .D ( n85 ) , .SI ( REG2[7] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[4][6] ) , .QN ( SYNOPSYS_UNCONNECTED_81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][5] ( .D ( n84 ) , .SI ( \regfile[4][0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][5] ) , .QN ( SYNOPSYS_UNCONNECTED_82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][4] ( .D ( n83 ) , .SI ( \regfile[6][0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][4] ) , .QN ( SYNOPSYS_UNCONNECTED_83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][3] ( .D ( n82 ) , .SI ( \regfile[4][4] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][3] ) , .QN ( SYNOPSYS_UNCONNECTED_84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][2] ( .D ( n81 ) , .SI ( \regfile[4][7] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][2] ) , .QN ( SYNOPSYS_UNCONNECTED_85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][1] ( .D ( n80 ) , .SI ( \regfile[4][3] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][1] ) , .QN ( SYNOPSYS_UNCONNECTED_86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][0] ( .D ( n79 ) , .SI ( \regfile[4][2] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( \regfile[4][0] ) , .QN ( SYNOPSYS_UNCONNECTED_87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][7] ( .D ( n78 ) , .SI ( dftopt14 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[7] ) , .QN ( SYNOPSYS_UNCONNECTED_88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][6] ( .D ( n77 ) , .SI ( REG2[5] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[6] ) , .QN ( SYNOPSYS_UNCONNECTED_89 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[3][5] ( .D ( n76 ) , .SI ( REG2[2] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( REG3[5] ) , .QN ( SYNOPSYS_UNCONNECTED_90 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][4] ( .D ( n75 ) , .SI ( REG3[3] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[4] ) , .QN ( SYNOPSYS_UNCONNECTED_91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][3] ( .D ( n74 ) , .SI ( REG3[6] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[3] ) , .QN ( SYNOPSYS_UNCONNECTED_92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][2] ( .D ( n73 ) , .SI ( REG3[7] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[2] ) , .QN ( SYNOPSYS_UNCONNECTED_93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][1] ( .D ( n72 ) , .SI ( n396 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( REG3[1] ) , .QN ( SYNOPSYS_UNCONNECTED_94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][0] ( .D ( n71 ) , .SI ( \regfile[4][5] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG3[0] ) , .QN ( SYNOPSYS_UNCONNECTED_95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[2][7] ( .D ( n70 ) , .SI ( REG2[0] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[7] ) , .QN ( SYNOPSYS_UNCONNECTED_96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][6] ( .D ( n69 ) , .SI ( \regfile[6][5] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( n399 ) , .QN ( REG2[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][5] ( .D ( n68 ) , .SI ( REG2[1] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[5] ) , .QN ( SYNOPSYS_UNCONNECTED_97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][4] ( .D ( n67 ) , .SI ( \regfile[4][1] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[4] ) , .QN ( n413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][3] ( .D ( n66 ) , .SI ( REG2[4] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[3] ) , .QN ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][2] ( .D ( n65 ) , .SI ( REG3[0] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG2[2] ) , .QN ( SYNOPSYS_UNCONNECTED_98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][1] ( .D ( n64 ) , .SI ( n384 ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[1] ) , .QN ( SYNOPSYS_UNCONNECTED_99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][7] ( .D ( n62 ) , .SI ( REG0[5] ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n390 ) , .QN ( REG1[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][6] ( .D ( n61 ) , .SI ( n387 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n391 ) , .QN ( REG1[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][5] ( .D ( n60 ) , .SI ( n388 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n392 ) , .QN ( REG1[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][4] ( .D ( n59 ) , .SI ( n386 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( dftopt30 ) , .QN ( REG1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][3] ( .D ( n58 ) , .SI ( n397 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( n394 ) , .QN ( REG1[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX2 \regfile_reg[1][2] ( .D ( n57 ) , .SI ( REG3[1] ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( dftopt15 ) , .QN ( REG1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][1] ( .D ( n56 ) , .SI ( n394 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( n396 ) , .QN ( REG1[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][7] ( .D ( n54 ) , .SI ( n389 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n383 ) , .QN ( REG0[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][6] ( .D ( n53 ) , .SI ( n391 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n384 ) , .QN ( REG0[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][5] ( .D ( n52 ) , .SI ( n392 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( REG0[5] ) , .QN ( SYNOPSYS_UNCONNECTED_100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][4] ( .D ( n51 ) , .SI ( REG3[4] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n385 ) , .QN ( REG0[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][3] ( .D ( n50 ) , .SI ( n390 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n386 ) , .QN ( REG0[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][2] ( .D ( n49 ) , .SI ( REG3[5] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n387 ) , .QN ( REG0[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][1] ( .D ( n48 ) , .SI ( n383 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n388 ) , .QN ( REG0[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][0] ( .D ( n47 ) , .SI ( dftopt29 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n389 ) , .QN ( REG0[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][0] ( .D ( n55 ) , .SI ( REG3[2] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n397 ) , .QN ( REG1[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][5] ( .D ( n164 ) , .SI ( \regfile[14][4] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][5] ) , .QN ( SYNOPSYS_UNCONNECTED_101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][7] ( .D ( n150 ) , .SI ( \regfile[14][2] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( dftopt18 ) , .QN ( SYNOPSYS_UNCONNECTED_102 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][6] ( .D ( n149 ) , .SI ( \regfile[11][6] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[12][6] ) , .QN ( SYNOPSYS_UNCONNECTED_103 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][1] ( .D ( n160 ) , .SI ( \regfile[12][2] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \regfile[14][1] ) , .QN ( SYNOPSYS_UNCONNECTED_104 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][0] ( .D ( n159 ) , .SI ( \regfile[14][1] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \regfile[14][0] ) , .QN ( SYNOPSYS_UNCONNECTED_105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][1] ( .D ( n144 ) , .SI ( \regfile[12][3] ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][1] ) , .QN ( SYNOPSYS_UNCONNECTED_106 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][0] ( .D ( n143 ) , .SI ( \regfile[12][1] ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][0] ) , .QN ( SYNOPSYS_UNCONNECTED_107 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][2] ( .D ( n161 ) , .SI ( \regfile[14][5] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][2] ) , .QN ( SYNOPSYS_UNCONNECTED_108 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][2] ( .D ( n145 ) , .SI ( \regfile[12][0] ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][2] ) , .QN ( SYNOPSYS_UNCONNECTED_109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][4] ( .D ( n163 ) , .SI ( \regfile[12][6] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][4] ) , .QN ( SYNOPSYS_UNCONNECTED_110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][3] ( .D ( n162 ) , .SI ( \regfile[10][7] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt27 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][3] ( .D ( n146 ) , .SI ( dftopt22 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][3] ) , .QN ( SYNOPSYS_UNCONNECTED_112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][6] ( .D ( n133 ) , .SI ( \regfile[10][4] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][6] ) , .QN ( SYNOPSYS_UNCONNECTED_113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][7] ( .D ( n134 ) , .SI ( \regfile[10][0] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][7] ) , .QN ( SYNOPSYS_UNCONNECTED_114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][5] ( .D ( n132 ) , .SI ( \regfile[10][6] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][5] ) , .QN ( SYNOPSYS_UNCONNECTED_115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][1] ( .D ( n128 ) , .SI ( \regfile[10][5] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][1] ) , .QN ( SYNOPSYS_UNCONNECTED_116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][0] ( .D ( n127 ) , .SI ( \regfile[10][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][0] ) , .QN ( SYNOPSYS_UNCONNECTED_117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][4] ( .D ( n131 ) , .SI ( dftopt26 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][4] ) , .QN ( SYNOPSYS_UNCONNECTED_118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_102_198 ( .INP ( WrData[4] ) , .Z ( PLACE_HFSNET_129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_459_213 ( .INP ( PLACE_HFSNET_140 ) , 
    .Z ( PLACE_HFSNET_139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( n394 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( n386 ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U105 ( .IN1 ( RdData[7] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N33 ) , 
    .IN4 ( n46 ) , .Q ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U107 ( .IN1 ( \regfile[5][5] ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( \regfile[4][5] ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U109 ( .IN1 ( PLACE_HFSNET_18 ) , .IN2 ( \regfile[10][1] ) , 
    .S ( n39 ) , .Q ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U111 ( .IN1 ( WrData[5] ) , .IN2 ( \regfile[14][5] ) , .S ( n43 ) , 
    .Q ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U124 ( .IN1 ( n413 ) , .IN2 ( PLACE_HFSNET_61 ) , .IN3 ( n405 ) , 
    .QN ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U144 ( .IN1 ( PLACE_HFSNET_16 ) , .IN2 ( \regfile[11][3] ) , 
    .S ( n40 ) , .Q ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U145 ( .IN1 ( RdData_Valid ) , .IN2 ( PLACE_HFSNET_166 ) , 
    .IN3 ( n46 ) , .Q ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U161 ( .IN1 ( n291 ) , .IN2 ( n292 ) , .Q ( n414 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_220_50 ( .INP ( WrData[2] ) , .Z ( PLACE_HFSNET_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_165_54 ( .INP ( WrData[3] ) , .Z ( PLACE_HFSNET_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U376 ( .IN1 ( WrData[2] ) , .IN2 ( \regfile[11][2] ) , .S ( n40 ) , 
    .Q ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n402 ) , .ZN ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_299_117 ( .INP ( n39 ) , .ZN ( PLACE_HFSNET_65 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U186 ( .INP ( n6 ) , .ZN ( n407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U379 ( .INP ( n414 ) , .ZN ( n411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U380 ( .INP ( n414 ) , .ZN ( n412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_219_227 ( .INP ( PLACE_HFSNET_151 ) , 
    .Z ( PLACE_HFSNET_150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_318_228 ( .INP ( n281 ) , .Z ( PLACE_HFSNET_151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_934_214 ( .INP ( PLACE_HFSNET_142 ) , 
    .Z ( PLACE_HFSNET_140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U240 ( .INP ( Address[3] ) , .ZN ( n291 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U250 ( .INP ( n318 ) , .ZN ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_182_194 ( .INP ( n213 ) , .ZN ( PLACE_HFSNET_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_330_195 ( .INP ( n212 ) , .ZN ( PLACE_HFSNET_128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U347 ( .INP ( n37 ) , .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_524_123 ( .INP ( n40 ) , .ZN ( PLACE_HFSNET_71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_305_121 ( .INP ( n42 ) , .ZN ( PLACE_HFSNET_69 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U357 ( .INP ( n45 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_524_238 ( .INP ( PLACE_HFSNET_161 ) , 
    .Z ( PLACE_HFSNET_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_700_239 ( .INP ( PLACE_HFSNET_161 ) , 
    .Z ( PLACE_HFSNET_160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_997_240 ( .INP ( PLACE_HFSNET_163 ) , 
    .Z ( PLACE_HFSNET_161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1195_216 ( .INP ( n210 ) , .ZN ( PLACE_HFSNET_142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_709_217 ( .INP ( PLACE_HFSNET_144 ) , 
    .Z ( PLACE_HFSNET_143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_826_218 ( .INP ( PLACE_HFSNET_147 ) , 
    .Z ( PLACE_HFSNET_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1147_242 ( .INP ( n209 ) , .ZN ( PLACE_HFSNET_163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX2 \regfile_reg[2][0] ( .D ( n63 ) , .SI ( n399 ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( CLK ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[0] ) , .QN ( SYNOPSYS_UNCONNECTED_119 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U9 ( .IN1 ( n29 ) , .IN2 ( n24 ) , .Q ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X2 U12 ( .IN1 ( n44 ) , .IN2 ( Address[0] ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U14 ( .IN1 ( Address[2] ) , .IN2 ( Address[1] ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( n44 ) , .IN2 ( n6 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n382 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n382 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( Address[1] ) , .ZN ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_347_119 ( .INP ( n20 ) , .ZN ( PLACE_HFSNET_67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4269_135 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4371_136 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4429_137 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4317_138 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U48 ( .IN1 ( n291 ) , .IN2 ( n200 ) , .QN ( n290 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X1 U49 ( .IN1 ( n200 ) , .IN2 ( Address[3] ) , .QN ( n283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_114_219 ( .INP ( PLACE_HFSNET_146 ) , 
    .Z ( PLACE_HFSNET_145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_404_220 ( .INP ( PLACE_HFSNET_147 ) , 
    .Z ( PLACE_HFSNET_146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_940_221 ( .INP ( n211 ) , .ZN ( PLACE_HFSNET_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U61 ( .IN1 ( n38 ) , .IN2 ( n32 ) , .QN ( n203 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4205_139 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4588_140 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U143 ( .INP ( Address[0] ) , .ZN ( n381 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U173 ( .IN1 ( n22 ) , .IN2 ( n32 ) , .QN ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U175 ( .IN1 ( n29 ) , .IN2 ( n22 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U177 ( .IN1 ( \regfile[7][6] ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( n212 ) , .Q ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U187 ( .IN1 ( \regfile[7][7] ) , .IN2 ( WrData[7] ) , .S ( n212 ) , 
    .Q ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U191 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( n392 ) , .S ( n23 ) , 
    .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U193 ( .IN1 ( WrData[0] ) , .IN2 ( n397 ) , .S ( n23 ) , .Q ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_823_43 ( .INP ( n23 ) , .ZN ( PLACE_HFSNET_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U198 ( .IN1 ( WrData[0] ) , .IN2 ( REG3[0] ) , .S ( n27 ) , 
    .Q ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U199 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( REG3[5] ) , .S ( n27 ) , 
    .Q ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_800_45 ( .INP ( n27 ) , .ZN ( PLACE_HFSNET_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U202 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( \regfile[6][5] ) , 
    .S ( n31 ) , .Q ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U203 ( .IN1 ( WrData[1] ) , .IN2 ( \regfile[6][1] ) , .S ( n31 ) , 
    .Q ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_920_39 ( .INP ( n31 ) , .ZN ( PLACE_HFSNET_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U208 ( .IN1 ( WrData[0] ) , .IN2 ( \regfile[4][0] ) , .S ( n28 ) , 
    .Q ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U209 ( .IN1 ( PLACE_HFSNET_13 ) , .IN2 ( \regfile[4][6] ) , 
    .S ( n28 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_740_41 ( .INP ( n28 ) , .ZN ( PLACE_HFSNET_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U212 ( .IN1 ( n33 ) , .IN2 ( n6 ) , .Q ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U215 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( Address[3] ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4672_141 ( .INP ( PLACE_HFSNET_88 ) , 
    .Z ( PLACE_HFSNET_86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U223 ( .IN1 ( n22 ) , .IN2 ( n26 ) , .QN ( n12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U224 ( .IN1 ( n402 ) , .IN2 ( n381 ) , .QN ( n210 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U225 ( .INP ( Address[0] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U226 ( .IN1 ( n33 ) , .IN2 ( n407 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U241 ( .IN1 ( WrData[3] ) , .IN2 ( PLACE_HFSNET_67 ) , .IN3 ( n386 ) , 
    .IN4 ( n20 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U249 ( .INP ( n199 ) , .ZN ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U251 ( .INP ( Address[2] ) , .ZN ( n199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X1 U254 ( .IN1 ( n292 ) , .IN2 ( Address[3] ) , .QN ( n285 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U258 ( .INP ( n200 ) , .ZN ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4810_143 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1206_155 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U262 ( .IN1 ( n36 ) , .IN2 ( n32 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U266 ( .IN1 ( n26 ) , .IN2 ( n36 ) , .QN ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1292_156 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_827_49 ( .INP ( n35 ) , .ZN ( PLACE_HFSNET_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U281 ( .IN1 ( n381 ) , .IN2 ( n332 ) , .Q ( n211 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U311 ( .IN1 ( \regfile[5][6] ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( n213 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U327 ( .IN1 ( \regfile[5][7] ) , .IN2 ( WrData[7] ) , .S ( n213 ) , 
    .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U337 ( .IN1 ( \regfile[5][1] ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .S ( n213 ) , .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U350 ( .IN1 ( WrData[5] ) , .IN2 ( dftopt21 ) , .S ( n41 ) , 
    .Q ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U353 ( .IN1 ( PLACE_HFSNET_129 ) , .IN2 ( \regfile[12][4] ) , 
    .S ( n41 ) , .Q ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U355 ( .IN1 ( WrData[6] ) , .IN2 ( \regfile[12][6] ) , .S ( n41 ) , 
    .Q ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_711_47 ( .INP ( n41 ) , .ZN ( PLACE_HFSNET_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U362 ( .IN1 ( RdData[1] ) , .IN2 ( PLACE_HFSNET_166 ) , .IN3 ( N39 ) , 
    .IN4 ( n46 ) , .Q ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U363 ( .IN1 ( \regfile[13][3] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][3] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n242 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U366 ( .IN1 ( \regfile[13][5] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( dftopt21 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n260 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U367 ( .IN1 ( \regfile[9][4] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][4] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n250 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U373 ( .IN1 ( \regfile[9][6] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][6] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n268 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U375 ( .IN1 ( \regfile[9][0] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][0] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n214 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U378 ( .IN1 ( n294 ) , .IN2 ( n2 ) , .Q ( n209 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U381 ( .INP ( n381 ) , .ZN ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U382 ( .INP ( n403 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U384 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( WrData[4] ) , .QN ( n405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1249_157 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U388 ( .IN1 ( \regfile[9][7] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][7] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n277 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U389 ( .IN1 ( \regfile[9][1] ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( \regfile[8][1] ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n223 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U390 ( .IN1 ( test_so2_gOb25 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][0] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n215 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U391 ( .IN1 ( \regfile[13][2] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( \regfile[12][2] ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n233 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U396 ( .IN1 ( n32 ) , .IN2 ( n24 ) , .Q ( n212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U397 ( .IN1 ( n24 ) , .IN2 ( n21 ) , .QN ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U398 ( .IN1 ( n26 ) , .IN2 ( n24 ) , .QN ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U399 ( .IN1 ( \regfile[5][5] ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .S ( n213 ) , .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U400 ( .IN1 ( n36 ) , .IN2 ( n29 ) , .QN ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U406 ( .IN1 ( \regfile[7][0] ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .S ( n212 ) , .Q ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U407 ( .IN1 ( \regfile[7][1] ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .S ( n212 ) , .Q ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_817_158 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_868_159 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_767_160 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U411 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( n383 ) , .IN4 ( n20 ) , .Q ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U412 ( .IN1 ( PLACE_HFSNET_14 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( n384 ) , .IN4 ( n20 ) , .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U413 ( .IN1 ( n22 ) , .IN2 ( n21 ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U414 ( .IN1 ( Address[1] ) , .IN2 ( Address[2] ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U415 ( .IN1 ( n36 ) , .IN2 ( n21 ) , .QN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U416 ( .IN1 ( n38 ) , .IN2 ( n21 ) , .QN ( n320 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U417 ( .IN1 ( n38 ) , .IN2 ( n21 ) , .QN ( n37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U418 ( .IN1 ( n38 ) , .IN2 ( n29 ) , .QN ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U419 ( .IN1 ( n38 ) , .IN2 ( n32 ) , .QN ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U420 ( .IN1 ( n26 ) , .IN2 ( n38 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U421 ( .IN1 ( n392 ) , .IN2 ( PLACE_HFSNET_146 ) , .IN3 ( REG0[5] ) , 
    .IN4 ( PLACE_HFSNET_159 ) , .Q ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U422 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( REG0[5] ) , .IN4 ( n20 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_988_162 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_262_185 ( .INP ( PLACE_HFSNET_123 ) , 
    .Z ( PLACE_HFSNET_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_384_186 ( .INP ( PLACE_HFSNET_123 ) , 
    .Z ( PLACE_HFSNET_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Prescale_mux ( \prescale[5] , \prescale[4] , \prescale[2] , 
    \prescale[1] , \prescale[0] , div_ratio , VDD , VSS , PLACE_HFSNET_187 , 
    PLACE_HFSNET_189 ) ;
input  \prescale[5] ;
input  \prescale[4] ;
input  \prescale[2] ;
input  \prescale[1] ;
input  \prescale[0] ;
output [7:0] div_ratio ;
input  VDD ;
input  VSS ;
input  PLACE_HFSNET_187 ;
input  PLACE_HFSNET_189 ;

wire PLACE_HFSNET_186 ;
wire PLACE_HFSNET_188 ;
wire n3 ;
wire n4 ;
wire n5 ;
supply1 VDD ;
supply0 VSS ;

AO21X1 U7 ( .IN1 ( n5 ) , .IN2 ( n3 ) , .IN3 ( n4 ) , .Q ( div_ratio[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( PLACE_HFSNET_188 ) , .IN2 ( PLACE_HFSNET_186 ) , 
    .IN3 ( \prescale[4] ) , .QN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U15 ( .IN1 ( \prescale[4] ) , .IN2 ( \prescale[5] ) , 
    .IN3 ( PLACE_HFSNET_188 ) , .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U19 ( .IN1 ( \prescale[2] ) , .IN2 ( \prescale[1] ) , 
    .IN3 ( \prescale[0] ) , .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_197_270 ( .INP ( PLACE_HFSNET_189 ) , 
    .ZN ( PLACE_HFSNET_188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_259_268 ( .INP ( PLACE_HFSNET_187 ) , 
    .ZN ( PLACE_HFSNET_186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U18 ( .IN1 ( n4 ) , .IN2 ( n5 ) , .QN ( div_ratio[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U20 ( .IN1 ( n3 ) , .IN2 ( n4 ) , .QN ( div_ratio[2] ) , .VDD ( VDD ) , 
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
    test_si , test_so , dftopt13 , VDD , VSS , dftopt0 , dftopt2 , dftopt10 , 
    dftopt1 , p0 , PLACE_HFSNET_59 , PLACE_HFSNET_122 , PLACE_HFSNET_124 , 
    p1 , p2 , p3 ) ;
input  i_ref_clk ;
input  i_rst_n ;
input  [7:0] i_div_ratio ;
input  i_clk_en ;
output o_div_clk ;
input  test_si ;
output test_so ;
input  dftopt13 ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt2 ;
input  dftopt10 ;
input  dftopt1 ;
input  p0 ;
input  PLACE_HFSNET_59 ;
input  PLACE_HFSNET_122 ;
input  PLACE_HFSNET_124 ;
input  p1 ;
input  p2 ;
input  p3 ;

wire net_aps_19 ;
wire N1 ;
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
wire PLACE_HFSNET_58 ;
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
wire PLACE_HFSNET_123 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

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
AO21X1 U24 ( .IN1 ( p2 ) , .IN2 ( n6 ) , .IN3 ( n2 ) , 
    .Q ( toggle_at_half[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U26 ( .IN1 ( p2 ) , .IN2 ( n7 ) , .IN3 ( n3 ) , 
    .Q ( toggle_at_half[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U28 ( .IN1 ( p1 ) , .IN2 ( n8 ) , .IN3 ( n4 ) , 
    .Q ( toggle_at_half[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U29 ( .IN1 ( p1 ) , .IN2 ( n9 ) , .Q ( toggle_at_half[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( p1 ) , .IN2 ( n5 ) , .Q ( toggle_at_half[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U32 ( .IN1 ( i_ref_clk ) , .IN2 ( dftopt2 ) , .S ( N1 ) , 
    .Q ( o_div_clk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U33 ( .IN1 ( n10 ) , .IN2 ( test_so ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( net_aps_19 ) , .IN2 ( n10 ) , .Q ( n42 ) , .VDD ( VDD ) , 
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
AND2X1 U56 ( .IN1 ( p3 ) , .IN2 ( n32 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U57 ( .IN1 ( p0 ) , .IN2 ( i_div_ratio[2] ) , .IN3 ( i_div_ratio[1] ) , 
    .IN4 ( p0 ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_APS_CLK_ISO_37 ( .INP ( dftopt2 ) , .Z ( net_aps_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( dftopt13 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[0] ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( dftopt1 ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[6] ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n41 ) , .SI ( counter[3] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , 
    .Q ( test_so ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[6] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[5] ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[5] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[4] ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[4] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[3] ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[2] ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( counter[0] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[1] ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n42 ) , .SI ( counter[2] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , 
    .Q ( dftopt2 ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n1 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U10 ( .IN1 ( n6 ) , .IN2 ( p2 ) , .QN ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n2 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U12 ( .IN1 ( n7 ) , .IN2 ( p2 ) , .QN ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U20 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n3 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( n8 ) , .IN2 ( p1 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n4 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U27 ( .IN1 ( p1 ) , .IN2 ( n9 ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( i_div_ratio[1] ) , .ZN ( toggle_at_half[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U42 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( n26 ) , .IN4 ( n27 ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U44 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .IN3 ( n18 ) , .IN4 ( n19 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n10 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_1_DW01_inc_0 add_30 ( .A ( counter ) ,
    .SUM ( { N23 , N22 , N21 , N20 , N19 , N18 , N17 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_44_189 ( .INP ( PLACE_HFSNET_124 ) , 
    .Z ( PLACE_HFSNET_123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_113_109 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    test_si , test_so , test_se , VDD , VSS , dftopt0 , \counter[4] , 
    PLACE_HFSNET_58 , PLACE_HFSNET_123 , dftopt2 , \counter[0] , dftopt1 , 
    dftopt3 , dftopt4 , p0 ) ;
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
output dftopt0 ;
output \counter[4] ;
input  PLACE_HFSNET_58 ;
input  PLACE_HFSNET_123 ;
input  dftopt2 ;
output \counter[0] ;
input  dftopt1 ;
output dftopt3 ;
input  dftopt4 ;
input  p0 ;

wire test_so_gOb8 ;
wire odd_flag_toggle ;
wire N1 ;
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
wire PLACE_HFSNET_120 ;
wire [6:1] counter ;
wire [6:0] toggle_at_half ;
supply1 VDD ;
supply0 VSS ;
wire net_aps_18 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

assign odd_flag_toggle = test_so_gOb8 ;
assign counter[4] = \counter[4] ;

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
NBUFFX2 PLACE_HFSBUF_108_184 ( .INP ( PLACE_HFSNET_123 ) , 
    .Z ( PLACE_HFSNET_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
MUX21X1 U33 ( .IN1 ( i_ref_clk ) , .IN2 ( dftopt3 ) , .S ( N1 ) , 
    .Q ( o_div_clk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U34 ( .IN1 ( n13 ) , .IN2 ( test_so_gOb8 ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U35 ( .IN1 ( net_aps_18 ) , .IN2 ( n13 ) , .Q ( n11 ) , .VDD ( VDD ) , 
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
MUX21X1 U44 ( .IN1 ( n15 ) , .IN2 ( n16 ) , .S ( test_so_gOb8 ) , .Q ( n13 ) , 
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
AND2X1 U58 ( .IN1 ( p0 ) , .IN2 ( n33 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U59 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( i_div_ratio[2] ) , 
    .IN3 ( i_div_ratio[1] ) , .IN4 ( n34 ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U60 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( i_div_ratio[4] ) , 
    .IN3 ( i_div_ratio[7] ) , .IN4 ( i_div_ratio[6] ) , .Q ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( counter[3] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( \counter[0] ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( test_so_gOb8 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , 
    .Q ( counter[6] ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n12 ) , .SI ( dftopt4 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , 
    .Q ( test_so_gOb8 ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[2] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[5] ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[6] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( \counter[4] ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[5] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[3] ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[2] ) , .QN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( i_ref_clk ) , 
    .RSTB ( PLACE_HFSNET_58 ) , .Q ( counter[1] ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n11 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( i_ref_clk ) , .RSTB ( i_rst_n ) , .Q ( dftopt3 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR3X1 U9 ( .IN1 ( n38 ) , .IN2 ( toggle_at_half[6] ) , 
    .IN3 ( \add_25/carry[6] ) , .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n2 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U11 ( .IN1 ( n7 ) , .IN2 ( i_div_ratio[3] ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n3 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U13 ( .IN1 ( n8 ) , .IN2 ( i_div_ratio[4] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U21 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n4 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U24 ( .IN1 ( n9 ) , .IN2 ( i_div_ratio[5] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n5 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U28 ( .IN1 ( i_div_ratio[6] ) , .IN2 ( n10 ) , .QN ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( i_div_ratio[1] ) , .ZN ( toggle_at_half[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U43 ( .IN1 ( n25 ) , .IN2 ( n26 ) , .IN3 ( n27 ) , .IN4 ( n28 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U45 ( .IN1 ( n17 ) , .IN2 ( n18 ) , .IN3 ( n19 ) , .IN4 ( n20 ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U47 ( .INP ( n13 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_0_DW01_inc_0 add_30 (
    .A ( { counter[6] , counter[5] , \counter[4] , counter[3] , counter[2] , 
        counter[1] , \counter[0] } ) ,
    .SUM ( { N23 , N22 , N21 , N20 , N19 , N18 , N17 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_APS_CLK_ISO_36 ( .INP ( dftopt3 ) , .Z ( net_aps_18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_1 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS , 
    dftopt0 , dftopt1 , dftopt2 , dftopt3 , p0 ) ;
input  RST ;
input  CLK ;
output SYNC_RST ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt2 ;
input  dftopt3 ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( p0 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt1 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_rst_reg[1] ( .D ( dftopt1 ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC_RST ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_0 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS , 
    dftopt1 , dftopt0 , dftopt15 , p0 ) ;
input  RST ;
input  CLK ;
output SYNC_RST ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt1 ;
output dftopt0 ;
input  dftopt15 ;
input  p0 ;

wire \sync_rst[0] ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( p0 ) , .SI ( dftopt15 ) , .SE ( test_se ) , 
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

MUX21X2 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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

wire optlc_net_1372 ;
wire dftopt33 ;
wire dftopt34 ;
wire dftopt35 ;
wire REF_CLK ;
wire UART_CLK ;
wire FUN_TX_CLK ;
wire TX_CLK ;
wire FUN_RX_CLK ;
wire RX_CLK ;
wire RST ;
wire FUN_REF_RST ;
wire dftopt36 ;
wire FUN_UART_RST ;
wire dftopt37 ;
wire RdEn ;
wire Rd_D_Vld ;
wire Busy ;
wire RX_VLD_SIG ;
wire dftopt39 ;
wire SYNC_RX_VLD_SIG ;
wire F_FULL ;
wire ALU_OUT_VLD ;
wire EN ;
wire Gate_EN ;
wire WR_INC ;
wire ALU_CLK ;
wire RD_INC ;
wire PLACE_HFSNET_159 ;
wire PLACE_HFSNET_196 ;
wire PLACE_HFSNET_200 ;
wire PLACE_HFSNET_164 ;
wire dftopt40 ;
wire PLACE_HFSNET_54 ;
wire dftopt41 ;
wire PLACE_HFSNET_58 ;
wire PLACE_HFSNET_28 ;
wire PLACE_HFSNET_30 ;
wire PLACE_HFSNET_40 ;
wire n17 ;
wire PLACE_HFSNET_49 ;
wire PLACE_HFSNET_50 ;
wire n22 ;
wire PLACE_HFSNET_89 ;
wire PLACE_HFSNET_90 ;
wire [7:0] DEF_DIV_RATIO ;
wire PLACE_HFSNET_51 ;
wire PLACE_HFSNET_52 ;
wire PLACE_HFSNET_53 ;
wire PLACE_HFSNET_59 ;
wire PLACE_HFSNET_60 ;
wire [2:0] DIV_RATIO ;
wire [7:0] UART_CONFIG ;
wire dftopt42 ;
wire dftopt43 ;
wire dftopt44 ;
wire [7:0] Wr_D ;
wire [3:0] Addr ;
wire [7:0] Rd_D ;
wire dftopt45 ;
wire dftopt46 ;
wire dftopt47 ;
wire dftopt48 ;
wire dftopt49 ;
wire dftopt50 ;
wire dftopt51 ;
wire dftopt52 ;
wire dftopt53 ;
wire dftopt54 ;
wire dftopt55 ;
wire dftopt56 ;
wire dftopt57 ;
wire dftopt58 ;
wire optlc_net_1373 ;
wire [7:0] RD_DATA ;
wire [7:0] RX_P_DATA ;
wire [7:0] SYNC_RX_P_DATA ;
wire [15:0] ALU_OUT ;
wire [3:0] FUN ;
wire [7:0] WR_DATA ;
wire PLACE_HFSNET_91 ;
wire PLACE_HFSNET_92 ;
wire PLACE_HFSNET_93 ;
wire PLACE_HFSNET_94 ;
wire PLACE_HFSNET_95 ;
supply1 VDD ;
supply0 VSS ;
wire optlc_net_1374 ;
wire optlc_net_1375 ;
wire optlc_net_1376 ;
wire optlc_net_1377 ;
wire optlc_net_1378 ;
wire optlc_net_1379 ;
wire optlc_net_1380 ;
wire optlc_net_1381 ;
wire optlc_net_1382 ;
wire optlc_net_1383 ;
wire optlc_net_1384 ;
wire optlc_net_1385 ;
wire optlc_net_1386 ;
wire optlc_net_1387 ;
wire optlc_net_1388 ;
wire optlc_net_1389 ;
wire optlc_net_1390 ;
wire dftopt2 ;
wire dftopt4 ;
wire dftopt7 ;
wire dftopt8 ;
wire dftopt13 ;
wire dftopt15 ;
wire dftopt18 ;
wire dftopt28 ;
wire dftopt29 ;
wire dftopt32 ;
wire PLACE_HFSNET_96 ;
wire PLACE_HFSNET_97 ;
wire PLACE_HFSNET_103 ;
wire PLACE_HFSNET_105 ;
wire PLACE_HFSNET_106 ;
wire PLACE_HFSNET_110 ;
wire PLACE_HFSNET_111 ;
wire PLACE_HFSNET_112 ;
wire PLACE_HFSNET_113 ;
wire PLACE_HFSNET_116 ;
wire PLACE_HFSNET_118 ;
wire PLACE_HFSNET_120 ;
wire PLACE_HFSNET_122 ;
wire PLACE_HFSNET_123 ;
wire PLACE_HFSNET_124 ;
wire optlc_net_1391 ;
wire PLACE_HFSNET_167 ;
wire PLACE_HFSNET_169 ;
wire optlc_net_1392 ;
wire PLACE_HFSNET_176 ;
wire PLACE_HFSNET_177 ;
wire PLACE_HFSNET_179 ;
wire PLACE_HFSNET_182 ;
wire PLACE_HFSNET_186 ;
wire PLACE_HFSNET_187 ;
wire PLACE_HFSNET_188 ;
wire PLACE_HFSNET_189 ;
wire PLACE_HFSNET_192 ;
wire PLACE_HFSNET_204 ;
wire PLACE_HFSNET_208 ;
wire PLACE_HFSNET_212 ;
wire PLACE_HFSNET_216 ;
wire PLACE_HFSNET_219 ;
wire PLACE_HFSNET_225 ;
wire PLACE_HFSNET_230 ;
wire PLACE_HFSNET_235 ;
wire PLACE_HFSNET_239 ;
wire PLACE_HFSNET_243 ;
wire PLACE_HFSNET_248 ;
wire optlc_net_1393 ;
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

NBUFFX2 PLACE_HFSBUF_2817_69 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_908_100 ( .INP ( PLACE_HFSNET_60 ) , 
    .Z ( PLACE_HFSNET_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1689 ( .ZN ( optlc_net_1372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_69_110 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3159_72 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_907_243 ( .INP ( PLACE_HFSNET_167 ) , 
    .ZN ( PLACE_HFSNET_164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1691 ( .ZN ( optlc_net_1373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1693 ( .ZN ( optlc_net_1374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_350_248 ( .INP ( F_FULL ) , .ZN ( PLACE_HFSNET_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    .sel ( TEST_MODE ) , .out ( PLACE_HFSNET_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
Mux2x1_5 U6_MUX2x1 ( .in_0 ( FUN_UART_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( PLACE_HFSNET_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
RST_SYNC_0 RST_SYNC_1 ( .RST ( RST ) , .CLK ( REF_CLK ) , 
    .SYNC_RST ( FUN_REF_RST ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_se ( PLACE_HFSNET_122 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_3 ) , .dftopt15 ( dftopt36 ) , 
    .p0 ( optlc_net_1391 ) ) ;
RST_SYNC_1 RST_SYNC_2 ( .RST ( RST ) , .CLK ( UART_CLK ) , 
    .SYNC_RST ( FUN_UART_RST ) , .test_si ( SYNOPSYS_UNCONNECTED_4 ) , 
    .test_se ( PLACE_HFSNET_122 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_5 ) , .dftopt1 ( dftopt2 ) , 
    .dftopt2 ( FUN_REF_RST ) , .dftopt3 ( dftopt37 ) , 
    .p0 ( optlc_net_1391 ) ) ;
ClkDiv_0 TX_CLK_DIV ( .i_ref_clk ( UART_CLK ) , .i_rst_n ( PLACE_HFSNET_59 ) , 
    .i_div_ratio ( DEF_DIV_RATIO ) , .i_clk_en ( SYNOPSYS_UNCONNECTED_6 ) , 
    .o_div_clk ( FUN_TX_CLK ) , .test_si ( SYNOPSYS_UNCONNECTED_7 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_8 ) , .test_se ( PLACE_HFSNET_122 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .\counter[4] ( dftopt29 ) , .PLACE_HFSNET_58 ( PLACE_HFSNET_58 ) , 
    .PLACE_HFSNET_123 ( PLACE_HFSNET_124 ) , .dftopt2 ( dftopt34 ) , 
    .\counter[0] ( dftopt35 ) , .dftopt1 ( FUN_UART_RST ) , 
    .dftopt3 ( dftopt37 ) , .dftopt4 ( dftopt2 ) , .p0 ( optlc_net_1391 ) ) ;
ClkDiv_1 RX_CLK_DIV ( .i_ref_clk ( UART_CLK ) , .i_rst_n ( PLACE_HFSNET_58 ) ,
    .i_div_ratio ( { SYNOPSYS_UNCONNECTED_10 , SYNOPSYS_UNCONNECTED_11 , 
        SYNOPSYS_UNCONNECTED_12 , SYNOPSYS_UNCONNECTED_13 , 
        SYNOPSYS_UNCONNECTED_14 , DIV_RATIO[2] , DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .i_clk_en ( SYNOPSYS_UNCONNECTED_15 ) , .o_div_clk ( FUN_RX_CLK ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_16 ) , .test_so ( n22 ) , 
    .dftopt13 ( dftopt33 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_17 ) , .dftopt2 ( dftopt34 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_18 ) , .dftopt1 ( dftopt29 ) , 
    .p0 ( optlc_net_1372 ) , .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_122 ( PLACE_HFSNET_123 ) , 
    .PLACE_HFSNET_124 ( PLACE_HFSNET_124 ) , .p1 ( optlc_net_1377 ) , 
    .p2 ( optlc_net_1386 ) , .p3 ( optlc_net_1392 ) ) ;
Prescale_mux Mux3x1 ( .\prescale[5] ( PLACE_HFSNET_187 ) , 
    .\prescale[4] ( PLACE_HFSNET_176 ) , .\prescale[2] ( PLACE_HFSNET_177 ) , 
    .\prescale[1] ( PLACE_HFSNET_179 ) , .\prescale[0] ( UART_CONFIG[2] ) ,
    .div_ratio ( { SYNOPSYS_UNCONNECTED_19 , SYNOPSYS_UNCONNECTED_20 , 
        SYNOPSYS_UNCONNECTED_21 , SYNOPSYS_UNCONNECTED_22 , 
        SYNOPSYS_UNCONNECTED_23 , DIV_RATIO[2] , DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) , .PLACE_HFSNET_187 ( UART_CONFIG[7] ) , 
    .PLACE_HFSNET_189 ( PLACE_HFSNET_189 ) ) ;
REG_FILE U0_REG_FILE ( .WrData ( Wr_D ) , .Address ( Addr ) , 
    .PLACE_HFSNET_186 ( PLACE_HFSNET_187 ) , .RdEn ( RdEn ) , 
    .CLK ( REF_CLK ) , .RST ( PLACE_HFSNET_51 ) , .RdData ( Rd_D ) , 
    .RdData_Valid ( Rd_D_Vld ) ,
    .REG0 ( { PLACE_HFSNET_182 , PLACE_HFSNET_192 , PLACE_HFSNET_196 , 
        PLACE_HFSNET_186 , PLACE_HFSNET_225 , PLACE_HFSNET_230 , 
        PLACE_HFSNET_248 , PLACE_HFSNET_216 } ) ,
    .REG1 ( { PLACE_HFSNET_212 , PLACE_HFSNET_200 , PLACE_HFSNET_204 , 
        PLACE_HFSNET_208 , PLACE_HFSNET_235 , PLACE_HFSNET_239 , 
        PLACE_HFSNET_243 , PLACE_HFSNET_219 } ) ,
    .REG2 ( { UART_CONFIG[7] , UART_CONFIG[6] , PLACE_HFSNET_189 , 
        PLACE_HFSNET_177 , PLACE_HFSNET_179 , UART_CONFIG[2] , 
        UART_CONFIG[1] , UART_CONFIG[0] } ) ,
    .REG3 ( DEF_DIV_RATIO ) , .test_si3 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_25 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_26 ) , 
    .test_so3 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_28 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_29 ) , .test_se ( PLACE_HFSNET_123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SCAN_IN_1 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_31 ) , .dftopt3 ( SCAN_IN_2 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_32 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_33 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_34 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_35 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_36 ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_37 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_38 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_39 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_40 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_41 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_49 ( PLACE_HFSNET_49 ) , 
    .PLACE_HFSNET_52 ( PLACE_HFSNET_52 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_53 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_96 ( PLACE_HFSNET_97 ) , 
    .PLACE_HFSNET_103 ( PLACE_HFSNET_103 ) , 
    .PLACE_HFSNET_105 ( PLACE_HFSNET_105 ) , 
    .PLACE_HFSNET_122 ( PLACE_HFSNET_122 ) , 
    .PLACE_HFSNET_123 ( PLACE_HFSNET_124 ) , 
    .PLACE_HFSNET_164 ( PLACE_HFSNET_164 ) , 
    .PLACE_HFSNET_165 ( PLACE_HFSNET_167 ) , 
    .PLACE_HFSNET_167 ( PLACE_HFSNET_167 ) , 
    .PLACE_HFSNET_188 ( PLACE_HFSNET_188 ) , .dftopt13 ( dftopt33 ) , 
    .dftopt14 ( dftopt35 ) , .dftopt15 ( dftopt36 ) , .dftopt16 ( n22 ) , 
    .dftopt17 ( SCAN_OUT_1 ) , .dftopt18 ( dftopt39 ) , 
    .dftopt19 ( dftopt15 ) , .dftopt21 ( dftopt41 ) , .dftopt22 ( dftopt44 ) , 
    .dftopt23 ( SCAN_IN_3 ) , .dftopt37 ( dftopt48 ) , 
    .dftopt25 ( dftopt50 ) , .dftopt24 ( dftopt51 ) , .dftopt26 ( dftopt52 ) , 
    .dftopt27 ( dftopt53 ) , .dftopt28 ( ALU_OUT[7] ) , 
    .dftopt29 ( ALU_OUT[0] ) , .dftopt30 ( SCAN_OUT_4 ) ) ;
UART U0_UART ( .TX_CLK ( TX_CLK ) , .RX_CLK ( RX_CLK ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , .PAR_TYP ( UART_CONFIG[1] ) , 
    .PAR_EN ( UART_CONFIG[0] ) , .\Prescale[5] ( PLACE_HFSNET_187 ) , 
    .\Prescale[4] ( PLACE_HFSNET_176 ) , .\Prescale[3] ( PLACE_HFSNET_188 ) , 
    .PLACE_HFSNET_179 ( PLACE_HFSNET_179 ) , .dftopt19 ( dftopt40 ) , 
    .\Prescale[0] ( UART_CONFIG[2] ) , .TX_IN_P ( RD_DATA ) , 
    .PLACE_HFSNET_177 ( PLACE_HFSNET_177 ) , .TX_OUT_S ( TX_OUT ) , 
    .TX_OUT_V ( Busy ) , .RX_IN_S ( RX_IN ) , .RX_OUT_P ( RX_P_DATA ) , 
    .RX_OUT_V ( RX_VLD_SIG ) , .test_si ( SYNOPSYS_UNCONNECTED_42 ) , 
    .PLACE_HFSNET_159 ( PLACE_HFSNET_159 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_43 ) , .dftopt1 ( n17 ) , 
    .dftopt5 ( SCAN_OUT_3 ) , .dftopt7 ( SYNOPSYS_UNCONNECTED_44 ) , 
    .dftopt8 ( dftopt7 ) , .dftopt10 ( SYNOPSYS_UNCONNECTED_45 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_46 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_47 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_48 ) , .dftopt3 ( SYNC_RX_P_DATA[5] ) , 
    .dftopt9 ( dftopt15 ) , .dftopt14 ( SCAN_IN_4 ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_49 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_50 ) , 
    .dftopt18 ( SYNOPSYS_UNCONNECTED_51 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_54 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_60 ) , 
    .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_94 ( PLACE_HFSNET_95 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_113 ( PLACE_HFSNET_113 ) , .dftopt20 ( dftopt43 ) , 
    .dftopt21 ( dftopt44 ) , .dftopt32 ( dftopt45 ) , .dftopt34 ( dftopt46 ) , 
    .dftopt23 ( dftopt47 ) , .dftopt39 ( dftopt49 ) , .dftopt25 ( dftopt50 ) , 
    .dftopt26 ( dftopt51 ) , .dftopt27 ( dftopt52 ) , .dftopt28 ( dftopt55 ) , 
    .dftopt30 ( dftopt56 ) , .dftopt31 ( dftopt4 ) , .dftopt33 ( dftopt57 ) , 
    .p1 ( optlc_net_1385 ) , .p3 ( optlc_net_1393 ) ) ;
DATA_SYNC U0_DATA_SYNC ( .Unsync_bus ( RX_P_DATA ) , 
    .bus_enable ( RX_VLD_SIG ) , .CLK ( REF_CLK ) , .RST ( PLACE_HFSNET_50 ) , 
    .sync_bus ( SYNC_RX_P_DATA ) , .enable_pulse ( SYNC_RX_VLD_SIG ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_52 ) , .test_se ( PLACE_HFSNET_95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( dftopt13 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_53 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_54 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_55 ) , 
    .PLACE_HFSNET_40 ( PLACE_HFSNET_40 ) , 
    .PLACE_HFSNET_92 ( PLACE_HFSNET_93 ) , 
    .PLACE_HFSNET_93 ( PLACE_HFSNET_94 ) , .dftopt4 ( dftopt42 ) , 
    .dftopt5 ( dftopt43 ) ) ;
SYS_CTRL U0_SYS_CTRL ( .CLK ( REF_CLK ) , .RST ( PLACE_HFSNET_50 ) , 
    .RdData ( Rd_D ) , .RdData_Valid ( Rd_D_Vld ) , 
    .RX_P_DATA ( SYNC_RX_P_DATA ) , .RX_D_VLD ( SYNC_RX_VLD_SIG ) , 
    .FIFO_FULL ( F_FULL ) ,
    .ALU_OUT ( { ALU_OUT[15] , ALU_OUT[14] , ALU_OUT[13] , ALU_OUT[12] , 
        ALU_OUT[11] , SCAN_OUT_2 , ALU_OUT[9] , ALU_OUT[8] , ALU_OUT[7] , 
        ALU_OUT[6] , ALU_OUT[5] , ALU_OUT[4] , ALU_OUT[3] , ALU_OUT[2] , 
        ALU_OUT[1] , ALU_OUT[0] } ) ,
    .ALU_OUT_VLD ( ALU_OUT_VLD ) , .ALU_FUN ( FUN ) , .ALU_EN ( EN ) , 
    .GATE_EN ( Gate_EN ) , .UART_TX_DATA ( WR_DATA ) , 
    .UART_TX_VLD ( WR_INC ) , .Address ( Addr ) , .WrEn ( PLACE_HFSNET_167 ) , 
    .RdEn ( RdEn ) , .WrData ( Wr_D ) , .test_si ( SYNOPSYS_UNCONNECTED_56 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_57 ) , .test_se ( PLACE_HFSNET_93 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt4 ( SYNOPSYS_UNCONNECTED_58 ) , 
    .\stored_addr[2] ( dftopt13 ) , .\cs[2] ( dftopt54 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_59 ) , .\cs[0] ( dftopt42 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_60 ) , 
    .PLACE_HFSNET_49 ( PLACE_HFSNET_49 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_164 ( PLACE_HFSNET_164 ) , 
    .PLACE_HFSNET_165 ( PLACE_HFSNET_167 ) , 
    .PLACE_HFSNET_169 ( PLACE_HFSNET_169 ) , .dftopt18 ( dftopt39 ) , 
    .\stored_addr[0] ( dftopt40 ) , .dftopt21 ( dftopt41 ) , 
    .dftopt27 ( dftopt53 ) ) ;
CLK_GATE U0_CLK_GATE ( .CLK ( REF_CLK ) , .CLK_EN ( Gate_EN ) , 
    .SCAN_EN ( TEST_MODE ) , .GATED_CLK ( ALU_CLK ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
ALU U0_ALU ( .CLK ( ALU_CLK ) , .RST ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_186 ( PLACE_HFSNET_186 ) , 
    .PLACE_HFSNET_196 ( PLACE_HFSNET_196 ) , 
    .PLACE_HFSNET_200 ( PLACE_HFSNET_200 ) , 
    .PLACE_HFSNET_192 ( PLACE_HFSNET_192 ) , 
    .PLACE_HFSNET_230 ( PLACE_HFSNET_230 ) , 
    .PLACE_HFSNET_235 ( PLACE_HFSNET_235 ) , .dftopt2 ( Rd_D[5] ) , 
    .PLACE_HFSNET_219 ( PLACE_HFSNET_219 ) , 
    .PLACE_HFSNET_216 ( PLACE_HFSNET_216 ) , 
    .PLACE_HFSNET_204 ( PLACE_HFSNET_204 ) , 
    .PLACE_HFSNET_208 ( PLACE_HFSNET_208 ) , 
    .PLACE_HFSNET_212 ( PLACE_HFSNET_212 ) , 
    .PLACE_HFSNET_239 ( PLACE_HFSNET_239 ) , 
    .PLACE_HFSNET_243 ( PLACE_HFSNET_243 ) , 
    .PLACE_HFSNET_248 ( PLACE_HFSNET_248 ) , 
    .PLACE_HFSNET_225 ( PLACE_HFSNET_225 ) , .ALU_FUN ( FUN ) , 
    .Enable ( EN ) ,
    .ALU_OUT ( { ALU_OUT[15] , ALU_OUT[14] , ALU_OUT[13] , ALU_OUT[12] , 
        ALU_OUT[11] , SCAN_OUT_2 , ALU_OUT[9] , ALU_OUT[8] , ALU_OUT[7] , 
        ALU_OUT[6] , ALU_OUT[5] , ALU_OUT[4] , ALU_OUT[3] , ALU_OUT[2] , 
        ALU_OUT[1] , ALU_OUT[0] } ) ,
    .OUT_VALID ( ALU_OUT_VLD ) , .test_si ( SYNOPSYS_UNCONNECTED_61 ) , 
    .PLACE_HFSNET_182 ( PLACE_HFSNET_182 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_62 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_63 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_64 ) , 
    .PLACE_HFSNET_28 ( PLACE_HFSNET_28 ) , 
    .PLACE_HFSNET_105 ( PLACE_HFSNET_106 ) , 
    .PLACE_HFSNET_118 ( PLACE_HFSNET_118 ) , 
    .PLACE_HFSNET_120 ( PLACE_HFSNET_120 ) , .dftopt45 ( dftopt58 ) , 
    .dftopt3 ( Rd_D[0] ) ) ;
ASYNC_FIFO U0_ASYN_FIFO ( .W_CLK ( REF_CLK ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_54 ) , .W_INC ( WR_INC ) , 
    .R_CLK ( TX_CLK ) , .PLACE_HFSNET_92 ( PLACE_HFSNET_93 ) , 
    .R_INC ( RD_INC ) , .WR_DATA ( WR_DATA ) , .RD_DATA ( RD_DATA ) , 
    .FULL ( F_FULL ) , .EMPTY ( PLACE_HFSNET_159 ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_65 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_66 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_67 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_68 ) , .test_se ( PLACE_HFSNET_120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_69 ) , 
    .\wq2_rptr_tp[0] ( SYNOPSYS_UNCONNECTED_70 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_71 ) , .\r_addr_tp[1] ( dftopt4 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_72 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_73 ) , .dftopt8 ( dftopt7 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_74 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_75 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_76 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_77 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_78 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_79 ) , 
    .\rq2_wptr_tp[2] ( SYNOPSYS_UNCONNECTED_80 ) , .dftopt18 ( Rd_D[2] ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_81 ) , 
    .dftopt21 ( SYNOPSYS_UNCONNECTED_82 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_83 ) , 
    .dftopt24 ( SYNOPSYS_UNCONNECTED_84 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_85 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_86 ) , 
    .dftopt29 ( SYNOPSYS_UNCONNECTED_87 ) , 
    .PLACE_HFSNET_28 ( PLACE_HFSNET_28 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_39 ( PLACE_HFSNET_40 ) , 
    .PLACE_HFSNET_51 ( PLACE_HFSNET_52 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_60 ) , 
    .PLACE_HFSNET_93 ( PLACE_HFSNET_94 ) , 
    .PLACE_HFSNET_102 ( PLACE_HFSNET_103 ) , 
    .PLACE_HFSNET_105 ( PLACE_HFSNET_106 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_113 ( PLACE_HFSNET_113 ) , 
    .PLACE_HFSNET_116 ( PLACE_HFSNET_116 ) , 
    .PLACE_HFSNET_118 ( PLACE_HFSNET_118 ) , 
    .PLACE_HFSNET_169 ( PLACE_HFSNET_169 ) , .dftopt30 ( Rd_D[3] ) , 
    .dftopt32 ( dftopt45 ) , .dftopt34 ( dftopt46 ) , .dftopt35 ( dftopt47 ) , 
    .dftopt37 ( dftopt48 ) , .dftopt39 ( dftopt49 ) , .dftopt40 ( dftopt54 ) , 
    .PLACE_HFSNET_172 ( dftopt55 ) , .dftopt42 ( TX_OUT ) , 
    .dftopt44 ( dftopt57 ) , .dftopt45 ( dftopt58 ) ) ;
PULSE_GEN_0 U0_PULSE_GEN ( .LVL_SIG ( Busy ) , .CLK ( TX_CLK ) , 
    .RST ( PLACE_HFSNET_54 ) , .PULSE_SIG ( RD_INC ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_88 ) , .test_so ( n17 ) , 
    .test_se ( PLACE_HFSNET_110 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_89 ) , .dftopt30 ( dftopt56 ) ) ;
TIEL PLACE_optlc_1695 ( .ZN ( optlc_net_1375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5080_146 ( .INP ( PLACE_HFSNET_90 ) , 
    .Z ( PLACE_HFSNET_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5316_147 ( .INP ( PLACE_HFSNET_97 ) , 
    .Z ( PLACE_HFSNET_90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_0 ( .IN1 ( optlc_net_1379 ) , .IN2 ( optlc_net_1379 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_1 ( .IN1 ( optlc_net_1376 ) , .IN2 ( optlc_net_1376 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_2 ( .IN1 ( optlc_net_1389 ) , .IN2 ( optlc_net_1389 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_3 ( .IN1 ( optlc_net_1382 ) , .IN2 ( optlc_net_1382 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_4 ( .IN1 ( optlc_net_1387 ) , .IN2 ( optlc_net_1387 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_5 ( .IN1 ( optlc_net_1388 ) , .IN2 ( optlc_net_1388 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_6 ( .IN1 ( optlc_net_1383 ) , .IN2 ( optlc_net_1383 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_7 ( .IN1 ( optlc_net_1388 ) , .IN2 ( optlc_net_1388 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_8 ( .IN1 ( optlc_net_1375 ) , .IN2 ( optlc_net_1375 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_9 ( .IN1 ( optlc_net_1384 ) , .IN2 ( optlc_net_1384 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_0 ( .INP ( optlc_net_1372 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_1 ( .INP ( optlc_net_1376 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_2 ( .INP ( optlc_net_1390 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_3 ( .INP ( optlc_net_1381 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_4 ( .INP ( optlc_net_1387 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_5 ( .INP ( optlc_net_1387 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_6 ( .INP ( optlc_net_1382 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_7 ( .INP ( optlc_net_1378 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_8 ( .INP ( optlc_net_1383 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_9 ( .INP ( optlc_net_1374 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_0 ( .IN1 ( optlc_net_1379 ) , .IN2 ( optlc_net_1379 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_1 ( .IN1 ( optlc_net_1380 ) , .IN2 ( optlc_net_1380 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_2 ( .IN1 ( optlc_net_1389 ) , .IN2 ( optlc_net_1389 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_3 ( .IN1 ( optlc_net_1382 ) , .IN2 ( optlc_net_1382 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_4 ( .IN1 ( optlc_net_1380 ) , .IN2 ( optlc_net_1380 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_5 ( .IN1 ( optlc_net_1385 ) , .IN2 ( optlc_net_1385 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_6 ( .IN1 ( optlc_net_1373 ) , .IN2 ( optlc_net_1373 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_7 ( .IN1 ( optlc_net_1378 ) , .IN2 ( optlc_net_1378 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_8 ( .IN1 ( optlc_net_1378 ) , .IN2 ( optlc_net_1378 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_9 ( .IN1 ( optlc_net_1374 ) , .IN2 ( optlc_net_1374 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1697 ( .ZN ( optlc_net_1376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1699 ( .ZN ( optlc_net_1377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1701 ( .ZN ( optlc_net_1378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1703 ( .ZN ( optlc_net_1379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1705 ( .ZN ( optlc_net_1380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1706 ( .ZN ( optlc_net_1381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1710 ( .ZN ( optlc_net_1382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1712 ( .ZN ( optlc_net_1383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1714 ( .ZN ( optlc_net_1384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1716 ( .ZN ( optlc_net_1385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1718 ( .ZN ( optlc_net_1386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1721 ( .ZN ( optlc_net_1387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1723 ( .ZN ( optlc_net_1388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1725 ( .ZN ( optlc_net_1389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1726 ( .ZN ( optlc_net_1390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEH PLACE_optlc_1729 ( .Z ( optlc_net_1391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEH PLACE_optlc_1730 ( .Z ( optlc_net_1392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEH PLACE_optlc_1731 ( .Z ( optlc_net_1393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3659_83 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1190_93 ( .INP ( PLACE_HFSNET_51 ) , 
    .Z ( PLACE_HFSNET_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_962_95 ( .INP ( PLACE_HFSNET_51 ) , 
    .Z ( PLACE_HFSNET_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1461_97 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8 PLACE_HFSBUF_5147_98 ( .INP ( PLACE_HFSNET_53 ) , 
    .Z ( PLACE_HFSNET_52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8 PLACE_HFSBUF_752_111 ( .INP ( PLACE_HFSNET_60 ) , 
    .Z ( PLACE_HFSNET_59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5393_148 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5460_149 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5576_150 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5641_151 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5504_152 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5823_153 ( .INP ( PLACE_HFSNET_97 ) , 
    .Z ( PLACE_HFSNET_96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_6556_154 ( .INP ( SCAN_EN ) , .Z ( PLACE_HFSNET_97 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1046_161 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1411_163 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1672_164 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2251_171 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2158_173 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2798_174 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3079_176 ( .INP ( PLACE_HFSNET_116 ) , 
    .Z ( PLACE_HFSNET_113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3205_179 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1719_181 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8 PLACE_HFSBUF_4063_183 ( .INP ( SCAN_EN ) , .Z ( PLACE_HFSNET_120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_313_187 ( .INP ( PLACE_HFSNET_124 ) , 
    .Z ( PLACE_HFSNET_122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_196_188 ( .INP ( PLACE_HFSNET_124 ) , 
    .Z ( PLACE_HFSNET_123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_637_190 ( .INP ( SCAN_EN ) , .Z ( PLACE_HFSNET_124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_170_257 ( .INP ( UART_CONFIG[6] ) , 
    .ZN ( PLACE_HFSNET_176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_224_269 ( .INP ( UART_CONFIG[7] ) , 
    .Z ( PLACE_HFSNET_187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_383_271 ( .INP ( PLACE_HFSNET_189 ) , 
    .Z ( PLACE_HFSNET_188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


