// IC Compiler II Verilog Writer
// Generated on 09/03/2025 at 19:17:12
// Library Name: SYSTEM_TOP.dlib
// Block Name: SYSTEM_TOP_cts
// User Label: 
// Write Command: write_verilog -include { all } ../outputs/SYSTEM_TOP.v
module PULSE_GEN_0 ( LVL_SIG , CLK , RST , PULSE_SIG , test_si , test_so , 
    test_se , VDD , VSS , dftopt0 , dftopt30 , dftopt1 ) ;
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
input  dftopt1 ;

wire n1 ;
supply1 VDD ;
supply0 VSS ;

AND2X1 U3 ( .IN1 ( n1 ) , .IN2 ( LVL_SIG ) , .Q ( PULSE_SIG ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 SYNC_REG_reg ( .D ( LVL_SIG ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 ( ASYNC , CLK , PLACE_HFSNET_112 , 
    SYNC , test_si , test_se , VDD , VSS , dftopt0 , PLACE_HFSNET_30 , 
    dftopt42 , dftopt2 , dftopt19 , dftopt1 , dftopt5 , dftopt3 ) ;
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
input  dftopt19 ;
output dftopt1 ;
input  dftopt5 ;
input  dftopt3 ;

wire PLACE_HFSNET_110 ;
wire PLACE_HFSNET_28 ;
wire \q[0][3] ;
wire dftopt1_gOb36 ;
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
SDFFARX1 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( SYNC[1] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][3] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( dftopt1_gOb36 ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( dftopt1_gOb36 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][1] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( \q[0][1] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( \q[0][0] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( \q[0][3] ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , .Q ( SYNC[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( dftopt1_gOb36 ) , .SI ( \q[0][3] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( \q[0][1] ) , .SI ( \q[0][0] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( \q[0][0] ) , .SI ( ASYNC[3] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( SYNC[0] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2298_172 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 ( ASYNC , CLK , PLACE_HFSNET_105 , 
    SYNC , test_se , VDD , VSS , dftopt14 , dftopt0 , dftopt1 , dftopt17 , 
    PLACE_HFSNET_56 , dftopt2 , dftopt9 , dftopt3 , dftopt4 , dftopt5 , 
    dftopt6 , dftopt51 ) ;
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
input  dftopt9 ;
output dftopt3 ;
input  dftopt4 ;
output dftopt5 ;
input  dftopt6 ;
input  dftopt51 ;

wire \q[0][2] ;
wire dftopt2_gOb21 ;
wire dftopt3_gOb34 ;
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

SDFFARX1 \q_reg[0][2] ( .D ( ASYNC[2] ) , .SI ( dftopt6 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( \q[0][2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][3] ( .D ( dftopt5 ) , .SI ( dftopt3_gOb34 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( SYNC[3] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][2] ( .D ( \q[0][2] ) , .SI ( SYNC[3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( SYNC[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][1] ( .D ( dftopt2_gOb21 ) , .SI ( SYNC[0] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( SYNC[1] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( dftopt3_gOb34 ) , .SI ( dftopt2_gOb21 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( SYNC[0] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][3] ( .D ( ASYNC[3] ) , .SI ( dftopt9 ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , 
    .Q ( dftopt5 ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][1] ( .D ( ASYNC[1] ) , .SI ( \q[0][2] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( dftopt2_gOb21 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( dftopt51 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( dftopt3_gOb34 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_846_99 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_RD_PTR_WIDTH4 ( r_clk , r_rst_n , r_inc , rq2_wptr , r_addr , 
    r_empty , gray_r_ptr , test_si , test_se , VDD , VSS , dftopt0 , dftopt2 , 
    PLACE_HFSNET_109 , PLACE_HFSNET_110 , dftopt19 , dftopt1 , dftopt3 , 
    dftopt4 ) ;
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
input  dftopt3 ;
input  dftopt4 ;

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
SDFFARX1 \r_ptr_reg[0] ( .D ( n15 ) , .SI ( dftopt4 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[0] ) , .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[1] ( .D ( n14 ) , .SI ( r_addr[2] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[1] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[2] ( .D ( n13 ) , .SI ( dftopt1 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( r_clk ) , .RSTB ( r_rst_n ) , 
    .Q ( r_addr[2] ) , .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \r_ptr_reg[3] ( .D ( n12 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
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
    PLACE_HFSNET_173 , dftopt2 , dftopt20 ) ;
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
input  dftopt20 ;

wire copt_net_5189 ;
wire aps_rename_12_ ;
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
wire aps_rename_11_ ;
wire copt_net_2873 ;
wire copt_net_2874 ;
wire n22 ;
wire copt_net_2936 ;
wire copt_net_5190 ;
wire n27 ;
wire n28 ;
wire n30 ;
supply1 VDD ;
supply0 VSS ;
wire copt_net_5220 ;
wire copt_net_3171 ;
wire copt_net_5221 ;

XNOR2X1 U9 ( .IN1 ( w_addr[2] ) , .IN2 ( n5 ) , .Q ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1 U11 ( .IN1 ( w_addr[0] ) , .IN2 ( n7 ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U12 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( copt_net_2936 ) , 
    .IN4 ( n11 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U13 ( .IN1 ( wq2_rptr[3] ) , .IN2 ( gray_w_ptr[3] ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U7 ( .IN1 ( n2 ) , .IN2 ( w_addr[1] ) , .Q ( gray_w_ptr[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[0] ( .D ( n15 ) , .SI ( dftopt20 ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( aps_rename_12_ ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[1] ( .D ( n14 ) , .SI ( aps_rename_12_ ) , 
    .SE ( test_se ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n20 ) , 
    .QN ( aps_rename_11_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[2] ( .D ( n13 ) , .SI ( PLACE_HFSNET_173 ) , 
    .SE ( test_se ) , .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( n19 ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \w_ptr_reg[3] ( .D ( n12 ) , .SI ( w_addr[2] ) , .SE ( test_se ) , 
    .CLK ( w_clk ) , .RSTB ( w_rst_n ) , .Q ( gray_w_ptr[3] ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4894 ( .INP ( copt_net_3171 ) , .Z ( w_addr[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U8 ( .IN1 ( gray_w_ptr[0] ) , .IN2 ( wq2_rptr[0] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U6 ( .IN1 ( n6 ) , .IN2 ( PLACE_HFSNET_173 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4895 ( .INP ( copt_net_2874 ) , 
    .Z ( copt_net_2873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4896 ( .INP ( copt_net_5220 ) , 
    .Z ( copt_net_2874 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U10 ( .IN1 ( gray_w_ptr[1] ) , .IN2 ( wq2_rptr[1] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U14 ( .IN1 ( n20 ) , .IN2 ( n1 ) , .Q ( gray_w_ptr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U15 ( .IN1 ( n7 ) , .IN2 ( n2 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4946 ( .INP ( aps_rename_11_ ) , .Z ( w_addr[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( copt_net_5190 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n22 ) , .ZN ( w_addr[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( n22 ) , .IN2 ( n5 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4958 ( .INP ( n10 ) , .Z ( copt_net_2936 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U21 ( .IN1 ( w_addr[1] ) , .IN2 ( n6 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8933 ( .INP ( n19 ) , .Z ( copt_net_5189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8934 ( .INP ( copt_net_5189 ) , 
    .Z ( copt_net_5190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5193 ( .INP ( copt_net_2873 ) , 
    .Z ( copt_net_3171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( w_inc ) , .IN2 ( n3 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U26 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n11 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U27 ( .IN1 ( n27 ) , .IN2 ( copt_net_2936 ) , .Q ( w_full ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n28 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U29 ( .IN1 ( wq2_rptr[2] ) , .IN2 ( gray_w_ptr[2] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U30 ( .IN1 ( gray_w_ptr[3] ) , .IN2 ( n4 ) , .Q ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( n30 ) , .IN2 ( copt_net_5189 ) , .Q ( gray_w_ptr[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8964 ( .INP ( copt_net_5221 ) , 
    .Z ( copt_net_5220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8965 ( .INP ( aps_rename_12_ ) , 
    .Z ( copt_net_5221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 ( w_data , w_full , 
    w_inc , w_addr , dftopt20 , w_rst_n , \r_addr[2] , \r_addr[1] , 
    PLACE_HFSNET_173 , r_data , test_si2 , test_si1 , test_so2 , test_so1 , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt3 , dftopt2 , dftopt5 , 
    dftopt4 , dftopt8 , dftopt6 , dftopt11 , dftopt7 , dftopt18 , dftopt9 , 
    dftopt21 , dftopt10 , dftopt24 , dftopt12 , dftopt27 , dftopt13 , 
    PLACE_HFSNET_30 , PLACE_HFSNET_51 , PLACE_HFSNET_92 , PLACE_HFSNET_93 , 
    PLACE_HFSNET_102 , PLACE_HFSNET_109 , PLACE_HFSNET_110 , 
    PLACE_HFSNET_113 , PLACE_HFSNET_116 , PLACE_HFSNET_172 , dftopt30 , 
    dftopt14 , dftopt15 , dftopt35 , dftopt16 , dftopt17 , dftopt40 , 
    dftopt19 , dftopt44 , p_abuf40 , p_abuf41 , dftopt22 , dftopt23 , 
    dftopt28 , dftopt25 , dftopt36 , dftopt26 , dftopt47 , dftopt29 , 
    dftopt31 , dftopt32 , dftopt33 , dftopt34 , dftopt52 , dftopt37 , 
    p_abuf39 ) ;
input  [7:0] w_data ;
input  w_full ;
input  w_inc ;
input  [2:0] w_addr ;
output dftopt20 ;
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
input  p_abuf40 ;
input  p_abuf41 ;
output dftopt22 ;
input  dftopt23 ;
input  dftopt28 ;
output dftopt25 ;
input  dftopt36 ;
output dftopt26 ;
input  dftopt47 ;
output dftopt29 ;
input  dftopt31 ;
output dftopt32 ;
input  dftopt33 ;
output dftopt34 ;
input  dftopt52 ;
output dftopt37 ;
input  p_abuf39 ;

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
wire dftopt19_gOb30 ;
wire \fifo[1][5] ;
wire \fifo[1][4] ;
wire \fifo[1][3] ;
wire dftopt2_gOb24 ;
wire \fifo[1][0] ;
wire dftopt16_gOb10 ;
wire \fifo[2][6] ;
wire \fifo[2][5] ;
wire \fifo[2][4] ;
wire \fifo[2][3] ;
wire \fifo[2][2] ;
wire \fifo[2][1] ;
wire \fifo[3][7] ;
wire \fifo[3][6] ;
wire \fifo[3][5] ;
wire \fifo[3][4] ;
wire \fifo[3][3] ;
wire \fifo[3][2] ;
wire \fifo[3][1] ;
wire \fifo[3][0] ;
wire dftopt26_gOb39 ;
wire \fifo[4][6] ;
wire \fifo[4][4] ;
wire \fifo[4][3] ;
wire \fifo[4][2] ;
wire \fifo[4][1] ;
wire \fifo[4][0] ;
wire \fifo[5][7] ;
wire \fifo[5][6] ;
wire \fifo[5][3] ;
wire \fifo[5][2] ;
wire \fifo[5][1] ;
wire \fifo[5][0] ;
wire \fifo[6][7] ;
wire \fifo[6][6] ;
wire \fifo[6][4] ;
wire dftopt29_gOb43 ;
wire \fifo[6][2] ;
wire \fifo[6][1] ;
wire \fifo[6][0] ;
wire dftopt17_gOb12 ;
wire \fifo[7][4] ;
wire dftopt14_gOb8 ;
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
wire copt_net_5227 ;
wire copt_net_2893 ;
wire copt_net_2894 ;
wire copt_net_5228 ;
wire copt_net_2971 ;
wire copt_net_2972 ;
wire copt_net_2994 ;
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
wire copt_net_2995 ;
wire PLACE_HFSNET_132 ;
wire PLACE_HFSNET_131 ;
wire PLACE_HFSNET_137 ;
wire PLACE_HFSNET_138 ;
wire PLACE_HFSNET_149 ;
wire copt_net_3033 ;
wire n138 ;
wire copt_net_3034 ;
wire PLACE_HFSNET_76 ;
wire copt_net_3049 ;
wire copt_net_3050 ;
wire copt_net_3133 ;
wire copt_net_3134 ;
wire copt_net_3135 ;
wire copt_net_3136 ;
wire copt_net_3137 ;
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
wire copt_net_3140 ;
wire PLACE_HFSNET_130 ;
wire copt_net_5260 ;
wire PLACE_HFSNET_32 ;
wire PLACE_HFSNET_33 ;
wire PLACE_HFSNET_34 ;
wire PLACE_HFSNET_35 ;
wire PLACE_HFSNET_36 ;
wire PLACE_HFSNET_37 ;
wire PLACE_HFSNET_38 ;
wire PLACE_HFSNET_39 ;
wire copt_net_3157 ;
wire PLACE_HFSNET_107 ;
wire copt_net_5261 ;
wire PLACE_HFSNET_108 ;
wire copt_net_5306 ;
wire copt_net_5315 ;
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

AO22X1 U17 ( .IN1 ( copt_net_2994 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( \fifo[7][0] ) , .IN4 ( n13 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( copt_net_3133 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( dftopt14_gOb8 ) , .IN4 ( n13 ) , .Q ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( copt_net_2971 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( \fifo[7][4] ) , .IN4 ( n13 ) , .Q ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U22 ( .IN1 ( copt_net_3049 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( dftopt32 ) , .IN4 ( n13 ) , .Q ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U23 ( .IN1 ( copt_net_3033 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .IN3 ( dftopt17_gOb12 ) , .IN4 ( n13 ) , .Q ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U26 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[6][0] ) , .IN4 ( n15 ) , .Q ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U27 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_3135 ) , 
    .IN3 ( \fifo[6][1] ) , .IN4 ( n15 ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U28 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( \fifo[6][2] ) , .IN4 ( n15 ) , .Q ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U30 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[6][4] ) , .IN4 ( n15 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U32 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_3033 ) , 
    .IN3 ( \fifo[6][6] ) , .IN4 ( n15 ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U33 ( .IN1 ( PLACE_HFSNET_80 ) , .IN2 ( copt_net_2893 ) , 
    .IN3 ( \fifo[6][7] ) , .IN4 ( n15 ) , .Q ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U35 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[5][0] ) , .IN4 ( n16 ) , .Q ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U36 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_3135 ) , 
    .IN3 ( \fifo[5][1] ) , .IN4 ( n16 ) , .Q ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U38 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_3133 ) , 
    .IN3 ( \fifo[5][3] ) , .IN4 ( n16 ) , .Q ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U39 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( dftopt22 ) , .IN4 ( n16 ) , .Q ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U41 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_3033 ) , 
    .IN3 ( \fifo[5][6] ) , .IN4 ( n16 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U42 ( .IN1 ( PLACE_HFSNET_78 ) , .IN2 ( copt_net_2893 ) , 
    .IN3 ( \fifo[5][7] ) , .IN4 ( n16 ) , .Q ( n47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U44 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[4][0] ) , .IN4 ( n17 ) , .Q ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U45 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( copt_net_3135 ) , 
    .IN3 ( \fifo[4][1] ) , .IN4 ( n17 ) , .Q ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U46 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( \fifo[4][2] ) , .IN4 ( n17 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U48 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[4][4] ) , .IN4 ( n17 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[3][0] ) , .IN4 ( n19 ) , .Q ( n56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U54 ( .IN1 ( copt_net_3135 ) , .IN2 ( PLACE_HFSNET_74 ) , 
    .IN3 ( \fifo[3][1] ) , .IN4 ( n19 ) , .Q ( n57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U55 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( \fifo[3][2] ) , .IN4 ( n19 ) , .Q ( n58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U57 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[3][4] ) , .IN4 ( n19 ) , .Q ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( PLACE_HFSNET_74 ) , .IN2 ( copt_net_2893 ) , 
    .IN3 ( \fifo[3][7] ) , .IN4 ( n19 ) , .Q ( n63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U62 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( dftopt20 ) , .IN4 ( n21 ) , .Q ( n64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U64 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( \fifo[2][2] ) , .IN4 ( n21 ) , .Q ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_3133 ) , 
    .IN3 ( \fifo[2][3] ) , .IN4 ( n21 ) , .Q ( n67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[2][4] ) , .IN4 ( n21 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_3049 ) , 
    .IN3 ( \fifo[2][5] ) , .IN4 ( n21 ) , .Q ( n69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_3033 ) , 
    .IN3 ( \fifo[2][6] ) , .IN4 ( n21 ) , .Q ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[1][0] ) , .IN4 ( n22 ) , .Q ( n72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_3135 ) , 
    .IN3 ( dftopt2_gOb24 ) , .IN4 ( n22 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( dftopt34 ) , .IN4 ( n22 ) , .Q ( n74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_3133 ) , 
    .IN3 ( \fifo[1][3] ) , .IN4 ( n22 ) , .Q ( n75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[1][4] ) , .IN4 ( n22 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_3049 ) , 
    .IN3 ( \fifo[1][5] ) , .IN4 ( n22 ) , .Q ( n77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( PLACE_HFSNET_72 ) , .IN2 ( copt_net_2893 ) , 
    .IN3 ( \fifo[1][7] ) , .IN4 ( n22 ) , .Q ( n79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_2994 ) , 
    .IN3 ( \fifo[0][0] ) , .IN4 ( n23 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_3135 ) , 
    .IN3 ( \fifo[0][1] ) , .IN4 ( n23 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_5260 ) , 
    .IN3 ( \fifo[0][2] ) , .IN4 ( n23 ) , .Q ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_3133 ) , 
    .IN3 ( \fifo[0][3] ) , .IN4 ( n23 ) , .Q ( n83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_2971 ) , 
    .IN3 ( \fifo[0][4] ) , .IN4 ( n23 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( PLACE_HFSNET_134 ) , .IN2 ( copt_net_3049 ) , 
    .IN3 ( \fifo[0][5] ) , .IN4 ( n23 ) , .Q ( n85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U3 ( .IN1 ( n105 ) , .IN2 ( n106 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( \fifo[3][7] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( \fifo[1][7] ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n119 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U6 ( .IN1 ( copt_net_3049 ) , .IN2 ( \fifo[3][5] ) , .S ( n19 ) , 
    .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( n117 ) , .IN2 ( n118 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( \fifo[3][4] ) , .IN2 ( n121 ) , .IN3 ( \fifo[1][4] ) , 
    .IN4 ( PLACE_HFSNET_138 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( copt_net_3133 ) , .IN2 ( \fifo[4][3] ) , .S ( n17 ) , 
    .Q ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U11 ( .IN1 ( copt_net_2893 ) , .IN2 ( test_so2_gOb19 ) , .S ( n13 ) , 
    .Q ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U13 ( .IN1 ( copt_net_3033 ) , .IN2 ( \fifo[3][6] ) , .S ( n19 ) , 
    .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U14 ( .IN1 ( n109 ) , .IN2 ( n110 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( copt_net_3133 ) , .IN2 ( dftopt29_gOb43 ) , .S ( n15 ) , 
    .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U24 ( .IN1 ( copt_net_2893 ) , .IN2 ( dftopt16_gOb10 ) , .S ( n21 ) , 
    .Q ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( copt_net_3033 ) , .IN2 ( \fifo[0][6] ) , .S ( n23 ) , 
    .Q ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( n113 ) , .IN2 ( n114 ) , .S ( PLACE_HFSNET_171 ) , 
    .Q ( r_data[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( copt_net_3133 ) , .IN2 ( \fifo[3][3] ) , .S ( n19 ) , 
    .Q ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( copt_net_3033 ) , .IN2 ( dftopt19_gOb30 ) , .S ( n22 ) , 
    .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( copt_net_2893 ) , .IN2 ( \fifo[0][7] ) , .S ( n23 ) , 
    .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U52 ( .IN1 ( w_addr[0] ) , .IN2 ( n138 ) , .IN3 ( PLACE_HFSNET_173 ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U59 ( .IN1 ( w_addr[0] ) , .IN2 ( copt_net_3157 ) , .IN3 ( n20 ) , 
    .QN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_8971 ( .INP ( w_data[0] ) , .Z ( copt_net_5227 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4915 ( .INP ( copt_net_2894 ) , 
    .Z ( copt_net_2893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4916 ( .INP ( w_data[7] ) , .Z ( copt_net_2894 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8972 ( .INP ( copt_net_5227 ) , 
    .Z ( copt_net_5228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4993 ( .INP ( copt_net_2972 ) , 
    .Z ( copt_net_2971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4994 ( .INP ( copt_net_5315 ) , 
    .Z ( copt_net_2972 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5016 ( .INP ( copt_net_2995 ) , 
    .Z ( copt_net_2994 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5017 ( .INP ( copt_net_5228 ) , 
    .Z ( copt_net_2995 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U95 ( .IN1 ( PLACE_HFSNET_173 ) , .IN2 ( w_addr[0] ) , .IN3 ( n148 ) , 
    .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5055 ( .INP ( copt_net_3034 ) , 
    .Z ( copt_net_3033 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5056 ( .INP ( w_data[6] ) , .Z ( copt_net_3034 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_763_204 ( .INP ( n23 ) , .ZN ( PLACE_HFSNET_134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_37_201 ( .INP ( n123 ) , .Z ( PLACE_HFSNET_131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5071 ( .INP ( copt_net_3050 ) , 
    .Z ( copt_net_3049 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
AO22X1 U128 ( .IN1 ( dftopt20 ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][0] ) , 
    .IN4 ( n120 ) , .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U129 ( .IN1 ( \fifo[4][0] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][0] ) , 
    .IN4 ( n123 ) , .IN5 ( n92 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( n94 ) , .IN2 ( PLACE_HFSNET_171 ) , .IN3 ( n93 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( \fifo[3][1] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( dftopt2_gOb24 ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    .IN3 ( dftopt34 ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n99 ) , 
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
    .IN3 ( dftopt14_gOb8 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n103 ) , 
    .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U143 ( .IN1 ( \fifo[2][3] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][3] ) , 
    .IN4 ( n120 ) , .Q ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U144 ( .IN1 ( \fifo[4][3] ) , .IN2 ( n124 ) , 
    .IN3 ( dftopt29_gOb43 ) , .IN4 ( n123 ) , .IN5 ( n104 ) , .Q ( n105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U145 ( .IN1 ( dftopt22 ) , .IN2 ( PLACE_HFSNET_132 ) , 
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
    .IN3 ( dftopt32 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n111 ) , 
    .Q ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( \fifo[2][5] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][5] ) , 
    .IN4 ( n120 ) , .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U151 ( .IN1 ( dftopt25 ) , .IN2 ( n124 ) , .IN3 ( dftopt37 ) , 
    .IN4 ( n123 ) , .IN5 ( n112 ) , .Q ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( \fifo[3][6] ) , .IN2 ( PLACE_HFSNET_137 ) , 
    .IN3 ( dftopt19_gOb30 ) , .IN4 ( PLACE_HFSNET_138 ) , .Q ( n115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U153 ( .IN1 ( \fifo[5][6] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( dftopt17_gOb12 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n115 ) , 
    .Q ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( \fifo[2][6] ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][6] ) , 
    .IN4 ( n120 ) , .Q ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U155 ( .IN1 ( \fifo[4][6] ) , .IN2 ( n124 ) , .IN3 ( \fifo[6][6] ) , 
    .IN4 ( n123 ) , .IN5 ( n116 ) , .Q ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U156 ( .IN1 ( \fifo[5][7] ) , .IN2 ( PLACE_HFSNET_132 ) , 
    .IN3 ( test_so2_gOb19 ) , .IN4 ( PLACE_HFSNET_131 ) , .IN5 ( n119 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( dftopt16_gOb10 ) , .IN2 ( n121 ) , .IN3 ( \fifo[0][7] ) , 
    .IN4 ( n120 ) , .Q ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U158 ( .IN1 ( dftopt26_gOb39 ) , .IN2 ( n124 ) , 
    .IN3 ( \fifo[6][7] ) , .IN4 ( n123 ) , .IN5 ( n122 ) , .Q ( n125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( PLACE_HFSNET_171 ) , .IN2 ( n126 ) , .IN3 ( n125 ) , 
    .IN4 ( PLACE_HFSNET_170 ) , .Q ( r_data[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U160 ( .IN1 ( PLACE_HFSNET_76 ) , .IN2 ( copt_net_3049 ) , 
    .IN3 ( dftopt25 ) , .IN4 ( n17 ) , .Q ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U161 ( .IN1 ( copt_net_5306 ) , .IN2 ( w_addr[2] ) , .Q ( n149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U164 ( .IN1 ( n14 ) , .IN2 ( copt_net_3157 ) , 
    .IN3 ( PLACE_HFSNET_149 ) , .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2663_66 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5072 ( .INP ( w_data[5] ) , .Z ( copt_net_3050 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
SDFFARX1 \fifo_reg[0][7] ( .D ( n87 ) , .SI ( dftopt28 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][6] ( .D ( n86 ) , .SI ( \fifo[0][5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[0][6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][4] ( .D ( n84 ) , .SI ( \fifo[0][7] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][4] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][7] ( .D ( n79 ) , .SI ( \fifo[3][5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[1][7] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][6] ( .D ( n78 ) , .SI ( dftopt2_gOb24 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt19_gOb30 ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][5] ( .D ( n77 ) , .SI ( \fifo[2][6] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[1][5] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][4] ( .D ( n76 ) , .SI ( \fifo[1][3] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][4] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][3] ( .D ( n75 ) , .SI ( dftopt31 ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][3] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][2] ( .D ( n74 ) , .SI ( \fifo[1][0] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt34 ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][1] ( .D ( n73 ) , .SI ( \fifo[0][6] ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt2_gOb24 ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[1][0] ( .D ( n72 ) , .SI ( \fifo[1][5] ) , 
    .SE ( PLACE_HFSNET_110 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( \fifo[1][0] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][7] ( .D ( n71 ) , .SI ( \fifo[2][4] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( dftopt16_gOb10 ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][6] ( .D ( n70 ) , .SI ( \fifo[2][1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[2][6] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][6] ( .D ( n62 ) , .SI ( \fifo[0][2] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][6] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][3] ( .D ( n59 ) , .SI ( \fifo[7][0] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][3] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][1] ( .D ( n57 ) , .SI ( \fifo[3][4] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][1] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][7] ( .D ( n47 ) , .SI ( \fifo[5][0] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][7] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][6] ( .D ( n46 ) , .SI ( \fifo[5][3] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][6] ) , .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][5] ( .D ( n45 ) , .SI ( \fifo[5][2] ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( dftopt15 ) , .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][2] ( .D ( n42 ) , .SI ( \fifo[7][2] ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][2] ) , .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][7] ( .D ( n39 ) , .SI ( \fifo[4][1] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf39 ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[6][7] ) , .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][6] ( .D ( n38 ) , .SI ( \fifo[6][0] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][6] ) , .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][5] ( .D ( n37 ) , .SI ( \fifo[6][6] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( dftopt37 ) , .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][4] ( .D ( n36 ) , .SI ( \fifo[4][6] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[6][4] ) , .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][3] ( .D ( n35 ) , .SI ( \fifo[6][2] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( dftopt29_gOb43 ) , .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][2] ( .D ( n34 ) , .SI ( \fifo[6][4] ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][2] ) , .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][1] ( .D ( n33 ) , .SI ( dftopt29_gOb43 ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[6][1] ) , .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[6][0] ( .D ( n32 ) , .SI ( dftopt26_gOb39 ) , 
    .SE ( PLACE_HFSNET_114 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_38 ) , 
    .Q ( \fifo[6][0] ) , .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][7] ( .D ( n31 ) , .SI ( \fifo[5][7] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( test_so2_gOb19 ) , .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][6] ( .D ( n30 ) , .SI ( dftopt33 ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( dftopt17_gOb12 ) , .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][5] ( .D ( n29 ) , .SI ( \fifo[1][4] ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_33 ) , 
    .Q ( dftopt32 ) , .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][4] ( .D ( n28 ) , .SI ( dftopt17_gOb12 ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[7][4] ) , .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][3] ( .D ( n27 ) , .SI ( \fifo[7][4] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( dftopt14_gOb8 ) , .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][2] ( .D ( n26 ) , .SI ( dftopt14_gOb8 ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[7][2] ) , .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][1] ( .D ( n25 ) , .SI ( test_so2_gOb19 ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[7][1] ) , .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[7][0] ( .D ( n24 ) , .SI ( \fifo[7][1] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[7][0] ) , .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][5] ( .D ( n61 ) , .SI ( \fifo[3][1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][5] ) , .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][0] ( .D ( n56 ) , .SI ( \fifo[3][7] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][0] ) , .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][5] ( .D ( n85 ) , .SI ( \fifo[1][7] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_36 ) , 
    .Q ( \fifo[0][5] ) , .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][5] ( .D ( n69 ) , .SI ( \fifo[2][3] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][5] ) , .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][3] ( .D ( n83 ) , .SI ( \fifo[0][0] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][3] ) , .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][2] ( .D ( n82 ) , .SI ( \fifo[0][1] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][2] ) , .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][1] ( .D ( n81 ) , .SI ( \fifo[0][3] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][1] ) , .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[0][0] ( .D ( n80 ) , .SI ( \fifo[0][4] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[0][0] ) , .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][4] ( .D ( n68 ) , .SI ( dftopt19_gOb30 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_34 ) , 
    .Q ( \fifo[2][4] ) , .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][3] ( .D ( n67 ) , .SI ( \fifo[2][2] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][3] ) , .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][2] ( .D ( n66 ) , .SI ( dftopt18 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][2] ) , .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][1] ( .D ( n65 ) , .SI ( dftopt16_gOb10 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( \fifo[2][1] ) , .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[2][0] ( .D ( n64 ) , .SI ( \fifo[2][5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( p_abuf41 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( dftopt20 ) , .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][7] ( .D ( n63 ) , .SI ( \fifo[3][6] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][7] ) , .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][4] ( .D ( n60 ) , .SI ( \fifo[3][3] ) , 
    .SE ( PLACE_HFSNET_115 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_32 ) , 
    .Q ( \fifo[3][4] ) , .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[3][2] ( .D ( n58 ) , .SI ( \fifo[3][0] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[3][2] ) , .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][7] ( .D ( n55 ) , .SI ( \fifo[4][3] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( dftopt26_gOb39 ) , .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][6] ( .D ( n54 ) , .SI ( \fifo[6][7] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][6] ) , .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][4] ( .D ( n52 ) , .SI ( \fifo[4][0] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( \fifo[4][4] ) , .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][3] ( .D ( n51 ) , .SI ( \fifo[6][1] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][3] ) , .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][2] ( .D ( n50 ) , .SI ( \fifo[4][4] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][2] ) , .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][1] ( .D ( n49 ) , .SI ( \fifo[4][2] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][1] ) , .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][0] ( .D ( n48 ) , .SI ( dftopt52 ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf40 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( \fifo[4][0] ) , .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[4][5] ( .D ( n53 ) , .SI ( \fifo[3][2] ) , 
    .SE ( PLACE_HFSNET_107 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_35 ) , 
    .Q ( dftopt25 ) , .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][1] ( .D ( n41 ) , .SI ( dftopt35 ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][1] ) , .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][3] ( .D ( n43 ) , .SI ( dftopt8 ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( \fifo[5][3] ) , .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][0] ( .D ( n40 ) , .SI ( \fifo[5][1] ) , 
    .SE ( PLACE_HFSNET_116 ) , .CLK ( p_abuf39 ) , .RSTB ( w_rst_n ) , 
    .Q ( \fifo[5][0] ) , .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \fifo_reg[5][4] ( .D ( n44 ) , .SI ( \fifo[5][6] ) , 
    .SE ( PLACE_HFSNET_113 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_37 ) , 
    .Q ( dftopt22 ) , .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5155 ( .INP ( copt_net_3134 ) , 
    .Z ( copt_net_3133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5156 ( .INP ( w_data[3] ) , .Z ( copt_net_3134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U88 ( .IN1 ( copt_net_3049 ) , .IN2 ( dftopt37 ) , .S ( n15 ) , 
    .Q ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( copt_net_5260 ) , .IN2 ( \fifo[5][2] ) , .S ( n16 ) , 
    .Q ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U97 ( .IN1 ( copt_net_3049 ) , .IN2 ( dftopt15 ) , .S ( n16 ) , 
    .Q ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5157 ( .INP ( copt_net_3137 ) , 
    .Z ( copt_net_3135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U179 ( .IN1 ( \fifo[2][1] ) , .IN2 ( n21 ) , .QN ( n186 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5158 ( .INP ( w_data[1] ) , .Z ( copt_net_3136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5159 ( .INP ( copt_net_3136 ) , 
    .Z ( copt_net_3137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NBUFFX2 PLACE_copt_h_inst_5162 ( .INP ( w_full ) , .Z ( copt_net_3140 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9004 ( .INP ( copt_net_5261 ) , 
    .Z ( copt_net_5260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_741_206 ( .INP ( n21 ) , .ZN ( PLACE_HFSNET_136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5179 ( .INP ( w_addr[1] ) , .Z ( copt_net_3157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9005 ( .INP ( w_data[2] ) , .Z ( copt_net_5261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9050 ( .INP ( copt_net_3140 ) , 
    .Z ( copt_net_5306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_886_128 ( .INP ( n19 ) , .ZN ( PLACE_HFSNET_74 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9059 ( .INP ( w_data[4] ) , .Z ( copt_net_5315 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1957_166 ( .INP ( PLACE_HFSNET_108 ) , 
    .Z ( PLACE_HFSNET_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U8 ( .IN1 ( w_inc ) , .IN2 ( n149 ) , .Q ( n138 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X1 U51 ( .IN1 ( PLACE_HFSNET_149 ) , .IN2 ( copt_net_3157 ) , 
    .IN3 ( n20 ) , .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NAND3X1 U102 ( .IN1 ( n138 ) , .IN2 ( copt_net_3157 ) , .IN3 ( w_addr[0] ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2927_178 ( .INP ( PLACE_HFSNET_116 ) , 
    .Z ( PLACE_HFSNET_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_341_200 ( .INP ( n13 ) , .ZN ( PLACE_HFSNET_130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U115 ( .IN1 ( n14 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_173 ) , .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U165 ( .IN1 ( copt_net_3033 ) , .IN2 ( \fifo[4][6] ) , .S ( n17 ) , 
    .Q ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U166 ( .IN1 ( copt_net_2893 ) , .IN2 ( dftopt26_gOb39 ) , .S ( n17 ) , 
    .Q ( n55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U172 ( .IN1 ( n18 ) , .IN2 ( w_addr[2] ) , .QN ( n148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U180 ( .IN1 ( copt_net_5306 ) , .IN2 ( w_inc ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U194 ( .IN1 ( copt_net_5260 ) , .IN2 ( \fifo[7][2] ) , .S ( n13 ) , 
    .Q ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U196 ( .IN1 ( n189 ) , .IN2 ( n188 ) , .QN ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U197 ( .IN1 ( n185 ) , .IN2 ( n186 ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U198 ( .IN1 ( PLACE_HFSNET_136 ) , .IN2 ( copt_net_3135 ) , 
    .QN ( n185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U199 ( .IN1 ( copt_net_3135 ) , .IN2 ( PLACE_HFSNET_130 ) , 
    .QN ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3274_81 ( .INP ( w_rst_n ) , .Z ( PLACE_HFSNET_39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ASYNC_FIFO ( p_abuf40 , PLACE_HFSNET_53 , W_INC , R_CLK , 
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
    PLACE_HFSNET_172 , dftopt42 , dftopt44 , dftopt45 , p_abuf41 , p_abuf1 , 
    dftopt22 , dftopt6 , dftopt9 , dftopt15 , dftopt19 , 
    \_gOb24_rq2_wptr_tp[2] , dftopt28 , dftopt33 , dftopt36 , dftopt46 , 
    dftopt47 , dftopt49 , dftopt2 , dftopt4 , dftopt38 , dftopt31 , dftopt48 , 
    \wq2_rptr_tp[2] , dftopt51 , dftopt52 , dftopt54 ) ;
input  p_abuf40 ;
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
input  p_abuf41 ;
input  p_abuf1 ;
output dftopt22 ;
input  dftopt6 ;
input  dftopt9 ;
output dftopt15 ;
input  dftopt19 ;
output \_gOb24_rq2_wptr_tp[2] ;
input  dftopt28 ;
output dftopt33 ;
input  dftopt36 ;
output dftopt46 ;
input  dftopt47 ;
output dftopt49 ;
input  dftopt2 ;
input  dftopt4 ;
output dftopt38 ;
input  dftopt31 ;
output dftopt48 ;
output \wq2_rptr_tp[2] ;
input  dftopt51 ;
input  dftopt52 ;
output dftopt54 ;

wire test_so2_gOb6 ;
wire [3:1] wq2_rptr_tp ;
wire [2:0] w_addr_tp ;
wire [2:2] r_addr_tp ;
wire \_gOb20_wq2_rptr_tp[0] ;
wire dftopt45_gOb25 ;
wire [2:0] gray_w_ptr_tp ;
wire [3:0] rq2_wptr_tp ;
wire [3:0] gray_r_ptr_tp ;
supply1 VDD ;
supply0 VSS ;
wire dftopt1 ;
wire copt_net_2838 ;
wire copt_net_2839 ;
wire copt_net_2840 ;
wire copt_net_2922 ;
wire PLACE_HFSNET_109 ;
wire PLACE_HFSNET_117 ;
wire PLACE_HFSNET_174 ;
wire dftopt50 ;
wire copt_net_5245 ;
wire copt_net_5246 ;
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

assign wq2_rptr_tp[3] = test_so2_gOb6 ;
assign wq2_rptr_tp[2] = \wq2_rptr_tp[2] ;
assign rq2_wptr_tp[2] = \rq2_wptr_tp[2] ;

NBUFFX2 PLACE_HFSBUF_2188_170 ( .INP ( PLACE_HFSNET_112 ) , 
    .Z ( PLACE_HFSNET_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4860 ( .INP ( copt_net_2840 ) , 
    .Z ( copt_net_2838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FIFO_MEM_CNTRL_DATA_WIDTH8_PTR_WIDTH4_FIFO_DEPTH8 U0_FIFO_MEM_CNTRL ( 
    .w_data ( WR_DATA ) , .w_full ( PLACE_HFSNET_169 ) , 
    .w_inc ( copt_net_2838 ) ,
    .w_addr ( { w_addr_tp[2] , copt_net_5245 , w_addr_tp[0] } ) ,
    .dftopt20 ( dftopt1 ) , .w_rst_n ( PLACE_HFSNET_39 ) , 
    .\r_addr[2] ( r_addr_tp[2] ) , .\r_addr[1] ( \r_addr_tp[1] ) , 
    .PLACE_HFSNET_173 ( PLACE_HFSNET_174 ) , .r_data ( RD_DATA ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_4 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_7 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_10 ) , .dftopt8 ( dftopt8 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_13 ) , .dftopt18 ( dftopt18 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt21 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt24 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_18 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_19 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_51 ( PLACE_HFSNET_51 ) , 
    .PLACE_HFSNET_92 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_93 ( PLACE_HFSNET_93 ) , 
    .PLACE_HFSNET_102 ( PLACE_HFSNET_102 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_113 ( PLACE_HFSNET_113 ) , 
    .PLACE_HFSNET_116 ( PLACE_HFSNET_116 ) , 
    .PLACE_HFSNET_172 ( PLACE_HFSNET_172 ) , 
    .dftopt30 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_22 ) , .dftopt15 ( dftopt34 ) , 
    .dftopt35 ( dftopt35 ) , .dftopt16 ( SYNOPSYS_UNCONNECTED_23 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt40 ( SYNOPSYS_UNCONNECTED_25 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_26 ) , 
    .dftopt44 ( SYNOPSYS_UNCONNECTED_27 ) , .p_abuf40 ( p_abuf40 ) , 
    .p_abuf41 ( p_abuf41 ) , .dftopt22 ( dftopt22 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_28 ) , .dftopt28 ( dftopt28 ) , 
    .dftopt25 ( dftopt33 ) , .dftopt36 ( SYNOPSYS_UNCONNECTED_29 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .dftopt47 ( SYNOPSYS_UNCONNECTED_31 ) , 
    .dftopt29 ( SYNOPSYS_UNCONNECTED_32 ) , .dftopt31 ( dftopt4 ) , 
    .dftopt32 ( dftopt38 ) , .dftopt33 ( dftopt31 ) , .dftopt34 ( dftopt48 ) , 
    .dftopt52 ( dftopt52 ) , .dftopt37 ( dftopt54 ) , .p_abuf39 ( p_abuf1 ) ) ;
FIFO_WR_PTR_WIDTH4 U0_FIFO_WR ( .w_clk ( p_abuf41 ) , 
    .w_rst_n ( PLACE_HFSNET_28 ) , .w_inc ( copt_net_2838 ) ,
    .wq2_rptr ( { test_so2_gOb6 , \wq2_rptr_tp[2] , wq2_rptr_tp[1] , 
        \_gOb20_wq2_rptr_tp[0] } ) ,
    .w_addr ( w_addr_tp ) , .w_full ( FULL ) ,
    .gray_w_ptr ( { dftopt45_gOb25 , gray_w_ptr_tp[2] , gray_w_ptr_tp[1] , 
        gray_w_ptr_tp[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_33 ) , .test_se ( PLACE_HFSNET_118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_34 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_35 ) , 
    .PLACE_HFSNET_173 ( PLACE_HFSNET_174 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_36 ) , .dftopt20 ( dftopt1 ) ) ;
FIFO_RD_PTR_WIDTH4 U0_FIFO_RD ( .r_clk ( R_CLK ) , 
    .r_rst_n ( PLACE_HFSNET_53 ) , .r_inc ( R_INC ) ,
    .rq2_wptr ( { rq2_wptr_tp[3] , \_gOb24_rq2_wptr_tp[2] , rq2_wptr_tp[1] , 
        rq2_wptr_tp[0] } ) ,
    .r_addr ( { r_addr_tp[2] , \r_addr_tp[1] , PLACE_HFSNET_172 } ) ,
    .r_empty ( EMPTY ) , .gray_r_ptr ( gray_r_ptr_tp ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_37 ) , .test_se ( PLACE_HFSNET_118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_38 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_39 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_40 ) , 
    .dftopt1 ( \_gOb20_wq2_rptr_tp[0] ) , .dftopt3 ( dftopt45_gOb25 ) , 
    .dftopt4 ( dftopt2 ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_0 U0_SYNC_W2R (
    .ASYNC ( { dftopt45_gOb25 , gray_w_ptr_tp[2] , gray_w_ptr_tp[1] , 
        gray_w_ptr_tp[0] } ) ,
    .CLK ( R_CLK ) , .PLACE_HFSNET_105 ( PLACE_HFSNET_105 ) ,
    .SYNC ( { rq2_wptr_tp[3] , \_gOb24_rq2_wptr_tp[2] , rq2_wptr_tp[1] , 
        rq2_wptr_tp[0] } ) ,
    .test_se ( PLACE_HFSNET_117 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_41 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_42 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_43 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_44 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_45 ) , .dftopt9 ( dftopt9 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_46 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_47 ) , .dftopt5 ( dftopt50 ) , 
    .dftopt6 ( test_so2_gOb6 ) , .dftopt51 ( dftopt51 ) ) ;
BIT_SYNC_BUS_WIDTH4_NUM_STAGES2_1 U1_SYNC_R2W ( .ASYNC ( gray_r_ptr_tp ) , 
    .CLK ( p_abuf41 ) , .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) ,
    .SYNC ( { test_so2_gOb6 , \wq2_rptr_tp[2] , wq2_rptr_tp[1] , 
        \_gOb20_wq2_rptr_tp[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_48 ) , .test_se ( PLACE_HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_49 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .dftopt42 ( SYNOPSYS_UNCONNECTED_50 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_51 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_52 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_53 ) , .dftopt5 ( dftopt50 ) , 
    .dftopt3 ( rq2_wptr_tp[1] ) ) ;
INVX2 PLACE_HFSINV_305_253 ( .INP ( copt_net_5245 ) , 
    .ZN ( PLACE_HFSNET_174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1780_180 ( .INP ( test_se ) , .Z ( PLACE_HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4861 ( .INP ( W_INC ) , .Z ( copt_net_2839 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4862 ( .INP ( copt_net_2839 ) , 
    .Z ( copt_net_2840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4944 ( .INP ( w_addr_tp[1] ) , 
    .Z ( copt_net_2922 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8989 ( .INP ( copt_net_5246 ) , 
    .Z ( copt_net_5245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8990 ( .INP ( copt_net_2922 ) , 
    .Z ( copt_net_5246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module ALU_DW01_add_1 ( A , B , CI , SUM , CO , VDD , VSS ) ;
input  [13:0] A ;
input  [13:0] B ;
input  CI ;
output [13:0] SUM ;
output CO ;
input  VDD ;
input  VSS ;

wire copt_net_3211 ;
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
NBUFFX2 PLACE_copt_h_inst_5233 ( .INP ( net7218 ) , .Z ( copt_net_3211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
XOR3X2 U18 ( .IN1 ( B[12] ) , .IN2 ( A[12] ) , .IN3 ( net10994 ) , 
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
XOR2X1 U17 ( .IN1 ( net5733 ) , .IN2 ( copt_net_3211 ) , .Q ( SUM[10] ) , 
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
wire copt_net_5253 ;
wire PLACE_HFSNET_198 ;
wire copt_net_5335 ;
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
wire copt_net_3146 ;
wire net10887 ;
wire copt_net_3215 ;
wire copt_net_3258 ;
wire copt_net_3287 ;
wire copt_net_3293 ;
wire copt_net_3411 ;
wire copt_net_3412 ;
wire copt_net_3413 ;
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
FADDX1 S5_6 ( .A ( \ab[7][6] ) , .B ( \CARRYB[6][6] ) , 
    .CI ( copt_net_5253 ) , .CO ( \CARRYB[7][6] ) , .S ( \SUMB[7][6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NOR2X0 U13 ( .IN1 ( copt_net_3287 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U14 ( .IN1 ( copt_net_3412 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( \ab[1][0] ) , .IN2 ( \ab[0][1] ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_322_263 ( .INP ( PLACE_HFSNET_182 ) , 
    .Z ( PLACE_HFSNET_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U18 ( .IN1 ( copt_net_3146 ) , .IN2 ( \ab[7][7] ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U24 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .QN ( \ab[7][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_436_295 ( .INP ( PLACE_HFSNET_211 ) , 
    .Z ( PLACE_HFSNET_210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U30 ( .IN1 ( \ab[1][2] ) , .IN2 ( \ab[0][3] ) , .Q ( net11130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U31 ( .IN1 ( PLACE_HFSNET_215 ) , .IN2 ( copt_net_3293 ) , 
    .QN ( \ab[0][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8997 ( .INP ( \ab[6][7] ) , .Z ( copt_net_5253 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( PLACE_HFSNET_247 ) , .IN2 ( copt_net_3293 ) , 
    .QN ( \ab[1][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_41_300 ( .INP ( PLACE_HFSNET_216 ) , 
    .Z ( PLACE_HFSNET_215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9079 ( .INP ( PLACE_HFSNET_241 ) , 
    .Z ( copt_net_5335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_47_327 ( .INP ( copt_net_3258 ) , 
    .Z ( PLACE_HFSNET_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5168 ( .INP ( \CARRYB[7][6] ) , 
    .Z ( copt_net_3146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U49 ( .IN1 ( copt_net_3293 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U50 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U51 ( .IN1 ( copt_net_3287 ) , .IN2 ( PLACE_HFSNET_229 ) , 
    .QN ( \ab[2][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U52 ( .IN1 ( copt_net_3293 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5237 ( .INP ( PLACE_HFSNET_219 ) , 
    .Z ( copt_net_3215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U54 ( .IN1 ( \ab[0][5] ) , .IN2 ( \ab[1][4] ) , .Q ( \SUMB[1][4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_277_308 ( .INP ( PLACE_HFSNET_224 ) , 
    .Z ( PLACE_HFSNET_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5292 ( .INP ( PLACE_HFSNET_242 ) , 
    .Z ( copt_net_3258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U61 ( .IN1 ( copt_net_3287 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U62 ( .IN1 ( copt_net_3287 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U66 ( .IN1 ( \SUMB[7][1] ) , .IN2 ( \CARRYB[7][0] ) , .Q ( net10887 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U72 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_224 ) , 
    .QN ( \ab[3][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U80 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_222 ) , 
    .QN ( \ab[3][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U82 ( .IN1 ( copt_net_3413 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U83 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( copt_net_3411 ) , 
    .QN ( \ab[7][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5321 ( .INP ( PLACE_HFSNET_239 ) , 
    .Z ( copt_net_3287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5338 ( .INP ( \B[3] ) , .Z ( copt_net_3293 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5468 ( .INP ( PLACE_HFSNET_241 ) , 
    .Z ( copt_net_3411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U87 ( .IN1 ( \ab[0][2] ) , .IN2 ( \ab[1][1] ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_205_304 ( .INP ( copt_net_3215 ) , 
    .Z ( PLACE_HFSNET_218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5469 ( .INP ( copt_net_5335 ) , 
    .Z ( copt_net_3412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U90 ( .IN1 ( PLACE_HFSNET_215 ) , .IN2 ( copt_net_3287 ) , 
    .QN ( \ab[0][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5470 ( .INP ( PLACE_HFSNET_241 ) , 
    .Z ( copt_net_3413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U93 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( PRODUCT[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_333_266 ( .INP ( PLACE_HFSNET_185 ) , 
    .Z ( PLACE_HFSNET_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_430_283 ( .INP ( PLACE_HFSNET_199 ) , 
    .Z ( PLACE_HFSNET_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_41_287 ( .INP ( PLACE_HFSNET_203 ) , 
    .Z ( PLACE_HFSNET_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_47_292 ( .INP ( PLACE_HFSNET_208 ) , 
    .Z ( PLACE_HFSNET_207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_79_315 ( .INP ( PLACE_HFSNET_230 ) , 
    .Z ( PLACE_HFSNET_229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U103 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_247 ) , 
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
XOR2X1 U112 ( .IN1 ( copt_net_3146 ) , .IN2 ( \ab[7][7] ) , .Q ( \A1[12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U113 ( .IN1 ( \ab[0][1] ) , .IN2 ( \ab[1][0] ) , .Q ( PRODUCT[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U122 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_210 ) , 
    .QN ( \ab[7][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U123 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_202 ) , 
    .QN ( \ab[7][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U124 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( copt_net_3293 ) , 
    .QN ( \ab[7][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U125 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( copt_net_3287 ) , 
    .QN ( \ab[7][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U126 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( PLACE_HFSNET_218 ) , 
    .QN ( \ab[7][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U128 ( .IN1 ( PLACE_HFSNET_192 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .QN ( \ab[6][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U129 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U131 ( .IN1 ( copt_net_3293 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U132 ( .IN1 ( copt_net_3411 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U133 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U135 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U136 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U138 ( .IN1 ( copt_net_3293 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U139 ( .IN1 ( copt_net_3411 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( PLACE_HFSNET_218 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U141 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U142 ( .IN1 ( copt_net_3293 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( \ab[4][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NOR2X0 U55 ( .IN1 ( copt_net_3287 ) , .IN2 ( PLACE_HFSNET_222 ) , 
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
NOR2X0 U63 ( .IN1 ( PLACE_HFSNET_247 ) , .IN2 ( PLACE_HFSNET_207 ) , 
    .QN ( \ab[1][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U149 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( PLACE_HFSNET_247 ) , .IN2 ( PLACE_HFSNET_202 ) , 
    .QN ( \ab[1][5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U65 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U28 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_215 ) , 
    .QN ( \ab[0][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U78 ( .IN1 ( \ab[1][5] ) , .IN2 ( \ab[0][6] ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_2_4 ( .A ( n7 ) , .B ( \ab[2][4] ) , .CI ( \SUMB[1][5] ) , 
    .CO ( \CARRYB[2][4] ) , .S ( \SUMB[2][4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U147 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( PLACE_HFSNET_247 ) , 
    .QN ( \ab[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_194 ) , 
    .QN ( \ab[5][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S2_5_3 ( .A ( \CARRYB[4][3] ) , .B ( \ab[5][3] ) , 
    .CI ( \SUMB[4][4] ) , .CO ( \CARRYB[5][3] ) , .S ( \SUMB[5][3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 S4_1 ( .A ( \CARRYB[6][1] ) , .B ( \ab[7][1] ) , .CI ( \SUMB[6][2] ) , 
    .CO ( \CARRYB[7][1] ) , .S ( \SUMB[7][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U127 ( .IN1 ( PLACE_HFSNET_210 ) , .IN2 ( PLACE_HFSNET_192 ) , 
    .QN ( \ab[6][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U25 ( .IN1 ( PLACE_HFSNET_247 ) , .IN2 ( PLACE_HFSNET_210 ) , 
    .QN ( \ab[1][7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U146 ( .IN1 ( PLACE_HFSNET_198 ) , .IN2 ( PLACE_HFSNET_247 ) , 
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
NOR2X0 U69 ( .IN1 ( PLACE_HFSNET_207 ) , .IN2 ( PLACE_HFSNET_192 ) , 
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

wire copt_net_3409 ;
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
FADDX1 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( copt_net_3409 ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( n1 ) , .CO ( carry[2] ) , 
    .S ( SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U2 ( .IN1 ( A[0] ) , .IN2 ( B[0] ) , .Q ( SUM[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U1 ( .IN1 ( A[0] ) , .IN2 ( B[0] ) , .Q ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5466 ( .INP ( carry[2] ) , .Z ( copt_net_3409 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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

wire copt_net_2882 ;
wire copt_net_2883 ;
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
NBUFFX2 PLACE_copt_h_inst_4904 ( .INP ( copt_net_2883 ) , 
    .Z ( copt_net_2882 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4905 ( .INP ( carry[8] ) , .Z ( copt_net_2883 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5855 ( .INP ( copt_net_2882 ) , .ZN ( DIFF[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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

wire aps_rename_10_ ;
wire copt_net_3068 ;
wire copt_net_3081 ;
wire copt_net_3095 ;
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
wire copt_net_3320 ;
wire n5 ;
wire n6 ;
wire copt_net_3382 ;
wire n8 ;
wire copt_net_3417 ;
wire n12 ;
wire n14 ;
wire n15 ;
wire copt_net_3419 ;
wire copt_net_3420 ;
wire copt_net_3453 ;
wire copt_net_3454 ;
wire copt_net_5378 ;
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
NAND2X0 U9 ( .IN1 ( \u_div/CryTmp[0][2] ) , .IN2 ( copt_net_3454 ) , 
    .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U10 ( .IN1 ( copt_net_3453 ) , .IN2 ( \u_div/PartRem[1][2] ) , 
    .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U11 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , 
    .QN ( \u_div/CryTmp[0][3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5090 ( .INP ( copt_net_3320 ) , 
    .Z ( copt_net_3068 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5103 ( .INP ( a[3] ) , .Z ( copt_net_3081 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U16 ( .IN1 ( \u_div/SumTmp[1][0] ) , .IN2 ( PLACE_HFSNET_244 ) , 
    .S ( n5 ) , .Q ( \u_div/PartRem[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U17 ( .IN1 ( \u_div/PartRem[3][1] ) , .IN2 ( \u_div/SumTmp[2][1] ) , 
    .S ( quotient[2] ) , .Q ( \u_div/PartRem[2][2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U18 ( .IN1 ( PLACE_HFSNET_226 ) , .IN2 ( n8 ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U19 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( copt_net_3095 ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( \u_div/CryTmp[1][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
FADDX1 U22 ( .A ( \u_div/CryTmp[2][1] ) , .B ( copt_net_3419 ) , 
    .CI ( \u_div/PartRem[3][1] ) , .CO ( \u_div/CryTmp[2][2] ) , 
    .S ( \u_div/SumTmp[2][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U23 ( .IN1 ( \u_div/CryTmp[2][2] ) , .IN2 ( n12 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5117 ( .INP ( a[1] ) , .Z ( copt_net_3095 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5376 ( .INP ( a[0] ) , .Z ( copt_net_3320 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5439 ( .INP ( PLACE_HFSNET_220 ) , 
    .Z ( copt_net_3382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n8 ) , .ZN ( quotient[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U31 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .QN ( \u_div/PartRem[2][1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5457 ( .INP ( aps_rename_10_ ) , 
    .Z ( quotient[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5474 ( .INP ( \b[1] ) , .Z ( copt_net_3417 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5476 ( .INP ( \b[1] ) , .Z ( copt_net_3419 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5477 ( .INP ( \b[1] ) , .Z ( copt_net_3420 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U36 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( copt_net_3068 ) , 
    .QN ( \u_div/CryTmp[0][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U39 ( .IN1 ( copt_net_3081 ) , .IN2 ( PLACE_HFSNET_217 ) , 
    .QN ( \u_div/CryTmp[3][1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U40 ( .IN1 ( copt_net_3382 ) , .IN2 ( \u_div/SumTmp[3][0] ) , 
    .S ( quotient[3] ) , .Q ( \u_div/PartRem[3][1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U13 ( .IN1 ( \u_div/PartRem[2][2] ) , .IN2 ( \u_div/SumTmp[1][2] ) , 
    .S ( quotient[1] ) , .Q ( \u_div/PartRem[1][3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U1 ( .IN1 ( \u_div/PartRem[1][3] ) , .IN2 ( \u_div/CryTmp[0][3] ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U2 ( .IN1 ( \u_div/CryTmp[0][3] ) , .IN2 ( \b[3] ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X4 U3 ( .IN1 ( \b[3] ) , .IN2 ( \u_div/PartRem[1][3] ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U5 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( copt_net_5378 ) , 
    .QN ( quotient[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5510 ( .INP ( \b[2] ) , .Z ( copt_net_3453 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U21 ( .IN1 ( \u_div/CryTmp[0][1] ) , .IN2 ( \u_div/PartRem[1][1] ) , 
    .QN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U24 ( .IN1 ( copt_net_3417 ) , .IN2 ( \u_div/PartRem[1][1] ) , 
    .QN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U25 ( .IN1 ( copt_net_3417 ) , .IN2 ( \u_div/CryTmp[0][1] ) , 
    .QN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U26 ( .IN1 ( n28 ) , .IN2 ( n27 ) , .IN3 ( n29 ) , 
    .QN ( \u_div/CryTmp[0][2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U37 ( .IN1 ( copt_net_3420 ) , .IN2 ( \b[2] ) , .IN3 ( \b[3] ) , 
    .Q ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U38 ( .IN1 ( \u_div/CryTmp[3][1] ) , .IN2 ( n30 ) , 
    .Q ( aps_rename_10_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5511 ( .INP ( \b[2] ) , .Z ( copt_net_3454 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U42 ( .IN1 ( \u_div/CryTmp[1][3] ) , .IN2 ( \b[3] ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U43 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_244 ) , 
    .Q ( \u_div/SumTmp[1][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U44 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( PLACE_HFSNET_226 ) , 
    .Q ( \u_div/SumTmp[2][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U45 ( .IN1 ( PLACE_HFSNET_217 ) , .IN2 ( copt_net_3382 ) , 
    .Q ( \u_div/SumTmp[3][0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9122 ( .INP ( n26 ) , .Z ( copt_net_5378 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    dftopt45 , dftopt3 , dftopt4 , dftopt15 , dftopt5 , dftopt6 , dftopt7 , 
    dftopt8 ) ;
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
input  dftopt4 ;
input  dftopt15 ;
input  dftopt5 ;
input  dftopt6 ;
input  dftopt7 ;
input  dftopt8 ;

wire PLACE_HFSNET_193 ;
wire copt_net_2863 ;
wire copt_net_3785 ;
wire copt_net_2864 ;
wire copt_net_2865 ;
wire copt_net_5195 ;
wire copt_net_5196 ;
wire copt_net_5197 ;
wire copt_net_2910 ;
wire PLACE_HFSNET_244 ;
wire PLACE_HFSNET_220 ;
wire copt_net_5204 ;
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
wire copt_net_2939 ;
wire PLACE_HFSNET_206 ;
wire n24 ;
wire n25 ;
wire PLACE_HFSNET_237 ;
wire PLACE_HFSNET_238 ;
wire copt_net_2940 ;
wire copt_net_2941 ;
wire PLACE_HFSNET_202 ;
wire copt_net_2942 ;
wire copt_net_2943 ;
wire n58 ;
wire n112 ;
wire copt_net_2948 ;
wire PLACE_HFSNET_222 ;
wire PLACE_HFSNET_198 ;
wire copt_net_2949 ;
wire PLACE_HFSNET_194 ;
wire PLACE_HFSNET_184 ;
wire PLACE_HFSNET_210 ;
wire copt_net_2950 ;
wire PLACE_HFSNET_246 ;
wire PLACE_HFSNET_214 ;
wire copt_net_2954 ;
wire copt_net_2979 ;
wire PLACE_HFSNET_227 ;
wire PLACE_HFSNET_228 ;
wire copt_net_2980 ;
wire copt_net_5207 ;
wire n131 ;
wire n134 ;
wire n135 ;
wire copt_net_3006 ;
wire copt_net_3007 ;
wire copt_net_3008 ;
wire copt_net_5209 ;
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
wire copt_net_3038 ;
wire copt_net_3052 ;
wire copt_net_3053 ;
wire copt_net_3054 ;
wire copt_net_3055 ;
wire copt_net_3056 ;
wire PLACE_HFSNET_195 ;
wire PLACE_HFSNET_191 ;
wire copt_net_3057 ;
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
wire copt_net_3058 ;
wire copt_net_3059 ;
wire n209 ;
wire n212 ;
wire n213 ;
wire copt_net_3060 ;
wire n215 ;
wire n216 ;
wire copt_net_5212 ;
wire copt_net_5222 ;
wire copt_net_5230 ;
wire copt_net_3064 ;
wire copt_net_3065 ;
wire copt_net_3066 ;
wire copt_net_3067 ;
wire copt_net_3069 ;
wire copt_net_5233 ;
wire copt_net_3071 ;
wire copt_net_5234 ;
wire n230 ;
wire net3035 ;
wire copt_net_3073 ;
wire copt_net_5235 ;
wire net9563 ;
wire net9545 ;
wire net9544 ;
wire copt_net_3075 ;
wire copt_net_3076 ;
wire copt_net_3078 ;
wire n234 ;
wire n235 ;
wire copt_net_3079 ;
wire copt_net_3080 ;
wire copt_net_3082 ;
wire n239 ;
wire n240 ;
wire n241 ;
wire n242 ;
wire copt_net_3083 ;
wire copt_net_3084 ;
wire n5 ;
wire copt_net_3085 ;
wire copt_net_3086 ;
wire copt_net_3087 ;
wire copt_net_3088 ;
wire PLACE_HFSNET_119 ;
wire [15:0] ALU_OUT_Comb ;
supply1 VDD ;
supply0 VSS ;
wire copt_net_3091 ;
wire copt_net_3092 ;
wire copt_net_3093 ;
wire copt_net_3094 ;
wire copt_net_3096 ;
wire copt_net_3097 ;
wire copt_net_3099 ;
wire copt_net_3100 ;
wire copt_net_3101 ;
wire copt_net_3102 ;
wire copt_net_3103 ;
wire copt_net_3104 ;
wire copt_net_3105 ;
wire copt_net_3106 ;
wire copt_net_3118 ;
wire copt_net_3119 ;
wire copt_net_3120 ;
wire copt_net_5236 ;
wire copt_net_3122 ;
wire copt_net_3123 ;
wire copt_net_5250 ;
wire copt_net_5251 ;
wire copt_net_5252 ;
wire copt_net_3144 ;
wire copt_net_5254 ;
wire copt_net_3148 ;
wire copt_net_3159 ;
wire copt_net_5264 ;
wire copt_net_3169 ;
wire copt_net_3170 ;
wire copt_net_3179 ;
wire copt_net_3185 ;
wire copt_net_5265 ;
wire copt_net_3187 ;
wire copt_net_5266 ;
wire copt_net_3189 ;
wire copt_net_3194 ;
wire copt_net_5269 ;
wire copt_net_3210 ;
wire copt_net_5279 ;
wire copt_net_3216 ;
wire copt_net_3217 ;
wire copt_net_3218 ;
wire copt_net_3219 ;
wire copt_net_3220 ;
wire copt_net_3221 ;
wire copt_net_3222 ;
wire copt_net_3223 ;
wire copt_net_3224 ;
wire copt_net_3225 ;
wire copt_net_3226 ;
wire copt_net_3227 ;
wire copt_net_3228 ;
wire copt_net_3229 ;
wire copt_net_3230 ;
wire copt_net_3231 ;
wire copt_net_3232 ;
wire copt_net_3233 ;
wire copt_net_3234 ;
wire copt_net_3235 ;
wire copt_net_3236 ;
wire copt_net_3237 ;
wire copt_net_3238 ;
wire copt_net_3239 ;
wire copt_net_3240 ;
wire copt_net_3241 ;
wire copt_net_3242 ;
wire copt_net_3243 ;
wire copt_net_3244 ;
wire copt_net_3245 ;
wire copt_net_3246 ;
wire copt_net_3247 ;
wire copt_net_3248 ;
wire copt_net_3249 ;
wire copt_net_3250 ;
wire copt_net_3259 ;
wire copt_net_3260 ;
wire copt_net_3261 ;
wire copt_net_3262 ;
wire copt_net_3263 ;
wire copt_net_3264 ;
wire copt_net_3265 ;
wire copt_net_3266 ;
wire copt_net_3267 ;
wire copt_net_3268 ;
wire copt_net_3269 ;
wire copt_net_3270 ;
wire copt_net_3271 ;
wire copt_net_3273 ;
wire copt_net_3274 ;
wire copt_net_3275 ;
wire copt_net_3276 ;
wire copt_net_3277 ;
wire copt_net_3278 ;
wire copt_net_5281 ;
wire copt_net_5284 ;
wire copt_net_5286 ;
wire copt_net_5287 ;
wire copt_net_5291 ;
wire copt_net_3284 ;
wire copt_net_3285 ;
wire copt_net_3288 ;
wire copt_net_3289 ;
wire copt_net_3290 ;
wire copt_net_3291 ;
wire copt_net_3292 ;
wire copt_net_3294 ;
wire copt_net_5292 ;
wire copt_net_5293 ;
wire copt_net_5294 ;
wire copt_net_5296 ;
wire copt_net_3311 ;
wire copt_net_5298 ;
wire copt_net_3328 ;
wire copt_net_5301 ;
wire copt_net_3330 ;
wire copt_net_3331 ;
wire copt_net_5302 ;
wire copt_net_5303 ;
wire copt_net_5311 ;
wire copt_net_5313 ;
wire copt_net_5316 ;
wire copt_net_5323 ;
wire copt_net_5327 ;
wire copt_net_5330 ;
wire copt_net_5333 ;
wire copt_net_5341 ;
wire copt_net_5352 ;
wire copt_net_3354 ;
wire copt_net_3355 ;
wire copt_net_3356 ;
wire copt_net_3357 ;
wire copt_net_3362 ;
wire copt_net_3363 ;
wire copt_net_3364 ;
wire copt_net_5356 ;
wire copt_net_5357 ;
wire copt_net_5360 ;
wire copt_net_3376 ;
wire copt_net_3383 ;
wire copt_net_3384 ;
wire copt_net_3385 ;
wire copt_net_3387 ;
wire copt_net_3388 ;
wire copt_net_3389 ;
wire copt_net_3390 ;
wire copt_net_3391 ;
wire copt_net_3398 ;
wire copt_net_5373 ;
wire copt_net_5375 ;
wire copt_net_3402 ;
wire copt_net_3405 ;
wire copt_net_3408 ;
wire copt_net_3410 ;
wire copt_net_3418 ;
wire copt_net_3421 ;
wire copt_net_3423 ;
wire copt_net_3428 ;
wire copt_net_5382 ;
wire copt_net_5386 ;
wire copt_net_3433 ;
wire copt_net_3437 ;
wire copt_net_3438 ;
wire copt_net_3444 ;
wire copt_net_3446 ;
wire copt_net_3447 ;
wire copt_net_3452 ;
wire copt_net_3455 ;
wire copt_net_3458 ;
wire copt_net_3461 ;
wire copt_net_3466 ;
wire copt_net_5387 ;
wire copt_net_3502 ;
wire copt_net_3779 ;
wire copt_net_3782 ;
wire copt_net_3786 ;
wire copt_net_3787 ;
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

AO221X1 U57 ( .IN1 ( copt_net_5357 ) , .IN2 ( copt_net_3056 ) , 
    .IN3 ( copt_net_3364 ) , .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( n46 ) , 
    .Q ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U60 ( .IN1 ( n154 ) , .IN2 ( copt_net_3052 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( copt_net_5357 ) , .Q ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U63 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_181 ) , .IN5 ( n56 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1 U68 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( n36 ) , 
    .IN3 ( PLACE_HFSNET_195 ) , .IN4 ( copt_net_3364 ) , .IN5 ( N110 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U69 ( .IN1 ( PLACE_HFSNET_202 ) , .IN2 ( n64 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_191 ) , .IN5 ( n62 ) , .Q ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U71 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( n58 ) , .IN3 ( n50 ) , 
    .IN4 ( PLACE_HFSNET_193 ) , .IN5 ( copt_net_3364 ) , .Q ( n64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U72 ( .IN1 ( n155 ) , .IN2 ( PLACE_HFSNET_193 ) , 
    .IN3 ( PLACE_HFSNET_195 ) , .IN4 ( n50 ) , .IN5 ( copt_net_5357 ) , 
    .Q ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U74 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( copt_net_5357 ) , .IN4 ( copt_net_3231 ) , .IN5 ( copt_net_3452 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U75 ( .IN1 ( copt_net_3355 ) , .IN2 ( n36 ) , .IN3 ( n55 ) , 
    .IN4 ( PLACE_HFSNET_195 ) , .IN5 ( n68 ) , .Q ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U78 ( .IN1 ( n154 ) , .IN2 ( copt_net_3233 ) , 
    .IN3 ( PLACE_HFSNET_184 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( copt_net_5357 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U80 ( .IN1 ( copt_net_3355 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_184 ) , .IN4 ( n55 ) , .IN5 ( copt_net_3437 ) , 
    .IN6 ( PLACE_HFSNET_148 ) , .Q ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U83 ( .IN1 ( copt_net_3385 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( copt_net_3078 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U84 ( .IN1 ( n155 ) , .IN2 ( copt_net_3078 ) , 
    .IN3 ( copt_net_3384 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U86 ( .IN1 ( copt_net_3328 ) , .IN2 ( n36 ) , .IN3 ( copt_net_3355 ) , 
    .IN4 ( n55 ) , .IN5 ( N107 ) , .IN6 ( PLACE_HFSNET_148 ) , .Q ( n82 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U87 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( copt_net_3263 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( PLACE_HFSNET_149 ) , 
    .IN5 ( copt_net_3376 ) , .IN6 ( n85 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U89 ( .IN1 ( PLACE_HFSNET_227 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( copt_net_3263 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U90 ( .IN1 ( n154 ) , .IN2 ( copt_net_3263 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U92 ( .IN1 ( copt_net_3328 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( PLACE_HFSNET_227 ) , .IN4 ( n55 ) , .IN5 ( copt_net_3123 ) , 
    .IN6 ( copt_net_3277 ) , .Q ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U93 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( copt_net_3092 ) , 
    .IN3 ( copt_net_5375 ) , .IN4 ( n36 ) , .IN5 ( PLACE_HFSNET_241 ) , 
    .IN6 ( n94 ) , .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U96 ( .IN1 ( copt_net_3328 ) , .IN2 ( n112 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( copt_net_3092 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U97 ( .IN1 ( n154 ) , .IN2 ( copt_net_3092 ) , 
    .IN3 ( copt_net_3328 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U99 ( .IN1 ( copt_net_3169 ) , .IN2 ( copt_net_5222 ) , 
    .IN3 ( net3035 ) , .Q ( ALU_OUT_Comb[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U113 ( .IN1 ( copt_net_3328 ) , .IN2 ( copt_net_5341 ) , 
    .IN3 ( copt_net_5323 ) , .IN4 ( copt_net_5382 ) , .IN5 ( copt_net_5212 ) , 
    .Q ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( N150 ) , .IN2 ( n92 ) , .IN3 ( N149 ) , 
    .IN4 ( copt_net_3330 ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U116 ( .IN1 ( copt_net_5375 ) , .IN2 ( n58 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( copt_net_3065 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U119 ( .IN1 ( n155 ) , .IN2 ( copt_net_3065 ) , 
    .IN3 ( copt_net_5375 ) , .IN4 ( PLACE_HFSNET_147 ) , 
    .IN5 ( PLACE_HFSNET_152 ) , .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U123 ( .IN1 ( n91 ) , .IN2 ( copt_net_3330 ) , .Q ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .IN3 ( n10 ) , .QN ( n68 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U15 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( n58 ) , 
    .IN3 ( PLACE_HFSNET_147 ) , .IN4 ( copt_net_3232 ) , 
    .IN5 ( PLACE_HFSNET_149 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( n11 ) , .IN2 ( n12 ) , .IN3 ( n13 ) , .QN ( n197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_112_222 ( .INP ( n50 ) , .Z ( PLACE_HFSNET_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 PLACE_HFSINV_249_223 ( .INP ( n147 ) , .ZN ( PLACE_HFSNET_148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_115_224 ( .INP ( copt_net_3364 ) , 
    .Z ( PLACE_HFSNET_149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_4885 ( .INP ( copt_net_2864 ) , 
    .Z ( copt_net_2863 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_497_298 ( .INP ( copt_net_5302 ) , 
    .ZN ( PLACE_HFSNET_214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4886 ( .INP ( copt_net_5286 ) , 
    .Z ( copt_net_2864 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4887 ( .INP ( copt_net_2863 ) , 
    .Z ( copt_net_2865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_203_262 ( .INP ( copt_net_3060 ) , 
    .ZN ( PLACE_HFSNET_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U70 ( .IN1 ( n193 ) , .IN2 ( PLACE_HFSNET_246 ) , .Q ( n192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U73 ( .IN1 ( copt_net_3225 ) , .IN2 ( PLACE_HFSNET_181 ) , .Q ( n200 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8939 ( .INP ( ALU_OUT_Comb[6] ) , 
    .Z ( copt_net_5195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U82 ( .IN1 ( N123 ) , .IN2 ( copt_net_5327 ) , .IN3 ( n84 ) , 
    .IN4 ( copt_net_3455 ) , .IN5 ( n212 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8940 ( .INP ( copt_net_5195 ) , 
    .Z ( copt_net_5196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U100 ( .IN1 ( n47 ) , .IN2 ( copt_net_3226 ) , 
    .IN3 ( PLACE_HFSNET_191 ) , .IN4 ( n36 ) , .IN5 ( n212 ) , .Q ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U101 ( .IN1 ( copt_net_5252 ) , .IN2 ( copt_net_5222 ) , 
    .IN3 ( net3035 ) , .Q ( ALU_OUT_Comb[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U102 ( .IN1 ( copt_net_3159 ) , .IN2 ( copt_net_5222 ) , 
    .IN3 ( net3035 ) , .Q ( ALU_OUT_Comb[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U109 ( .IN1 ( copt_net_3122 ) , .IN2 ( copt_net_5222 ) , 
    .IN3 ( net3035 ) , .Q ( ALU_OUT_Comb[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_674_294 ( .INP ( copt_net_3390 ) , 
    .ZN ( PLACE_HFSNET_210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U125 ( .IN1 ( n110 ) , .IN2 ( n111 ) , .Q ( n148 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U126 ( .IN1 ( n209 ) , .IN2 ( n200 ) , .IN3 ( n201 ) , .Q ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16 PLACE_copt_h_inst_8941 ( .INP ( copt_net_5196 ) , 
    .Z ( copt_net_5197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_460_312 ( .INP ( PLACE_HFSNET_228 ) , 
    .Z ( PLACE_HFSNET_227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_884_313 ( .INP ( copt_net_3269 ) , 
    .ZN ( PLACE_HFSNET_228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U149 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( n215 ) , .Q ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U172 ( .IN1 ( n134 ) , .IN2 ( PLACE_HFSNET_198 ) , 
    .IN3 ( copt_net_3458 ) , .IN4 ( n135 ) , .IN5 ( copt_net_3185 ) , 
    .QN ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U173 ( .IN1 ( n155 ) , .IN2 ( copt_net_3779 ) , 
    .IN3 ( PLACE_HFSNET_191 ) , .IN4 ( n50 ) , .IN5 ( copt_net_5357 ) , 
    .QN ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U174 ( .IN1 ( PLACE_HFSNET_191 ) , .IN2 ( n58 ) , .IN3 ( n50 ) , 
    .IN4 ( copt_net_3779 ) , .IN5 ( copt_net_3364 ) , .QN ( n135 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2763_70 ( .INP ( RST ) , .Z ( PLACE_HFSNET_29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2533_71 ( .INP ( RST ) , .Z ( PLACE_HFSNET_30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1600_182 ( .INP ( PLACE_HFSNET_120 ) , 
    .Z ( PLACE_HFSNET_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U234 ( .IN1 ( PLACE_HFSNET_238 ) , .IN2 ( PLACE_HFSNET_227 ) , 
    .Q ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U240 ( .IN1 ( PLACE_HFSNET_244 ) , .IN2 ( n193 ) , .IN3 ( n192 ) , 
    .IN4 ( copt_net_5330 ) , .IN5 ( n201 ) , .Q ( n194 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U241 ( .IN1 ( PLACE_HFSNET_227 ) , .IN2 ( PLACE_HFSNET_238 ) , 
    .IN3 ( copt_net_3383 ) , .IN4 ( copt_net_3243 ) , .IN5 ( n194 ) , 
    .Q ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U242 ( .IN1 ( n197 ) , .IN2 ( n198 ) , .IN3 ( PLACE_HFSNET_191 ) , 
    .IN4 ( copt_net_3237 ) , .Q ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U243 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( copt_net_3225 ) , 
    .IN3 ( n199 ) , .IN4 ( n200 ) , .Q ( N150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA22X1 U244 ( .IN1 ( PLACE_HFSNET_241 ) , .IN2 ( n204 ) , .IN3 ( n204 ) , 
    .IN4 ( copt_net_3091 ) , .Q ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U170 ( .IN1 ( n3 ) , .IN2 ( n230 ) , .Q ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U203 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( ALU_FUN[1] ) , .IN3 ( n103 ) , 
    .QN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[8] ( .D ( copt_net_5264 ) , .SI ( ALU_OUT[11] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[8] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[7] ( .D ( copt_net_5251 ) , .SI ( dftopt7 ) , 
    .SE ( PLACE_HFSNET_118 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[6] ( .D ( copt_net_5197 ) , .SI ( ALU_OUT[3] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[5] ( .D ( copt_net_2979 ) , .SI ( ALU_OUT[4] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[5] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[4] ( .D ( copt_net_2940 ) , .SI ( ALU_OUT[2] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[4] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[2] ( .D ( copt_net_5279 ) , .SI ( dftopt8 ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 OUT_VALID_reg ( .D ( copt_net_2865 ) , .SI ( dftopt6 ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( OUT_VALID ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[14] ( .D ( ALU_OUT_Comb[14] ) , .SI ( ALU_OUT[9] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[14] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[10] ( .D ( copt_net_5265 ) , .SI ( ALU_OUT[8] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[10] ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[9] ( .D ( ALU_OUT_Comb[9] ) , .SI ( ALU_OUT[7] ) , 
    .SE ( PLACE_HFSNET_118 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( ALU_OUT[9] ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[13] ( .D ( ALU_OUT_Comb[13] ) , .SI ( ALU_OUT[15] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[13] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[12] ( .D ( ALU_OUT_Comb[12] ) , .SI ( ALU_OUT[10] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[12] ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[11] ( .D ( ALU_OUT_Comb[11] ) , .SI ( ALU_OUT[14] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_29 ) , 
    .Q ( ALU_OUT[11] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[3] ( .D ( ALU_OUT_Comb[3] ) , .SI ( ALU_OUT[1] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[3] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[1] ( .D ( ALU_OUT_Comb[1] ) , .SI ( OUT_VALID ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[1] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[15] ( .D ( copt_net_2939 ) , .SI ( ALU_OUT[6] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( ALU_OUT[15] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1 U54 ( .IN1 ( N95 ) , .IN2 ( copt_net_3189 ) , .IN3 ( copt_net_5204 ) , 
    .Q ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \ALU_OUT_reg[0] ( .D ( ALU_OUT_Comb[0] ) , .SI ( ALU_OUT[5] ) , 
    .SE ( PLACE_HFSNET_119 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_30 ) , 
    .Q ( ALU_OUT[0] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1 U8 ( .IN1 ( n106 ) , .IN2 ( copt_net_5352 ) , .IN3 ( n212 ) , 
    .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U22 ( .IN1 ( copt_net_3782 ) , .IN2 ( copt_net_5373 ) , .Q ( n230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U23 ( .IN1 ( PLACE_HFSNET_152 ) , .IN2 ( copt_net_3078 ) , 
    .IN3 ( copt_net_3461 ) , .IN4 ( n78 ) , .IN5 ( n212 ) , .Q ( n72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U28 ( .IN1 ( copt_net_3446 ) , .IN2 ( copt_net_3277 ) , 
    .IN3 ( copt_net_3405 ) , .IN4 ( copt_net_3189 ) , .IN5 ( n67 ) , 
    .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U30 ( .IN1 ( copt_net_5254 ) , .IN2 ( copt_net_3189 ) , 
    .IN3 ( copt_net_5236 ) , .IN4 ( copt_net_3277 ) , .IN5 ( n61 ) , 
    .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U38 ( .IN1 ( n63 ) , .IN2 ( copt_net_3249 ) , .IN3 ( copt_net_5357 ) , 
    .IN4 ( PLACE_HFSNET_193 ) , .IN5 ( n212 ) , .Q ( n62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U43 ( .IN1 ( copt_net_3438 ) , .IN2 ( copt_net_3277 ) , 
    .IN3 ( copt_net_3388 ) , .IN4 ( copt_net_3189 ) , .IN5 ( n54 ) , 
    .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( copt_net_3782 ) , .IN2 ( copt_net_3069 ) , .Q ( n204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI22X1 U46 ( .IN1 ( copt_net_5375 ) , .IN2 ( PLACE_HFSNET_149 ) , 
    .IN3 ( N105 ) , .IN4 ( PLACE_HFSNET_148 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U62 ( .IN1 ( copt_net_3786 ) , .IN2 ( copt_net_3330 ) , .Q ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U104 ( .IN1 ( n77 ) , .IN2 ( copt_net_3243 ) , .IN3 ( N124 ) , 
    .IN4 ( copt_net_5327 ) , .IN5 ( n36 ) , .IN6 ( PLACE_HFSNET_227 ) , 
    .Q ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U111 ( .IN1 ( copt_net_3064 ) , .IN2 ( copt_net_3502 ) , 
    .IN3 ( n234 ) , .QN ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U122 ( .IN1 ( copt_net_3364 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .Q ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4932 ( .INP ( n35 ) , .Z ( copt_net_2910 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_8948 ( .INP ( n40 ) , .Z ( copt_net_5204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5859 ( .INP ( copt_net_3787 ) , 
    .ZN ( copt_net_3785 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U147 ( .IN1 ( copt_net_3410 ) , .IN2 ( copt_net_3277 ) , 
    .IN3 ( copt_net_3402 ) , .IN4 ( copt_net_3189 ) , .IN5 ( n100 ) , 
    .Q ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U183 ( .IN1 ( n103 ) , .IN2 ( n101 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4961 ( .INP ( ALU_OUT_Comb[15] ) , 
    .Z ( copt_net_2939 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4962 ( .INP ( copt_net_2941 ) , 
    .Z ( copt_net_2940 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4963 ( .INP ( copt_net_5284 ) , 
    .Z ( copt_net_2941 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_485_330 ( .INP ( PLACE_HFSNET_246 ) , 
    .Z ( PLACE_HFSNET_244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4964 ( .INP ( copt_net_5281 ) , 
    .Z ( copt_net_2942 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U47 ( .IN1 ( n72 ) , .IN2 ( n73 ) , .IN3 ( n74 ) , 
    .IN4 ( copt_net_3444 ) , .QN ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U105 ( .IN1 ( n191 ) , .IN2 ( n202 ) , .QN ( n196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_709_282 ( .INP ( copt_net_3242 ) , 
    .ZN ( PLACE_HFSNET_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4965 ( .INP ( copt_net_2942 ) , 
    .Z ( copt_net_2943 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4970 ( .INP ( copt_net_2949 ) , 
    .Z ( copt_net_2948 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_943_303 ( .INP ( copt_net_3218 ) , 
    .ZN ( PLACE_HFSNET_218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U20 ( .IN1 ( copt_net_5357 ) , .IN2 ( copt_net_3779 ) , .QN ( n240 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4971 ( .INP ( copt_net_5207 ) , 
    .Z ( copt_net_2949 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U121 ( .IN1 ( n239 ) , .IN2 ( copt_net_3007 ) , .QN ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_HFSBUF_712_305 ( .INP ( copt_net_3383 ) , 
    .Z ( PLACE_HFSNET_220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U146 ( .IN1 ( n242 ) , .IN2 ( n20 ) , .QN ( n241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4972 ( .INP ( n79 ) , .Z ( copt_net_2950 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_1374_307 ( .INP ( copt_net_3082 ) , 
    .ZN ( PLACE_HFSNET_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4976 ( .INP ( copt_net_5235 ) , 
    .Z ( copt_net_2954 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_702_290 ( .INP ( copt_net_3084 ) , 
    .ZN ( PLACE_HFSNET_206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U156 ( .INP ( n148 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5001 ( .INP ( ALU_OUT_Comb[5] ) , 
    .Z ( copt_net_2979 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_646_286 ( .INP ( copt_net_3250 ) , 
    .ZN ( PLACE_HFSNET_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U169 ( .INP ( n148 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U176 ( .INP ( n17 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_783_317 ( .INP ( copt_net_5386 ) , 
    .ZN ( PLACE_HFSNET_232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_378_318 ( .INP ( copt_net_3356 ) , 
    .Z ( PLACE_HFSNET_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_54_319 ( .INP ( copt_net_5386 ) , 
    .Z ( PLACE_HFSNET_234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U184 ( .IN1 ( n69 ) , .IN2 ( copt_net_3466 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U185 ( .IN1 ( PLACE_HFSNET_206 ) , .IN2 ( n70 ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_609_276 ( .INP ( PLACE_HFSNET_194 ) , 
    .Z ( PLACE_HFSNET_193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_241_274 ( .INP ( copt_net_3106 ) , 
    .ZN ( PLACE_HFSNET_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_259_265 ( .INP ( copt_net_3236 ) , 
    .ZN ( PLACE_HFSNET_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5002 ( .INP ( copt_net_2950 ) , 
    .Z ( copt_net_2980 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U201 ( .IN1 ( n196 ) , .IN2 ( n195 ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U204 ( .IN1 ( copt_net_3084 ) , .IN2 ( PLACE_HFSNET_184 ) , 
    .QN ( n202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U205 ( .IN1 ( copt_net_3237 ) , .IN2 ( PLACE_HFSNET_191 ) , 
    .QN ( n206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8951 ( .INP ( n86 ) , .Z ( copt_net_5207 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5028 ( .INP ( n88 ) , .Z ( copt_net_3006 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U209 ( .INP ( n191 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U210 ( .IN1 ( n24 ) , .IN2 ( n5 ) , .IN3 ( n110 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U216 ( .INP ( copt_net_3354 ) , .ZN ( n216 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U217 ( .INP ( n24 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_860_322 ( .INP ( copt_net_3284 ) , 
    .ZN ( PLACE_HFSNET_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_505_323 ( .INP ( copt_net_3290 ) , 
    .Z ( PLACE_HFSNET_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_784_326 ( .INP ( copt_net_3259 ) , 
    .ZN ( PLACE_HFSNET_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U221 ( .INP ( n17 ) , .ZN ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_485_328 ( .INP ( copt_net_3261 ) , 
    .Z ( PLACE_HFSNET_242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5029 ( .INP ( copt_net_3008 ) , 
    .Z ( copt_net_3007 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_1758_332 ( .INP ( copt_net_3097 ) , 
    .ZN ( PLACE_HFSNET_246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U232 ( .IN1 ( copt_net_2943 ) , .IN2 ( copt_net_5311 ) , 
    .QN ( ALU_OUT_Comb[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X2 U237 ( .IN1 ( n52 ) , .IN2 ( n53 ) , .IN3 ( copt_net_2863 ) , 
    .Q ( ALU_OUT_Comb[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U239 ( .IN1 ( copt_net_2910 ) , .IN2 ( copt_net_5311 ) , 
    .QN ( ALU_OUT_Comb[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW_div_uns_0 div_43 (
    .a ( { copt_net_3082 , copt_net_3263 , copt_net_3097 , copt_net_5301 } ) ,
    .\b[3] ( copt_net_3243 ) , .\b[2] ( PLACE_HFSNET_238 ) , 
    .\b[1] ( copt_net_5330 ) , .PLACE_HFSNET_220 ( copt_net_3383 ) ,
    .quotient ( { N124 , N123 , N122 , N121 } ) ,
    .remainder ( { SYNOPSYS_UNCONNECTED_18 , SYNOPSYS_UNCONNECTED_19 , 
        SYNOPSYS_UNCONNECTED_20 , SYNOPSYS_UNCONNECTED_21 } ) ,
    .divide_by_0 ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .PLACE_HFSNET_217 ( copt_net_3782 ) , 
    .PLACE_HFSNET_226 ( PLACE_HFSNET_227 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_246 ) ) ;
ALU_DW01_sub_0 sub_41 ( .\A[8] ( VSS ) , 
    .PLACE_HFSNET_190 ( PLACE_HFSNET_191 ) , 
    .PLACE_HFSNET_216 ( copt_net_3782 ) , .\A[5] ( copt_net_3270 ) , 
    .\A[4] ( PLACE_HFSNET_184 ) , .\A[3] ( copt_net_3355 ) , 
    .\A[2] ( PLACE_HFSNET_228 ) , .\A[0] ( PLACE_HFSNET_214 ) ,
    .B ( { VSS , copt_net_3224 , copt_net_3237 , copt_net_3244 , 
        copt_net_3084 , copt_net_3292 , PLACE_HFSNET_238 , copt_net_5330 , 
        copt_net_3219 } ) ,
    .CI ( VSS ) ,
    .DIFF ( { N104 , N103 , N102 , N101 , N100 , N99 , N98 , N97 , N96 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .PLACE_HFSNET_180 ( PLACE_HFSNET_181 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_244 ) ) ;
ALU_DW01_add_0 add_40 (
    .A ( { VSS , PLACE_HFSNET_181 , PLACE_HFSNET_191 , PLACE_HFSNET_195 , 
        PLACE_HFSNET_184 , copt_net_3355 , PLACE_HFSNET_228 , 
        PLACE_HFSNET_244 , PLACE_HFSNET_214 } ) ,
    .B ( { VSS , copt_net_3148 , PLACE_HFSNET_198 , PLACE_HFSNET_202 , 
        PLACE_HFSNET_206 , copt_net_3194 , PLACE_HFSNET_237 , 
        PLACE_HFSNET_241 , PLACE_HFSNET_218 } ) ,
    .CI ( VSS ) ,
    .SUM ( { N95 , N94 , N93 , N92 , N91 , N90 , N89 , N88 , N87 } ) ,
    .CO ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ALU_DW02_mult_0 mult_42 ( .PLACE_HFSNET_185 ( copt_net_3236 ) , 
    .PLACE_HFSNET_194 ( PLACE_HFSNET_194 ) , 
    .PLACE_HFSNET_199 ( copt_net_3237 ) , 
    .PLACE_HFSNET_192 ( copt_net_3099 ) , 
    .PLACE_HFSNET_230 ( copt_net_3263 ) , 
    .PLACE_HFSNET_237 ( PLACE_HFSNET_237 ) , 
    .PLACE_HFSNET_219 ( copt_net_3219 ) , 
    .PLACE_HFSNET_216 ( copt_net_3065 ) , 
    .PLACE_HFSNET_203 ( copt_net_3244 ) , 
    .PLACE_HFSNET_208 ( copt_net_3084 ) , 
    .PLACE_HFSNET_211 ( copt_net_3224 ) , .\B[3] ( copt_net_3292 ) , 
    .PLACE_HFSNET_242 ( copt_net_3262 ) , 
    .PLACE_HFSNET_244 ( PLACE_HFSNET_246 ) , 
    .PLACE_HFSNET_224 ( copt_net_3078 ) , .TC ( VSS ) ,
    .PRODUCT ( { N120 , N119 , N118 , N117 , N116 , N115 , N114 , N113 , 
        N112 , N111 , N110 , N109 , N108 , N107 , N106 , N105 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) , .PLACE_HFSNET_182 ( copt_net_3052 ) , 
    .PLACE_HFSNET_239 ( copt_net_3284 ) , 
    .PLACE_HFSNET_247 ( copt_net_3091 ) ) ;
NAND2X4 U3 ( .IN1 ( n235 ) , .IN2 ( copt_net_3119 ) , 
    .QN ( ALU_OUT_Comb[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_798_278 ( .INP ( copt_net_3270 ) , 
    .ZN ( PLACE_HFSNET_194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5030 ( .INP ( n240 ) , .Z ( copt_net_3008 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U9 ( .IN1 ( n87 ) , .IN2 ( copt_net_3006 ) , .IN3 ( n89 ) , 
    .IN4 ( n90 ) , .QN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X1 U11 ( .IN1 ( n80 ) , .IN2 ( n81 ) , .IN3 ( n82 ) , .IN4 ( n83 ) , 
    .QN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8953 ( .INP ( n59 ) , .Z ( copt_net_5209 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5060 ( .INP ( copt_net_5269 ) , 
    .Z ( copt_net_3038 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5074 ( .INP ( copt_net_3054 ) , 
    .Z ( copt_net_3052 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5075 ( .INP ( PLACE_HFSNET_182 ) , 
    .Z ( copt_net_3053 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U21 ( .IN1 ( PLACE_HFSNET_195 ) , .IN2 ( copt_net_3244 ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5076 ( .INP ( copt_net_3057 ) , 
    .Z ( copt_net_3054 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5077 ( .INP ( copt_net_3053 ) , 
    .Z ( copt_net_3055 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U26 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( n215 ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5078 ( .INP ( copt_net_3052 ) , 
    .Z ( copt_net_3056 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_513_279 ( .INP ( copt_net_3270 ) , 
    .Z ( PLACE_HFSNET_195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U32 ( .IN1 ( copt_net_2954 ) , .IN2 ( copt_net_3398 ) , 
    .IN3 ( copt_net_2863 ) , .Q ( ALU_OUT_Comb[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U34 ( .IN1 ( copt_net_3148 ) , .IN2 ( n48 ) , .IN3 ( N94 ) , 
    .IN4 ( copt_net_3189 ) , .IN5 ( n44 ) , .Q ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U39 ( .IN1 ( n91 ) , .IN2 ( n92 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5079 ( .INP ( copt_net_3055 ) , 
    .Z ( copt_net_3057 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5080 ( .INP ( copt_net_3052 ) , 
    .Z ( copt_net_3058 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5081 ( .INP ( copt_net_3052 ) , 
    .Z ( copt_net_3059 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5082 ( .INP ( copt_net_3058 ) , 
    .Z ( copt_net_3060 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_8956 ( .INP ( n105 ) , .Z ( copt_net_5212 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( ALU_FUN[1] ) , .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U56 ( .IN1 ( n131 ) , .IN2 ( copt_net_3391 ) , .QN ( n100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U58 ( .IN1 ( copt_net_5233 ) , .IN2 ( copt_net_5222 ) , .QN ( n235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8966 ( .INP ( n33 ) , .Z ( copt_net_5222 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_8974 ( .INP ( n99 ) , .Z ( copt_net_5230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( copt_net_3071 ) , .IN2 ( copt_net_3782 ) , .QN ( n193 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5086 ( .INP ( PLACE_HFSNET_148 ) , 
    .Z ( copt_net_3064 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U67 ( .IN1 ( N121 ) , .IN2 ( copt_net_5327 ) , .QN ( n131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_309_230 ( .INP ( copt_net_5356 ) , 
    .Z ( PLACE_HFSNET_152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U77 ( .IN1 ( n25 ) , .IN2 ( ALU_FUN[1] ) , .IN3 ( ALU_FUN[2] ) , 
    .QN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( copt_net_2948 ) , .IN2 ( copt_net_5311 ) , 
    .QN ( ALU_OUT_Comb[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5087 ( .INP ( copt_net_3067 ) , 
    .Z ( copt_net_3065 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5088 ( .INP ( copt_net_5301 ) , 
    .Z ( copt_net_3066 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5089 ( .INP ( copt_net_3073 ) , 
    .Z ( copt_net_3067 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5091 ( .INP ( copt_net_3075 ) , 
    .Z ( copt_net_3069 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( copt_net_3119 ) , .ZN ( net3035 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U103 ( .IN1 ( n95 ) , .IN2 ( n16 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U106 ( .IN1 ( copt_net_2980 ) , .IN2 ( copt_net_5311 ) , 
    .QN ( ALU_OUT_Comb[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U112 ( .IN1 ( n104 ) , .IN2 ( n92 ) , .QN ( n110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8977 ( .INP ( N120 ) , .Z ( copt_net_5233 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5093 ( .INP ( copt_net_5301 ) , 
    .Z ( copt_net_3071 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U124 ( .IN1 ( copt_net_3064 ) , .IN2 ( copt_net_2863 ) , .Q ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U128 ( .IN1 ( copt_net_5209 ) , .IN2 ( copt_net_3387 ) , 
    .IN3 ( copt_net_2863 ) , .Q ( ALU_OUT_Comb[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U130 ( .IN1 ( copt_net_2863 ) , .IN2 ( copt_net_5204 ) , 
    .QN ( net9544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U132 ( .IN1 ( n98 ) , .IN2 ( copt_net_5230 ) , .IN3 ( copt_net_5387 ) , 
    .Q ( ALU_OUT_Comb[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_319_209 ( .INP ( copt_net_2863 ) , 
    .ZN ( PLACE_HFSNET_137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U134 ( .INP ( ALU_FUN[0] ) , .ZN ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U135 ( .INP ( n102 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U136 ( .IN1 ( copt_net_3785 ) , .IN2 ( n102 ) , .Q ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U137 ( .IN1 ( ALU_FUN[2] ) , .IN2 ( ALU_FUN[1] ) , .QN ( n104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( copt_net_3243 ) , .IN2 ( copt_net_3383 ) , .QN ( n191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8978 ( .INP ( n41 ) , .Z ( copt_net_5234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5095 ( .INP ( copt_net_3066 ) , 
    .Z ( copt_net_3073 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8979 ( .INP ( copt_net_5234 ) , 
    .Z ( copt_net_5235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U153 ( .IN1 ( n213 ) , .IN2 ( n216 ) , .QN ( n92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5097 ( .INP ( copt_net_5301 ) , 
    .Z ( copt_net_3075 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1252_233 ( .INP ( n96 ) , .ZN ( PLACE_HFSNET_155 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5098 ( .INP ( copt_net_5287 ) , 
    .Z ( copt_net_3076 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U159 ( .IN1 ( copt_net_3244 ) , .IN2 ( PLACE_HFSNET_195 ) , 
    .QN ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U160 ( .IN1 ( n203 ) , .IN2 ( n206 ) , .QN ( n198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR4X0 U161 ( .IN1 ( n203 ) , .IN2 ( n202 ) , .IN3 ( n206 ) , .IN4 ( n205 ) , 
    .QN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U162 ( .IN1 ( PLACE_HFSNET_184 ) , .IN2 ( copt_net_3084 ) , 
    .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5100 ( .INP ( copt_net_3079 ) , 
    .Z ( copt_net_3078 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U165 ( .IN1 ( n97 ) , .IN2 ( n148 ) , .IN3 ( n96 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5101 ( .INP ( copt_net_3082 ) , 
    .Z ( copt_net_3079 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U168 ( .IN1 ( n93 ) , .IN2 ( copt_net_3418 ) , .IN3 ( N122 ) , 
    .IN4 ( copt_net_5327 ) , .IN5 ( n212 ) , .Q ( n87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U171 ( .IN1 ( n213 ) , .IN2 ( copt_net_3354 ) , .QN ( n103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U175 ( .INP ( n212 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5102 ( .INP ( copt_net_5303 ) , 
    .Z ( copt_net_3080 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5104 ( .INP ( copt_net_3083 ) , 
    .Z ( copt_net_3082 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U180 ( .INP ( copt_net_3187 ) , .ZN ( n212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5105 ( .INP ( copt_net_3080 ) , 
    .Z ( copt_net_3083 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U187 ( .IN1 ( n215 ) , .IN2 ( ALU_FUN[2] ) , .QN ( n101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U192 ( .IN1 ( n101 ) , .IN2 ( n25 ) , .QN ( n147 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5106 ( .INP ( copt_net_3086 ) , 
    .Z ( copt_net_3084 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U196 ( .IN1 ( n108 ) , .IN2 ( n101 ) , .QN ( n97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U197 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .IN3 ( copt_net_2863 ) , 
    .Q ( ALU_OUT_Comb[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U199 ( .IN1 ( N150 ) , .IN2 ( n241 ) , .QN ( N149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U200 ( .IN1 ( copt_net_3120 ) , .IN2 ( net9563 ) , 
    .QN ( ALU_OUT_Comb[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U202 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( copt_net_5291 ) , 
    .IN3 ( copt_net_3210 ) , .IN4 ( PLACE_HFSNET_148 ) , .IN5 ( n38 ) , 
    .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U207 ( .IN1 ( n216 ) , .IN2 ( ALU_FUN[0] ) , .QN ( n109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U211 ( .IN1 ( copt_net_3354 ) , .IN2 ( ALU_FUN[0] ) , .QN ( n102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5107 ( .INP ( PLACE_HFSNET_208 ) , 
    .Z ( copt_net_3085 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5108 ( .INP ( copt_net_3088 ) , 
    .Z ( copt_net_3086 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5109 ( .INP ( copt_net_3085 ) , 
    .Z ( copt_net_3087 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U215 ( .IN1 ( PLACE_HFSNET_181 ) , .IN2 ( n112 ) , .IN3 ( n50 ) , 
    .IN4 ( copt_net_3059 ) , .IN5 ( copt_net_3364 ) , .Q ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U222 ( .IN1 ( n91 ) , .IN2 ( n103 ) , .Q ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5110 ( .INP ( copt_net_3087 ) , 
    .Z ( copt_net_3088 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5113 ( .INP ( copt_net_3094 ) , 
    .Z ( copt_net_3091 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5114 ( .INP ( copt_net_3091 ) , 
    .Z ( copt_net_3092 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U229 ( .IN1 ( copt_net_3428 ) , .IN2 ( copt_net_3189 ) , .IN3 ( N99 ) , 
    .IN4 ( copt_net_3277 ) , .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U230 ( .IN1 ( copt_net_3433 ) , .IN2 ( copt_net_3189 ) , 
    .IN3 ( copt_net_3447 ) , .IN4 ( copt_net_3277 ) , .Q ( n83 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U231 ( .IN1 ( N88 ) , .IN2 ( copt_net_3189 ) , .IN3 ( N106 ) , 
    .IN4 ( PLACE_HFSNET_148 ) , .Q ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U233 ( .IN1 ( copt_net_3179 ) , .IN2 ( copt_net_3277 ) , 
    .IN3 ( N112 ) , .IN4 ( copt_net_3064 ) , .Q ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5115 ( .INP ( copt_net_3097 ) , 
    .Z ( copt_net_3093 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U236 ( .IN1 ( N104 ) , .IN2 ( copt_net_3277 ) , .QN ( n95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U238 ( .IN1 ( copt_net_3118 ) , .IN2 ( net9545 ) , 
    .QN ( ALU_OUT_Comb[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U246 ( .IN1 ( copt_net_3144 ) , .IN2 ( copt_net_5222 ) , 
    .QN ( net9545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U247 ( .IN1 ( copt_net_5222 ) , .IN2 ( copt_net_3038 ) , 
    .QN ( net9563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5116 ( .INP ( copt_net_3096 ) , 
    .Z ( copt_net_3094 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U249 ( .IN1 ( n104 ) , .IN2 ( n103 ) , .Q ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5118 ( .INP ( copt_net_3093 ) , 
    .Z ( copt_net_3096 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5119 ( .INP ( copt_net_5293 ) , 
    .Z ( copt_net_3097 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5121 ( .INP ( copt_net_3100 ) , 
    .Z ( copt_net_3099 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5122 ( .INP ( copt_net_3102 ) , 
    .Z ( copt_net_3100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5123 ( .INP ( copt_net_3100 ) , 
    .Z ( copt_net_3101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5124 ( .INP ( PLACE_HFSNET_192 ) , 
    .Z ( copt_net_3102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5125 ( .INP ( copt_net_3101 ) , 
    .Z ( copt_net_3103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5126 ( .INP ( copt_net_3103 ) , 
    .Z ( copt_net_3104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5127 ( .INP ( copt_net_3104 ) , 
    .Z ( copt_net_3105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5128 ( .INP ( copt_net_3105 ) , 
    .Z ( copt_net_3106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5140 ( .INP ( copt_net_3119 ) , 
    .Z ( copt_net_3118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5141 ( .INP ( net9544 ) , .Z ( copt_net_3119 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5142 ( .INP ( copt_net_3119 ) , 
    .Z ( copt_net_3120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8980 ( .INP ( N101 ) , .Z ( copt_net_5236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5144 ( .INP ( N115 ) , .Z ( copt_net_3122 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5145 ( .INP ( N97 ) , .Z ( copt_net_3123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_8994 ( .INP ( ALU_OUT_Comb[7] ) , 
    .Z ( copt_net_5250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8995 ( .INP ( copt_net_5250 ) , 
    .Z ( copt_net_5251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8996 ( .INP ( N117 ) , .Z ( copt_net_5252 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5166 ( .INP ( copt_net_5266 ) , 
    .Z ( copt_net_3144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8998 ( .INP ( N92 ) , .Z ( copt_net_5254 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5170 ( .INP ( PLACE_HFSNET_210 ) , 
    .Z ( copt_net_3148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5181 ( .INP ( N118 ) , .Z ( copt_net_3159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9008 ( .INP ( ALU_OUT_Comb[8] ) , 
    .Z ( copt_net_5264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5191 ( .INP ( N119 ) , .Z ( copt_net_3169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5192 ( .INP ( N102 ) , .Z ( copt_net_3170 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5201 ( .INP ( N103 ) , .Z ( copt_net_3179 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5207 ( .INP ( n97 ) , .Z ( copt_net_3185 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9009 ( .INP ( ALU_OUT_Comb[10] ) , 
    .Z ( copt_net_5265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5209 ( .INP ( n97 ) , .Z ( copt_net_3187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9010 ( .INP ( N116 ) , .Z ( copt_net_5266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5211 ( .INP ( copt_net_5296 ) , 
    .Z ( copt_net_3189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5216 ( .INP ( PLACE_HFSNET_232 ) , 
    .Z ( copt_net_3194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9013 ( .INP ( N114 ) , .Z ( copt_net_5269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5232 ( .INP ( N113 ) , .Z ( copt_net_3210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9023 ( .INP ( ALU_OUT_Comb[2] ) , 
    .Z ( copt_net_5279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5238 ( .INP ( copt_net_3219 ) , 
    .Z ( copt_net_3216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5239 ( .INP ( copt_net_3219 ) , 
    .Z ( copt_net_3217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5240 ( .INP ( copt_net_3222 ) , 
    .Z ( copt_net_3218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5241 ( .INP ( copt_net_3220 ) , 
    .Z ( copt_net_3219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5242 ( .INP ( copt_net_5316 ) , 
    .Z ( copt_net_3220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5243 ( .INP ( copt_net_3217 ) , 
    .Z ( copt_net_3221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5244 ( .INP ( copt_net_3221 ) , 
    .Z ( copt_net_3222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5245 ( .INP ( PLACE_HFSNET_212 ) , 
    .Z ( copt_net_3223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5246 ( .INP ( copt_net_3423 ) , 
    .Z ( copt_net_3224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5247 ( .INP ( copt_net_3224 ) , 
    .Z ( copt_net_3225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5248 ( .INP ( copt_net_3224 ) , 
    .Z ( copt_net_3226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5249 ( .INP ( copt_net_3223 ) , 
    .Z ( copt_net_3227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5250 ( .INP ( copt_net_3223 ) , 
    .Z ( copt_net_3228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5251 ( .INP ( copt_net_3230 ) , 
    .Z ( copt_net_3229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5252 ( .INP ( copt_net_3234 ) , 
    .Z ( copt_net_3230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5253 ( .INP ( copt_net_3236 ) , 
    .Z ( copt_net_3231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5254 ( .INP ( copt_net_3236 ) , 
    .Z ( copt_net_3232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5255 ( .INP ( copt_net_3236 ) , 
    .Z ( copt_net_3233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5256 ( .INP ( copt_net_3235 ) , 
    .Z ( copt_net_3234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5257 ( .INP ( PLACE_HFSNET_186 ) , 
    .Z ( copt_net_3235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5258 ( .INP ( copt_net_3229 ) , 
    .Z ( copt_net_3236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5259 ( .INP ( copt_net_3238 ) , 
    .Z ( copt_net_3237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5260 ( .INP ( copt_net_3239 ) , 
    .Z ( copt_net_3238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5261 ( .INP ( copt_net_3240 ) , 
    .Z ( copt_net_3239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5262 ( .INP ( PLACE_HFSNET_200 ) , 
    .Z ( copt_net_3240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5263 ( .INP ( copt_net_3237 ) , 
    .Z ( copt_net_3241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5264 ( .INP ( copt_net_3237 ) , 
    .Z ( copt_net_3242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5270 ( .INP ( PLACE_HFSNET_233 ) , 
    .Z ( copt_net_3243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5271 ( .INP ( copt_net_3248 ) , 
    .Z ( copt_net_3244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5272 ( .INP ( PLACE_HFSNET_204 ) , 
    .Z ( copt_net_3245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5273 ( .INP ( copt_net_3245 ) , 
    .Z ( copt_net_3246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5274 ( .INP ( copt_net_3246 ) , 
    .Z ( copt_net_3247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5275 ( .INP ( copt_net_3247 ) , 
    .Z ( copt_net_3248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5276 ( .INP ( copt_net_3244 ) , 
    .Z ( copt_net_3249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5277 ( .INP ( copt_net_3244 ) , 
    .Z ( copt_net_3250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5293 ( .INP ( copt_net_3260 ) , 
    .Z ( copt_net_3259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5294 ( .INP ( copt_net_3261 ) , 
    .Z ( copt_net_3260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5295 ( .INP ( copt_net_3262 ) , 
    .Z ( copt_net_3261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5296 ( .INP ( PLACE_HFSNET_243 ) , 
    .Z ( copt_net_3262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5297 ( .INP ( copt_net_3264 ) , 
    .Z ( copt_net_3263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5298 ( .INP ( copt_net_3265 ) , 
    .Z ( copt_net_3264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5299 ( .INP ( copt_net_3266 ) , 
    .Z ( copt_net_3265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5300 ( .INP ( copt_net_3267 ) , 
    .Z ( copt_net_3266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5301 ( .INP ( copt_net_3268 ) , 
    .Z ( copt_net_3267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5302 ( .INP ( PLACE_HFSNET_230 ) , 
    .Z ( copt_net_3268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5303 ( .INP ( copt_net_3265 ) , 
    .Z ( copt_net_3269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5304 ( .INP ( copt_net_3275 ) , 
    .Z ( copt_net_3270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5305 ( .INP ( copt_net_3276 ) , 
    .Z ( copt_net_3271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5307 ( .INP ( copt_net_3271 ) , 
    .Z ( copt_net_3273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5308 ( .INP ( copt_net_3273 ) , 
    .Z ( copt_net_3274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5309 ( .INP ( copt_net_3274 ) , 
    .Z ( copt_net_3275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5310 ( .INP ( PLACE_HFSNET_196 ) , 
    .Z ( copt_net_3276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5311 ( .INP ( copt_net_3278 ) , 
    .Z ( copt_net_3277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5312 ( .INP ( n45 ) , .Z ( copt_net_3278 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9025 ( .INP ( n71 ) , .Z ( copt_net_5281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9028 ( .INP ( ALU_OUT_Comb[4] ) , 
    .Z ( copt_net_5284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9030 ( .INP ( Enable ) , .Z ( copt_net_5286 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9031 ( .INP ( PLACE_HFSNET_216 ) , 
    .Z ( copt_net_5287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9035 ( .INP ( n36 ) , .Z ( copt_net_5291 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5318 ( .INP ( copt_net_3285 ) , 
    .Z ( copt_net_3284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5319 ( .INP ( copt_net_3291 ) , 
    .Z ( copt_net_3285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5322 ( .INP ( copt_net_3291 ) , 
    .Z ( copt_net_3288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5323 ( .INP ( copt_net_3288 ) , 
    .Z ( copt_net_3289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5324 ( .INP ( copt_net_3289 ) , 
    .Z ( copt_net_3290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5325 ( .INP ( PLACE_HFSNET_239 ) , 
    .Z ( copt_net_3291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5337 ( .INP ( copt_net_3294 ) , 
    .Z ( copt_net_3292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5339 ( .INP ( PLACE_HFSNET_234 ) , 
    .Z ( copt_net_3294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9036 ( .INP ( PLACE_HFSNET_248 ) , 
    .Z ( copt_net_5292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9037 ( .INP ( copt_net_5294 ) , 
    .Z ( copt_net_5293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9038 ( .INP ( copt_net_5292 ) , 
    .Z ( copt_net_5294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9040 ( .INP ( n39 ) , .Z ( copt_net_5296 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5367 ( .INP ( N87 ) , .Z ( copt_net_3311 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9042 ( .INP ( PLACE_HFSNET_235 ) , 
    .Z ( copt_net_5298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5385 ( .INP ( PLACE_HFSNET_244 ) , 
    .Z ( copt_net_3328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16 PLACE_copt_h_inst_9045 ( .INP ( copt_net_3076 ) , 
    .Z ( copt_net_5301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5387 ( .INP ( n109 ) , .Z ( copt_net_3330 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5388 ( .INP ( N96 ) , .Z ( copt_net_3331 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9046 ( .INP ( copt_net_5301 ) , 
    .Z ( copt_net_5302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9047 ( .INP ( PLACE_HFSNET_225 ) , 
    .Z ( copt_net_5303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9055 ( .INP ( PLACE_HFSNET_137 ) , 
    .Z ( copt_net_5311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9057 ( .INP ( n55 ) , .Z ( copt_net_5313 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9060 ( .INP ( PLACE_HFSNET_219 ) , 
    .Z ( copt_net_5316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9067 ( .INP ( PLACE_HFSNET_152 ) , 
    .Z ( copt_net_5323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9071 ( .INP ( n76 ) , .Z ( copt_net_5327 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9074 ( .INP ( PLACE_HFSNET_242 ) , 
    .Z ( copt_net_5330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9077 ( .INP ( copt_net_3065 ) , 
    .Z ( copt_net_5333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9085 ( .INP ( copt_net_5313 ) , 
    .Z ( copt_net_5341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_9096 ( .INP ( copt_net_3216 ) , 
    .Z ( copt_net_5352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5411 ( .INP ( ALU_FUN[3] ) , .Z ( copt_net_3354 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5412 ( .INP ( PLACE_HFSNET_220 ) , 
    .Z ( copt_net_3355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5413 ( .INP ( copt_net_5386 ) , 
    .Z ( copt_net_3356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_5414 ( .INP ( copt_net_5298 ) , 
    .Z ( copt_net_3357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5419 ( .INP ( N98 ) , .Z ( copt_net_3362 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5420 ( .INP ( N89 ) , .Z ( copt_net_3363 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5421 ( .INP ( n43 ) , .Z ( copt_net_3364 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9100 ( .INP ( copt_net_5357 ) , 
    .Z ( copt_net_5356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9101 ( .INP ( PLACE_HFSNET_155 ) , 
    .Z ( copt_net_5357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9104 ( .INP ( copt_net_5333 ) , 
    .Z ( copt_net_5360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5433 ( .INP ( PLACE_HFSNET_237 ) , 
    .Z ( copt_net_3376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5440 ( .INP ( PLACE_HFSNET_222 ) , 
    .Z ( copt_net_3383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5441 ( .INP ( copt_net_3383 ) , 
    .Z ( copt_net_3384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5442 ( .INP ( copt_net_3383 ) , 
    .Z ( copt_net_3385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5444 ( .INP ( n60 ) , .Z ( copt_net_3387 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5445 ( .INP ( N93 ) , .Z ( copt_net_3388 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5446 ( .INP ( copt_net_3227 ) , 
    .Z ( copt_net_3389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5447 ( .INP ( copt_net_3389 ) , 
    .Z ( copt_net_3390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5448 ( .INP ( n19 ) , .Z ( copt_net_3391 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5455 ( .INP ( n42 ) , .Z ( copt_net_3398 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9117 ( .INP ( n107 ) , .Z ( copt_net_5373 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9119 ( .INP ( PLACE_HFSNET_214 ) , 
    .Z ( copt_net_5375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5459 ( .INP ( copt_net_3311 ) , 
    .Z ( copt_net_3402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5462 ( .INP ( N91 ) , .Z ( copt_net_3405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5465 ( .INP ( copt_net_3362 ) , 
    .Z ( copt_net_3408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5467 ( .INP ( copt_net_3331 ) , 
    .Z ( copt_net_3410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5475 ( .INP ( copt_net_5330 ) , 
    .Z ( copt_net_3418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5478 ( .INP ( copt_net_3194 ) , 
    .Z ( copt_net_3421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_5480 ( .INP ( copt_net_3228 ) , 
    .Z ( copt_net_3423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5485 ( .INP ( N90 ) , .Z ( copt_net_3428 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9126 ( .INP ( copt_net_5360 ) , 
    .Z ( copt_net_5382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9130 ( .INP ( copt_net_3357 ) , 
    .Z ( copt_net_5386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5490 ( .INP ( copt_net_3363 ) , 
    .Z ( copt_net_3433 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5494 ( .INP ( N108 ) , .Z ( copt_net_3437 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5495 ( .INP ( copt_net_3170 ) , 
    .Z ( copt_net_3438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5501 ( .INP ( n75 ) , .Z ( copt_net_3444 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5503 ( .INP ( N100 ) , .Z ( copt_net_3446 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5504 ( .INP ( copt_net_3408 ) , 
    .Z ( copt_net_3447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5509 ( .INP ( N109 ) , .Z ( copt_net_3452 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5512 ( .INP ( PLACE_HFSNET_238 ) , 
    .Z ( copt_net_3455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5515 ( .INP ( copt_net_3241 ) , 
    .Z ( copt_net_3458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5518 ( .INP ( copt_net_3421 ) , 
    .Z ( copt_net_3461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5523 ( .INP ( copt_net_3084 ) , 
    .Z ( copt_net_3466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9131 ( .INP ( copt_net_2863 ) , 
    .Z ( copt_net_5387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5559 ( .INP ( N111 ) , .Z ( copt_net_3502 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_d_inst_5854 ( .INP ( copt_net_3099 ) , 
    .Z ( copt_net_3779 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_d_inst_5856 ( .INP ( PLACE_HFSNET_218 ) , 
    .Z ( copt_net_3782 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5860 ( .INP ( copt_net_3787 ) , 
    .ZN ( copt_net_3786 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5861 ( .INP ( n104 ) , .ZN ( copt_net_3787 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    test_so , test_se , VDD , VSS , dftopt4 , \stored_addr[2] , \cs[1] , 
    dftopt9 , \cs[0] , dftopt26 , dftopt31 , PLACE_HFSNET_49 , 
    PLACE_HFSNET_90 , PLACE_HFSNET_91 , PLACE_HFSNET_164 , PLACE_HFSNET_165 , 
    PLACE_HFSNET_169 , dftopt18 , dftopt38 , dftopt21 , dftopt27 , dftopt43 , 
    dftopt0 , dftopt1 , \cs[2] ) ;
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
output \cs[1] ;
input  dftopt9 ;
output \cs[0] ;
input  dftopt26 ;
input  dftopt31 ;
input  PLACE_HFSNET_49 ;
input  PLACE_HFSNET_90 ;
input  PLACE_HFSNET_91 ;
input  PLACE_HFSNET_164 ;
input  PLACE_HFSNET_165 ;
input  PLACE_HFSNET_169 ;
input  dftopt18 ;
input  dftopt38 ;
input  dftopt21 ;
input  dftopt27 ;
input  dftopt43 ;
output dftopt0 ;
input  dftopt1 ;
output \cs[2] ;

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
wire copt_net_3772 ;
wire copt_net_2846 ;
wire copt_net_3773 ;
wire copt_net_2856 ;
wire n22 ;
wire copt_net_2857 ;
wire n86 ;
wire copt_net_2858 ;
wire PLACE_HFSNET_175 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire copt_net_2859 ;
wire copt_net_2860 ;
wire n98 ;
wire copt_net_2861 ;
wire n101 ;
wire n102 ;
wire n103 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire PLACE_HFSNET_168 ;
wire n109 ;
wire copt_net_2862 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire copt_net_5191 ;
wire copt_net_2870 ;
wire copt_net_2871 ;
wire copt_net_2875 ;
wire n124 ;
wire copt_net_2876 ;
wire n126 ;
wire copt_net_5192 ;
wire n128 ;
wire n129 ;
wire copt_net_2884 ;
wire n1 ;
wire copt_net_2885 ;
wire copt_net_2886 ;
wire copt_net_2887 ;
wire [3:3] cs ;
wire aps_rename_9_ ;
wire [3:1] ns ;
wire copt_net_2888 ;
wire [1:0] stored_addr ;
supply1 VDD ;
supply0 VSS ;
wire copt_net_2895 ;
wire copt_net_5193 ;
wire copt_net_2911 ;
wire copt_net_5194 ;
wire copt_net_2913 ;
wire copt_net_5198 ;
wire copt_net_2915 ;
wire copt_net_2917 ;
wire copt_net_2918 ;
wire copt_net_2919 ;
wire copt_net_2951 ;
wire copt_net_2955 ;
wire copt_net_2978 ;
wire copt_net_5200 ;
wire copt_net_2997 ;
wire copt_net_3010 ;
wire copt_net_5203 ;
wire copt_net_5205 ;
wire copt_net_3138 ;
wire copt_net_3139 ;
wire copt_net_3141 ;
wire copt_net_5211 ;
wire copt_net_5229 ;
wire copt_net_3176 ;
wire copt_net_3374 ;
wire copt_net_3375 ;
wire copt_net_5241 ;
wire copt_net_5249 ;
wire \_gOb41_cs[1] ;
wire copt_net_3774 ;
wire copt_net_5262 ;
wire copt_net_5267 ;
wire copt_net_5299 ;
wire copt_net_5300 ;
wire copt_net_5310 ;
wire copt_net_5363 ;
wire copt_net_5368 ;
wire copt_net_5369 ;
wire copt_net_5370 ;
wire copt_net_5384 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;

NOR4X1 U3 ( .IN1 ( n34 ) , .IN2 ( n36 ) , .IN3 ( n35 ) , .IN4 ( n105 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U58 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[0] ) , .IN3 ( stored_addr[0] ) , 
    .IN4 ( n24 ) , .Q ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[2] ) , .IN3 ( copt_net_2887 ) , 
    .IN4 ( n24 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U61 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[3] ) , .IN3 ( copt_net_2895 ) , 
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
NAND3X0 U70 ( .IN1 ( copt_net_3772 ) , .IN2 ( n114 ) , .IN3 ( n42 ) , 
    .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( ALU_OUT_VLD ) , .IN2 ( n10 ) , .IN3 ( n43 ) , 
    .IN4 ( n111 ) , .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1 U74 ( .IN1 ( RdEn ) , .IN2 ( copt_net_2846 ) , .IN3 ( n52 ) , 
    .IN4 ( n46 ) , .IN5 ( n105 ) , .QN ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U77 ( .IN1 ( n44 ) , .IN2 ( n32 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U78 ( .IN1 ( n27 ) , .IN2 ( n55 ) , .IN3 ( n53 ) , .IN4 ( n56 ) , 
    .QN ( ns[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U79 ( .IN1 ( n57 ) , .IN2 ( n47 ) , .IN3 ( n58 ) , .Q ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U81 ( .IN1 ( copt_net_2876 ) , .IN2 ( RX_P_DATA[0] ) , .IN3 ( n42 ) , 
    .QN ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U82 ( .IN1 ( n29 ) , .IN2 ( RX_D_VLD ) , .IN3 ( n31 ) , .IN4 ( n61 ) , 
    .Q ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U83 ( .IN1 ( n30 ) , .IN2 ( n62 ) , .Q ( n61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0 U84 ( .IN1 ( copt_net_3772 ) , .IN2 ( n114 ) , .IN3 ( n63 ) , 
    .QN ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U86 ( .IN1 ( n14 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n46 ) , 
    .IN4 ( n64 ) , .QN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U87 ( .IN1 ( RX_P_DATA[3] ) , .IN2 ( RX_D_VLD ) , 
    .IN3 ( copt_net_3010 ) , .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U88 ( .IN1 ( n40 ) , .IN2 ( n44 ) , .IN3 ( n49 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U94 ( .IN1 ( n48 ) , .IN2 ( n39 ) , .IN3 ( n68 ) , .QN ( WrEn ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U98 ( .IN1 ( copt_net_3176 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[15] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[7] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U99 ( .IN1 ( copt_net_2919 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[14] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[6] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U101 ( .IN1 ( RdData[4] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[12] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[4] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U104 ( .IN1 ( copt_net_2918 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[9] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[1] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U105 ( .IN1 ( copt_net_2915 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[8] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[0] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U7 ( .IN1 ( n90 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( RX_D_VLD ) , 
    .QN ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U38 ( .IN1 ( n48 ) , .IN2 ( copt_net_5369 ) , .IN3 ( n81 ) , 
    .QN ( GATE_EN ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5847 ( .INP ( copt_net_3773 ) , 
    .ZN ( copt_net_3772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U130 ( .IN1 ( \cs[2] ) , .IN2 ( \_gOb41_cs[1] ) , .Q ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4868 ( .INP ( copt_net_5193 ) , 
    .Z ( copt_net_2846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U147 ( .IN1 ( \cs[2] ) , .IN2 ( n11 ) , .IN3 ( aps_rename_9_ ) , 
    .QN ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U50 ( .IN1 ( PLACE_HFSNET_165 ) , .IN2 ( RX_P_DATA[2] ) , 
    .Q ( WrData[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U93 ( .IN1 ( n10 ) , .IN2 ( RX_P_DATA[2] ) , .Q ( ALU_FUN[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U122 ( .IN1 ( \_gOb41_cs[1] ) , .IN2 ( n86 ) , .IN3 ( n90 ) , 
    .QN ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[0] ( .D ( n103 ) , .SI ( RX_P_DATA[6] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \cs[0] ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( aps_rename_9_ ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[0] ( .D ( n82 ) , .SI ( stored_addr[1] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( stored_addr[0] ) , .QN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( cs[3] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( \cs[2] ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[3] ( .D ( ns[3] ) , .SI ( aps_rename_9_ ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( cs[3] ) , .QN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[1] ( .D ( n83 ) , .SI ( dftopt38 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( stored_addr[1] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[2] ( .D ( n84 ) , .SI ( stored_addr[0] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \stored_addr[2] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \stored_addr_reg[3] ( .D ( n85 ) , .SI ( dftopt43 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( dftopt0 ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U12 ( .IN1 ( copt_net_5203 ) , .IN2 ( PLACE_HFSNET_169 ) , 
    .Q ( UART_TX_VLD ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U14 ( .IN1 ( copt_net_5369 ) , .IN2 ( n22 ) , .IN3 ( copt_net_5384 ) , 
    .QN ( ALU_EN ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( n59 ) , .IN2 ( n129 ) , .Q ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI222X1 U29 ( .IN1 ( RdData[3] ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[11] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[3] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U36 ( .IN1 ( copt_net_2917 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[13] ) , 
    .IN4 ( n98 ) , .IN5 ( ALU_OUT[5] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U39 ( .IN1 ( \_gOb41_cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( n59 ) , 
    .QN ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U43 ( .IN1 ( copt_net_2888 ) , .IN2 ( n17 ) , .Q ( Address[1] ) , 
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
NBUFFX2 PLACE_copt_d_inst_5848 ( .INP ( copt_net_2871 ) , 
    .Z ( copt_net_3773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U102 ( .IN1 ( n39 ) , .IN2 ( copt_net_5384 ) , .IN3 ( n48 ) , 
    .Q ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U107 ( .IN1 ( n86 ) , .IN2 ( n13 ) , .IN3 ( n91 ) , .QN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U109 ( .IN1 ( n14 ) , .IN2 ( n13 ) , .IN3 ( n86 ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U117 ( .IN1 ( RX_D_VLD ) , .IN2 ( n41 ) , .IN3 ( n14 ) , 
    .IN4 ( n11 ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U129 ( .IN1 ( n10 ) , .IN2 ( copt_net_2884 ) , .Q ( ALU_FUN[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U57 ( .IN1 ( n12 ) , .IN2 ( n14 ) , .QN ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X4 U68 ( .IN1 ( copt_net_2997 ) , .IN2 ( n112 ) , .QN ( WrData[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( n73 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4878 ( .INP ( copt_net_5211 ) , 
    .Z ( copt_net_2856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n126 ) , .ZN ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U73 ( .IN1 ( n128 ) , .IN2 ( n51 ) , .QN ( ns[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4879 ( .INP ( copt_net_2856 ) , 
    .Z ( copt_net_2857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( RX_D_VLD ) , .ZN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U111 ( .INP ( ns[2] ) , .ZN ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_473_247 ( .INP ( copt_net_5384 ) , 
    .ZN ( PLACE_HFSNET_168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4880 ( .INP ( copt_net_2857 ) , 
    .Z ( copt_net_2858 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U114 ( .INP ( n70 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U115 ( .INP ( copt_net_2876 ) , .ZN ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U116 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .QN ( n60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X1 U118 ( .IN1 ( n44 ) , .IN2 ( n45 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U119 ( .INP ( copt_net_2913 ) , .ZN ( RdEn ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n53 ) , .ZN ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U124 ( .INP ( n33 ) , .ZN ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U135 ( .INP ( RX_P_DATA[3] ) , .ZN ( n115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U136 ( .INP ( copt_net_2862 ) , .ZN ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 U137 ( .INP ( copt_net_2859 ) , .ZN ( n112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U139 ( .IN1 ( copt_net_5299 ) , .IN2 ( copt_net_5262 ) , 
    .QN ( UART_TX_DATA[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U140 ( .IN1 ( FIFO_FULL ) , .IN2 ( copt_net_5200 ) , 
    .QN ( UART_TX_DATA[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U143 ( .IN1 ( FIFO_FULL ) , .IN2 ( copt_net_5229 ) , 
    .QN ( UART_TX_DATA[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U144 ( .INP ( n24 ) , .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U148 ( .IN1 ( copt_net_2846 ) , .IN2 ( copt_net_2913 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U150 ( .IN1 ( n33 ) , .IN2 ( n111 ) , .QN ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U152 ( .INP ( copt_net_2955 ) , .ZN ( n103 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_504_255 ( .INP ( \_gOb41_cs[1] ) , 
    .ZN ( PLACE_HFSNET_175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U5 ( .IN1 ( copt_net_5384 ) , .IN2 ( n70 ) , .Q ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4881 ( .INP ( copt_net_2858 ) , 
    .Z ( copt_net_2859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U8 ( .IN1 ( n102 ) , .IN2 ( copt_net_2887 ) , .Q ( Address[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U9 ( .IN1 ( n4 ) , .IN2 ( n101 ) , .IN3 ( n14 ) , .IN4 ( n102 ) , 
    .QN ( Address[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4882 ( .INP ( RX_P_DATA[5] ) , 
    .Z ( copt_net_2860 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U11 ( .IN1 ( n22 ) , .IN2 ( n1 ) , .QN ( n124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4883 ( .INP ( copt_net_2860 ) , 
    .Z ( copt_net_2861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U15 ( .IN1 ( \_gOb41_cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( \cs[2] ) , 
    .QN ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U17 ( .IN1 ( cs[3] ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n66 ) , 
    .QN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U18 ( .IN1 ( n113 ) , .IN2 ( n117 ) , .IN3 ( n60 ) , .IN4 ( n31 ) , 
    .QN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0 U19 ( .IN1 ( \_gOb41_cs[1] ) , .IN2 ( cs[3] ) , .IN3 ( n66 ) , 
    .QN ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4884 ( .INP ( copt_net_2861 ) , 
    .Z ( copt_net_2862 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4892 ( .INP ( RX_P_DATA[0] ) , 
    .Z ( copt_net_2870 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U22 ( .IN1 ( copt_net_5300 ) , .IN2 ( copt_net_3139 ) , 
    .QN ( UART_TX_DATA[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( copt_net_5299 ) , .IN2 ( copt_net_2911 ) , 
    .QN ( UART_TX_DATA[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U24 ( .IN1 ( FIFO_FULL ) , .IN2 ( n80 ) , .QN ( UART_TX_DATA[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U25 ( .IN1 ( FIFO_FULL ) , .IN2 ( copt_net_5249 ) , 
    .QN ( UART_TX_DATA[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4893 ( .INP ( copt_net_2870 ) , 
    .Z ( copt_net_2871 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4897 ( .INP ( copt_net_5198 ) , 
    .Z ( copt_net_2875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4898 ( .INP ( copt_net_2875 ) , 
    .Z ( copt_net_2876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI222X1 U30 ( .IN1 ( copt_net_5310 ) , .IN2 ( n109 ) , .IN3 ( ALU_OUT[10] ) , 
    .IN4 ( n73 ) , .IN5 ( ALU_OUT[2] ) , .IN6 ( PLACE_HFSNET_168 ) , 
    .QN ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_8935 ( .INP ( copt_net_5194 ) , 
    .Z ( copt_net_5191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U32 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( n115 ) , .QN ( WrData[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U33 ( .IN1 ( copt_net_2997 ) , .IN2 ( n114 ) , .QN ( WrData[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U34 ( .IN1 ( copt_net_2895 ) , .IN2 ( n17 ) , .Q ( Address[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4906 ( .INP ( copt_net_2886 ) , 
    .Z ( copt_net_2884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U37 ( .IN1 ( n91 ) , .IN2 ( PLACE_HFSNET_175 ) , .IN3 ( n54 ) , 
    .QN ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( n12 ) , .IN2 ( n91 ) , .Q ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n101 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n101 ) , .ZN ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U44 ( .IN1 ( copt_net_2997 ) , .IN2 ( copt_net_5205 ) , 
    .QN ( WrData[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U45 ( .IN1 ( copt_net_2997 ) , .IN2 ( n117 ) , .QN ( WrData[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X4 U49 ( .IN1 ( copt_net_2997 ) , .IN2 ( n113 ) , .QN ( WrData[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4907 ( .INP ( RX_P_DATA[1] ) , 
    .Z ( copt_net_2885 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U52 ( .IN1 ( FIFO_FULL ) , .IN2 ( n79 ) , .QN ( UART_TX_DATA[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U53 ( .IN1 ( PLACE_HFSNET_165 ) , .IN2 ( copt_net_3010 ) , 
    .Q ( WrData[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U56 ( .IN1 ( n65 ) , .IN2 ( n66 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U59 ( .IN1 ( \cs[2] ) , .IN2 ( cs[3] ) , .QN ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4908 ( .INP ( copt_net_2885 ) , 
    .Z ( copt_net_2886 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U72 ( .IN1 ( n2 ) , .IN2 ( n65 ) , .QN ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U75 ( .IN1 ( n13 ) , .IN2 ( cs[3] ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X4 U76 ( .IN1 ( n115 ) , .IN2 ( copt_net_5368 ) , .QN ( ALU_FUN[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4909 ( .INP ( \stored_addr[2] ) , 
    .Z ( copt_net_2887 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U89 ( .IN1 ( n104 ) , .IN2 ( RX_P_DATA[1] ) , .IN3 ( stored_addr[1] ) , 
    .IN4 ( n24 ) , .Q ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U92 ( .IN1 ( n112 ) , .IN2 ( n116 ) , .IN3 ( RX_P_DATA[1] ) , 
    .IN4 ( RX_P_DATA[5] ) , .QN ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( copt_net_2884 ) , .ZN ( n117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1 U96 ( .IN1 ( \cs[2] ) , .IN2 ( n11 ) , .Q ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U97 ( .IN1 ( PLACE_HFSNET_175 ) , .IN2 ( cs[3] ) , .Q ( n129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U100 ( .IN1 ( PLACE_HFSNET_175 ) , .IN2 ( \cs[0] ) , .IN3 ( n46 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1 U103 ( .IN1 ( n16 ) , .IN2 ( copt_net_5363 ) , 
    .IN3 ( PLACE_HFSNET_175 ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n89 ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( n89 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4910 ( .INP ( stored_addr[1] ) , 
    .Z ( copt_net_2888 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U125 ( .INP ( n16 ) , .ZN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U126 ( .IN1 ( copt_net_3774 ) , .IN2 ( copt_net_3375 ) , 
    .QN ( ALU_FUN[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8936 ( .INP ( copt_net_5191 ) , 
    .Z ( copt_net_5192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U128 ( .IN1 ( RX_P_DATA[0] ) , .IN2 ( n63 ) , .IN3 ( RX_P_DATA[4] ) , 
    .QN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U131 ( .INP ( RX_P_DATA[2] ) , .ZN ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U132 ( .INP ( \cs[0] ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( copt_net_5370 ) , .IN2 ( n90 ) , .QN ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U138 ( .IN1 ( n65 ) , .IN2 ( n59 ) , .QN ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4917 ( .INP ( dftopt0 ) , .Z ( copt_net_2895 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8937 ( .INP ( copt_net_5192 ) , 
    .Z ( copt_net_5193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4933 ( .INP ( n76 ) , .Z ( copt_net_2911 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8938 ( .INP ( RdData_Valid ) , 
    .Z ( copt_net_5194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4935 ( .INP ( n47 ) , .Z ( copt_net_2913 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_8942 ( .INP ( RX_P_DATA[4] ) , 
    .Z ( copt_net_5198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4937 ( .INP ( RdData[0] ) , .Z ( copt_net_2915 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( copt_net_3374 ) , .ZN ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4939 ( .INP ( RdData[5] ) , .Z ( copt_net_2917 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4940 ( .INP ( copt_net_5267 ) , 
    .Z ( copt_net_2918 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4941 ( .INP ( RdData[6] ) , .Z ( copt_net_2919 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4973 ( .INP ( n78 ) , .Z ( copt_net_2951 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4977 ( .INP ( n23 ) , .Z ( copt_net_2955 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5000 ( .INP ( copt_net_2951 ) , 
    .Z ( copt_net_2978 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_8944 ( .INP ( n72 ) , .Z ( copt_net_5200 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5019 ( .INP ( copt_net_5241 ) , 
    .Z ( copt_net_2997 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5032 ( .INP ( RX_P_DATA[7] ) , 
    .Z ( copt_net_3010 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8947 ( .INP ( n124 ) , .Z ( copt_net_5203 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8949 ( .INP ( copt_net_3772 ) , 
    .Z ( copt_net_5205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5160 ( .INP ( copt_net_2978 ) , 
    .Z ( copt_net_3138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5161 ( .INP ( copt_net_3138 ) , 
    .Z ( copt_net_3139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5163 ( .INP ( RdData[7] ) , .Z ( copt_net_3141 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8955 ( .INP ( RX_P_DATA[6] ) , 
    .Z ( copt_net_5211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_8973 ( .INP ( n75 ) , .Z ( copt_net_5229 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5198 ( .INP ( copt_net_3141 ) , 
    .Z ( copt_net_3176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5431 ( .INP ( n32 ) , .Z ( copt_net_3374 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5432 ( .INP ( copt_net_5368 ) , 
    .Z ( copt_net_3375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8985 ( .INP ( PLACE_HFSNET_164 ) , 
    .Z ( copt_net_5241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8993 ( .INP ( n74 ) , .Z ( copt_net_5249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_d_inst_5843 ( .INP ( aps_rename_9_ ) , 
    .Z ( \_gOb41_cs[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_copt_d_inst_5849 ( .INP ( copt_net_2871 ) , 
    .ZN ( copt_net_3774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9006 ( .INP ( n77 ) , .Z ( copt_net_5262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9011 ( .INP ( RdData[1] ) , .Z ( copt_net_5267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9043 ( .INP ( FIFO_FULL ) , .Z ( copt_net_5299 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9044 ( .INP ( FIFO_FULL ) , .Z ( copt_net_5300 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9054 ( .INP ( RdData[2] ) , .Z ( copt_net_5310 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9107 ( .INP ( \cs[0] ) , .Z ( copt_net_5363 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16 PLACE_copt_h_inst_9112 ( .INP ( copt_net_5369 ) , 
    .Z ( copt_net_5368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9113 ( .INP ( n32 ) , .Z ( copt_net_5369 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9114 ( .INP ( n12 ) , .Z ( copt_net_5370 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9128 ( .INP ( n67 ) , .Z ( copt_net_5384 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module PULSE_GEN_1 ( LVL_SIG , CLK , RST , PULSE_SIG , test_so , test_se , 
    VDD , VSS , dftopt23 , dftopt0 ) ;
input  LVL_SIG ;
input  CLK ;
input  RST ;
output PULSE_SIG ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt23 ;
input  dftopt0 ;

wire n1 ;
supply1 VDD ;
supply0 VSS ;

AND2X1 U3 ( .IN1 ( n1 ) , .IN2 ( LVL_SIG ) , .Q ( PULSE_SIG ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 SYNC_REG_reg ( .D ( LVL_SIG ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module BIT_SYNC_1_2 ( ASYNC , CLK , RST , SYNC , test_si , test_se , VDD , 
    VSS , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt46 , dftopt4 ) ;
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
input  dftopt3 ;
input  dftopt46 ;
input  dftopt4 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \q_reg[0][0] ( .D ( ASYNC[0] ) , .SI ( dftopt4 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1][0] ( .D ( dftopt2 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module DATA_SYNC ( Unsync_bus , bus_enable , dftopt2 , RST , sync_bus , 
    enable_pulse , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , 
    dftopt23 , dftopt3 , PLACE_HFSNET_40 , PLACE_HFSNET_92 , PLACE_HFSNET_93 , 
    dftopt4 , dftopt5 , p_abuf0 , dftopt46 , dftopt6 ) ;
input  [7:0] Unsync_bus ;
input  bus_enable ;
input  dftopt2 ;
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
input  p_abuf0 ;
input  dftopt46 ;
output dftopt6 ;

wire aps_rename_3_ ;
wire aps_rename_8_ ;
wire PLACE_HFSNET_39 ;
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
wire copt_net_2841 ;
wire dftopt5_gOb29 ;
wire copt_net_2878 ;
wire copt_net_2879 ;
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

AO22X1 U3 ( .IN1 ( sync_bus[0] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( copt_net_2841 ) , .IN4 ( Unsync_bus[0] ) , .Q ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U4 ( .IN1 ( sync_bus[1] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[1] ) , .IN4 ( copt_net_2841 ) , .Q ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U5 ( .IN1 ( dftopt6 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[2] ) , .IN4 ( copt_net_2841 ) , .Q ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U6 ( .IN1 ( sync_bus[3] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[3] ) , .IN4 ( copt_net_2841 ) , .Q ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( sync_bus[4] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[4] ) , .IN4 ( copt_net_2841 ) , .Q ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U8 ( .IN1 ( sync_bus[5] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[5] ) , .IN4 ( copt_net_2841 ) , .Q ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U9 ( .IN1 ( sync_bus[6] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[6] ) , .IN4 ( copt_net_2841 ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( sync_bus[7] ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( Unsync_bus[7] ) , .IN4 ( copt_net_2841 ) , .Q ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3339_82 ( .INP ( PLACE_HFSNET_40 ) , 
    .Z ( PLACE_HFSNET_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4863 ( .INP ( enable_pulse_comb ) , 
    .Z ( copt_net_2841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 enable_pulse_reg ( .D ( copt_net_2841 ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf0 ) , .RSTB ( RST ) , 
    .Q ( enable_pulse ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[7] ( .D ( n9 ) , .SI ( sync_bus[4] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf0 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[6] ( .D ( n8 ) , .SI ( sync_bus[5] ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf0 ) , .RSTB ( RST ) , 
    .Q ( sync_bus[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[5] ( .D ( n7 ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_92 ) , .CLK ( p_abuf0 ) , .RSTB ( RST ) , 
    .Q ( aps_rename_3_ ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[4] ( .D ( n6 ) , .SI ( enable_pulse ) , 
    .SE ( test_se ) , .CLK ( p_abuf0 ) , .RSTB ( RST ) , .Q ( sync_bus[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[3] ( .D ( n5 ) , .SI ( sync_bus[7] ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf0 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( aps_rename_8_ ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[2] ( .D ( n4 ) , .SI ( dftopt5_gOb29 ) , 
    .SE ( test_se ) , .CLK ( p_abuf0 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( dftopt6 ) , .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[1] ( .D ( n3 ) , .SI ( sync_enable ) , 
    .SE ( test_se ) , .CLK ( p_abuf0 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \sync_bus_reg[0] ( .D ( n2 ) , .SI ( aps_rename_8_ ) , 
    .SE ( PLACE_HFSNET_93 ) , .CLK ( p_abuf0 ) , .RSTB ( PLACE_HFSNET_39 ) , 
    .Q ( sync_bus[0] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_738_197 ( .INP ( copt_net_2841 ) , 
    .ZN ( PLACE_HFSNET_129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8950 ( .INP ( aps_rename_3_ ) , .Z ( sync_bus[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
BIT_SYNC_1_2 U0_BIT_SYNC (
    .ASYNC ( { bus_enable } ) ,
    .CLK ( p_abuf0 ) , .RST ( PLACE_HFSNET_39 ) ,
    .SYNC ( { sync_enable } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_9 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_11 ) , .dftopt2 ( dftopt5_gOb29 ) , 
    .dftopt3 ( n33 ) , .dftopt46 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt4 ( sync_bus[1] ) ) ;
PULSE_GEN_1 U0_PULSE_GEN ( .LVL_SIG ( sync_enable ) , .CLK ( p_abuf0 ) , 
    .RST ( PLACE_HFSNET_39 ) , .PULSE_SIG ( enable_pulse_comb ) , 
    .test_so ( n33 ) , .test_se ( PLACE_HFSNET_93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt23 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt0 ( sync_bus[0] ) ) ;
INVX0 U16 ( .INP ( copt_net_2879 ) , .ZN ( sync_bus[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4900 ( .INP ( n14 ) , .Z ( copt_net_2878 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4901 ( .INP ( copt_net_2878 ) , 
    .Z ( copt_net_2879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5375 ( .INP ( aps_rename_8_ ) , 
    .Z ( sync_bus[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module stop_check ( CLK , RST , sampled_bit , enable , stp_err , test_si , 
    test_se , VDD , VSS , dftopt0 , dftopt1 ) ;
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
input  dftopt1 ;

wire n2 ;
wire n3 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

OAI22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( n1 ) , .IN3 ( enable ) , 
    .IN4 ( n2 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 stp_err_reg ( .D ( n3 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( stp_err ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module strt_check ( CLK , RST , sampled_bit , enable , strt_glitch , test_si , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt2 ) ;
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
input  dftopt1 ;
input  dftopt2 ;

wire n2 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

AO22X1 U2 ( .IN1 ( sampled_bit ) , .IN2 ( enable ) , .IN3 ( strt_glitch ) , 
    .IN4 ( n1 ) , .Q ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 strt_glitch_reg ( .D ( n2 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module parity_check ( CLK , RST , par_typ , sampled_bit , P_DATA , enable , 
    par_err , test_si , test_se , VDD , VSS , dftopt0 ) ;
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
input  dftopt0 ;

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
SDFFARX1 par_err_reg ( .D ( n8 ) , .SI ( P_DATA[7] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( par_err ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( enable ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module deserializer ( CLK , RST , s_data , deser_en , P_DATA , test_si , 
    test_se , VDD , VSS , dftopt3 , dftopt0 , dftopt1 , PLACE_HFSNET_56 , 
    PLACE_HFSNET_88 , PLACE_HFSNET_91 , dftopt2 , dftopt20 , dftopt4 , 
    dftopt5 , dftopt40 ) ;
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
input  dftopt4 ;
input  dftopt5 ;
input  dftopt40 ;

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
SDFFARX1 \P_DATA_reg[7] ( .D ( n23 ) , .SI ( P_DATA[6] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[6] ( .D ( n22 ) , .SI ( P_DATA[5] ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[5] ( .D ( n21 ) , .SI ( dftopt40 ) , 
    .SE ( PLACE_HFSNET_91 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA[5] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_reg[4] ( .D ( n20 ) , .SI ( dftopt5 ) , 
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
SDFFARX1 \P_DATA_reg[0] ( .D ( n16 ) , .SI ( P_DATA[1] ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , .Q ( P_DATA[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module data_sampling ( CLK , RST , RX_IN , prescale , edge_cnt , enable , 
    sampled_bit , test_si , test_so , test_se , VDD , VSS , dftopt16 , 
    PLACE_HFSNET_89 , PLACE_HFSNET_151 , dftopt0 , dftopt26 , dftopt1 , 
    dftopt2 ) ;
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
output dftopt2 ;

wire test_so_gOb5 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire \add_18/carry[4] ;
wire \add_18/carry[3] ;
wire \add_18/carry[2] ;
wire dftopt1_gOb17 ;
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
SDFFARX1 \samples_reg[2] ( .D ( n24 ) , .SI ( edge_cnt[4] ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( test_so_gOb5 ) , 
    .QN ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[1] ( .D ( n23 ) , .SI ( test_so_gOb5 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( dftopt1_gOb17 ) , .QN ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \samples_reg[0] ( .D ( n22 ) , .SI ( dftopt1_gOb17 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2 ) , 
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
NOR2X0 U27 ( .IN1 ( dftopt2 ) , .IN2 ( dftopt1_gOb17 ) , .QN ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    PLACE_HFSNET_58 , PLACE_HFSNET_88 , PLACE_HFSNET_90 , dftopt1 , dftopt2 , 
    dftopt3 ) ;
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
input  dftopt2 ;
input  dftopt3 ;

wire dftopt1_gOb15 ;
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
XOR2X1 U46 ( .IN1 ( \add_24/carry[5] ) , .IN2 ( dftopt1_gOb15 ) , .Q ( N35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U47 ( .IN1 ( N14 ) , .IN2 ( dftopt1_gOb15 ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
SDFFARX1 \edge_cnt_reg[0] ( .D ( N47 ) , .SI ( edge_cnt[1] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[0] ) , .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[5] ( .D ( N52 ) , .SI ( edge_cnt[0] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( dftopt1_gOb15 ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \edge_cnt_reg[4] ( .D ( N51 ) , .SI ( dftopt1_gOb15 ) , 
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
SDFFARX1 \edge_cnt_reg[1] ( .D ( N48 ) , .SI ( dftopt14 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( edge_cnt[1] ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[0] ( .D ( n27 ) , .SI ( bit_cnt[3] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( bit_cnt[0] ) , .QN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[1] ( .D ( n26 ) , .SI ( edge_cnt[3] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( bit_cnt[1] ) , .QN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_cnt_reg[2] ( .D ( n25 ) , .SI ( dftopt2 ) , 
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
    test_so , test_se , VDD , VSS , dftopt8 , PLACE_HFSNET_56 , 
    PLACE_HFSNET_89 , PLACE_HFSNET_151 , \cs[1] , dftopt1 , dftopt36 , 
    dftopt2 , \cs[0] , dftopt44 ) ;
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
input  dftopt8 ;
input  PLACE_HFSNET_56 ;
input  PLACE_HFSNET_89 ;
output PLACE_HFSNET_151 ;
output \cs[1] ;
input  dftopt1 ;
input  dftopt36 ;
input  dftopt2 ;
output \cs[0] ;
input  dftopt44 ;

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
SDFFARX1 \cs_reg[0] ( .D ( ns[0] ) , .SI ( dftopt2 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( clk ) , .RSTB ( PLACE_HFSNET_56 ) , 
    .Q ( \cs[0] ) , .QN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( dftopt8 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst ) , .Q ( test_so ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt44 ) , 
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
    dftopt26 , dftopt1 , dftopt7 , dftopt36 , dftopt8 , dftopt40 , dftopt4 , 
    dftopt6 , dftopt44 ) ;
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
output dftopt7 ;
input  dftopt36 ;
input  dftopt8 ;
input  dftopt40 ;
output dftopt4 ;
output dftopt6 ;
input  dftopt44 ;

wire test_so_gOb1 ;
wire STRT_GLITCH ;
wire PLACE_HFSNET_88 ;
wire PLACE_HFSNET_178 ;
wire PLACE_HFSNET_56 ;
wire PLACE_HFSNET_151 ;
wire PAR_ERR ;
wire PLACE_HFSNET_176 ;
wire PAR_CHK_EN ;
wire STRT_CHK_EN ;
wire STP_CHK_EN ;
wire DESER_EN ;
wire SAMPLED_BIT ;
wire PLACE_HFSNET_57 ;
wire PLACE_HFSNET_58 ;
wire dftopt0_gOb6 ;
wire [3:0] BIT_CNT ;
wire [4:1] EDGE_CNT ;
wire \_gOb27_EDGE_CNT[0] ;
supply1 VDD ;
supply0 VSS ;
wire PLACE_HFSNET_152 ;
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

assign STRT_GLITCH = test_so_gOb1 ;

NBUFFX2 PLACE_HFSBUF_456_106 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_314_107 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_260_108 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
uart_rx_fsm fsm_inst ( .clk ( CLK ) , .rst ( PLACE_HFSNET_58 ) , 
    .par_en ( PAR_EN ) , .par_err ( PAR_ERR ) , 
    .strt_glitch ( test_so_gOb1 ) , .stp_err ( dftopt6 ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , SYNOPSYS_UNCONNECTED_1 } ) ,
    .ser_data ( RX_IN ) , .bit_cnt ( BIT_CNT ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_2 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .dftopt19 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_4 ) , .par_chk_en ( PAR_CHK_EN ) , 
    .strt_chk_en ( STRT_CHK_EN ) , .stp_chk_en ( STP_CHK_EN ) , 
    .deser_en ( DESER_EN ) , .data_valid ( Data_valid ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_5 ) , .test_so ( dftopt0_gOb6 ) , 
    .test_se ( PLACE_HFSNET_91 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt8 ( dftopt8 ) , .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_152 ) , .\cs[1] ( dftopt2 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt36 ( SYNOPSYS_UNCONNECTED_7 ) , .dftopt2 ( SAMPLED_BIT ) , 
    .\cs[0] ( dftopt4 ) , .dftopt44 ( dftopt44 ) ) ;
edge_bit_counter counter_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_57 ) , 
    .enable ( PLACE_HFSNET_152 ) , .par_en ( PAR_EN ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , \Prescale[0] } ) ,
    .bit_cnt ( BIT_CNT ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_8 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .test_si ( SYNOPSYS_UNCONNECTED_9 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_151 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt14 ( dftopt14 ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .PLACE_HFSNET_58 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_88 ( PLACE_HFSNET_88 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_11 ) , .dftopt2 ( P_DATA[3] ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_12 ) ) ;
data_sampling samp_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_56 ) , 
    .RX_IN ( RX_IN ) ,
    .prescale ( { \Prescale[5] , \Prescale[4] , \Prescale[3] , 
        PLACE_HFSNET_176 , PLACE_HFSNET_178 , SYNOPSYS_UNCONNECTED_13 } ) ,
    .edge_cnt ( { SYNOPSYS_UNCONNECTED_14 , EDGE_CNT[4] , EDGE_CNT[3] , 
        EDGE_CNT[2] , EDGE_CNT[1] , \_gOb27_EDGE_CNT[0] } ) ,
    .enable ( PLACE_HFSNET_152 ) , .sampled_bit ( SAMPLED_BIT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_15 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_16 ) , .test_se ( PLACE_HFSNET_90 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt16 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_151 ( PLACE_HFSNET_151 ) , .dftopt0 ( test_so_gOb1 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_18 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_19 ) , .dftopt2 ( dftopt7 ) ) ;
deserializer deser_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_58 ) , 
    .s_data ( SAMPLED_BIT ) , .deser_en ( DESER_EN ) , .P_DATA ( P_DATA ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_20 ) , .test_se ( PLACE_HFSNET_94 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt3 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_22 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_23 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_57 ) , 
    .PLACE_HFSNET_88 ( PLACE_HFSNET_88 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_91 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_25 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_26 ) , .dftopt5 ( PAR_ERR ) , 
    .dftopt40 ( dftopt40 ) ) ;
parity_check par_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_57 ) , 
    .par_typ ( PAR_TYP ) , .sampled_bit ( SAMPLED_BIT ) , .P_DATA ( P_DATA ) , 
    .enable ( PAR_CHK_EN ) , .par_err ( PAR_ERR ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_27 ) , .test_se ( PLACE_HFSNET_88 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_28 ) ) ;
strt_check strt_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_56 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STRT_CHK_EN ) , 
    .strt_glitch ( test_so_gOb1 ) , .test_si ( SYNOPSYS_UNCONNECTED_29 ) , 
    .test_se ( PLACE_HFSNET_90 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_31 ) , .dftopt2 ( EDGE_CNT[2] ) ) ;
stop_check stp_chk_inst ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_58 ) , 
    .sampled_bit ( SAMPLED_BIT ) , .enable ( STP_CHK_EN ) , 
    .stp_err ( dftopt6 ) , .test_si ( SYNOPSYS_UNCONNECTED_32 ) , 
    .test_se ( PLACE_HFSNET_91 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_33 ) , .dftopt1 ( dftopt0_gOb6 ) ) ;
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
    p1 , p3 , p0 , p2 , dftopt2 , p9 , p10 ) ;
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
input  p0 ;
input  p2 ;
input  dftopt2 ;
input  p9 ;
input  p10 ;

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
AO22X1 U6 ( .IN1 ( p10 ) , .IN2 ( mux_sel[0] ) , .IN3 ( p9 ) , .IN4 ( n1 ) , 
    .Q ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U7 ( .IN1 ( par_bit ) , .IN2 ( mux_sel[0] ) , .IN3 ( ser_data ) , 
    .IN4 ( n1 ) , .Q ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 TX_OUT_reg ( .D ( N13 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .SETB ( RST ) , .Q ( TX_OUT ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( mux_sel[0] ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( mux_sel[1] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module parity_calc ( CLK , PLACE_HFSNET_108 , Data_Valid , P_DATA , PAR_TYP , 
    par_bit , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt7 , 
    dftopt2 , dftopt10 , dftopt3 , dftopt14 , dftopt4 , PLACE_HFSNET_54 , 
    PLACE_HFSNET_56 , PLACE_HFSNET_156 , dftopt5 , dftopt34 , dftopt6 , 
    dftopt23 , dftopt8 , dftopt49 , dftopt9 , dftopt54 ) ;
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
input  dftopt23 ;
output dftopt8 ;
input  dftopt49 ;
output dftopt9 ;
input  dftopt54 ;

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
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( dftopt8 ) , .Q ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U10 ( .IN1 ( P_DATA[1] ) , .IN2 ( Data_Valid ) , 
    .IN3 ( PLACE_HFSNET_156 ) , .IN4 ( dftopt9 ) , .Q ( n23 ) , .VDD ( VDD ) , 
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
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n29 ) , .SI ( dftopt34 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( dftopt2 ) , .QN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n28 ) , .SI ( dftopt5 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( dftopt6 ) , .QN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n27 ) , .SI ( par_bit ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( n8 ) , .QN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n26 ) , .SI ( dftopt54 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( n9 ) , .QN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n25 ) , .SI ( dftopt23 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , .Q ( n10 ) , 
    .QN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n24 ) , .SI ( n10 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( n11 ) , .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n23 ) , .SI ( n8 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( dftopt9 ) , .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n22 ) , .SI ( n11 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( dftopt8 ) , .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 par_bit_reg ( .D ( par_bit_comb ) , .SI ( n9 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_55 ) , 
    .Q ( par_bit ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module controller_fsm ( Data_Valid , PAR_EN , CLK , RST , ser_done , ser_en , 
    mux_sel , busy , test_si , test_so , test_se , VDD , VSS , dftopt0 , 
    dftopt1 , \cs[0] , PLACE_HFSNET_53 , PLACE_HFSNET_109 , dftopt28 , 
    dftopt2 , dftopt31 , dftopt3 ) ;
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
input  dftopt3 ;

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
SDFFARX1 \cs_reg[2] ( .D ( ns[2] ) , .SI ( busy ) , .SE ( PLACE_HFSNET_109 ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( dftopt2 ) , .QN ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \cs_reg[1] ( .D ( ns[1] ) , .SI ( dftopt28 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_53 ) , .Q ( cs[1] ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 busy_reg ( .D ( busy_c ) , .SI ( dftopt3 ) , 
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
INVX0 PLACE_HFSINV_566_193 ( .INP ( PAR_EN ) , .ZN ( PLACE_HFSNET_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module serializer ( P_DATA , ser_en , busy , dftopt32 , CLK , RST , ser_done , 
    ser_data , test_si , test_so , test_se , VDD , VSS , dftopt0 , dftopt8 , 
    dftopt1 , \P_DATA_Valid[5] , dftopt3 , dftopt2 , dftopt13 , 
    PLACE_HFSNET_54 , PLACE_HFSNET_109 , PLACE_HFSNET_111 , PLACE_HFSNET_156 , 
    \P_DATA_Valid[7] , dftopt39 , dftopt38 , \P_DATA_Valid[6] , dftopt48 ) ;
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
input  dftopt8 ;
input  dftopt1 ;
output \P_DATA_Valid[5] ;
input  dftopt3 ;
output dftopt2 ;
input  dftopt13 ;
input  PLACE_HFSNET_54 ;
input  PLACE_HFSNET_109 ;
input  PLACE_HFSNET_111 ;
input  PLACE_HFSNET_156 ;
output \P_DATA_Valid[7] ;
input  dftopt39 ;
input  dftopt38 ;
output \P_DATA_Valid[6] ;
input  dftopt48 ;

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
wire \_gOb2_P_DATA_Valid[5] ;
wire [4:1] P_DATA_Valid ;
wire [1:0] counter ;
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

AO222X1 U11 ( .IN1 ( P_DATA[0] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[1] ) , 
    .IN4 ( n6 ) , .IN5 ( ser_data ) , .IN6 ( n7 ) , .Q ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U12 ( .IN1 ( \P_DATA_Valid[7] ) , .IN2 ( n7 ) , .IN3 ( P_DATA[7] ) , 
    .IN4 ( n5 ) , .Q ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U13 ( .IN1 ( P_DATA[6] ) , .IN2 ( n5 ) , .IN3 ( \P_DATA_Valid[7] ) , 
    .IN4 ( n6 ) , .IN5 ( \P_DATA_Valid[6] ) , .IN6 ( n7 ) , .Q ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U14 ( .IN1 ( P_DATA[5] ) , .IN2 ( n5 ) , .IN3 ( \P_DATA_Valid[6] ) , 
    .IN4 ( n6 ) , .IN5 ( \_gOb2_P_DATA_Valid[5] ) , .IN6 ( n7 ) , .Q ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U15 ( .IN1 ( P_DATA[4] ) , .IN2 ( n5 ) , 
    .IN3 ( \_gOb2_P_DATA_Valid[5] ) , .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[4] ) , 
    .IN6 ( n7 ) , .Q ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U16 ( .IN1 ( P_DATA[3] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[4] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[3] ) , .IN6 ( n7 ) , .Q ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U17 ( .IN1 ( P_DATA[2] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[3] ) , 
    .IN4 ( n6 ) , .IN5 ( P_DATA_Valid[2] ) , .IN6 ( n7 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1 U18 ( .IN1 ( P_DATA[1] ) , .IN2 ( n5 ) , .IN3 ( P_DATA_Valid[2] ) , 
    .IN4 ( n6 ) , .IN5 ( n7 ) , .IN6 ( P_DATA_Valid[1] ) , .Q ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U20 ( .IN1 ( N23 ) , .IN2 ( dftopt2 ) , .IN3 ( ser_en ) , .IN4 ( n8 ) , 
    .Q ( N25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U21 ( .IN1 ( dftopt2 ) , .IN2 ( n1 ) , .IN3 ( n9 ) , 
    .IN4 ( counter[1] ) , .Q ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U22 ( .IN1 ( counter[0] ) , .IN2 ( counter[1] ) , .Q ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U3 ( .IN1 ( n1 ) , .IN2 ( n2 ) , .IN3 ( n3 ) , .QN ( ser_done ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_2506_168 ( .INP ( PLACE_HFSNET_111 ) , 
    .Z ( PLACE_HFSNET_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[7] ( .D ( n12 ) , .SI ( \_gOb2_P_DATA_Valid[5] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \P_DATA_Valid[7] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[6] ( .D ( n13 ) , .SI ( P_DATA_Valid[4] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \P_DATA_Valid[6] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[5] ( .D ( n14 ) , .SI ( dftopt8 ) , 
    .SE ( PLACE_HFSNET_109 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( \_gOb2_P_DATA_Valid[5] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[4] ( .D ( n15 ) , .SI ( P_DATA_Valid[2] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA_Valid[4] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[3] ( .D ( n16 ) , .SI ( ser_data ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( P_DATA_Valid[3] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[2] ( .D ( n17 ) , .SI ( P_DATA_Valid[3] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( P_DATA_Valid[2] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[1] ( .D ( n18 ) , .SI ( dftopt38 ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( P_DATA_Valid[1] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \P_DATA_Valid_reg[0] ( .D ( n11 ) , .SI ( P_DATA_Valid[1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( ser_data ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N23 ) , .SI ( counter[1] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( counter[0] ) , .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N24 ) , .SI ( dftopt48 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , .Q ( counter[1] ) , 
    .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N25 ) , .SI ( counter[0] ) , 
    .SE ( PLACE_HFSNET_108 ) , .CLK ( CLK ) , .RSTB ( PLACE_HFSNET_54 ) , 
    .Q ( dftopt2 ) , .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U4 ( .IN1 ( PLACE_HFSNET_156 ) , .IN2 ( busy ) , .QN ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U6 ( .IN1 ( ser_en ) , .IN2 ( n5 ) , .QN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( ser_en ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X2 U10 ( .IN1 ( n20 ) , .IN2 ( n5 ) , .QN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U19 ( .IN1 ( dftopt2 ) , .IN2 ( n2 ) , .QN ( n9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
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
    p3 , dftopt23 , dftopt4 , dftopt49 , dftopt9 , p0 , p2 , dftopt2 , 
    dftopt38 , dftopt6 , dftopt48 , dftopt18 , dftopt54 , p9 , p10 ) ;
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
input  dftopt23 ;
output dftopt4 ;
input  dftopt49 ;
output dftopt9 ;
input  p0 ;
input  p2 ;
output dftopt2 ;
input  dftopt38 ;
output dftopt6 ;
input  dftopt48 ;
output dftopt18 ;
input  dftopt54 ;
input  p9 ;
input  p10 ;

wire PLACE_HFSNET_109 ;
wire Serial_En ;
wire Serial_Done ;
wire Serial_Data ;
wire PARITY_BIT ;
wire PLACE_HFSNET_54 ;
wire dftopt3 ;
wire PLACE_HFSNET_55 ;
wire [1:0] MUX_Sel ;
supply1 VDD ;
supply0 VSS ;
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

NBUFFX2 PLACE_HFSBUF_982_101 ( .INP ( PLACE_HFSNET_56 ) , 
    .Z ( PLACE_HFSNET_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
serializer U0_SER ( .P_DATA ( P_DATA ) , .ser_en ( Serial_En ) , 
    .busy ( Busy ) , .dftopt32 ( SYNOPSYS_UNCONNECTED_1 ) , .CLK ( CLK ) , 
    .RST ( PLACE_HFSNET_55 ) , .ser_done ( Serial_Done ) , 
    .ser_data ( Serial_Data ) , .test_si ( SYNOPSYS_UNCONNECTED_2 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_3 ) , .test_se ( PLACE_HFSNET_111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt8 ( dftopt3 ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .\P_DATA_Valid[5] ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_7 ) , .dftopt2 ( dftopt18 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .PLACE_HFSNET_54 ( PLACE_HFSNET_54 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_109 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_156 ( PLACE_HFSNET_157 ) , .\P_DATA_Valid[7] ( dftopt17 ) , 
    .dftopt39 ( SYNOPSYS_UNCONNECTED_9 ) , .dftopt38 ( dftopt38 ) , 
    .\P_DATA_Valid[6] ( dftopt6 ) , .dftopt48 ( dftopt48 ) ) ;
controller_fsm U0_FSM ( .Data_Valid ( PLACE_HFSNET_158 ) , 
    .PAR_EN ( PAR_EN ) , .CLK ( CLK ) , .RST ( PLACE_HFSNET_54 ) , 
    .ser_done ( Serial_Done ) , .ser_en ( Serial_En ) , .mux_sel ( MUX_Sel ) , 
    .busy ( Busy ) , .test_si ( SYNOPSYS_UNCONNECTED_10 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_11 ) , .test_se ( PLACE_HFSNET_111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_13 ) , .\cs[0] ( dftopt2 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_53 ) , 
    .PLACE_HFSNET_109 ( PLACE_HFSNET_110 ) , .dftopt28 ( dftopt28 ) , 
    .dftopt2 ( dftopt21 ) , .dftopt31 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt3 ( TX_OUT ) ) ;
parity_calc U0_PARITY_CALC ( .CLK ( CLK ) , 
    .PLACE_HFSNET_108 ( PLACE_HFSNET_109 ) , 
    .Data_Valid ( PLACE_HFSNET_158 ) , .P_DATA ( P_DATA ) , 
    .PAR_TYP ( PAR_TYP ) , .par_bit ( PARITY_BIT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_15 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_18 ) , .dftopt2 ( dftopt8 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_19 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_22 ) , 
    .PLACE_HFSNET_54 ( PLACE_HFSNET_55 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_156 ( PLACE_HFSNET_157 ) , .dftopt5 ( dftopt17 ) , 
    .dftopt34 ( dftopt34 ) , .dftopt6 ( dftopt19 ) , .dftopt23 ( dftopt23 ) , 
    .dftopt8 ( dftopt3 ) , .dftopt49 ( SYNOPSYS_UNCONNECTED_23 ) , 
    .dftopt9 ( dftopt9 ) , .dftopt54 ( dftopt54 ) ) ;
mux4x1 U0_MUX ( .CLK ( CLK ) , .RST ( PLACE_HFSNET_53 ) , 
    .start_bit ( SYNOPSYS_UNCONNECTED_24 ) , 
    .stop_bit ( SYNOPSYS_UNCONNECTED_25 ) , .ser_data ( Serial_Data ) , 
    .par_bit ( PARITY_BIT ) , .mux_sel ( MUX_Sel ) , .TX_OUT ( TX_OUT ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_26 ) , .test_se ( PLACE_HFSNET_110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_28 ) , .p1 ( SYNOPSYS_UNCONNECTED_29 ) , 
    .p3 ( SYNOPSYS_UNCONNECTED_30 ) , .p0 ( SYNOPSYS_UNCONNECTED_31 ) , 
    .p2 ( SYNOPSYS_UNCONNECTED_32 ) , .dftopt2 ( dftopt1 ) , .p9 ( p9 ) , 
    .p10 ( p10 ) ) ;
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
    p3 , dftopt22 , dftopt4 , dftopt17 , dftopt36 , dftopt2 , dftopt49 , 
    dftopt29 , p0 , p2 , dftopt6 , dftopt38 , dftopt24 , dftopt48 , dftopt37 , 
    dftopt40 , dftopt41 , dftopt43 , dftopt44 , dftopt54 , p9 , p10 ) ;
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
input  dftopt22 ;
output dftopt4 ;
output dftopt17 ;
input  dftopt36 ;
input  dftopt2 ;
input  dftopt49 ;
output dftopt29 ;
input  p0 ;
input  p2 ;
output dftopt6 ;
input  dftopt38 ;
output dftopt24 ;
input  dftopt48 ;
output dftopt37 ;
input  dftopt40 ;
output dftopt41 ;
output dftopt43 ;
input  dftopt44 ;
input  dftopt54 ;
input  p9 ;
input  p10 ;

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

UART_TX U0_TX ( .CLK ( TX_CLK ) , .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .PAR_TYP ( PAR_TYP ) , .PAR_EN ( PAR_EN ) , .P_DATA ( TX_IN_P ) , 
    .dftopt32 ( SYNOPSYS_UNCONNECTED_1 ) , .TX_OUT ( TX_OUT_S ) , 
    .Busy ( TX_OUT_V ) , .test_si ( SYNOPSYS_UNCONNECTED_2 ) , 
    .test_se ( PLACE_HFSNET_113 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_3 ) , .dftopt1 ( dftopt1 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_5 ) , .dftopt8 ( dftopt8 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_7 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_53 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_56 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_159 ( PLACE_HFSNET_159 ) , .dftopt34 ( dftopt34 ) , 
    .dftopt19 ( dftopt23 ) , .dftopt39 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt28 ( dftopt28 ) , .dftopt21 ( dftopt30 ) , 
    .dftopt31 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt22 ( SYNOPSYS_UNCONNECTED_14 ) , .p1 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .p3 ( SYNOPSYS_UNCONNECTED_16 ) , .dftopt23 ( dftopt22 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt49 ( SYNOPSYS_UNCONNECTED_18 ) , .dftopt9 ( dftopt29 ) , 
    .p0 ( SYNOPSYS_UNCONNECTED_19 ) , .p2 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .dftopt2 ( dftopt6 ) , .dftopt38 ( dftopt38 ) , .dftopt6 ( dftopt24 ) , 
    .dftopt48 ( dftopt48 ) , .dftopt18 ( dftopt37 ) , .dftopt54 ( dftopt54 ) , 
    .p9 ( p9 ) , .p10 ( p10 ) ) ;
UART_RX U0_RX ( .CLK ( RX_CLK ) , .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .RX_IN ( RX_IN_S ) , .PAR_EN ( PAR_EN ) , .PAR_TYP ( PAR_TYP ) , 
    .\Prescale[5] ( \Prescale[5] ) , .\Prescale[4] ( \Prescale[4] ) , 
    .\Prescale[3] ( \Prescale[3] ) , .PLACE_HFSNET_179 ( PLACE_HFSNET_179 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_21 ) , .\Prescale[0] ( \Prescale[0] ) , 
    .Data_valid ( RX_OUT_V ) , .P_DATA ( RX_OUT_P ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_22 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_23 ) , 
    .PLACE_HFSNET_177 ( PLACE_HFSNET_177 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_25 ) , .dftopt14 ( dftopt14 ) , 
    .\EDGE_CNT[0] ( SYNOPSYS_UNCONNECTED_26 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_94 ( PLACE_HFSNET_94 ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_28 ) , .dftopt2 ( dftopt21 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_29 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_31 ) , .dftopt7 ( dftopt17 ) , 
    .dftopt36 ( SYNOPSYS_UNCONNECTED_32 ) , .dftopt8 ( dftopt2 ) , 
    .dftopt40 ( dftopt40 ) , .dftopt4 ( dftopt41 ) , .dftopt6 ( dftopt43 ) , 
    .dftopt44 ( dftopt44 ) ) ;
endmodule


module REG_FILE ( WrData , Address , PLACE_HFSNET_186 , RdEn , p_abuf36 , 
    RST , RdData , RdData_Valid , REG0 , REG1 , REG2 , REG3 , test_si3 , 
    test_si2 , test_si1 , test_so3 , test_so2 , test_so1 , test_se , VDD , 
    VSS , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , 
    dftopt6 , dftopt7 , dftopt8 , dftopt20 , dftopt9 , dftopt10 , dftopt11 , 
    dftopt12 , PLACE_HFSNET_30 , PLACE_HFSNET_49 , PLACE_HFSNET_52 , 
    PLACE_HFSNET_53 , PLACE_HFSNET_89 , PLACE_HFSNET_90 , PLACE_HFSNET_96 , 
    PLACE_HFSNET_103 , PLACE_HFSNET_105 , PLACE_HFSNET_122 , 
    PLACE_HFSNET_123 , PLACE_HFSNET_164 , PLACE_HFSNET_165 , 
    PLACE_HFSNET_167 , PLACE_HFSNET_188 , dftopt13 , dftopt14 , dftopt15 , 
    dftopt16 , dftopt17 , dftopt18 , dftopt19 , dftopt21 , dftopt22 , 
    dftopt23 , dftopt37 , dftopt25 , dftopt24 , dftopt26 , dftopt27 , 
    dftopt28 , dftopt29 , dftopt30 , p_abuf37 , p_abuf38 , p_abuf2 , 
    p_abuf39 , dftopt31 , dftopt32 , dftopt33 , dftopt34 , dftopt35 , 
    dftopt36 , dftopt38 , dftopt39 , dftopt40 , dftopt41 , dftopt42 , 
    dftopt43 ) ;
input  [7:0] WrData ;
input  [3:0] Address ;
input  PLACE_HFSNET_186 ;
input  RdEn ;
input  p_abuf36 ;
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
input  p_abuf37 ;
input  p_abuf38 ;
input  p_abuf2 ;
input  p_abuf39 ;
output dftopt31 ;
input  dftopt32 ;
output dftopt33 ;
input  dftopt34 ;
input  dftopt35 ;
output dftopt36 ;
output dftopt38 ;
input  dftopt39 ;
input  dftopt40 ;
input  dftopt41 ;
input  dftopt42 ;
output dftopt43 ;

wire aps_rename_2_ ;
wire dftopt17_gOb3 ;
wire test_so2_gOb25 ;
wire \regfile[13][0] ;
wire aps_rename_1_ ;
wire aps_rename_1_1_ ;
wire copt_net_5199 ;
wire copt_net_2826 ;
wire copt_net_5201 ;
wire copt_net_2849 ;
wire copt_net_5202 ;
wire copt_net_2851 ;
wire copt_net_5208 ;
wire copt_net_2853 ;
wire aps_rename_2_2_ ;
wire aps_rename_3_ ;
wire aps_rename_4_ ;
wire aps_rename_5_ ;
wire aps_rename_6_ ;
wire aps_rename_7_ ;
wire copt_net_2854 ;
wire PLACE_HFSNET_1 ;
wire copt_net_2855 ;
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
wire dftopt30_gOb26 ;
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
wire dftopt27_gOb20 ;
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
wire dftopt18_gOb4 ;
wire \regfile[12][6] ;
wire \regfile[12][4] ;
wire dftopt31_gOb35 ;
wire \regfile[12][2] ;
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
wire dftopt36_gOb40 ;
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
wire dftopt24_gOb16 ;
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
wire dftopt13_gOb27 ;
wire \regfile[6][1] ;
wire \regfile[6][0] ;
wire \regfile[5][7] ;
wire \regfile[5][6] ;
wire \regfile[5][5] ;
wire \regfile[5][4] ;
wire \regfile[5][3] ;
wire \regfile[5][2] ;
wire \regfile[5][1] ;
wire dftopt33_gOb37 ;
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
wire copt_net_2866 ;
wire copt_net_2867 ;
wire copt_net_2868 ;
wire copt_net_5210 ;
wire PLACE_HFSNET_3 ;
wire copt_net_2891 ;
wire copt_net_2892 ;
wire PLACE_HFSNET_13 ;
wire PLACE_HFSNET_14 ;
wire PLACE_HFSNET_5 ;
wire PLACE_HFSNET_61 ;
wire PLACE_HFSNET_7 ;
wire copt_net_2900 ;
wire PLACE_HFSNET_65 ;
wire PLACE_HFSNET_71 ;
wire PLACE_HFSNET_67 ;
wire n2 ;
wire n6 ;
wire PLACE_HFSNET_138 ;
wire copt_net_5213 ;
wire PLACE_HFSNET_159 ;
wire PLACE_HFSNET_160 ;
wire PLACE_HFSNET_161 ;
wire n12 ;
wire copt_net_2903 ;
wire copt_net_5214 ;
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
wire copt_net_5215 ;
wire PLACE_HFSNET_149 ;
wire PLACE_HFSNET_150 ;
wire PLACE_HFSNET_151 ;
wire copt_net_2905 ;
wire PLACE_HFSNET_163 ;
wire copt_net_5216 ;
wire copt_net_5217 ;
wire copt_net_5218 ;
wire copt_net_5219 ;
wire copt_net_5223 ;
wire copt_net_5224 ;
wire copt_net_2930 ;
wire PLACE_HFSNET_139 ;
wire PLACE_HFSNET_140 ;
wire copt_net_2931 ;
wire PLACE_HFSNET_143 ;
wire PLACE_HFSNET_144 ;
wire PLACE_HFSNET_145 ;
wire PLACE_HFSNET_146 ;
wire PLACE_HFSNET_147 ;
wire PLACE_HFSNET_142 ;
wire copt_net_2932 ;
wire n318 ;
wire n319 ;
wire n320 ;
wire n321 ;
wire PLACE_HFSNET_9 ;
wire copt_net_5225 ;
wire PLACE_HFSNET_128 ;
wire PLACE_HFSNET_129 ;
wire PLACE_HFSNET_127 ;
wire copt_net_5226 ;
wire PLACE_HFSNET_63 ;
wire n332 ;
wire copt_net_5231 ;
wire PLACE_HFSNET_17 ;
wire PLACE_HFSNET_18 ;
wire PLACE_HFSNET_19 ;
wire PLACE_HFSNET_20 ;
wire PLACE_HFSNET_12 ;
wire copt_net_5232 ;
wire PLACE_HFSNET_21 ;
wire PLACE_HFSNET_22 ;
wire copt_net_2937 ;
wire copt_net_2944 ;
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
wire copt_net_2945 ;
wire PLACE_HFSNET_50 ;
wire PLACE_HFSNET_51 ;
wire PLACE_HFSNET_69 ;
wire copt_net_2946 ;
wire copt_net_2947 ;
wire PLACE_HFSNET_11 ;
wire copt_net_5237 ;
wire n376 ;
wire PLACE_HFSNET_80 ;
wire PLACE_HFSNET_81 ;
wire PLACE_HFSNET_82 ;
wire PLACE_HFSNET_83 ;
wire copt_net_5238 ;
wire n382 ;
wire n402 ;
wire n403 ;
wire PLACE_HFSNET_84 ;
wire n405 ;
wire n407 ;
wire PLACE_HFSNET_85 ;
wire copt_net_5239 ;
wire n411 ;
wire n412 ;
wire n413 ;
wire n414 ;
wire copt_net_2958 ;
wire copt_net_2959 ;
wire copt_net_2960 ;
wire copt_net_2961 ;
wire PLACE_HFSNET_86 ;
wire copt_net_5240 ;
wire PLACE_HFSNET_88 ;
wire copt_net_2963 ;
wire copt_net_5242 ;
wire copt_net_5243 ;
wire copt_net_5244 ;
wire copt_net_2967 ;
wire copt_net_2968 ;
wire n203 ;
wire copt_net_5247 ;
wire copt_net_5248 ;
wire copt_net_2973 ;
wire copt_net_2974 ;
wire copt_net_5255 ;
wire copt_net_5256 ;
wire copt_net_5257 ;
wire copt_net_2983 ;
wire copt_net_2984 ;
wire PLACE_HFSNET_97 ;
wire PLACE_HFSNET_98 ;
wire copt_net_2985 ;
wire copt_net_2986 ;
wire PLACE_HFSNET_99 ;
wire PLACE_HFSNET_100 ;
wire PLACE_HFSNET_101 ;
wire PLACE_HFSNET_102 ;
wire PLACE_HFSNET_104 ;
wire PLACE_HFSNET_120 ;
wire PLACE_HFSNET_121 ;
wire copt_net_2987 ;
wire copt_net_2988 ;
wire copt_net_5258 ;
wire copt_net_2990 ;
wire copt_net_2991 ;
supply1 VDD ;
supply0 VSS ;
wire copt_net_2992 ;
wire copt_net_2993 ;
wire copt_net_5259 ;
wire copt_net_2999 ;
wire copt_net_3000 ;
wire copt_net_3001 ;
wire copt_net_3002 ;
wire copt_net_3003 ;
wire copt_net_3004 ;
wire copt_net_3005 ;
wire copt_net_3009 ;
wire copt_net_5263 ;
wire copt_net_3013 ;
wire copt_net_3014 ;
wire copt_net_3015 ;
wire copt_net_3016 ;
wire copt_net_3017 ;
wire copt_net_3018 ;
wire copt_net_3019 ;
wire copt_net_5268 ;
wire copt_net_3021 ;
wire copt_net_5270 ;
wire copt_net_3023 ;
wire copt_net_3024 ;
wire copt_net_3025 ;
wire copt_net_3026 ;
wire copt_net_3027 ;
wire copt_net_3028 ;
wire copt_net_3029 ;
wire copt_net_3030 ;
wire copt_net_3031 ;
wire copt_net_5271 ;
wire copt_net_3035 ;
wire copt_net_3036 ;
wire copt_net_5272 ;
wire copt_net_5273 ;
wire copt_net_5274 ;
wire copt_net_3042 ;
wire copt_net_5275 ;
wire copt_net_3044 ;
wire copt_net_3045 ;
wire copt_net_3046 ;
wire copt_net_5276 ;
wire copt_net_5277 ;
wire copt_net_3051 ;
wire copt_net_3077 ;
wire copt_net_5278 ;
wire copt_net_3090 ;
wire copt_net_5280 ;
wire copt_net_5282 ;
wire copt_net_3108 ;
wire copt_net_3109 ;
wire copt_net_5283 ;
wire copt_net_5285 ;
wire copt_net_3112 ;
wire copt_net_3124 ;
wire copt_net_5288 ;
wire copt_net_3129 ;
wire copt_net_3130 ;
wire copt_net_5289 ;
wire copt_net_3132 ;
wire copt_net_3147 ;
wire copt_net_3149 ;
wire copt_net_5290 ;
wire copt_net_5295 ;
wire copt_net_5297 ;
wire copt_net_3153 ;
wire copt_net_3155 ;
wire copt_net_3161 ;
wire copt_net_5304 ;
wire copt_net_3163 ;
wire copt_net_5305 ;
wire copt_net_5307 ;
wire copt_net_3166 ;
wire copt_net_3167 ;
wire copt_net_3172 ;
wire copt_net_3173 ;
wire copt_net_3174 ;
wire copt_net_3175 ;
wire copt_net_3177 ;
wire copt_net_5308 ;
wire copt_net_3181 ;
wire copt_net_3182 ;
wire copt_net_5309 ;
wire copt_net_3184 ;
wire copt_net_3192 ;
wire copt_net_3193 ;
wire copt_net_3195 ;
wire copt_net_3196 ;
wire copt_net_3199 ;
wire copt_net_3200 ;
wire copt_net_3201 ;
wire copt_net_3203 ;
wire copt_net_3204 ;
wire copt_net_3205 ;
wire copt_net_5314 ;
wire copt_net_5317 ;
wire copt_net_5318 ;
wire copt_net_3209 ;
wire copt_net_3213 ;
wire copt_net_3251 ;
wire copt_net_3252 ;
wire copt_net_3253 ;
wire copt_net_3254 ;
wire copt_net_5319 ;
wire copt_net_3256 ;
wire copt_net_3257 ;
wire copt_net_3272 ;
wire copt_net_5320 ;
wire copt_net_3296 ;
wire copt_net_3298 ;
wire copt_net_3299 ;
wire copt_net_5321 ;
wire copt_net_3301 ;
wire copt_net_3302 ;
wire copt_net_3303 ;
wire copt_net_3304 ;
wire copt_net_3305 ;
wire copt_net_3310 ;
wire copt_net_3313 ;
wire copt_net_3314 ;
wire copt_net_3315 ;
wire copt_net_3316 ;
wire copt_net_3317 ;
wire copt_net_3321 ;
wire copt_net_3322 ;
wire copt_net_3323 ;
wire copt_net_3324 ;
wire copt_net_3325 ;
wire copt_net_3326 ;
wire copt_net_5322 ;
wire copt_net_3332 ;
wire copt_net_3333 ;
wire copt_net_5324 ;
wire copt_net_3335 ;
wire copt_net_3336 ;
wire copt_net_5325 ;
wire copt_net_3348 ;
wire copt_net_3351 ;
wire copt_net_3353 ;
wire copt_net_5328 ;
wire copt_net_3359 ;
wire copt_net_3360 ;
wire copt_net_3361 ;
wire copt_net_5329 ;
wire copt_net_5331 ;
wire copt_net_5332 ;
wire copt_net_3371 ;
wire copt_net_3372 ;
wire copt_net_3373 ;
wire copt_net_3377 ;
wire copt_net_3378 ;
wire copt_net_3380 ;
wire copt_net_3381 ;
wire copt_net_5334 ;
wire copt_net_3392 ;
wire copt_net_3393 ;
wire copt_net_3395 ;
wire copt_net_3396 ;
wire copt_net_3397 ;
wire copt_net_3403 ;
wire copt_net_3404 ;
wire copt_net_3406 ;
wire copt_net_3407 ;
wire copt_net_3414 ;
wire copt_net_3415 ;
wire copt_net_3416 ;
wire copt_net_3422 ;
wire copt_net_3424 ;
wire copt_net_3425 ;
wire copt_net_3426 ;
wire copt_net_5336 ;
wire copt_net_5337 ;
wire copt_net_5338 ;
wire copt_net_3434 ;
wire copt_net_3435 ;
wire copt_net_3436 ;
wire copt_net_3439 ;
wire copt_net_3441 ;
wire copt_net_3442 ;
wire copt_net_3445 ;
wire copt_net_5339 ;
wire copt_net_3449 ;
wire copt_net_3450 ;
wire copt_net_5340 ;
wire copt_net_3456 ;
wire copt_net_3457 ;
wire copt_net_5342 ;
wire copt_net_3460 ;
wire copt_net_3462 ;
wire copt_net_3463 ;
wire copt_net_3464 ;
wire copt_net_5343 ;
wire copt_net_3467 ;
wire copt_net_3468 ;
wire copt_net_3469 ;
wire copt_net_3470 ;
wire copt_net_3471 ;
wire copt_net_3472 ;
wire copt_net_3473 ;
wire copt_net_3474 ;
wire copt_net_5344 ;
wire copt_net_3476 ;
wire copt_net_3477 ;
wire copt_net_5345 ;
wire copt_net_3481 ;
wire copt_net_5346 ;
wire copt_net_3483 ;
wire copt_net_3486 ;
wire copt_net_3487 ;
wire copt_net_3488 ;
wire copt_net_3489 ;
wire copt_net_3490 ;
wire copt_net_3491 ;
wire copt_net_3492 ;
wire copt_net_3493 ;
wire copt_net_3494 ;
wire copt_net_3495 ;
wire copt_net_3496 ;
wire copt_net_3497 ;
wire copt_net_3498 ;
wire copt_net_3499 ;
wire copt_net_3500 ;
wire copt_net_5347 ;
wire copt_net_3503 ;
wire copt_net_3504 ;
wire copt_net_3505 ;
wire copt_net_3506 ;
wire copt_net_3507 ;
wire copt_net_3508 ;
wire copt_net_5348 ;
wire copt_net_3510 ;
wire copt_net_3511 ;
wire copt_net_3512 ;
wire copt_net_5349 ;
wire copt_net_3514 ;
wire copt_net_3515 ;
wire copt_net_5350 ;
wire copt_net_3517 ;
wire copt_net_3519 ;
wire copt_net_3520 ;
wire copt_net_5353 ;
wire copt_net_3522 ;
wire copt_net_5354 ;
wire copt_net_3524 ;
wire copt_net_3525 ;
wire copt_net_3526 ;
wire copt_net_3527 ;
wire copt_net_3528 ;
wire copt_net_5355 ;
wire copt_net_3530 ;
wire copt_net_5358 ;
wire copt_net_5359 ;
wire copt_net_3533 ;
wire copt_net_3534 ;
wire copt_net_3535 ;
wire copt_net_3536 ;
wire copt_net_3537 ;
wire copt_net_3538 ;
wire copt_net_3539 ;
wire copt_net_3540 ;
wire copt_net_3541 ;
wire copt_net_3542 ;
wire copt_net_3543 ;
wire copt_net_3544 ;
wire copt_net_5361 ;
wire copt_net_5362 ;
wire copt_net_3547 ;
wire copt_net_3548 ;
wire copt_net_3549 ;
wire copt_net_3550 ;
wire copt_net_3551 ;
wire copt_net_3552 ;
wire copt_net_3553 ;
wire copt_net_3554 ;
wire copt_net_5364 ;
wire copt_net_3556 ;
wire copt_net_3557 ;
wire copt_net_3558 ;
wire copt_net_3559 ;
wire copt_net_3560 ;
wire copt_net_5365 ;
wire copt_net_5366 ;
wire copt_net_3563 ;
wire copt_net_3564 ;
wire copt_net_3565 ;
wire copt_net_3566 ;
wire copt_net_3569 ;
wire copt_net_3570 ;
wire copt_net_3571 ;
wire copt_net_3572 ;
wire copt_net_3573 ;
wire copt_net_3574 ;
wire copt_net_3575 ;
wire copt_net_3576 ;
wire copt_net_3577 ;
wire copt_net_5367 ;
wire copt_net_3579 ;
wire copt_net_3580 ;
wire copt_net_3581 ;
wire copt_net_5371 ;
wire copt_net_5372 ;
wire copt_net_3584 ;
wire copt_net_3585 ;
wire copt_net_3586 ;
wire copt_net_3587 ;
wire copt_net_3588 ;
wire copt_net_3589 ;
wire copt_net_3590 ;
wire copt_net_3591 ;
wire copt_net_3592 ;
wire copt_net_3593 ;
wire copt_net_5374 ;
wire copt_net_3595 ;
wire copt_net_3596 ;
wire copt_net_3597 ;
wire copt_net_5376 ;
wire copt_net_5377 ;
wire copt_net_3600 ;
wire copt_net_3601 ;
wire copt_net_3602 ;
wire copt_net_3603 ;
wire copt_net_5379 ;
wire copt_net_3605 ;
wire copt_net_3606 ;
wire copt_net_3607 ;
wire copt_net_3608 ;
wire copt_net_3609 ;
wire copt_net_3610 ;
wire copt_net_5380 ;
wire copt_net_3612 ;
wire copt_net_3613 ;
wire copt_net_3614 ;
wire copt_net_3615 ;
wire copt_net_5381 ;
wire copt_net_3617 ;
wire copt_net_3618 ;
wire copt_net_3619 ;
wire copt_net_3620 ;
wire copt_net_3621 ;
wire copt_net_3622 ;
wire copt_net_3623 ;
wire copt_net_3624 ;
wire copt_net_3625 ;
wire copt_net_5383 ;
wire copt_net_5385 ;
wire copt_net_5388 ;
wire copt_net_5389 ;
wire copt_net_5391 ;
wire copt_net_5392 ;
wire copt_net_5393 ;
wire copt_net_5394 ;
wire copt_net_5395 ;
wire copt_net_3635 ;
wire copt_net_3636 ;
wire copt_net_5398 ;
wire copt_net_3638 ;
wire copt_net_3639 ;
wire copt_net_3640 ;
wire copt_net_3641 ;
wire copt_net_5399 ;
wire copt_net_3643 ;
wire copt_net_3644 ;
wire copt_net_3645 ;
wire copt_net_3646 ;
wire copt_net_5400 ;
wire copt_net_3648 ;
wire copt_net_3649 ;
wire copt_net_3650 ;
wire copt_net_5401 ;
wire copt_net_5402 ;
wire copt_net_3653 ;
wire copt_net_3654 ;
wire copt_net_3655 ;
wire copt_net_3656 ;
wire copt_net_5403 ;
wire copt_net_3658 ;
wire copt_net_3659 ;
wire copt_net_3660 ;
wire copt_net_3661 ;
wire copt_net_5404 ;
wire copt_net_3663 ;
wire copt_net_3664 ;
wire copt_net_3665 ;
wire copt_net_3666 ;
wire copt_net_3667 ;
wire copt_net_3668 ;
wire copt_net_3669 ;
wire copt_net_5405 ;
wire copt_net_3671 ;
wire copt_net_5406 ;
wire copt_net_3674 ;
wire copt_net_3676 ;
wire copt_net_3677 ;
wire copt_net_3679 ;
wire copt_net_3680 ;
wire copt_net_3681 ;
wire copt_net_3682 ;
wire copt_net_3683 ;
wire copt_net_3684 ;
wire copt_net_3685 ;
wire copt_net_3686 ;
wire copt_net_3687 ;
wire copt_net_3688 ;
wire copt_net_3689 ;
wire copt_net_3691 ;
wire copt_net_3693 ;
wire copt_net_3694 ;
wire copt_net_3695 ;
wire copt_net_3696 ;
wire copt_net_3698 ;
wire copt_net_3699 ;
wire copt_net_3701 ;
wire copt_net_3705 ;
wire copt_net_3707 ;
wire copt_net_3708 ;
wire copt_net_3711 ;
wire copt_net_3713 ;
wire copt_net_3715 ;
wire copt_net_3716 ;
wire copt_net_3717 ;
wire copt_net_3718 ;
wire copt_net_3719 ;
wire copt_net_3720 ;
wire copt_net_3721 ;
wire copt_net_3722 ;
wire copt_net_3723 ;
wire copt_net_3727 ;
wire copt_net_3728 ;
wire copt_net_3729 ;
wire copt_net_3730 ;
wire copt_net_3732 ;
wire copt_net_3734 ;
wire copt_net_3735 ;
wire copt_net_3737 ;
wire copt_net_3738 ;
wire copt_net_3739 ;
wire copt_net_3740 ;
wire copt_net_3743 ;
wire copt_net_3746 ;
wire copt_net_3747 ;
wire copt_net_3748 ;
wire copt_net_3749 ;
wire copt_net_3750 ;
wire copt_net_3751 ;
wire copt_net_3752 ;
wire copt_net_3754 ;
wire copt_net_3757 ;
wire copt_net_3758 ;
wire copt_net_3760 ;
wire copt_net_3762 ;
wire copt_net_3763 ;
wire copt_net_3764 ;
wire copt_net_3766 ;
wire copt_net_3771 ;
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
    .IN3 ( copt_net_3701 ) , .IN4 ( n12 ) , .Q ( n63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U60 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( n319 ) , .IN4 ( n12 ) , .Q ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U66 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( copt_net_5201 ) , 
    .IN3 ( REG3[1] ) , .IN4 ( n27 ) , .Q ( n72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U67 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( REG3[2] ) , .IN4 ( n27 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U68 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( REG3[3] ) , .IN4 ( n27 ) , .Q ( n74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U69 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( WrData[4] ) , .IN3 ( REG3[4] ) , 
    .IN4 ( n27 ) , .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U71 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_14 ) , 
    .IN3 ( copt_net_5345 ) , .IN4 ( n27 ) , .Q ( n77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U72 ( .IN1 ( PLACE_HFSNET_7 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( copt_net_3204 ) , .IN4 ( n27 ) , .Q ( n78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U74 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( copt_net_5201 ) , 
    .IN3 ( \regfile[4][1] ) , .IN4 ( n28 ) , .Q ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U75 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( copt_net_5328 ) , .IN4 ( n28 ) , .Q ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U76 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( \regfile[4][3] ) , .IN4 ( n28 ) , .Q ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U77 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( \regfile[4][4] ) , .IN4 ( n28 ) , .Q ( n83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U78 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( copt_net_5402 ) , .IN4 ( n28 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U80 ( .IN1 ( PLACE_HFSNET_3 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( copt_net_5309 ) , .IN4 ( n28 ) , .Q ( n86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U81 ( .IN1 ( n213 ) , .IN2 ( WrData[0] ) , .IN3 ( PLACE_HFSNET_127 ) , 
    .IN4 ( dftopt33_gOb37 ) , .Q ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U83 ( .IN1 ( n213 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( copt_net_3316 ) , .IN4 ( PLACE_HFSNET_127 ) , .Q ( n89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U84 ( .IN1 ( n213 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( \regfile[5][3] ) , .IN4 ( PLACE_HFSNET_127 ) , .Q ( n90 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U85 ( .IN1 ( n213 ) , .IN2 ( WrData[4] ) , .IN3 ( PLACE_HFSNET_127 ) , 
    .IN4 ( \regfile[5][4] ) , .Q ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U89 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[0] ) , 
    .IN3 ( \regfile[6][0] ) , .IN4 ( n31 ) , .Q ( n95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U91 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( copt_net_5361 ) , .IN4 ( n31 ) , .Q ( n97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U92 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( \regfile[6][3] ) , .IN4 ( n31 ) , .Q ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U93 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( \regfile[6][4] ) , .IN4 ( n31 ) , .Q ( n99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U95 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .IN3 ( \regfile[6][6] ) , .IN4 ( n31 ) , .Q ( n101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U96 ( .IN1 ( PLACE_HFSNET_1 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( \regfile[6][7] ) , .IN4 ( n31 ) , .Q ( n102 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U100 ( .IN1 ( n212 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( copt_net_5342 ) , .IN4 ( PLACE_HFSNET_128 ) , .Q ( n105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U101 ( .IN1 ( n212 ) , .IN2 ( copt_net_2851 ) , 
    .IN3 ( PLACE_HFSNET_128 ) , .IN4 ( \regfile[7][3] ) , .Q ( n106 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U102 ( .IN1 ( n212 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[7][4] ) , .IN4 ( PLACE_HFSNET_128 ) , .Q ( n107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U103 ( .IN1 ( n212 ) , .IN2 ( WrData[5] ) , .IN3 ( PLACE_HFSNET_128 ) , 
    .IN4 ( copt_net_5405 ) , .Q ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U115 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( copt_net_3471 ) , .IN4 ( n320 ) , .Q ( n119 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U116 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[9][1] ) , .IN4 ( n320 ) , .Q ( n120 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U117 ( .IN1 ( n321 ) , .IN2 ( copt_net_2983 ) , 
    .IN3 ( copt_net_3112 ) , .IN4 ( n320 ) , .Q ( n121 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U118 ( .IN1 ( n321 ) , .IN2 ( copt_net_2851 ) , 
    .IN3 ( copt_net_3380 ) , .IN4 ( n320 ) , .Q ( n122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U119 ( .IN1 ( n321 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[9][4] ) , .IN4 ( n320 ) , .Q ( n123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U120 ( .IN1 ( n321 ) , .IN2 ( WrData[5] ) , .IN3 ( copt_net_5280 ) , 
    .IN4 ( n320 ) , .Q ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U123 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[10][0] ) , .IN4 ( copt_net_2932 ) , .Q ( n127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U127 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( dftopt36_gOb40 ) , .IN4 ( copt_net_2932 ) , .Q ( n131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U128 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( copt_net_5320 ) , .IN4 ( copt_net_2932 ) , .Q ( n132 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U129 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( copt_net_3617 ) , .IN4 ( copt_net_2932 ) , .Q ( n133 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U130 ( .IN1 ( PLACE_HFSNET_65 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( copt_net_5346 ) , .IN4 ( copt_net_2932 ) , .Q ( n134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U131 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[11][0] ) , .IN4 ( copt_net_2968 ) , .Q ( n135 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U132 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( copt_net_3445 ) , .IN4 ( copt_net_2968 ) , .Q ( n136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U135 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( copt_net_3757 ) , .IN4 ( copt_net_2968 ) , .Q ( n139 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U136 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( copt_net_2958 ) , .IN4 ( copt_net_2968 ) , .Q ( n140 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U137 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( copt_net_5339 ) , .IN4 ( copt_net_2968 ) , .Q ( n141 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U138 ( .IN1 ( PLACE_HFSNET_71 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( copt_net_3301 ) , .IN4 ( copt_net_2968 ) , .Q ( n142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U139 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( \regfile[12][0] ) , .IN4 ( n41 ) , .Q ( n143 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U140 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( copt_net_3425 ) , .IN4 ( n41 ) , .Q ( n144 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U141 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( copt_net_2983 ) , 
    .IN3 ( copt_net_3014 ) , .IN4 ( n41 ) , .Q ( n145 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U142 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( copt_net_2851 ) , 
    .IN3 ( copt_net_3683 ) , .IN4 ( n41 ) , .Q ( n146 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U147 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( copt_net_5355 ) , .IN4 ( n42 ) , .Q ( n151 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U148 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[13][1] ) , .IN4 ( n42 ) , .Q ( n152 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U149 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( copt_net_3077 ) , 
    .IN3 ( \regfile[13][2] ) , .IN4 ( n42 ) , .Q ( n153 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U150 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( WrData[3] ) , 
    .IN3 ( copt_net_3754 ) , .IN4 ( n42 ) , .Q ( n154 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U153 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( WrData[6] ) , 
    .IN3 ( \regfile[13][6] ) , .IN4 ( n42 ) , .Q ( n157 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U154 ( .IN1 ( PLACE_HFSNET_69 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( copt_net_3166 ) , .IN4 ( n42 ) , .Q ( n158 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U156 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( PLACE_HFSNET_17 ) , 
    .IN3 ( copt_net_5314 ) , .IN4 ( n43 ) , .Q ( n159 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U157 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .IN3 ( \regfile[14][1] ) , .IN4 ( n43 ) , .Q ( n160 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U158 ( .IN1 ( PLACE_HFSNET_63 ) , .IN2 ( copt_net_3077 ) , 
    .IN3 ( copt_net_5362 ) , .IN4 ( n43 ) , .Q ( n161 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U159 ( .IN1 ( WrData[3] ) , .IN2 ( PLACE_HFSNET_63 ) , 
    .IN3 ( dftopt27_gOb20 ) , .IN4 ( n43 ) , .Q ( n162 ) , .VDD ( VDD ) , 
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
AO22X1 U167 ( .IN1 ( n376 ) , .IN2 ( copt_net_3077 ) , 
    .IN3 ( \regfile[15][2] ) , .IN4 ( n203 ) , .Q ( n169 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U168 ( .IN1 ( n376 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( copt_net_5237 ) , .IN4 ( n203 ) , .Q ( n170 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U169 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_129 ) , 
    .IN3 ( \regfile[15][4] ) , .IN4 ( n203 ) , .Q ( n171 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U170 ( .IN1 ( n376 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( copt_net_5400 ) , .IN4 ( n203 ) , .Q ( n172 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U176 ( .IN1 ( RdData[0] ) , .IN2 ( copt_net_2905 ) , .IN3 ( N40 ) , 
    .IN4 ( copt_net_2945 ) , .Q ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U178 ( .IN1 ( RdData[2] ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_5247 ) , .IN4 ( copt_net_2945 ) , .Q ( n177 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U179 ( .IN1 ( RdData[3] ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_5276 ) , .IN4 ( copt_net_2945 ) , .Q ( n178 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U180 ( .IN1 ( RdData[4] ) , .IN2 ( copt_net_2905 ) , .IN3 ( N36 ) , 
    .IN4 ( copt_net_2945 ) , .Q ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U181 ( .IN1 ( RdData[5] ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_5199 ) , .IN4 ( copt_net_2945 ) , .Q ( n180 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U182 ( .IN1 ( RdData[6] ) , .IN2 ( copt_net_2905 ) , .IN3 ( N34 ) , 
    .IN4 ( copt_net_2945 ) , .Q ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U7 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( PLACE_HFSNET_186 ) , 
    .S ( n12 ) , .Q ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U10 ( .IN1 ( copt_net_5201 ) , .IN2 ( copt_net_5215 ) , .S ( n12 ) , 
    .Q ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U18 ( .IN1 ( WrData[6] ) , .IN2 ( \regfile[9][6] ) , .S ( n37 ) , 
    .Q ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U23 ( .IN1 ( copt_net_2853 ) , .IN2 ( copt_net_5374 ) , .S ( n37 ) , 
    .Q ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U25 ( .IN1 ( PLACE_HFSNET_17 ) , .IN2 ( \regfile[8][0] ) , 
    .S ( n35 ) , .Q ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U26 ( .IN1 ( copt_net_2851 ) , .IN2 ( \regfile[10][3] ) , 
    .S ( copt_net_2932 ) , .Q ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U29 ( .IN1 ( PLACE_HFSNET_129 ) , .IN2 ( \regfile[13][4] ) , 
    .S ( n42 ) , .Q ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U30 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( copt_net_5255 ) , .S ( n43 ) , 
    .Q ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U31 ( .IN1 ( PLACE_HFSNET_14 ) , .IN2 ( copt_net_5322 ) , .S ( n45 ) , 
    .Q ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U33 ( .IN1 ( PLACE_HFSNET_18 ) , .IN2 ( \regfile[8][1] ) , 
    .S ( n35 ) , .Q ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U34 ( .IN1 ( copt_net_2983 ) , .IN2 ( copt_net_5239 ) , 
    .S ( copt_net_2932 ) , .Q ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U37 ( .IN1 ( WrData[5] ) , .IN2 ( copt_net_5404 ) , .S ( n42 ) , 
    .Q ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U38 ( .IN1 ( WrData[6] ) , .IN2 ( copt_net_2993 ) , .S ( n43 ) , 
    .Q ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U39 ( .IN1 ( PLACE_HFSNET_20 ) , .IN2 ( copt_net_5244 ) , .S ( n45 ) , 
    .Q ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U40 ( .IN1 ( copt_net_3005 ) , .IN2 ( copt_net_2903 ) , .Q ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U45 ( .IN1 ( n332 ) , .IN2 ( n199 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4848 ( .INP ( PLACE_HFSNET_53 ) , 
    .Z ( copt_net_2826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_123_57 ( .INP ( WrData[5] ) , .Z ( PLACE_HFSNET_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U65 ( .IN1 ( copt_net_3717 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3708 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n217 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U70 ( .IN1 ( copt_net_3322 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3463 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n226 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U73 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( copt_net_5201 ) , 
    .IN3 ( n396 ) , .IN4 ( n23 ) , .Q ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U79 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( copt_net_3036 ) , 
    .IN3 ( n394 ) , .IN4 ( n23 ) , .Q ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U82 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_14 ) , 
    .IN3 ( copt_net_3473 ) , .IN4 ( n23 ) , .Q ( n61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U86 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_20 ) , 
    .IN3 ( copt_net_5381 ) , .IN4 ( n23 ) , .Q ( n62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U87 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( REG2[2] ) , .IN4 ( n12 ) , .Q ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U90 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .IN3 ( copt_net_5242 ) , .IN4 ( n12 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1 U94 ( .IN1 ( copt_net_5332 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( PLACE_HFSNET_61 ) , .Q ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U97 ( .IN1 ( PLACE_HFSNET_9 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( dftopt18_gOb4 ) , .IN4 ( n41 ) , .Q ( n150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8943 ( .INP ( N35 ) , .Z ( copt_net_5199 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U112 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( PLACE_HFSNET_12 ) , 
    .IN3 ( copt_net_3360 ) , .IN4 ( n23 ) , .Q ( n57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U113 ( .IN1 ( PLACE_HFSNET_5 ) , .IN2 ( WrData[4] ) , 
    .IN3 ( dftopt30_gOb26 ) , .IN4 ( n23 ) , .Q ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_632_212 ( .INP ( PLACE_HFSNET_140 ) , 
    .Z ( PLACE_HFSNET_138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4871 ( .INP ( WrData[3] ) , .Z ( copt_net_2849 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U125 ( .IN1 ( copt_net_3766 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3746 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U126 ( .IN1 ( \regfile[13][1] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3425 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U133 ( .IN1 ( copt_net_3752 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3674 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U134 ( .IN1 ( copt_net_3763 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3751 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n253 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U152 ( .IN1 ( copt_net_3722 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3723 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_107_51 ( .INP ( WrData[6] ) , .Z ( PLACE_HFSNET_13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_287_52 ( .INP ( WrData[6] ) , .Z ( PLACE_HFSNET_14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8945 ( .INP ( WrData[1] ) , .Z ( copt_net_5201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8946 ( .INP ( n38 ) , .Z ( copt_net_5202 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U192 ( .IN1 ( WrData[0] ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( copt_net_3708 ) , .IN4 ( n20 ) , .Q ( n47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4873 ( .INP ( copt_net_2849 ) , 
    .Z ( copt_net_2851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8952 ( .INP ( test_so2_gOb25 ) , 
    .Z ( copt_net_5208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_78_226 ( .INP ( n281 ) , .Z ( PLACE_HFSNET_149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4875 ( .INP ( copt_net_2854 ) , 
    .Z ( copt_net_2853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4876 ( .INP ( copt_net_2855 ) , 
    .Z ( copt_net_2854 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U228 ( .IN1 ( copt_net_2866 ) , .IN2 ( n2 ) , .Q ( n281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NBUFFX2 PLACE_HFSBUF_795_65 ( .INP ( copt_net_2826 ) , 
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
NBUFFX2 PLACE_HFSBUF_105_56 ( .INP ( copt_net_5201 ) , 
    .Z ( PLACE_HFSNET_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_105_58 ( .INP ( copt_net_2853 ) , 
    .Z ( PLACE_HFSNET_20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1077_91 ( .INP ( RST ) , .Z ( PLACE_HFSNET_47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4877 ( .INP ( WrData[7] ) , .Z ( copt_net_2855 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U261 ( .IN1 ( RdEn ) , .IN2 ( PLACE_HFSNET_164 ) , .Q ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1117_94 ( .INP ( RST ) , .Z ( PLACE_HFSNET_50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_890_96 ( .INP ( RST ) , .Z ( PLACE_HFSNET_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U267 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( copt_net_2853 ) , 
    .IN3 ( copt_net_5371 ) , .IN4 ( n35 ) , .Q ( n118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U268 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( copt_net_2851 ) , 
    .IN3 ( dftopt24_gOb16 ) , .IN4 ( n35 ) , .Q ( n114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U269 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( WrData[5] ) , 
    .IN3 ( copt_net_5392 ) , .IN4 ( n35 ) , .Q ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U270 ( .IN1 ( PLACE_HFSNET_11 ) , .IN2 ( copt_net_2983 ) , 
    .IN3 ( copt_net_5331 ) , .IN4 ( n35 ) , .Q ( n113 ) , .VDD ( VDD ) , 
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
    .IN3 ( copt_net_3296 ) , .IN4 ( n20 ) , .Q ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U276 ( .IN1 ( copt_net_5201 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( copt_net_3463 ) , .IN4 ( n20 ) , .Q ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U278 ( .IN1 ( copt_net_3360 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3296 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U280 ( .IN1 ( copt_net_3667 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3661 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n214 ) , 
    .Q ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U282 ( .IN1 ( copt_net_3177 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][0] ) , .IN4 ( n281 ) , .IN5 ( n215 ) , .Q ( n221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U283 ( .IN1 ( copt_net_3699 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3728 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n216 ) , 
    .Q ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U284 ( .IN1 ( copt_net_3701 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3593 ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n217 ) , 
    .Q ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U285 ( .IN1 ( copt_net_5367 ) , .IN2 ( n285 ) , 
    .IN3 ( copt_net_5272 ) , .IN4 ( n283 ) , .Q ( n220 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U286 ( .IN1 ( copt_net_5359 ) , .IN2 ( n290 ) , 
    .IN3 ( copt_net_3614 ) , .IN4 ( n412 ) , .IN5 ( n220 ) , .Q ( N40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U288 ( .IN1 ( copt_net_2991 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3445 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n223 ) , 
    .Q ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U289 ( .IN1 ( copt_net_3302 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][1] ) , .IN4 ( n281 ) , .IN5 ( copt_net_3124 ) , 
    .Q ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U290 ( .IN1 ( copt_net_3257 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3203 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n225 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U291 ( .IN1 ( copt_net_3442 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3045 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n225 ) , 
    .Q ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U292 ( .IN1 ( REG2[1] ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3192 ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n226 ) , 
    .Q ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U293 ( .IN1 ( n228 ) , .IN2 ( n285 ) , .IN3 ( n227 ) , .IN4 ( n283 ) , 
    .Q ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U294 ( .IN1 ( n231 ) , .IN2 ( n290 ) , .IN3 ( n230 ) , .IN4 ( n411 ) , 
    .IN5 ( n229 ) , .Q ( N39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U295 ( .IN1 ( copt_net_3112 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3046 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n232 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U296 ( .IN1 ( copt_net_2959 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3403 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n232 ) , 
    .Q ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U297 ( .IN1 ( copt_net_3256 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( \regfile[15][2] ) , .IN4 ( n281 ) , .IN5 ( n233 ) , .Q ( n239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U298 ( .IN1 ( copt_net_3316 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3321 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U299 ( .IN1 ( copt_net_3392 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3161 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n234 ) , 
    .Q ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U300 ( .IN1 ( copt_net_3353 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[2] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n235 ) , 
    .Q ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U301 ( .IN1 ( n237 ) , .IN2 ( n285 ) , .IN3 ( n236 ) , .IN4 ( n283 ) , 
    .Q ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U302 ( .IN1 ( n240 ) , .IN2 ( n290 ) , .IN3 ( n239 ) , .IN4 ( n411 ) , 
    .IN5 ( n238 ) , .Q ( N38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U303 ( .IN1 ( copt_net_3655 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3735 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n241 ) , 
    .Q ( n249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U305 ( .IN1 ( copt_net_3663 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( copt_net_3658 ) , .IN4 ( n281 ) , .IN5 ( n242 ) , .Q ( n248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U306 ( .IN1 ( copt_net_3749 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3738 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n243 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U307 ( .IN1 ( copt_net_3732 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3758 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n243 ) , 
    .Q ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U308 ( .IN1 ( n319 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3694 ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n244 ) , 
    .Q ( n245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U309 ( .IN1 ( n246 ) , .IN2 ( n285 ) , .IN3 ( n245 ) , .IN4 ( n283 ) , 
    .Q ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U310 ( .IN1 ( n249 ) , .IN2 ( n290 ) , .IN3 ( n248 ) , .IN4 ( n411 ) , 
    .IN5 ( n247 ) , .Q ( N37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U312 ( .IN1 ( copt_net_3682 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3757 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n250 ) , 
    .Q ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U313 ( .IN1 ( copt_net_3718 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( copt_net_3713 ) , .IN4 ( n281 ) , .IN5 ( n251 ) , .Q ( n257 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U314 ( .IN1 ( copt_net_3762 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3760 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n252 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U315 ( .IN1 ( copt_net_3748 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3764 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n252 ) , 
    .Q ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U316 ( .IN1 ( copt_net_3653 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3743 ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n253 ) , 
    .Q ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U317 ( .IN1 ( n255 ) , .IN2 ( n285 ) , .IN3 ( n254 ) , .IN4 ( n283 ) , 
    .Q ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U318 ( .IN1 ( n258 ) , .IN2 ( n290 ) , .IN3 ( n257 ) , .IN4 ( n411 ) , 
    .IN5 ( n256 ) , .Q ( N36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U319 ( .IN1 ( copt_net_5280 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_5257 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n259 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U320 ( .IN1 ( copt_net_3335 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3303 ) , .IN4 ( PLACE_HFSNET_149 ) , 
    .IN5 ( copt_net_3172 ) , .Q ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U321 ( .IN1 ( copt_net_3323 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( copt_net_3348 ) , .IN4 ( n281 ) , .IN5 ( n260 ) , .Q ( n266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U323 ( .IN1 ( copt_net_3205 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3090 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n261 ) , 
    .Q ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U324 ( .IN1 ( copt_net_5242 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( REG3[5] ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n262 ) , 
    .Q ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U325 ( .IN1 ( n264 ) , .IN2 ( n285 ) , .IN3 ( n263 ) , .IN4 ( n283 ) , 
    .Q ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U326 ( .IN1 ( n267 ) , .IN2 ( n290 ) , .IN3 ( copt_net_5395 ) , 
    .IN4 ( n412 ) , .IN5 ( copt_net_5394 ) , .Q ( N35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1 U328 ( .IN1 ( copt_net_3617 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3644 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n268 ) , 
    .Q ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U329 ( .IN1 ( \regfile[13][6] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3149 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U330 ( .IN1 ( copt_net_3577 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( copt_net_3580 ) , .IN4 ( n281 ) , .IN5 ( copt_net_5282 ) , 
    .Q ( n275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U331 ( .IN1 ( copt_net_3609 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3624 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U332 ( .IN1 ( copt_net_3543 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3654 ) , .IN4 ( PLACE_HFSNET_151 ) , 
    .IN5 ( copt_net_5295 ) , .Q ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U333 ( .IN1 ( copt_net_3473 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3571 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n271 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U334 ( .IN1 ( copt_net_3547 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3558 ) , .IN4 ( PLACE_HFSNET_150 ) , 
    .IN5 ( copt_net_3621 ) , .Q ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U335 ( .IN1 ( copt_net_5350 ) , .IN2 ( n285 ) , .IN3 ( n272 ) , 
    .IN4 ( n283 ) , .Q ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U336 ( .IN1 ( copt_net_5268 ) , .IN2 ( n290 ) , 
    .IN3 ( copt_net_3467 ) , .IN4 ( n412 ) , .IN5 ( n274 ) , .Q ( N34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U338 ( .IN1 ( copt_net_3016 ) , .IN2 ( PLACE_HFSNET_142 ) , 
    .IN3 ( copt_net_3301 ) , .IN4 ( PLACE_HFSNET_149 ) , .IN5 ( n277 ) , 
    .Q ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U339 ( .IN1 ( copt_net_3166 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3130 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n278 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U340 ( .IN1 ( copt_net_2963 ) , .IN2 ( PLACE_HFSNET_140 ) , 
    .IN3 ( copt_net_2992 ) , .IN4 ( n281 ) , .IN5 ( n278 ) , .Q ( n287 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U341 ( .IN1 ( copt_net_5388 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_5389 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n279 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U342 ( .IN1 ( copt_net_5391 ) , .IN2 ( PLACE_HFSNET_138 ) , 
    .IN3 ( copt_net_3195 ) , .IN4 ( PLACE_HFSNET_151 ) , .IN5 ( n279 ) , 
    .Q ( n284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U343 ( .IN1 ( copt_net_5353 ) , .IN2 ( PLACE_HFSNET_139 ) , 
    .IN3 ( copt_net_3204 ) , .IN4 ( PLACE_HFSNET_150 ) , .IN5 ( n280 ) , 
    .Q ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U344 ( .IN1 ( n285 ) , .IN2 ( n284 ) , .IN3 ( n283 ) , .IN4 ( n282 ) , 
    .Q ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1 U345 ( .IN1 ( n290 ) , .IN2 ( n289 ) , .IN3 ( n412 ) , .IN4 ( n287 ) , 
    .IN5 ( n286 ) , .Q ( N33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U370 ( .IN1 ( copt_net_5381 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3254 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n280 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4888 ( .INP ( copt_net_2867 ) , 
    .Z ( copt_net_2866 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_297_113 ( .INP ( n12 ) , .ZN ( PLACE_HFSNET_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_282_115 ( .INP ( n43 ) , .ZN ( PLACE_HFSNET_63 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8954 ( .INP ( n29 ) , .Z ( copt_net_5210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U174 ( .IN1 ( Address[2] ) , .IN2 ( n403 ) , .Q ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4889 ( .INP ( copt_net_2868 ) , 
    .Z ( copt_net_2867 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 RdData_Valid_reg ( .D ( n183 ) , .SI ( copt_net_5381 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( RdData_Valid ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[7] ( .D ( n182 ) , .SI ( \regfile[13][2] ) , 
    .SE ( PLACE_HFSNET_105 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[7] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[6] ( .D ( n181 ) , .SI ( copt_net_5307 ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[6] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[5] ( .D ( n180 ) , .SI ( RdData[3] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[5] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[4] ( .D ( n179 ) , .SI ( RdData[0] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( aps_rename_1_ ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[3] ( .D ( n178 ) , .SI ( RdData[1] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[3] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[2] ( .D ( n177 ) , .SI ( \regfile[15][1] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[2] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[1] ( .D ( n176 ) , .SI ( \regfile[15][2] ) , 
    .SE ( PLACE_HFSNET_104 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_28 ) , 
    .Q ( RdData[1] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \RdData_reg[0] ( .D ( n175 ) , .SI ( copt_net_5406 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( aps_rename_1_1_ ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][7] ( .D ( n174 ) , .SI ( copt_net_5322 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( dftopt17_gOb3 ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][6] ( .D ( n173 ) , .SI ( aps_rename_4_ ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][6] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][5] ( .D ( n172 ) , .SI ( n385 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][5] ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][4] ( .D ( n171 ) , .SI ( \regfile[15][3] ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][4] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][3] ( .D ( n170 ) , .SI ( copt_net_5255 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[15][3] ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][2] ( .D ( n169 ) , .SI ( \regfile[13][6] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][2] ) , .QN ( SYNOPSYS_UNCONNECTED_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][1] ( .D ( n168 ) , .SI ( RdData_Valid ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][1] ) , .QN ( SYNOPSYS_UNCONNECTED_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[15][0] ( .D ( n167 ) , .SI ( \regfile[15][4] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[15][0] ) , .QN ( SYNOPSYS_UNCONNECTED_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][7] ( .D ( n166 ) , .SI ( copt_net_5244 ) , 
    .SE ( PLACE_HFSNET_102 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_22 ) , 
    .Q ( \regfile[14][7] ) , .QN ( SYNOPSYS_UNCONNECTED_18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][6] ( .D ( n165 ) , .SI ( \regfile[13][4] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[14][6] ) , .QN ( SYNOPSYS_UNCONNECTED_19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][7] ( .D ( n158 ) , .SI ( copt_net_5259 ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][7] ) , .QN ( SYNOPSYS_UNCONNECTED_20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][6] ( .D ( n157 ) , .SI ( copt_net_5404 ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[13][6] ) , .QN ( SYNOPSYS_UNCONNECTED_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][5] ( .D ( n156 ) , .SI ( copt_net_5366 ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][5] ) , .QN ( SYNOPSYS_UNCONNECTED_22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][4] ( .D ( n155 ) , .SI ( copt_net_5314 ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_46 ) , 
    .Q ( \regfile[13][4] ) , .QN ( SYNOPSYS_UNCONNECTED_23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][3] ( .D ( n154 ) , .SI ( dftopt27_gOb20 ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( p_abuf2 ) , .RSTB ( RST ) , 
    .Q ( \regfile[13][3] ) , .QN ( SYNOPSYS_UNCONNECTED_24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][2] ( .D ( n153 ) , .SI ( copt_net_5208 ) , 
    .SE ( PLACE_HFSNET_103 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][2] ) , .QN ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][1] ( .D ( n152 ) , .SI ( \regfile[15][0] ) , 
    .SE ( PLACE_HFSNET_97 ) , .CLK ( p_abuf36 ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( \regfile[13][1] ) , .QN ( SYNOPSYS_UNCONNECTED_26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[13][0] ( .D ( n151 ) , .SI ( \regfile[13][1] ) , 
    .SE ( PLACE_HFSNET_103 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_51 ) , 
    .Q ( test_so2_gOb25 ) , .QN ( SYNOPSYS_UNCONNECTED_27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][5] ( .D ( n148 ) , .SI ( dftopt39 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( dftopt21 ) , .QN ( SYNOPSYS_UNCONNECTED_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][4] ( .D ( n147 ) , .SI ( \regfile[11][7] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[12][4] ) , .QN ( SYNOPSYS_UNCONNECTED_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][7] ( .D ( n142 ) , .SI ( copt_net_5319 ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][7] ) , .QN ( SYNOPSYS_UNCONNECTED_30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][6] ( .D ( n141 ) , .SI ( \regfile[14][4] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][6] ) , .QN ( SYNOPSYS_UNCONNECTED_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][5] ( .D ( n140 ) , .SI ( \regfile[11][6] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][5] ) , .QN ( SYNOPSYS_UNCONNECTED_32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][4] ( .D ( n139 ) , .SI ( copt_net_5304 ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][4] ) , .QN ( SYNOPSYS_UNCONNECTED_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][3] ( .D ( n138 ) , .SI ( \regfile[9][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[11][3] ) , .QN ( SYNOPSYS_UNCONNECTED_34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][2] ( .D ( n137 ) , .SI ( \regfile[8][0] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][2] ) , .QN ( SYNOPSYS_UNCONNECTED_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][1] ( .D ( n136 ) , .SI ( \regfile[11][2] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][1] ) , .QN ( SYNOPSYS_UNCONNECTED_36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[11][0] ( .D ( n135 ) , .SI ( \regfile[11][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[11][0] ) , .QN ( SYNOPSYS_UNCONNECTED_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][3] ( .D ( n130 ) , .SI ( \regfile[8][2] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[10][3] ) , .QN ( SYNOPSYS_UNCONNECTED_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][2] ( .D ( n129 ) , .SI ( \regfile[10][1] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[10][2] ) , .QN ( SYNOPSYS_UNCONNECTED_39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][7] ( .D ( n126 ) , .SI ( \regfile[9][0] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][7] ) , .QN ( SYNOPSYS_UNCONNECTED_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][6] ( .D ( n125 ) , .SI ( copt_net_5374 ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][6] ) , .QN ( SYNOPSYS_UNCONNECTED_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][5] ( .D ( n124 ) , .SI ( \regfile[9][3] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][5] ) , .QN ( SYNOPSYS_UNCONNECTED_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][4] ( .D ( n123 ) , .SI ( \regfile[7][0] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][4] ) , .QN ( SYNOPSYS_UNCONNECTED_43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][3] ( .D ( n122 ) , .SI ( copt_net_5344 ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][3] ) , .QN ( SYNOPSYS_UNCONNECTED_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][2] ( .D ( n121 ) , .SI ( copt_net_5216 ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][2] ) , .QN ( SYNOPSYS_UNCONNECTED_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][1] ( .D ( n120 ) , .SI ( \regfile[9][4] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[9][1] ) , .QN ( SYNOPSYS_UNCONNECTED_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[9][0] ( .D ( n119 ) , .SI ( \regfile[9][5] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[9][0] ) , .QN ( SYNOPSYS_UNCONNECTED_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][7] ( .D ( n118 ) , .SI ( \regfile[9][6] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][7] ) , .QN ( SYNOPSYS_UNCONNECTED_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][6] ( .D ( n117 ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][6] ) , .QN ( SYNOPSYS_UNCONNECTED_49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][5] ( .D ( n116 ) , .SI ( \regfile[8][7] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][5] ) , .QN ( SYNOPSYS_UNCONNECTED_50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][4] ( .D ( n115 ) , .SI ( copt_net_5392 ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_43 ) , 
    .Q ( \regfile[8][4] ) , .QN ( SYNOPSYS_UNCONNECTED_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][3] ( .D ( n114 ) , .SI ( \regfile[8][4] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( dftopt24_gOb16 ) , .QN ( SYNOPSYS_UNCONNECTED_52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][2] ( .D ( n113 ) , .SI ( \regfile[8][6] ) , 
    .SE ( PLACE_HFSNET_83 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][2] ) , .QN ( SYNOPSYS_UNCONNECTED_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][1] ( .D ( n112 ) , .SI ( dftopt24_gOb16 ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][1] ) , .QN ( SYNOPSYS_UNCONNECTED_54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[8][0] ( .D ( n111 ) , .SI ( copt_net_5239 ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_44 ) , 
    .Q ( \regfile[8][0] ) , .QN ( SYNOPSYS_UNCONNECTED_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][7] ( .D ( n110 ) , .SI ( \regfile[7][6] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][7] ) , .QN ( SYNOPSYS_UNCONNECTED_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][6] ( .D ( n109 ) , .SI ( copt_net_5217 ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][6] ) , .QN ( SYNOPSYS_UNCONNECTED_57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][5] ( .D ( n108 ) , .SI ( \regfile[7][1] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][5] ) , .QN ( SYNOPSYS_UNCONNECTED_58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][4] ( .D ( n107 ) , .SI ( \regfile[6][7] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][4] ) , .QN ( SYNOPSYS_UNCONNECTED_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][3] ( .D ( n106 ) , .SI ( \regfile[7][4] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][3] ) , .QN ( SYNOPSYS_UNCONNECTED_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][2] ( .D ( n105 ) , .SI ( \regfile[6][6] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[7][2] ) , .QN ( SYNOPSYS_UNCONNECTED_61 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][1] ( .D ( n104 ) , .SI ( \regfile[11][4] ) , 
    .SE ( PLACE_HFSNET_80 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_40 ) , 
    .Q ( \regfile[7][1] ) , .QN ( SYNOPSYS_UNCONNECTED_62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[7][0] ( .D ( n103 ) , .SI ( \regfile[7][3] ) , 
    .SE ( PLACE_HFSNET_81 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_45 ) , 
    .Q ( \regfile[7][0] ) , .QN ( SYNOPSYS_UNCONNECTED_63 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][7] ( .D ( n102 ) , .SI ( \regfile[5][1] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][7] ) , .QN ( SYNOPSYS_UNCONNECTED_64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][6] ( .D ( n101 ) , .SI ( copt_net_5290 ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][6] ) , .QN ( SYNOPSYS_UNCONNECTED_65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][5] ( .D ( n100 ) , .SI ( copt_net_5332 ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[6][5] ) , .QN ( SYNOPSYS_UNCONNECTED_66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][4] ( .D ( n99 ) , .SI ( \regfile[5][3] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[6][4] ) , .QN ( SYNOPSYS_UNCONNECTED_67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][3] ( .D ( n98 ) , .SI ( \regfile[6][4] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[6][3] ) , .QN ( SYNOPSYS_UNCONNECTED_68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][2] ( .D ( n97 ) , .SI ( copt_net_5328 ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( dftopt13_gOb27 ) , .QN ( SYNOPSYS_UNCONNECTED_69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][1] ( .D ( n96 ) , .SI ( copt_net_5398 ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[6][1] ) , .QN ( SYNOPSYS_UNCONNECTED_70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[6][0] ( .D ( n95 ) , .SI ( copt_net_5361 ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[6][0] ) , .QN ( SYNOPSYS_UNCONNECTED_71 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][7] ( .D ( n94 ) , .SI ( copt_net_5342 ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[5][7] ) , .QN ( SYNOPSYS_UNCONNECTED_72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][6] ( .D ( n93 ) , .SI ( \regfile[5][4] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][6] ) , .QN ( SYNOPSYS_UNCONNECTED_73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][5] ( .D ( n92 ) , .SI ( \regfile[5][6] ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][5] ) , .QN ( SYNOPSYS_UNCONNECTED_74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][4] ( .D ( n91 ) , .SI ( dftopt33_gOb37 ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][4] ) , .QN ( SYNOPSYS_UNCONNECTED_75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][3] ( .D ( n90 ) , .SI ( \regfile[5][2] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][3] ) , .QN ( SYNOPSYS_UNCONNECTED_76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][2] ( .D ( n89 ) , .SI ( dftopt0 ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_42 ) , 
    .Q ( \regfile[5][2] ) , .QN ( SYNOPSYS_UNCONNECTED_77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][1] ( .D ( n88 ) , .SI ( copt_net_5405 ) , 
    .SE ( PLACE_HFSNET_82 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[5][1] ) , .QN ( SYNOPSYS_UNCONNECTED_78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[5][0] ( .D ( n87 ) , .SI ( \regfile[6][0] ) , 
    .SE ( PLACE_HFSNET_88 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( dftopt33_gOb37 ) , .QN ( SYNOPSYS_UNCONNECTED_79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][7] ( .D ( n86 ) , .SI ( dftopt14 ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][7] ) , .QN ( SYNOPSYS_UNCONNECTED_80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][6] ( .D ( n85 ) , .SI ( REG2[7] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_41 ) , 
    .Q ( \regfile[4][6] ) , .QN ( SYNOPSYS_UNCONNECTED_81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][5] ( .D ( n84 ) , .SI ( \regfile[4][4] ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][5] ) , .QN ( SYNOPSYS_UNCONNECTED_82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][4] ( .D ( n83 ) , .SI ( \regfile[6][3] ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][4] ) , .QN ( SYNOPSYS_UNCONNECTED_83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][3] ( .D ( n82 ) , .SI ( \regfile[6][1] ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][3] ) , .QN ( SYNOPSYS_UNCONNECTED_84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][2] ( .D ( n81 ) , .SI ( dftopt42 ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][2] ) , .QN ( SYNOPSYS_UNCONNECTED_85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][1] ( .D ( n80 ) , .SI ( \regfile[4][3] ) , 
    .SE ( test_se ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_26 ) , 
    .Q ( \regfile[4][1] ) , .QN ( SYNOPSYS_UNCONNECTED_86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[4][0] ( .D ( n79 ) , .SI ( copt_net_5309 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( \regfile[4][0] ) , .QN ( SYNOPSYS_UNCONNECTED_87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][7] ( .D ( n78 ) , .SI ( REG3[6] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[7] ) , .QN ( SYNOPSYS_UNCONNECTED_88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][6] ( .D ( n77 ) , .SI ( \regfile[4][0] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[6] ) , .QN ( SYNOPSYS_UNCONNECTED_89 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[3][5] ( .D ( n76 ) , .SI ( REG3[0] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf38 ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( aps_rename_5_ ) , .QN ( SYNOPSYS_UNCONNECTED_90 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][4] ( .D ( n75 ) , .SI ( REG3[7] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( aps_rename_6_ ) , .QN ( SYNOPSYS_UNCONNECTED_91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][3] ( .D ( n74 ) , .SI ( dftopt41 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( REG3[3] ) , .QN ( SYNOPSYS_UNCONNECTED_92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][2] ( .D ( n73 ) , .SI ( dftopt30_gOb26 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( aps_rename_7_ ) , .QN ( SYNOPSYS_UNCONNECTED_93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][1] ( .D ( n72 ) , .SI ( n396 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( REG3[1] ) , .QN ( SYNOPSYS_UNCONNECTED_94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[3][0] ( .D ( n71 ) , .SI ( copt_net_5402 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG3[0] ) , .QN ( SYNOPSYS_UNCONNECTED_95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[2][7] ( .D ( n70 ) , .SI ( \regfile[12][4] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf38 ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[7] ) , .QN ( SYNOPSYS_UNCONNECTED_96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][6] ( .D ( n69 ) , .SI ( \regfile[4][6] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( n399 ) , .QN ( REG2[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][5] ( .D ( n68 ) , .SI ( REG2[2] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[5] ) , .QN ( SYNOPSYS_UNCONNECTED_97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][4] ( .D ( n67 ) , .SI ( \regfile[4][1] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( aps_rename_2_ ) , .QN ( n413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][3] ( .D ( n66 ) , .SI ( aps_rename_2_ ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( REG2[3] ) , .QN ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][2] ( .D ( n65 ) , .SI ( REG2[3] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_24 ) , 
    .Q ( aps_rename_2_2_ ) , .QN ( SYNOPSYS_UNCONNECTED_98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[2][1] ( .D ( n64 ) , .SI ( aps_rename_5_ ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_25 ) , 
    .Q ( aps_rename_3_ ) , .QN ( SYNOPSYS_UNCONNECTED_99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][7] ( .D ( n62 ) , .SI ( copt_net_5213 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n390 ) , .QN ( REG1[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][6] ( .D ( n61 ) , .SI ( n394 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n391 ) , .QN ( REG1[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][5] ( .D ( n60 ) , .SI ( n388 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n392 ) , .QN ( REG1[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][4] ( .D ( n59 ) , .SI ( copt_net_5305 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( dftopt30_gOb26 ) , .QN ( REG1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][3] ( .D ( n58 ) , .SI ( copt_net_5219 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( n394 ) , .QN ( REG1[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][2] ( .D ( n57 ) , .SI ( n397 ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( dftopt15 ) , .QN ( REG1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][1] ( .D ( n56 ) , .SI ( aps_rename_7_ ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_27 ) , 
    .Q ( n396 ) , .QN ( REG1[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][7] ( .D ( n54 ) , .SI ( n389 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n383 ) , .QN ( REG0[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][6] ( .D ( n53 ) , .SI ( \regfile[15][5] ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n384 ) , .QN ( REG0[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][5] ( .D ( n52 ) , .SI ( n386 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( REG0[5] ) , .QN ( SYNOPSYS_UNCONNECTED_100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][4] ( .D ( n51 ) , .SI ( aps_rename_3_ ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n385 ) , .QN ( REG0[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][3] ( .D ( n50 ) , .SI ( copt_net_5401 ) , 
    .SE ( PLACE_HFSNET_101 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n386 ) , .QN ( REG0[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][2] ( .D ( n49 ) , .SI ( aps_rename_6_ ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n387 ) , .QN ( REG0[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][1] ( .D ( n48 ) , .SI ( n383 ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n388 ) , .QN ( REG0[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[0][0] ( .D ( n47 ) , .SI ( \regfile[14][6] ) , 
    .SE ( PLACE_HFSNET_100 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_21 ) , 
    .Q ( n389 ) , .QN ( REG0[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[1][0] ( .D ( n55 ) , .SI ( REG3[1] ) , 
    .SE ( PLACE_HFSNET_121 ) , .CLK ( p_abuf39 ) , .RSTB ( PLACE_HFSNET_23 ) , 
    .Q ( n397 ) , .QN ( REG1[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][5] ( .D ( n164 ) , .SI ( copt_net_5365 ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][5] ) , .QN ( SYNOPSYS_UNCONNECTED_101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][7] ( .D ( n150 ) , .SI ( \regfile[11][0] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( dftopt18_gOb4 ) , .QN ( SYNOPSYS_UNCONNECTED_102 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][6] ( .D ( n149 ) , .SI ( dftopt29 ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[12][6] ) , .QN ( SYNOPSYS_UNCONNECTED_103 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][1] ( .D ( n160 ) , .SI ( copt_net_5297 ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( p_abuf2 ) , .RSTB ( RST ) , 
    .Q ( \regfile[14][1] ) , .QN ( SYNOPSYS_UNCONNECTED_104 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][0] ( .D ( n159 ) , .SI ( copt_net_5362 ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( p_abuf38 ) , .RSTB ( RST ) , 
    .Q ( \regfile[14][0] ) , .QN ( SYNOPSYS_UNCONNECTED_105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][1] ( .D ( n144 ) , .SI ( copt_net_5346 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( dftopt38 ) , .QN ( SYNOPSYS_UNCONNECTED_106 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][0] ( .D ( n143 ) , .SI ( dftopt31_gOb35 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][0] ) , .QN ( SYNOPSYS_UNCONNECTED_107 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][2] ( .D ( n161 ) , .SI ( \regfile[14][5] ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][2] ) , .QN ( SYNOPSYS_UNCONNECTED_108 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][2] ( .D ( n145 ) , .SI ( \regfile[12][0] ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( \regfile[12][2] ) , .QN ( SYNOPSYS_UNCONNECTED_109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][4] ( .D ( n163 ) , .SI ( copt_net_5347 ) , 
    .SE ( PLACE_HFSNET_98 ) , .CLK ( p_abuf38 ) , .RSTB ( PLACE_HFSNET_47 ) , 
    .Q ( \regfile[14][4] ) , .QN ( SYNOPSYS_UNCONNECTED_110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[14][3] ( .D ( n162 ) , .SI ( \regfile[14][1] ) , 
    .SE ( PLACE_HFSNET_99 ) , .CLK ( p_abuf2 ) , .RSTB ( RST ) , 
    .Q ( dftopt27_gOb20 ) , .QN ( SYNOPSYS_UNCONNECTED_111 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[12][3] ( .D ( n146 ) , .SI ( dftopt40 ) , 
    .SE ( PLACE_HFSNET_90 ) , .CLK ( p_abuf2 ) , .RSTB ( PLACE_HFSNET_49 ) , 
    .Q ( dftopt31_gOb35 ) , .QN ( SYNOPSYS_UNCONNECTED_112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][6] ( .D ( n133 ) , .SI ( \regfile[10][5] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][6] ) , .QN ( SYNOPSYS_UNCONNECTED_113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][7] ( .D ( n134 ) , .SI ( \regfile[10][0] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][7] ) , .QN ( SYNOPSYS_UNCONNECTED_114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][5] ( .D ( n132 ) , .SI ( \regfile[8][1] ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][5] ) , .QN ( SYNOPSYS_UNCONNECTED_115 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][1] ( .D ( n128 ) , .SI ( dftopt36_gOb40 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][1] ) , .QN ( SYNOPSYS_UNCONNECTED_116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][0] ( .D ( n127 ) , .SI ( \regfile[10][3] ) , 
    .SE ( PLACE_HFSNET_84 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( \regfile[10][0] ) , .QN ( SYNOPSYS_UNCONNECTED_117 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \regfile_reg[10][4] ( .D ( n131 ) , .SI ( dftopt35 ) , 
    .SE ( PLACE_HFSNET_89 ) , .CLK ( p_abuf37 ) , .RSTB ( PLACE_HFSNET_50 ) , 
    .Q ( dftopt36_gOb40 ) , .QN ( SYNOPSYS_UNCONNECTED_118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4890 ( .INP ( Address[0] ) , .Z ( copt_net_2868 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_102_198 ( .INP ( WrData[4] ) , .Z ( PLACE_HFSNET_129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_459_213 ( .INP ( PLACE_HFSNET_140 ) , 
    .Z ( PLACE_HFSNET_139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U53 ( .IN1 ( copt_net_3750 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3747 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n244 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U105 ( .IN1 ( RdData[7] ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_3051 ) , .IN4 ( copt_net_2945 ) , .Q ( n182 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U107 ( .IN1 ( copt_net_3252 ) , .IN2 ( PLACE_HFSNET_144 ) , 
    .IN3 ( copt_net_3314 ) , .IN4 ( PLACE_HFSNET_160 ) , .Q ( n261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U109 ( .IN1 ( PLACE_HFSNET_18 ) , .IN2 ( \regfile[10][1] ) , 
    .S ( copt_net_2932 ) , .Q ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U111 ( .IN1 ( WrData[5] ) , .IN2 ( copt_net_5399 ) , .S ( n43 ) , 
    .Q ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X1 U124 ( .IN1 ( n413 ) , .IN2 ( PLACE_HFSNET_61 ) , .IN3 ( n405 ) , 
    .QN ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U144 ( .IN1 ( copt_net_2851 ) , .IN2 ( copt_net_3735 ) , 
    .S ( copt_net_2968 ) , .Q ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U145 ( .IN1 ( RdData_Valid ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_2945 ) , .Q ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U161 ( .IN1 ( n291 ) , .IN2 ( n292 ) , .Q ( n414 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_220_50 ( .INP ( copt_net_2985 ) , 
    .Z ( PLACE_HFSNET_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_8957 ( .INP ( n384 ) , .Z ( copt_net_5213 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8958 ( .INP ( aps_rename_3_ ) , 
    .Z ( copt_net_5214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U376 ( .IN1 ( copt_net_2983 ) , .IN2 ( \regfile[11][2] ) , 
    .S ( copt_net_2968 ) , .Q ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4913 ( .INP ( \regfile[11][0] ) , 
    .Z ( copt_net_2891 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4914 ( .INP ( copt_net_5358 ) , 
    .Z ( copt_net_2892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n402 ) , .ZN ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_299_117 ( .INP ( copt_net_2932 ) , 
    .ZN ( PLACE_HFSNET_65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U186 ( .INP ( n6 ) , .ZN ( n407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U379 ( .INP ( n414 ) , .ZN ( n411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U380 ( .INP ( n414 ) , .ZN ( n412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4922 ( .INP ( PLACE_HFSNET_167 ) , 
    .Z ( copt_net_2900 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8959 ( .INP ( copt_net_5214 ) , 
    .Z ( copt_net_5215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4925 ( .INP ( PLACE_HFSNET_165 ) , 
    .Z ( copt_net_2903 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4927 ( .INP ( copt_net_2900 ) , 
    .Z ( copt_net_2905 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8960 ( .INP ( \regfile[11][3] ) , 
    .Z ( copt_net_5216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8961 ( .INP ( \regfile[5][7] ) , 
    .Z ( copt_net_5217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8962 ( .INP ( n387 ) , .Z ( copt_net_5218 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8963 ( .INP ( copt_net_5218 ) , 
    .Z ( copt_net_5219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_219_227 ( .INP ( PLACE_HFSNET_151 ) , 
    .Z ( PLACE_HFSNET_150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_318_228 ( .INP ( n281 ) , .Z ( PLACE_HFSNET_151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_934_214 ( .INP ( PLACE_HFSNET_142 ) , 
    .Z ( PLACE_HFSNET_140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U240 ( .INP ( copt_net_3002 ) , .ZN ( n291 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_8967 ( .INP ( copt_net_5226 ) , 
    .Z ( copt_net_5223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U250 ( .INP ( copt_net_3109 ) , .ZN ( n319 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_182_194 ( .INP ( n213 ) , .ZN ( PLACE_HFSNET_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_330_195 ( .INP ( n212 ) , .ZN ( PLACE_HFSNET_128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 U347 ( .INP ( n37 ) , .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_524_123 ( .INP ( copt_net_2968 ) , 
    .ZN ( PLACE_HFSNET_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_305_121 ( .INP ( n42 ) , .ZN ( PLACE_HFSNET_69 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U357 ( .INP ( n45 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4952 ( .INP ( copt_net_2931 ) , 
    .Z ( copt_net_2930 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_524_238 ( .INP ( PLACE_HFSNET_161 ) , 
    .Z ( PLACE_HFSNET_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_700_239 ( .INP ( PLACE_HFSNET_161 ) , 
    .Z ( PLACE_HFSNET_160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_997_240 ( .INP ( PLACE_HFSNET_163 ) , 
    .Z ( PLACE_HFSNET_161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_1195_216 ( .INP ( n210 ) , .ZN ( PLACE_HFSNET_142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4953 ( .INP ( n39 ) , .Z ( copt_net_2931 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_709_217 ( .INP ( PLACE_HFSNET_144 ) , 
    .Z ( PLACE_HFSNET_143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_826_218 ( .INP ( PLACE_HFSNET_147 ) , 
    .Z ( PLACE_HFSNET_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_1147_242 ( .INP ( n209 ) , .ZN ( PLACE_HFSNET_163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4954 ( .INP ( copt_net_2930 ) , 
    .Z ( copt_net_2932 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFASX1 \regfile_reg[2][0] ( .D ( n63 ) , .SI ( REG2[5] ) , 
    .SE ( PLACE_HFSNET_86 ) , .CLK ( p_abuf38 ) , .SETB ( PLACE_HFSNET_25 ) , 
    .Q ( aps_rename_4_ ) , .QN ( SYNOPSYS_UNCONNECTED_119 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8968 ( .INP ( copt_net_5225 ) , 
    .Z ( copt_net_5224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_8969 ( .INP ( copt_net_5223 ) , 
    .Z ( copt_net_5225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16 PLACE_copt_h_inst_8970 ( .INP ( N39 ) , .Z ( copt_net_5226 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4959 ( .INP ( n21 ) , .Z ( copt_net_2937 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U9 ( .IN1 ( copt_net_2999 ) , .IN2 ( n24 ) , .Q ( n213 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4966 ( .INP ( n46 ) , .Z ( copt_net_2944 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2 U12 ( .IN1 ( n44 ) , .IN2 ( copt_net_2866 ) , .Q ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U14 ( .IN1 ( Address[2] ) , .IN2 ( Address[1] ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4967 ( .INP ( copt_net_2946 ) , 
    .Z ( copt_net_2945 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U16 ( .IN1 ( n44 ) , .IN2 ( n6 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX32 U19 ( .INP ( n382 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U20 ( .INP ( n382 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4968 ( .INP ( copt_net_2947 ) , 
    .Z ( copt_net_2946 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_4969 ( .INP ( copt_net_2944 ) , 
    .Z ( copt_net_2947 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( Address[1] ) , .ZN ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8975 ( .INP ( n221 ) , .Z ( copt_net_5231 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8976 ( .INP ( n36 ) , .Z ( copt_net_5232 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NOR2X1 U48 ( .IN1 ( n291 ) , .IN2 ( copt_net_3560 ) , .QN ( n290 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1 U49 ( .IN1 ( copt_net_3560 ) , .IN2 ( copt_net_3002 ) , .QN ( n283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4980 ( .INP ( copt_net_5304 ) , 
    .Z ( copt_net_2958 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_4981 ( .INP ( copt_net_5239 ) , 
    .Z ( copt_net_2959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_114_219 ( .INP ( PLACE_HFSNET_146 ) , 
    .Z ( PLACE_HFSNET_145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_404_220 ( .INP ( PLACE_HFSNET_147 ) , 
    .Z ( PLACE_HFSNET_146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_940_221 ( .INP ( n211 ) , .ZN ( PLACE_HFSNET_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4982 ( .INP ( copt_net_5322 ) , 
    .Z ( copt_net_2960 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U61 ( .IN1 ( copt_net_5202 ) , .IN2 ( copt_net_3026 ) , .QN ( n203 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4205_139 ( .INP ( PLACE_HFSNET_85 ) , 
    .Z ( PLACE_HFSNET_84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4983 ( .INP ( \regfile[15][4] ) , 
    .Z ( copt_net_2961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8981 ( .INP ( \regfile[15][3] ) , 
    .Z ( copt_net_5237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4985 ( .INP ( copt_net_5255 ) , 
    .Z ( copt_net_2963 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8982 ( .INP ( \regfile[10][2] ) , 
    .Z ( copt_net_5238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4588_140 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8983 ( .INP ( copt_net_5238 ) , 
    .Z ( copt_net_5239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8984 ( .INP ( n271 ) , .Z ( copt_net_5240 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4989 ( .INP ( n40 ) , .Z ( copt_net_2967 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8986 ( .INP ( PLACE_HFSNET_188 ) , 
    .Z ( copt_net_5242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4990 ( .INP ( copt_net_2967 ) , 
    .Z ( copt_net_2968 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8987 ( .INP ( dftopt17_gOb3 ) , 
    .Z ( copt_net_5243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8988 ( .INP ( copt_net_5243 ) , 
    .Z ( copt_net_5244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U173 ( .IN1 ( n22 ) , .IN2 ( copt_net_3026 ) , .QN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U175 ( .IN1 ( copt_net_2999 ) , .IN2 ( n22 ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U177 ( .IN1 ( copt_net_3654 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( n212 ) , .Q ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U187 ( .IN1 ( copt_net_3195 ) , .IN2 ( copt_net_2853 ) , .S ( n212 ) , 
    .Q ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4995 ( .INP ( n32 ) , .Z ( copt_net_2973 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4996 ( .INP ( n33 ) , .Z ( copt_net_2974 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U191 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( copt_net_5401 ) , 
    .S ( n23 ) , .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U193 ( .IN1 ( WrData[0] ) , .IN2 ( n397 ) , .S ( n23 ) , .Q ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_823_43 ( .INP ( n23 ) , .ZN ( PLACE_HFSNET_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_8991 ( .INP ( copt_net_5248 ) , 
    .Z ( copt_net_5247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U198 ( .IN1 ( WrData[0] ) , .IN2 ( REG3[0] ) , .S ( n27 ) , 
    .Q ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U199 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( REG3[5] ) , .S ( n27 ) , 
    .Q ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_800_45 ( .INP ( n27 ) , .ZN ( PLACE_HFSNET_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_8992 ( .INP ( N38 ) , .Z ( copt_net_5248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U202 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( copt_net_3205 ) , 
    .S ( n31 ) , .Q ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U203 ( .IN1 ( copt_net_5201 ) , .IN2 ( \regfile[6][1] ) , .S ( n31 ) , 
    .Q ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_920_39 ( .INP ( n31 ) , .ZN ( PLACE_HFSNET_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_8999 ( .INP ( copt_net_5256 ) , 
    .Z ( copt_net_5255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U208 ( .IN1 ( WrData[0] ) , .IN2 ( \regfile[4][0] ) , .S ( n28 ) , 
    .Q ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U209 ( .IN1 ( PLACE_HFSNET_13 ) , .IN2 ( copt_net_3624 ) , 
    .S ( n28 ) , .Q ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_740_41 ( .INP ( n28 ) , .ZN ( PLACE_HFSNET_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U212 ( .IN1 ( copt_net_2974 ) , .IN2 ( n6 ) , .Q ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U215 ( .IN1 ( PLACE_HFSNET_164 ) , .IN2 ( copt_net_3004 ) , 
    .QN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5005 ( .INP ( copt_net_2985 ) , 
    .Z ( copt_net_2983 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4672_141 ( .INP ( PLACE_HFSNET_88 ) , 
    .Z ( PLACE_HFSNET_86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5006 ( .INP ( WrData[2] ) , .Z ( copt_net_2984 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U223 ( .IN1 ( n22 ) , .IN2 ( copt_net_3021 ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U224 ( .IN1 ( n402 ) , .IN2 ( copt_net_3771 ) , .QN ( n210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U225 ( .INP ( copt_net_2866 ) , .ZN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U226 ( .IN1 ( copt_net_2974 ) , .IN2 ( n407 ) , .Q ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U241 ( .IN1 ( copt_net_3036 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( n386 ) , .IN4 ( n20 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5007 ( .INP ( WrData[2] ) , .Z ( copt_net_2985 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5008 ( .INP ( copt_net_5314 ) , 
    .Z ( copt_net_2986 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U249 ( .INP ( n199 ) , .ZN ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U251 ( .INP ( Address[2] ) , .ZN ( n199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X1 U254 ( .IN1 ( n292 ) , .IN2 ( copt_net_3002 ) , .QN ( n285 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U258 ( .INP ( copt_net_3560 ) , .ZN ( n292 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_4810_143 ( .INP ( PLACE_HFSNET_96 ) , 
    .Z ( PLACE_HFSNET_88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1206_155 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U262 ( .IN1 ( n36 ) , .IN2 ( copt_net_3026 ) , .QN ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U266 ( .IN1 ( copt_net_3025 ) , .IN2 ( n36 ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1292_156 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5009 ( .INP ( copt_net_5362 ) , 
    .Z ( copt_net_2987 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_827_49 ( .INP ( n35 ) , .ZN ( PLACE_HFSNET_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U281 ( .IN1 ( copt_net_3771 ) , .IN2 ( n332 ) , .Q ( n211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5010 ( .INP ( \regfile[14][4] ) , 
    .Z ( copt_net_2988 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9000 ( .INP ( \regfile[14][7] ) , 
    .Z ( copt_net_5256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U311 ( .IN1 ( copt_net_3253 ) , .IN2 ( PLACE_HFSNET_13 ) , 
    .S ( n213 ) , .Q ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U327 ( .IN1 ( copt_net_5217 ) , .IN2 ( copt_net_2853 ) , .S ( n213 ) , 
    .Q ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U337 ( .IN1 ( \regfile[5][1] ) , .IN2 ( PLACE_HFSNET_18 ) , 
    .S ( n213 ) , .Q ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5012 ( .INP ( copt_net_5399 ) , 
    .Z ( copt_net_2990 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5013 ( .INP ( \regfile[10][1] ) , 
    .Z ( copt_net_2991 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U350 ( .IN1 ( WrData[5] ) , .IN2 ( dftopt21 ) , .S ( n41 ) , 
    .Q ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U353 ( .IN1 ( PLACE_HFSNET_129 ) , .IN2 ( \regfile[12][4] ) , 
    .S ( n41 ) , .Q ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U355 ( .IN1 ( WrData[6] ) , .IN2 ( copt_net_3149 ) , .S ( n41 ) , 
    .Q ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_711_47 ( .INP ( n41 ) , .ZN ( PLACE_HFSNET_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U362 ( .IN1 ( RdData[1] ) , .IN2 ( copt_net_2905 ) , 
    .IN3 ( copt_net_5224 ) , .IN4 ( copt_net_2945 ) , .Q ( n176 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U363 ( .IN1 ( copt_net_3754 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3683 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n242 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U366 ( .IN1 ( copt_net_3181 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3132 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n260 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U367 ( .IN1 ( copt_net_3740 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3737 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n250 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U373 ( .IN1 ( copt_net_3664 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3648 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n268 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U375 ( .IN1 ( copt_net_3693 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3689 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n214 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5014 ( .INP ( copt_net_5244 ) , 
    .Z ( copt_net_2992 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1 U378 ( .IN1 ( copt_net_2866 ) , .IN2 ( n2 ) , .Q ( n209 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9001 ( .INP ( copt_net_5392 ) , 
    .Z ( copt_net_5257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U382 ( .INP ( n403 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5015 ( .INP ( copt_net_5336 ) , 
    .Z ( copt_net_2993 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U384 ( .IN1 ( PLACE_HFSNET_61 ) , .IN2 ( WrData[4] ) , .QN ( n405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1249_157 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9002 ( .INP ( \regfile[12][0] ) , 
    .Z ( copt_net_5258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5021 ( .INP ( copt_net_3001 ) , 
    .Z ( copt_net_2999 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U388 ( .IN1 ( copt_net_3200 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3155 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n277 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U389 ( .IN1 ( copt_net_3372 ) , .IN2 ( PLACE_HFSNET_143 ) , 
    .IN3 ( copt_net_3381 ) , .IN4 ( PLACE_HFSNET_163 ) , .Q ( n223 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U390 ( .IN1 ( copt_net_5355 ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_5364 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n215 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U391 ( .IN1 ( \regfile[13][2] ) , .IN2 ( PLACE_HFSNET_145 ) , 
    .IN3 ( copt_net_3015 ) , .IN4 ( PLACE_HFSNET_161 ) , .Q ( n233 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5022 ( .INP ( copt_net_5210 ) , 
    .Z ( copt_net_3000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U396 ( .IN1 ( copt_net_3026 ) , .IN2 ( n24 ) , .Q ( n212 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U397 ( .IN1 ( n24 ) , .IN2 ( copt_net_3029 ) , .QN ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U398 ( .IN1 ( copt_net_3021 ) , .IN2 ( n24 ) , .QN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1 U399 ( .IN1 ( copt_net_3252 ) , .IN2 ( PLACE_HFSNET_19 ) , 
    .S ( n213 ) , .Q ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U400 ( .IN1 ( n36 ) , .IN2 ( copt_net_2999 ) , .QN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5023 ( .INP ( copt_net_3000 ) , 
    .Z ( copt_net_3001 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5024 ( .INP ( copt_net_3004 ) , 
    .Z ( copt_net_3002 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5025 ( .INP ( Address[3] ) , .Z ( copt_net_3003 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5026 ( .INP ( copt_net_3003 ) , 
    .Z ( copt_net_3004 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5027 ( .INP ( copt_net_3004 ) , 
    .Z ( copt_net_3005 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    .IN3 ( copt_net_5337 ) , .IN4 ( n20 ) , .Q ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1 U412 ( .IN1 ( PLACE_HFSNET_14 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( copt_net_3571 ) , .IN4 ( n20 ) , .Q ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 U413 ( .IN1 ( n22 ) , .IN2 ( copt_net_3029 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U414 ( .IN1 ( Address[1] ) , .IN2 ( Address[2] ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U415 ( .IN1 ( copt_net_5232 ) , .IN2 ( copt_net_3029 ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U416 ( .IN1 ( copt_net_5202 ) , .IN2 ( copt_net_3029 ) , 
    .QN ( n320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U417 ( .IN1 ( copt_net_5202 ) , .IN2 ( copt_net_3029 ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 U418 ( .IN1 ( copt_net_5202 ) , .IN2 ( copt_net_2999 ) , .QN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U419 ( .IN1 ( copt_net_5202 ) , .IN2 ( copt_net_3026 ) , .QN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X1 U420 ( .IN1 ( copt_net_3021 ) , .IN2 ( copt_net_5202 ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U421 ( .IN1 ( copt_net_3359 ) , .IN2 ( PLACE_HFSNET_146 ) , 
    .IN3 ( copt_net_3272 ) , .IN4 ( PLACE_HFSNET_159 ) , .Q ( n262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1 U422 ( .IN1 ( PLACE_HFSNET_19 ) , .IN2 ( PLACE_HFSNET_67 ) , 
    .IN3 ( copt_net_5406 ) , .IN4 ( n20 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_988_162 ( .INP ( PLACE_HFSNET_105 ) , 
    .Z ( PLACE_HFSNET_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_262_185 ( .INP ( PLACE_HFSNET_123 ) , 
    .Z ( PLACE_HFSNET_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_384_186 ( .INP ( PLACE_HFSNET_123 ) , 
    .Z ( PLACE_HFSNET_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5031 ( .INP ( \regfile[14][1] ) , 
    .Z ( copt_net_3009 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_9003 ( .INP ( \regfile[13][3] ) , 
    .Z ( copt_net_5259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5035 ( .INP ( copt_net_3014 ) , 
    .Z ( copt_net_3013 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5036 ( .INP ( copt_net_5297 ) , 
    .Z ( copt_net_3014 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5037 ( .INP ( copt_net_3013 ) , 
    .Z ( copt_net_3015 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5038 ( .INP ( copt_net_5346 ) , 
    .Z ( copt_net_3016 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5039 ( .INP ( copt_net_5320 ) , 
    .Z ( copt_net_3017 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5040 ( .INP ( dftopt36_gOb40 ) , 
    .Z ( copt_net_3018 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5041 ( .INP ( copt_net_5237 ) , 
    .Z ( copt_net_3019 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9007 ( .INP ( N33 ) , .Z ( copt_net_5263 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5043 ( .INP ( copt_net_3024 ) , 
    .Z ( copt_net_3021 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9012 ( .INP ( copt_net_3550 ) , 
    .Z ( copt_net_5268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5045 ( .INP ( n26 ) , .Z ( copt_net_3023 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5046 ( .INP ( copt_net_3023 ) , 
    .Z ( copt_net_3024 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5047 ( .INP ( n26 ) , .Z ( copt_net_3025 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5048 ( .INP ( copt_net_3028 ) , 
    .Z ( copt_net_3026 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5049 ( .INP ( copt_net_2973 ) , 
    .Z ( copt_net_3027 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5050 ( .INP ( copt_net_3027 ) , 
    .Z ( copt_net_3028 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5051 ( .INP ( copt_net_3031 ) , 
    .Z ( copt_net_3029 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5052 ( .INP ( copt_net_2937 ) , 
    .Z ( copt_net_3030 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5053 ( .INP ( copt_net_3030 ) , 
    .Z ( copt_net_3031 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_9014 ( .INP ( n218 ) , .Z ( copt_net_5270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5057 ( .INP ( WrData[3] ) , .Z ( copt_net_3035 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5058 ( .INP ( copt_net_3035 ) , 
    .Z ( copt_net_3036 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9015 ( .INP ( copt_net_5270 ) , 
    .Z ( copt_net_5271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16 PLACE_copt_h_inst_9016 ( .INP ( copt_net_5271 ) , 
    .Z ( copt_net_5272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9017 ( .INP ( aps_rename_5_ ) , 
    .Z ( copt_net_5273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5064 ( .INP ( dftopt27_gOb20 ) , 
    .Z ( copt_net_3042 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9018 ( .INP ( copt_net_5273 ) , 
    .Z ( copt_net_5274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5066 ( .INP ( copt_net_5400 ) , 
    .Z ( copt_net_3044 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5067 ( .INP ( \regfile[7][1] ) , 
    .Z ( copt_net_3045 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5068 ( .INP ( copt_net_5331 ) , 
    .Z ( copt_net_3046 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9019 ( .INP ( n318 ) , .Z ( copt_net_5275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9020 ( .INP ( copt_net_5278 ) , 
    .Z ( copt_net_5276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5073 ( .INP ( copt_net_5263 ) , 
    .Z ( copt_net_3051 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5099 ( .INP ( copt_net_2984 ) , 
    .Z ( copt_net_3077 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9021 ( .INP ( N37 ) , .Z ( copt_net_5277 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5112 ( .INP ( copt_net_5405 ) , 
    .Z ( copt_net_3090 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9022 ( .INP ( copt_net_5277 ) , 
    .Z ( copt_net_5278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9024 ( .INP ( copt_net_5393 ) , 
    .Z ( copt_net_5280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5130 ( .INP ( copt_net_5275 ) , 
    .Z ( copt_net_3108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5131 ( .INP ( copt_net_3108 ) , 
    .Z ( copt_net_3109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9026 ( .INP ( n269 ) , .Z ( copt_net_5282 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_9027 ( .INP ( n390 ) , .Z ( copt_net_5283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5134 ( .INP ( copt_net_5344 ) , 
    .Z ( copt_net_3112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5146 ( .INP ( n224 ) , .Z ( copt_net_3124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9029 ( .INP ( dftopt15 ) , .Z ( copt_net_5285 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5151 ( .INP ( REG3[0] ) , .Z ( copt_net_3129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5152 ( .INP ( copt_net_5365 ) , 
    .Z ( copt_net_3130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9032 ( .INP ( \regfile[11][7] ) , 
    .Z ( copt_net_5288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5154 ( .INP ( copt_net_5403 ) , 
    .Z ( copt_net_3132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5169 ( .INP ( \regfile[6][0] ) , 
    .Z ( copt_net_3147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5171 ( .INP ( copt_net_5347 ) , 
    .Z ( copt_net_3149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9033 ( .INP ( copt_net_5288 ) , 
    .Z ( copt_net_5289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9034 ( .INP ( \regfile[5][5] ) , 
    .Z ( copt_net_5290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9039 ( .INP ( n270 ) , .Z ( copt_net_5295 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5175 ( .INP ( \regfile[6][1] ) , 
    .Z ( copt_net_3153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5176 ( .INP ( copt_net_5307 ) , .Z ( RdData[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5177 ( .INP ( copt_net_5371 ) , 
    .Z ( copt_net_3155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5183 ( .INP ( copt_net_5342 ) , 
    .Z ( copt_net_3161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9041 ( .INP ( \regfile[12][2] ) , 
    .Z ( copt_net_5297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5185 ( .INP ( n389 ) , .Z ( copt_net_3163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9048 ( .INP ( \regfile[11][5] ) , 
    .Z ( copt_net_5304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9049 ( .INP ( n391 ) , .Z ( copt_net_5305 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5188 ( .INP ( copt_net_5366 ) , 
    .Z ( copt_net_3166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5189 ( .INP ( \regfile[6][6] ) , 
    .Z ( copt_net_3167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5194 ( .INP ( n259 ) , .Z ( copt_net_3172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5195 ( .INP ( copt_net_5361 ) , 
    .Z ( copt_net_3173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5196 ( .INP ( \regfile[8][6] ) , 
    .Z ( copt_net_3174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5197 ( .INP ( \regfile[6][3] ) , 
    .Z ( copt_net_3175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5199 ( .INP ( copt_net_2986 ) , 
    .Z ( copt_net_3177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9051 ( .INP ( aps_rename_1_ ) , 
    .Z ( copt_net_5307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5203 ( .INP ( copt_net_5404 ) , 
    .Z ( copt_net_3181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5204 ( .INP ( copt_net_5332 ) , 
    .Z ( copt_net_3182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9052 ( .INP ( copt_net_5208 ) , 
    .Z ( copt_net_5308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5206 ( .INP ( aps_rename_7_ ) , 
    .Z ( copt_net_3184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5214 ( .INP ( REG3[1] ) , .Z ( copt_net_3192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5215 ( .INP ( \regfile[6][4] ) , 
    .Z ( copt_net_3193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5217 ( .INP ( copt_net_5319 ) , 
    .Z ( copt_net_3195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5218 ( .INP ( n397 ) , .Z ( copt_net_3196 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9053 ( .INP ( \regfile[4][7] ) , 
    .Z ( copt_net_5309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5221 ( .INP ( \regfile[9][6] ) , 
    .Z ( copt_net_3199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5222 ( .INP ( copt_net_5374 ) , 
    .Z ( copt_net_3200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5223 ( .INP ( REG3[3] ) , .Z ( copt_net_3201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5224 ( .INP ( aps_rename_2_ ) , .Z ( REG2[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5225 ( .INP ( \regfile[4][1] ) , 
    .Z ( copt_net_3203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5226 ( .INP ( copt_net_5338 ) , 
    .Z ( copt_net_3204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5227 ( .INP ( copt_net_5398 ) , 
    .Z ( copt_net_3205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9056 ( .INP ( aps_rename_1_1_ ) , .Z ( RdData[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9058 ( .INP ( \regfile[14][0] ) , 
    .Z ( copt_net_5314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9061 ( .INP ( \regfile[6][7] ) , 
    .Z ( copt_net_5317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5231 ( .INP ( copt_net_5345 ) , 
    .Z ( copt_net_3209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5235 ( .INP ( n388 ) , .Z ( copt_net_3213 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5285 ( .INP ( \regfile[4][3] ) , 
    .Z ( copt_net_3251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5286 ( .INP ( copt_net_5290 ) , 
    .Z ( copt_net_3252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5287 ( .INP ( \regfile[5][6] ) , 
    .Z ( copt_net_3253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5288 ( .INP ( copt_net_5337 ) , 
    .Z ( copt_net_3254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9062 ( .INP ( \regfile[7][7] ) , 
    .Z ( copt_net_5318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5290 ( .INP ( copt_net_2987 ) , 
    .Z ( copt_net_3256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5291 ( .INP ( \regfile[5][1] ) , 
    .Z ( copt_net_3257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5306 ( .INP ( copt_net_5406 ) , 
    .Z ( copt_net_3272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9063 ( .INP ( copt_net_5318 ) , 
    .Z ( copt_net_5319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5341 ( .INP ( copt_net_5219 ) , 
    .Z ( copt_net_3296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5342 ( .INP ( copt_net_5274 ) , .Z ( REG3[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5343 ( .INP ( \regfile[10][3] ) , 
    .Z ( copt_net_3298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5344 ( .INP ( n385 ) , .Z ( copt_net_3299 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9064 ( .INP ( \regfile[10][5] ) , 
    .Z ( copt_net_5320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5346 ( .INP ( copt_net_5289 ) , 
    .Z ( copt_net_3301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5358 ( .INP ( copt_net_3009 ) , 
    .Z ( copt_net_3302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5359 ( .INP ( copt_net_2958 ) , 
    .Z ( copt_net_3303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5360 ( .INP ( copt_net_2993 ) , 
    .Z ( copt_net_3304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5361 ( .INP ( dftopt33_gOb37 ) , 
    .Z ( copt_net_3305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5366 ( .INP ( \regfile[4][0] ) , 
    .Z ( copt_net_3310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5369 ( .INP ( \regfile[4][6] ) , 
    .Z ( copt_net_3313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5370 ( .INP ( copt_net_5402 ) , 
    .Z ( copt_net_3314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5371 ( .INP ( copt_net_2961 ) , 
    .Z ( copt_net_3315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5372 ( .INP ( copt_net_5321 ) , 
    .Z ( copt_net_3316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5373 ( .INP ( n386 ) , .Z ( copt_net_3317 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5378 ( .INP ( copt_net_5328 ) , 
    .Z ( copt_net_3321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5379 ( .INP ( n396 ) , .Z ( copt_net_3322 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5380 ( .INP ( copt_net_2990 ) , 
    .Z ( copt_net_3323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5381 ( .INP ( copt_net_2988 ) , 
    .Z ( copt_net_3324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5382 ( .INP ( \regfile[7][0] ) , 
    .Z ( copt_net_3325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5383 ( .INP ( \regfile[5][3] ) , 
    .Z ( copt_net_3326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9065 ( .INP ( \regfile[5][2] ) , 
    .Z ( copt_net_5321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5389 ( .INP ( n394 ) , .Z ( copt_net_3332 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5390 ( .INP ( copt_net_2960 ) , 
    .Z ( copt_net_3333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9066 ( .INP ( \regfile[15][6] ) , 
    .Z ( copt_net_5322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5392 ( .INP ( copt_net_3017 ) , 
    .Z ( copt_net_3335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5393 ( .INP ( \regfile[4][4] ) , 
    .Z ( copt_net_3336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9068 ( .INP ( copt_net_5258 ) , 
    .Z ( copt_net_5324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5405 ( .INP ( copt_net_3044 ) , 
    .Z ( copt_net_3348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5407 ( .INP ( aps_rename_4_ ) , .Z ( REG2[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5408 ( .INP ( copt_net_3018 ) , 
    .Z ( copt_net_3351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9069 ( .INP ( copt_net_5217 ) , 
    .Z ( copt_net_5325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5410 ( .INP ( REG2[2] ) , .Z ( copt_net_3353 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9070 ( .INP ( \regfile[10][6] ) , .Z ( dftopt43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5416 ( .INP ( copt_net_5401 ) , 
    .Z ( copt_net_3359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5417 ( .INP ( copt_net_5285 ) , 
    .Z ( copt_net_3360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5418 ( .INP ( \regfile[5][4] ) , 
    .Z ( copt_net_3361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9072 ( .INP ( \regfile[4][2] ) , 
    .Z ( copt_net_5328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9073 ( .INP ( copt_net_5308 ) , 
    .Z ( copt_net_5329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9075 ( .INP ( \regfile[8][2] ) , 
    .Z ( copt_net_5331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5428 ( .INP ( dftopt24_gOb16 ) , 
    .Z ( copt_net_3371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5429 ( .INP ( \regfile[9][1] ) , 
    .Z ( copt_net_3372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5430 ( .INP ( copt_net_3129 ) , 
    .Z ( copt_net_3373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5434 ( .INP ( dftopt30_gOb26 ) , 
    .Z ( copt_net_3377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5435 ( .INP ( copt_net_3147 ) , 
    .Z ( copt_net_3378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5436 ( .INP ( copt_net_3184 ) , .Z ( REG3[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5437 ( .INP ( \regfile[9][3] ) , 
    .Z ( copt_net_3380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5438 ( .INP ( \regfile[8][1] ) , 
    .Z ( copt_net_3381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9076 ( .INP ( n399 ) , .Z ( copt_net_5332 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5449 ( .INP ( copt_net_3173 ) , 
    .Z ( copt_net_3392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5450 ( .INP ( copt_net_3163 ) , 
    .Z ( copt_net_3393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5451 ( .INP ( copt_net_5215 ) , .Z ( REG2[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5452 ( .INP ( \regfile[7][4] ) , 
    .Z ( copt_net_3395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5453 ( .INP ( copt_net_3174 ) , 
    .Z ( copt_net_3396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5454 ( .INP ( \regfile[7][3] ) , 
    .Z ( copt_net_3397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5460 ( .INP ( copt_net_2892 ) , 
    .Z ( copt_net_3403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5461 ( .INP ( copt_net_2891 ) , 
    .Z ( copt_net_3404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5463 ( .INP ( copt_net_3167 ) , 
    .Z ( copt_net_3406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5464 ( .INP ( \regfile[8][4] ) , 
    .Z ( copt_net_3407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5471 ( .INP ( copt_net_3182 ) , 
    .Z ( copt_net_3414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5472 ( .INP ( copt_net_5354 ) , 
    .Z ( copt_net_3415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5473 ( .INP ( \regfile[13][4] ) , 
    .Z ( copt_net_3416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5479 ( .INP ( copt_net_3199 ) , 
    .Z ( copt_net_3422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5481 ( .INP ( \regfile[9][4] ) , 
    .Z ( copt_net_3424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5482 ( .INP ( dftopt38 ) , .Z ( copt_net_3425 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5483 ( .INP ( copt_net_3196 ) , 
    .Z ( copt_net_3426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9078 ( .INP ( copt_net_5324 ) , 
    .Z ( copt_net_5334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9080 ( .INP ( \regfile[14][6] ) , 
    .Z ( copt_net_5336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9081 ( .INP ( n383 ) , .Z ( copt_net_5337 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5491 ( .INP ( copt_net_3253 ) , 
    .Z ( copt_net_3434 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5492 ( .INP ( copt_net_3305 ) , 
    .Z ( copt_net_3435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5493 ( .INP ( copt_net_3310 ) , 
    .Z ( copt_net_3436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5496 ( .INP ( copt_net_3209 ) , 
    .Z ( copt_net_3439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5498 ( .INP ( copt_net_3175 ) , 
    .Z ( copt_net_3441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5499 ( .INP ( copt_net_3153 ) , 
    .Z ( copt_net_3442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5500 ( .INP ( aps_rename_6_ ) , .Z ( REG3[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5502 ( .INP ( \regfile[11][1] ) , 
    .Z ( copt_net_3445 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9082 ( .INP ( REG3[7] ) , .Z ( copt_net_5338 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5506 ( .INP ( REG2[4] ) , .Z ( copt_net_3449 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5507 ( .INP ( copt_net_3325 ) , 
    .Z ( copt_net_3450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9083 ( .INP ( \regfile[11][6] ) , 
    .Z ( copt_net_5339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5513 ( .INP ( copt_net_3201 ) , 
    .Z ( copt_net_3456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5514 ( .INP ( \regfile[12][4] ) , 
    .Z ( copt_net_3457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9084 ( .INP ( copt_net_5329 ) , 
    .Z ( copt_net_5340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5517 ( .INP ( copt_net_3313 ) , 
    .Z ( copt_net_3460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5519 ( .INP ( copt_net_3193 ) , 
    .Z ( copt_net_3462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5520 ( .INP ( copt_net_3213 ) , 
    .Z ( copt_net_3463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5521 ( .INP ( copt_net_3251 ) , 
    .Z ( copt_net_3464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9086 ( .INP ( \regfile[7][2] ) , 
    .Z ( copt_net_5342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5524 ( .INP ( n275 ) , .Z ( copt_net_3467 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5525 ( .INP ( \regfile[8][0] ) , 
    .Z ( copt_net_3468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5526 ( .INP ( \regfile[11][4] ) , 
    .Z ( copt_net_3469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5527 ( .INP ( copt_net_3019 ) , 
    .Z ( copt_net_3470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5528 ( .INP ( \regfile[9][0] ) , 
    .Z ( copt_net_3471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5529 ( .INP ( copt_net_3298 ) , 
    .Z ( copt_net_3472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5530 ( .INP ( copt_net_5305 ) , 
    .Z ( copt_net_3473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5531 ( .INP ( copt_net_3315 ) , 
    .Z ( copt_net_3474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9087 ( .INP ( n222 ) , .Z ( copt_net_5343 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5533 ( .INP ( copt_net_3299 ) , 
    .Z ( copt_net_3476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5534 ( .INP ( copt_net_3042 ) , 
    .Z ( copt_net_3477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9088 ( .INP ( \regfile[9][2] ) , 
    .Z ( copt_net_5344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5538 ( .INP ( copt_net_3324 ) , 
    .Z ( copt_net_3481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9089 ( .INP ( REG3[6] ) , .Z ( copt_net_5345 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5540 ( .INP ( copt_net_3317 ) , 
    .Z ( copt_net_3483 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5543 ( .INP ( copt_net_3336 ) , 
    .Z ( copt_net_3486 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5544 ( .INP ( copt_net_3396 ) , 
    .Z ( copt_net_3487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5545 ( .INP ( copt_net_3326 ) , 
    .Z ( copt_net_3488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5546 ( .INP ( copt_net_3373 ) , 
    .Z ( copt_net_3489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5547 ( .INP ( copt_net_3332 ) , 
    .Z ( copt_net_3490 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5548 ( .INP ( copt_net_3378 ) , 
    .Z ( copt_net_3491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5549 ( .INP ( copt_net_3351 ) , 
    .Z ( copt_net_3492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5550 ( .INP ( copt_net_3406 ) , 
    .Z ( copt_net_3493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5551 ( .INP ( copt_net_3414 ) , 
    .Z ( copt_net_3494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5552 ( .INP ( copt_net_3361 ) , 
    .Z ( copt_net_3495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5553 ( .INP ( copt_net_3393 ) , 
    .Z ( copt_net_3496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5554 ( .INP ( copt_net_3371 ) , 
    .Z ( copt_net_3497 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5555 ( .INP ( copt_net_3422 ) , 
    .Z ( copt_net_3498 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5556 ( .INP ( copt_net_3377 ) , 
    .Z ( copt_net_3499 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5557 ( .INP ( copt_net_3404 ) , 
    .Z ( copt_net_3500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9090 ( .INP ( \regfile[10][7] ) , 
    .Z ( copt_net_5346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5560 ( .INP ( copt_net_3415 ) , 
    .Z ( copt_net_3503 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5561 ( .INP ( dftopt31_gOb35 ) , 
    .Z ( copt_net_3504 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5562 ( .INP ( copt_net_3395 ) , 
    .Z ( copt_net_3505 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5563 ( .INP ( copt_net_3434 ) , 
    .Z ( copt_net_3506 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5564 ( .INP ( copt_net_3439 ) , 
    .Z ( copt_net_3507 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5565 ( .INP ( copt_net_3426 ) , 
    .Z ( copt_net_3508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_9091 ( .INP ( \regfile[12][6] ) , 
    .Z ( copt_net_5347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5567 ( .INP ( copt_net_3397 ) , 
    .Z ( copt_net_3510 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5568 ( .INP ( copt_net_3416 ) , 
    .Z ( copt_net_3511 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5569 ( .INP ( copt_net_3435 ) , 
    .Z ( copt_net_3512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9092 ( .INP ( copt_net_5334 ) , 
    .Z ( copt_net_5348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5571 ( .INP ( copt_net_3436 ) , 
    .Z ( copt_net_3514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5572 ( .INP ( copt_net_3441 ) , 
    .Z ( copt_net_3515 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9093 ( .INP ( copt_net_5309 ) , 
    .Z ( copt_net_5349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5574 ( .INP ( copt_net_3460 ) , 
    .Z ( copt_net_3517 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9094 ( .INP ( n273 ) , .Z ( copt_net_5350 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5576 ( .INP ( copt_net_3450 ) , 
    .Z ( copt_net_3519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5577 ( .INP ( copt_net_3449 ) , 
    .Z ( copt_net_3520 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9095 ( .INP ( aps_rename_2_2_ ) , .Z ( REG2[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5579 ( .INP ( copt_net_3456 ) , 
    .Z ( copt_net_3522 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_9097 ( .INP ( PLACE_HFSNET_186 ) , 
    .Z ( copt_net_5353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5581 ( .INP ( copt_net_3457 ) , 
    .Z ( copt_net_3524 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5582 ( .INP ( copt_net_3468 ) , 
    .Z ( copt_net_3525 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5583 ( .INP ( copt_net_3462 ) , 
    .Z ( copt_net_3526 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5584 ( .INP ( copt_net_3471 ) , 
    .Z ( copt_net_3527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5585 ( .INP ( copt_net_3464 ) , 
    .Z ( copt_net_3528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9098 ( .INP ( \regfile[10][0] ) , 
    .Z ( copt_net_5354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5587 ( .INP ( copt_net_5339 ) , 
    .Z ( copt_net_3530 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9099 ( .INP ( copt_net_5340 ) , 
    .Z ( copt_net_5355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9102 ( .INP ( \regfile[11][2] ) , 
    .Z ( copt_net_5358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5590 ( .INP ( copt_net_3474 ) , 
    .Z ( copt_net_3533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5591 ( .INP ( copt_net_3470 ) , 
    .Z ( copt_net_3534 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5592 ( .INP ( copt_net_3472 ) , 
    .Z ( copt_net_3535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5593 ( .INP ( copt_net_3476 ) , 
    .Z ( copt_net_3536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5594 ( .INP ( \regfile[7][6] ) , 
    .Z ( copt_net_3537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5595 ( .INP ( copt_net_3491 ) , 
    .Z ( copt_net_3538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5596 ( .INP ( copt_net_3481 ) , 
    .Z ( copt_net_3539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5597 ( .INP ( copt_net_3489 ) , 
    .Z ( copt_net_3540 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5598 ( .INP ( copt_net_3487 ) , 
    .Z ( copt_net_3541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5599 ( .INP ( copt_net_3477 ) , 
    .Z ( copt_net_3542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5600 ( .INP ( copt_net_3493 ) , 
    .Z ( copt_net_3543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5601 ( .INP ( copt_net_3483 ) , 
    .Z ( copt_net_3544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9103 ( .INP ( copt_net_5343 ) , 
    .Z ( copt_net_5359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9105 ( .INP ( dftopt13_gOb27 ) , 
    .Z ( copt_net_5361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5604 ( .INP ( copt_net_3494 ) , 
    .Z ( copt_net_3547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5605 ( .INP ( copt_net_3488 ) , 
    .Z ( copt_net_3548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5606 ( .INP ( copt_net_3490 ) , 
    .Z ( copt_net_3549 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5607 ( .INP ( n276 ) , .Z ( copt_net_3550 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5608 ( .INP ( copt_net_3486 ) , 
    .Z ( copt_net_3551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5609 ( .INP ( copt_net_3496 ) , 
    .Z ( copt_net_3552 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5610 ( .INP ( copt_net_3500 ) , 
    .Z ( copt_net_3553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5611 ( .INP ( copt_net_3495 ) , 
    .Z ( copt_net_3554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9106 ( .INP ( \regfile[14][2] ) , 
    .Z ( copt_net_5362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5613 ( .INP ( copt_net_3506 ) , 
    .Z ( copt_net_3556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5614 ( .INP ( copt_net_3499 ) , 
    .Z ( copt_net_3557 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5615 ( .INP ( copt_net_3507 ) , 
    .Z ( copt_net_3558 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5616 ( .INP ( copt_net_3504 ) , 
    .Z ( copt_net_3559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_5617 ( .INP ( n200 ) , .Z ( copt_net_3560 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9108 ( .INP ( copt_net_5348 ) , 
    .Z ( copt_net_5364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9109 ( .INP ( dftopt18_gOb4 ) , 
    .Z ( copt_net_5365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5620 ( .INP ( copt_net_3510 ) , 
    .Z ( copt_net_3563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5621 ( .INP ( copt_net_3503 ) , 
    .Z ( copt_net_3564 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5622 ( .INP ( copt_net_3505 ) , 
    .Z ( copt_net_3565 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5623 ( .INP ( copt_net_3517 ) , 
    .Z ( copt_net_3566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5626 ( .INP ( copt_net_3508 ) , 
    .Z ( copt_net_3569 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5627 ( .INP ( copt_net_3407 ) , 
    .Z ( copt_net_3570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5628 ( .INP ( copt_net_5213 ) , 
    .Z ( copt_net_3571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5629 ( .INP ( copt_net_3515 ) , 
    .Z ( copt_net_3572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5630 ( .INP ( copt_net_3511 ) , 
    .Z ( copt_net_3573 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5631 ( .INP ( copt_net_3512 ) , 
    .Z ( copt_net_3574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5632 ( .INP ( copt_net_3514 ) , 
    .Z ( copt_net_3575 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5633 ( .INP ( copt_net_3424 ) , 
    .Z ( copt_net_3576 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5634 ( .INP ( copt_net_3304 ) , 
    .Z ( copt_net_3577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9110 ( .INP ( \regfile[13][7] ) , 
    .Z ( copt_net_5366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5636 ( .INP ( copt_net_3522 ) , 
    .Z ( copt_net_3579 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5637 ( .INP ( copt_net_3333 ) , 
    .Z ( copt_net_3580 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5638 ( .INP ( copt_net_3519 ) , 
    .Z ( copt_net_3581 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9111 ( .INP ( n219 ) , .Z ( copt_net_5367 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9115 ( .INP ( \regfile[8][7] ) , 
    .Z ( copt_net_5371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5641 ( .INP ( copt_net_3520 ) , 
    .Z ( copt_net_3584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5642 ( .INP ( copt_net_3528 ) , 
    .Z ( copt_net_3585 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5643 ( .INP ( copt_net_3525 ) , 
    .Z ( copt_net_3586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5644 ( .INP ( copt_net_3527 ) , 
    .Z ( copt_net_3587 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5645 ( .INP ( copt_net_3524 ) , 
    .Z ( copt_net_3588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5646 ( .INP ( copt_net_3535 ) , 
    .Z ( copt_net_3589 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5647 ( .INP ( copt_net_3526 ) , 
    .Z ( copt_net_3590 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5648 ( .INP ( copt_net_3537 ) , 
    .Z ( copt_net_3591 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5649 ( .INP ( copt_net_3534 ) , 
    .Z ( copt_net_3592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5650 ( .INP ( copt_net_3540 ) , 
    .Z ( copt_net_3593 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9116 ( .INP ( copt_net_5317 ) , 
    .Z ( copt_net_5372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5652 ( .INP ( copt_net_3538 ) , 
    .Z ( copt_net_3595 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5653 ( .INP ( copt_net_3542 ) , 
    .Z ( copt_net_3596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5654 ( .INP ( copt_net_3469 ) , 
    .Z ( copt_net_3597 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9118 ( .INP ( \regfile[9][7] ) , 
    .Z ( copt_net_5374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9120 ( .INP ( copt_net_5325 ) , 
    .Z ( copt_net_5376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5657 ( .INP ( copt_net_3544 ) , 
    .Z ( copt_net_3600 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5658 ( .INP ( copt_net_3533 ) , 
    .Z ( copt_net_3601 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5659 ( .INP ( copt_net_3498 ) , 
    .Z ( copt_net_3602 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5660 ( .INP ( copt_net_3536 ) , 
    .Z ( copt_net_3603 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9121 ( .INP ( copt_net_5349 ) , 
    .Z ( copt_net_5377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5662 ( .INP ( copt_net_3548 ) , 
    .Z ( copt_net_3605 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5663 ( .INP ( copt_net_3549 ) , 
    .Z ( copt_net_3606 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5664 ( .INP ( copt_net_3553 ) , 
    .Z ( copt_net_3607 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5665 ( .INP ( copt_net_3539 ) , 
    .Z ( copt_net_3608 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5666 ( .INP ( copt_net_3556 ) , 
    .Z ( copt_net_3609 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5667 ( .INP ( copt_net_3380 ) , 
    .Z ( copt_net_3610 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9123 ( .INP ( copt_net_5372 ) , 
    .Z ( copt_net_5379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5669 ( .INP ( copt_net_3551 ) , 
    .Z ( copt_net_3612 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5670 ( .INP ( copt_net_3564 ) , 
    .Z ( copt_net_3613 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5671 ( .INP ( copt_net_5231 ) , 
    .Z ( copt_net_3614 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_5672 ( .INP ( copt_net_3492 ) , 
    .Z ( copt_net_3615 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9124 ( .INP ( copt_net_5376 ) , 
    .Z ( copt_net_5380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5674 ( .INP ( dftopt43 ) , .Z ( copt_net_3617 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5675 ( .INP ( copt_net_3554 ) , 
    .Z ( copt_net_3618 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5676 ( .INP ( copt_net_3559 ) , 
    .Z ( copt_net_3619 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5677 ( .INP ( copt_net_3574 ) , 
    .Z ( copt_net_3620 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5678 ( .INP ( copt_net_5240 ) , 
    .Z ( copt_net_3621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5679 ( .INP ( copt_net_3575 ) , 
    .Z ( copt_net_3622 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5680 ( .INP ( copt_net_3557 ) , 
    .Z ( copt_net_3623 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5681 ( .INP ( copt_net_3566 ) , 
    .Z ( copt_net_3624 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5682 ( .INP ( copt_net_3563 ) , 
    .Z ( copt_net_3625 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9125 ( .INP ( copt_net_5283 ) , 
    .Z ( copt_net_5381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9127 ( .INP ( copt_net_5377 ) , 
    .Z ( copt_net_5383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9129 ( .INP ( copt_net_5379 ) , 
    .Z ( copt_net_5385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9132 ( .INP ( copt_net_5380 ) , 
    .Z ( copt_net_5388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9133 ( .INP ( copt_net_5383 ) , 
    .Z ( copt_net_5389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9135 ( .INP ( copt_net_5385 ) , 
    .Z ( copt_net_5391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9136 ( .INP ( \regfile[8][5] ) , 
    .Z ( copt_net_5392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_9137 ( .INP ( \regfile[9][5] ) , 
    .Z ( copt_net_5393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9138 ( .INP ( n265 ) , .Z ( copt_net_5394 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5692 ( .INP ( copt_net_3565 ) , 
    .Z ( copt_net_3635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5693 ( .INP ( copt_net_3581 ) , 
    .Z ( copt_net_3636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9139 ( .INP ( n266 ) , .Z ( copt_net_5395 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5695 ( .INP ( copt_net_3572 ) , 
    .Z ( copt_net_3638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5696 ( .INP ( copt_net_3586 ) , 
    .Z ( copt_net_3639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5697 ( .INP ( copt_net_3570 ) , 
    .Z ( copt_net_3640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5698 ( .INP ( copt_net_3587 ) , 
    .Z ( copt_net_3641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9142 ( .INP ( \regfile[6][5] ) , 
    .Z ( copt_net_5398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5700 ( .INP ( copt_net_3573 ) , 
    .Z ( copt_net_3643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5701 ( .INP ( copt_net_3530 ) , 
    .Z ( copt_net_3644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5702 ( .INP ( copt_net_3579 ) , 
    .Z ( copt_net_3645 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5703 ( .INP ( copt_net_3576 ) , 
    .Z ( copt_net_3646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9143 ( .INP ( \regfile[14][5] ) , 
    .Z ( copt_net_5399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5705 ( .INP ( copt_net_3541 ) , 
    .Z ( copt_net_3648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5706 ( .INP ( copt_net_3585 ) , 
    .Z ( copt_net_3649 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5707 ( .INP ( copt_net_3595 ) , 
    .Z ( copt_net_3650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9144 ( .INP ( \regfile[15][5] ) , 
    .Z ( copt_net_5400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9145 ( .INP ( n392 ) , .Z ( copt_net_5401 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5710 ( .INP ( copt_net_3584 ) , 
    .Z ( copt_net_3653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5711 ( .INP ( copt_net_3591 ) , 
    .Z ( copt_net_3654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5712 ( .INP ( copt_net_3589 ) , 
    .Z ( copt_net_3655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5713 ( .INP ( copt_net_3588 ) , 
    .Z ( copt_net_3656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9146 ( .INP ( \regfile[4][5] ) , 
    .Z ( copt_net_5402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5715 ( .INP ( copt_net_3592 ) , 
    .Z ( copt_net_3658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5716 ( .INP ( copt_net_3552 ) , 
    .Z ( copt_net_3659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5717 ( .INP ( copt_net_3590 ) , 
    .Z ( copt_net_3660 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5718 ( .INP ( copt_net_3607 ) , 
    .Z ( copt_net_3661 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9147 ( .INP ( dftopt21 ) , .Z ( copt_net_5403 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5720 ( .INP ( copt_net_3596 ) , 
    .Z ( copt_net_3663 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5721 ( .INP ( copt_net_3602 ) , 
    .Z ( copt_net_3664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5722 ( .INP ( copt_net_3600 ) , 
    .Z ( copt_net_3665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5723 ( .INP ( copt_net_3601 ) , 
    .Z ( copt_net_3666 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5724 ( .INP ( copt_net_3613 ) , 
    .Z ( copt_net_3667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5725 ( .INP ( copt_net_3605 ) , 
    .Z ( copt_net_3668 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5726 ( .INP ( copt_net_3597 ) , 
    .Z ( copt_net_3669 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9148 ( .INP ( \regfile[13][5] ) , 
    .Z ( copt_net_5404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5728 ( .INP ( copt_net_3606 ) , 
    .Z ( copt_net_3671 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_9149 ( .INP ( \regfile[7][5] ) , 
    .Z ( copt_net_5405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9150 ( .INP ( REG0[5] ) , .Z ( copt_net_5406 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5731 ( .INP ( copt_net_3497 ) , 
    .Z ( copt_net_3674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5733 ( .INP ( copt_net_3569 ) , 
    .Z ( copt_net_3676 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5734 ( .INP ( copt_net_3608 ) , 
    .Z ( copt_net_3677 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5736 ( .INP ( copt_net_3612 ) , 
    .Z ( copt_net_3679 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5737 ( .INP ( copt_net_3620 ) , 
    .Z ( copt_net_3680 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5738 ( .INP ( copt_net_3622 ) , 
    .Z ( copt_net_3681 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5739 ( .INP ( copt_net_3615 ) , 
    .Z ( copt_net_3682 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5740 ( .INP ( copt_net_3619 ) , 
    .Z ( copt_net_3683 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5741 ( .INP ( copt_net_3625 ) , 
    .Z ( copt_net_3684 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5742 ( .INP ( copt_net_3618 ) , 
    .Z ( copt_net_3685 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5743 ( .INP ( copt_net_3636 ) , 
    .Z ( copt_net_3686 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5744 ( .INP ( copt_net_3638 ) , 
    .Z ( copt_net_3687 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5745 ( .INP ( copt_net_3635 ) , 
    .Z ( copt_net_3688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5746 ( .INP ( copt_net_3639 ) , 
    .Z ( copt_net_3689 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5748 ( .INP ( copt_net_3640 ) , 
    .Z ( copt_net_3691 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5750 ( .INP ( copt_net_3641 ) , 
    .Z ( copt_net_3693 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5751 ( .INP ( copt_net_3645 ) , 
    .Z ( copt_net_3694 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5752 ( .INP ( copt_net_3643 ) , 
    .Z ( copt_net_3695 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5753 ( .INP ( copt_net_3646 ) , 
    .Z ( copt_net_3696 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5755 ( .INP ( copt_net_3649 ) , 
    .Z ( copt_net_3698 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5756 ( .INP ( copt_net_3650 ) , 
    .Z ( copt_net_3699 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5758 ( .INP ( REG2[0] ) , .Z ( copt_net_3701 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5762 ( .INP ( copt_net_3656 ) , 
    .Z ( copt_net_3705 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5764 ( .INP ( copt_net_3660 ) , 
    .Z ( copt_net_3707 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5765 ( .INP ( copt_net_3659 ) , 
    .Z ( copt_net_3708 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5768 ( .INP ( copt_net_3603 ) , 
    .Z ( copt_net_3711 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5770 ( .INP ( copt_net_3666 ) , 
    .Z ( copt_net_3713 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5772 ( .INP ( copt_net_3669 ) , 
    .Z ( copt_net_3715 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5773 ( .INP ( copt_net_3665 ) , 
    .Z ( copt_net_3716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5774 ( .INP ( copt_net_3676 ) , 
    .Z ( copt_net_3717 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5775 ( .INP ( copt_net_3677 ) , 
    .Z ( copt_net_3718 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5776 ( .INP ( copt_net_3668 ) , 
    .Z ( copt_net_3719 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5777 ( .INP ( copt_net_3671 ) , 
    .Z ( copt_net_3720 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5778 ( .INP ( copt_net_3679 ) , 
    .Z ( copt_net_3721 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5779 ( .INP ( copt_net_3680 ) , 
    .Z ( copt_net_3722 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5780 ( .INP ( copt_net_3681 ) , 
    .Z ( copt_net_3723 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5784 ( .INP ( copt_net_3685 ) , 
    .Z ( copt_net_3727 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5785 ( .INP ( copt_net_3686 ) , 
    .Z ( copt_net_3728 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5786 ( .INP ( copt_net_3684 ) , 
    .Z ( copt_net_3729 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5787 ( .INP ( copt_net_3623 ) , 
    .Z ( copt_net_3730 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5789 ( .INP ( copt_net_3687 ) , 
    .Z ( copt_net_3732 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5791 ( .INP ( copt_net_3688 ) , 
    .Z ( copt_net_3734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5792 ( .INP ( copt_net_5216 ) , 
    .Z ( copt_net_3735 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5794 ( .INP ( copt_net_3691 ) , 
    .Z ( copt_net_3737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5795 ( .INP ( copt_net_3698 ) , 
    .Z ( copt_net_3738 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5796 ( .INP ( copt_net_3695 ) , 
    .Z ( copt_net_3739 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5797 ( .INP ( copt_net_3696 ) , 
    .Z ( copt_net_3740 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5800 ( .INP ( REG3[4] ) , .Z ( copt_net_3743 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5803 ( .INP ( copt_net_3705 ) , 
    .Z ( copt_net_3746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5804 ( .INP ( copt_net_3716 ) , 
    .Z ( copt_net_3747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 PLACE_copt_h_inst_5805 ( .INP ( copt_net_3707 ) , 
    .Z ( copt_net_3748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5806 ( .INP ( copt_net_3719 ) , 
    .Z ( copt_net_3749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5807 ( .INP ( copt_net_3720 ) , 
    .Z ( copt_net_3750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5808 ( .INP ( copt_net_3711 ) , 
    .Z ( copt_net_3751 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5809 ( .INP ( copt_net_3610 ) , 
    .Z ( copt_net_3752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_5811 ( .INP ( copt_net_5259 ) , 
    .Z ( copt_net_3754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5814 ( .INP ( copt_net_3715 ) , 
    .Z ( copt_net_3757 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5815 ( .INP ( copt_net_3729 ) , 
    .Z ( copt_net_3758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5817 ( .INP ( copt_net_3721 ) , 
    .Z ( copt_net_3760 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5819 ( .INP ( copt_net_3727 ) , 
    .Z ( copt_net_3762 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 PLACE_copt_h_inst_5820 ( .INP ( copt_net_3730 ) , 
    .Z ( copt_net_3763 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5821 ( .INP ( copt_net_3734 ) , 
    .Z ( copt_net_3764 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2 PLACE_copt_h_inst_5823 ( .INP ( copt_net_3739 ) , 
    .Z ( copt_net_3766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_copt_d_inst_5846 ( .INP ( copt_net_2866 ) , 
    .ZN ( copt_net_3771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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


module ClkDiv_1 ( cts1 , i_rst_n , i_div_ratio , i_clk_en , o_div_clk , 
    test_si , test_so , dftopt13 , VDD , VSS , dftopt0 , dftopt2 , dftopt10 , 
    dftopt1 , p0 , PLACE_HFSNET_59 , PLACE_HFSNET_122 , PLACE_HFSNET_124 , 
    p1 , p2 , p3 , cts3 , cts2 , dftopt33 , dftopt3 , \counter[0] , p4 , p5 , 
    p6 , dftopt4 , p7 , p8 , p9 , p10 ) ;
input  cts1 ;
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
input  cts3 ;
input  cts2 ;
input  dftopt33 ;
input  dftopt3 ;
output \counter[0] ;
input  p4 ;
input  p5 ;
input  p6 ;
input  dftopt4 ;
input  p7 ;
input  p8 ;
input  p9 ;
input  p10 ;

wire test_so_gOb28 ;
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
wire [6:1] counter ;
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
AO21X1 U24 ( .IN1 ( p8 ) , .IN2 ( n6 ) , .IN3 ( n2 ) , 
    .Q ( toggle_at_half[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U26 ( .IN1 ( p7 ) , .IN2 ( n7 ) , .IN3 ( n3 ) , 
    .Q ( toggle_at_half[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U28 ( .IN1 ( p7 ) , .IN2 ( n8 ) , .IN3 ( n4 ) , 
    .Q ( toggle_at_half[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1 U29 ( .IN1 ( p7 ) , .IN2 ( n9 ) , .Q ( toggle_at_half[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U31 ( .IN1 ( p7 ) , .IN2 ( n5 ) , .Q ( toggle_at_half[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X2 U32 ( .IN1 ( cts1 ) , .IN2 ( dftopt2 ) , .S ( N1 ) , 
    .Q ( o_div_clk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 U33 ( .IN1 ( n10 ) , .IN2 ( test_so_gOb28 ) , .Q ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
MUX21X1 U43 ( .IN1 ( n14 ) , .IN2 ( n15 ) , .S ( test_so_gOb28 ) , 
    .Q ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
AND2X1 U56 ( .IN1 ( p10 ) , .IN2 ( n32 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U57 ( .IN1 ( p9 ) , .IN2 ( i_div_ratio[2] ) , .IN3 ( i_div_ratio[1] ) , 
    .IN4 ( p9 ) , .Q ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_APS_CLK_ISO_37 ( .INP ( dftopt2 ) , .Z ( net_aps_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( counter[3] ) , 
    .SE ( PLACE_HFSNET_122 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( \counter[0] ) , .QN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( dftopt3 ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[6] ) , .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n41 ) , .SI ( counter[2] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( i_rst_n ) , 
    .Q ( test_so_gOb28 ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[6] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[5] ) , .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[5] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[4] ) , .QN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[4] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[3] ) , .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[2] ) , .QN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( dftopt4 ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[1] ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n42 ) , .SI ( test_so_gOb28 ) , 
    .SE ( PLACE_HFSNET_123 ) , .CLK ( cts2 ) , .RSTB ( i_rst_n ) , 
    .Q ( dftopt2 ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n1 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U10 ( .IN1 ( n6 ) , .IN2 ( p8 ) , .QN ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n2 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U12 ( .IN1 ( n7 ) , .IN2 ( p8 ) , .QN ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U20 ( .IN1 ( i_div_ratio[2] ) , .IN2 ( i_div_ratio[1] ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n3 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U23 ( .IN1 ( n8 ) , .IN2 ( p7 ) , .QN ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n4 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U27 ( .IN1 ( p7 ) , .IN2 ( n9 ) , .QN ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( i_div_ratio[1] ) , .ZN ( toggle_at_half[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U42 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .IN3 ( n26 ) , .IN4 ( n27 ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0 U44 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .IN3 ( n18 ) , .IN4 ( n19 ) , 
    .QN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n10 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_1_DW01_inc_0 add_30 (
    .A ( { counter[6] , counter[5] , counter[4] , counter[3] , counter[2] , 
        counter[1] , \counter[0] } ) ,
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


module ClkDiv_0 ( cts1 , i_rst_n , i_div_ratio , i_clk_en , o_div_clk , 
    test_si , test_so , test_se , VDD , VSS , dftopt0 , p2 , PLACE_HFSNET_58 , 
    PLACE_HFSNET_123 , dftopt2 , \counter[0] , dftopt1 , dftopt3 , dftopt4 , 
    p0 , cts3 , cts2 , p10 , \counter[3] , dftopt5 ) ;
input  cts1 ;
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
input  p2 ;
input  PLACE_HFSNET_58 ;
input  PLACE_HFSNET_123 ;
input  dftopt2 ;
output \counter[0] ;
input  dftopt1 ;
output dftopt3 ;
input  dftopt4 ;
input  p0 ;
input  cts3 ;
input  cts2 ;
input  p10 ;
output \counter[3] ;
input  dftopt5 ;

wire test_so_gOb8 ;
wire odd_flag_toggle ;
wire cts0 ;
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
assign counter[3] = \counter[3] ;

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
MUX21X2 U33 ( .IN1 ( cts1 ) , .IN2 ( dftopt3 ) , .S ( N1 ) , 
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
AND2X1 U58 ( .IN1 ( p10 ) , .IN2 ( n33 ) , .Q ( N1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U59 ( .IN1 ( i_div_ratio[3] ) , .IN2 ( i_div_ratio[2] ) , 
    .IN3 ( i_div_ratio[1] ) , .IN4 ( n34 ) , .Q ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR4X1 U60 ( .IN1 ( i_div_ratio[5] ) , .IN2 ( i_div_ratio[4] ) , 
    .IN3 ( i_div_ratio[7] ) , .IN4 ( i_div_ratio[6] ) , .Q ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( N24 ) , .SI ( counter[2] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( \counter[0] ) , .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[6] ( .D ( N30 ) , .SI ( test_so_gOb8 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( i_rst_n ) , 
    .Q ( counter[6] ) , .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 odd_flag_toggle_reg ( .D ( n12 ) , .SI ( dftopt4 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( i_rst_n ) , 
    .Q ( test_so_gOb8 ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[5] ( .D ( N29 ) , .SI ( counter[4] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[5] ) , .QN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[4] ( .D ( N28 ) , .SI ( counter[6] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[4] ) , .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( N27 ) , .SI ( counter[5] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( \counter[3] ) , .QN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( N26 ) , .SI ( counter[1] ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[2] ) , .QN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( N25 ) , .SI ( cts0 ) , 
    .SE ( PLACE_HFSNET_120 ) , .CLK ( cts3 ) , .RSTB ( PLACE_HFSNET_58 ) , 
    .Q ( counter[1] ) , .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 div_clk_reg ( .D ( n11 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( cts2 ) , .RSTB ( i_rst_n ) , .Q ( dftopt3 ) , 
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
INVX0 U47 ( .INP ( n13 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ClkDiv_0_DW01_inc_0 add_30 (
    .A ( { counter[6] , counter[5] , counter[4] , \counter[3] , counter[2] , 
        counter[1] , \counter[0] } ) ,
    .SUM ( { N23 , N22 , N21 , N20 , N19 , N18 , N17 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 CTS_dftopt2_btd1734 ( .INP ( dftopt2 ) , .Z ( cts0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2 PLACE_APS_CLK_ISO_36 ( .INP ( dftopt3 ) , .Z ( net_aps_18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_1 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS , 
    dftopt0 , dftopt1 , dftopt2 , dftopt3 , p0 , p2 , p10 ) ;
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
input  p2 ;
input  p10 ;

wire cts0 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( p10 ) , .SI ( cts0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt1 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_rst_reg[1] ( .D ( dftopt1 ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( SYNC_RST ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 CTS_dftopt3_btd1733 ( .INP ( dftopt3 ) , .Z ( cts0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module RST_SYNC_0 ( RST , CLK , SYNC_RST , test_si , test_se , VDD , VSS , 
    dftopt1 , dftopt0 , dftopt15 , p0 , p2 , dftopt2 , dftopt3 , p10 ) ;
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
input  p2 ;
output dftopt2 ;
input  dftopt3 ;
input  p10 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;

SDFFARX1 \sync_rst_reg[0] ( .D ( p10 ) , .SI ( dftopt15 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \sync_rst_reg[1] ( .D ( dftopt2 ) , .SI ( dftopt3 ) , 
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
wire copt_net_2829 ;
wire copt_net_2830 ;
wire copt_net_2831 ;
wire copt_net_2832 ;
wire copt_net_2833 ;
wire copt_net_2834 ;
wire copt_net_2835 ;
wire copt_net_2836 ;
wire copt_net_2837 ;

MUX21X2 U2 ( .IN1 ( in_1 ) , .IN2 ( copt_net_2837 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4851 ( .INP ( in_0 ) , .Z ( copt_net_2829 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4852 ( .INP ( copt_net_2829 ) , 
    .Z ( copt_net_2830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4853 ( .INP ( copt_net_2830 ) , 
    .Z ( copt_net_2831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4854 ( .INP ( copt_net_2831 ) , 
    .Z ( copt_net_2832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4855 ( .INP ( copt_net_2832 ) , 
    .Z ( copt_net_2833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4856 ( .INP ( copt_net_2833 ) , 
    .Z ( copt_net_2834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4857 ( .INP ( copt_net_2834 ) , 
    .Z ( copt_net_2835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4858 ( .INP ( copt_net_2835 ) , 
    .Z ( copt_net_2836 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4859 ( .INP ( copt_net_2836 ) , 
    .Z ( copt_net_2837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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

MUX21X2 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
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

MUX21X2 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Mux2x1_1 ( in_0 , in_1 , sel , p_abuf77 , VDD , VSS , p_abuf78 , 
    p_abuf79 , p_abuf80 , p_abuf81 , p_abuf82 , p_abuf38 ) ;
input  in_0 ;
input  in_1 ;
input  sel ;
output p_abuf77 ;
input  VDD ;
input  VSS ;
output p_abuf78 ;
output p_abuf79 ;
output p_abuf80 ;
output p_abuf81 ;
output p_abuf82 ;
output p_abuf38 ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;
wire ctsbuf_net_73794 ;
wire ctsbuf_net_83795 ;
wire ctsbuf_net_93796 ;
wire ctsbuf_net_113798 ;
wire ctsbuf_net_173804 ;
wire ctsbuf_net_183805 ;
wire ctsbuf_net_213808 ;
wire ctsbuf_net_223809 ;
wire ctsbuf_net_233810 ;
wire ctsbuf_net_243811 ;
wire ctsbuf_net_253812 ;
wire ctsbuf_net_263813 ;
wire ctsbuf_net_273814 ;
wire ctsbuf_net_283815 ;
wire cts0 ;

MUX21X2 U2 ( .IN1 ( in_1 ) , .IN2 ( in_0 ) , .S ( N0 ) , .Q ( p_abuf82 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( sel ) , .ZN ( N0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 CTS_cts_inv_9776838 ( .INP ( ctsbuf_net_83795 ) , .ZN ( p_abuf38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8 CTS_cts_inv_9796840 ( .INP ( ctsbuf_net_93796 ) , .ZN ( p_abuf78 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8 CTS_cts_inv_9816842 ( .INP ( ctsbuf_net_113798 ) , .ZN ( p_abuf80 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX8 CTS_cts_inv_9826843 ( .INP ( ctsbuf_net_73794 ) , .ZN ( p_abuf81 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 CTS_cts_inv_10076868 ( .INP ( p_abuf82 ) , .ZN ( ctsbuf_net_73794 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 CTS_cts_inv_10086869 ( .INP ( cts0 ) , .ZN ( ctsbuf_net_83795 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8 CTS_cts_inv_10096870 ( .INP ( ctsbuf_net_243811 ) , 
    .ZN ( ctsbuf_net_93796 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16 CTS_cts_inv_10116872 ( .INP ( ctsbuf_net_223809 ) , 
    .ZN ( ctsbuf_net_113798 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4 CTS_cts_inv_10316892 ( .INP ( ctsbuf_net_173804 ) , .ZN ( p_abuf79 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4 CTS_cts_inv_10326893 ( .INP ( ctsbuf_net_183805 ) , .ZN ( p_abuf77 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4 CTS_cts_inv_10496910 ( .INP ( ctsbuf_net_213808 ) , 
    .ZN ( ctsbuf_net_173804 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4 CTS_cts_inv_10506911 ( .INP ( ctsbuf_net_233810 ) , 
    .ZN ( ctsbuf_net_183805 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 CTS_cts_inv_10696930 ( .INP ( ctsbuf_net_273814 ) , 
    .ZN ( ctsbuf_net_213808 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16 CTS_cts_inv_10706931 ( .INP ( ctsbuf_net_283815 ) , 
    .ZN ( ctsbuf_net_223809 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 CTS_cts_inv_10716932 ( .INP ( ctsbuf_net_263813 ) , 
    .ZN ( ctsbuf_net_233810 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX32 CTS_cts_inv_10726933 ( .INP ( ctsbuf_net_253812 ) , 
    .ZN ( ctsbuf_net_243811 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16 CTS_cts_inv_10896950 ( .INP ( p_abuf82 ) , 
    .ZN ( ctsbuf_net_253812 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 CTS_cts_inv_10906951 ( .INP ( p_abuf82 ) , .ZN ( ctsbuf_net_263813 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 CTS_cts_inv_10916952 ( .INP ( p_abuf82 ) , .ZN ( ctsbuf_net_273814 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16 CTS_cts_inv_10926953 ( .INP ( p_abuf82 ) , 
    .ZN ( ctsbuf_net_283815 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 CTS_cto_buf_7382 ( .INP ( p_abuf82 ) , .Z ( cts0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
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

wire optlc_net_5162 ;
wire dftopt34 ;
wire dftopt35 ;
wire cts0 ;
wire p_abuf39 ;
wire dftopt3 ;
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
wire p_abuf79 ;
wire PLACE_HFSNET_54 ;
wire dftopt41 ;
wire PLACE_HFSNET_58 ;
wire PLACE_HFSNET_28 ;
wire PLACE_HFSNET_30 ;
wire PLACE_HFSNET_40 ;
wire n17 ;
wire PLACE_HFSNET_49 ;
wire PLACE_HFSNET_50 ;
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
wire dftopt44 ;
wire [7:0] Wr_D ;
wire [3:0] Addr ;
wire [7:0] Rd_D ;
wire p_abuf80 ;
wire dftopt46 ;
wire dftopt47 ;
wire p_abuf81 ;
wire p_abuf82 ;
wire p_abuf83 ;
wire cts1 ;
wire cts2 ;
wire cts3 ;
wire cts4 ;
wire dftopt55 ;
wire dftopt56 ;
wire cts5 ;
wire dftopt8 ;
wire optlc_net_5163 ;
wire [7:0] RD_DATA ;
wire [7:0] RX_P_DATA ;
wire [7:0] SYNC_RX_P_DATA ;
wire [15:0] ALU_OUT ;
wire aps_rename_14_ ;
wire [3:0] FUN ;
wire [7:0] WR_DATA ;
wire PLACE_HFSNET_91 ;
wire PLACE_HFSNET_92 ;
wire PLACE_HFSNET_93 ;
wire PLACE_HFSNET_94 ;
wire PLACE_HFSNET_95 ;
supply1 VDD ;
supply0 VSS ;
wire optlc_net_5164 ;
wire optlc_net_5165 ;
wire optlc_net_5166 ;
wire optlc_net_5167 ;
wire optlc_net_5168 ;
wire optlc_net_5169 ;
wire optlc_net_5170 ;
wire optlc_net_5171 ;
wire optlc_net_5172 ;
wire optlc_net_5173 ;
wire optlc_net_5174 ;
wire optlc_net_5175 ;
wire optlc_net_5176 ;
wire optlc_net_5177 ;
wire optlc_net_5178 ;
wire optlc_net_5179 ;
wire optlc_net_5180 ;
wire dftopt15 ;
wire dftopt2 ;
wire dftopt24 ;
wire dftopt4 ;
wire dftopt45 ;
wire dftopt7 ;
wire dftopt1 ;
wire dftopt13 ;
wire dftopt18 ;
wire dftopt48 ;
wire dftopt10 ;
wire dftopt14 ;
wire dftopt49 ;
wire dftopt19 ;
wire optlc_net_5181 ;
wire optlc_net_5182 ;
wire dftopt20 ;
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
wire optlc_net_5183 ;
wire PLACE_HFSNET_167 ;
wire PLACE_HFSNET_169 ;
wire optlc_net_5184 ;
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
wire optlc_net_5185 ;
wire optlc_net_5186 ;
wire copt_net_2819 ;
wire copt_net_2820 ;
wire copt_net_2821 ;
wire copt_net_2822 ;
wire copt_net_2823 ;
wire copt_net_2824 ;
wire copt_net_2825 ;
wire copt_net_2827 ;
wire copt_net_2828 ;
wire copt_net_2904 ;
wire copt_net_2906 ;
wire copt_net_2907 ;
wire copt_net_2916 ;
wire copt_net_3115 ;
wire copt_net_3116 ;
wire copt_net_3117 ;
wire p_abuf84 ;
wire dftopt21 ;
wire dftopt22 ;
wire dftopt23 ;
wire dftopt25 ;
wire dftopt53 ;
wire copt_net_5390 ;
wire copt_net_5396 ;
wire copt_net_5397 ;
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
wire SYNOPSYS_UNCONNECTED_120 ;
wire SYNOPSYS_UNCONNECTED_121 ;
wire SYNOPSYS_UNCONNECTED_122 ;
wire SYNOPSYS_UNCONNECTED_123 ;
wire SYNOPSYS_UNCONNECTED_124 ;
wire SYNOPSYS_UNCONNECTED_125 ;
wire SYNOPSYS_UNCONNECTED_126 ;
wire SYNOPSYS_UNCONNECTED_127 ;
wire SYNOPSYS_UNCONNECTED_128 ;
wire SYNOPSYS_UNCONNECTED_129 ;
wire SYNOPSYS_UNCONNECTED_130 ;
wire SYNOPSYS_UNCONNECTED_131 ;
wire SYNOPSYS_UNCONNECTED_132 ;
wire SYNOPSYS_UNCONNECTED_133 ;
wire SYNOPSYS_UNCONNECTED_134 ;
wire SYNOPSYS_UNCONNECTED_135 ;
wire SYNOPSYS_UNCONNECTED_136 ;
wire SYNOPSYS_UNCONNECTED_137 ;
wire SYNOPSYS_UNCONNECTED_138 ;
wire SYNOPSYS_UNCONNECTED_139 ;
wire SYNOPSYS_UNCONNECTED_140 ;
wire SYNOPSYS_UNCONNECTED_141 ;
wire SYNOPSYS_UNCONNECTED_142 ;
wire SYNOPSYS_UNCONNECTED_143 ;
wire SYNOPSYS_UNCONNECTED_144 ;
wire SYNOPSYS_UNCONNECTED_145 ;
wire SYNOPSYS_UNCONNECTED_146 ;
wire SYNOPSYS_UNCONNECTED_147 ;
wire SYNOPSYS_UNCONNECTED_148 ;
wire SYNOPSYS_UNCONNECTED_149 ;
wire SYNOPSYS_UNCONNECTED_150 ;
wire SYNOPSYS_UNCONNECTED_151 ;
wire SYNOPSYS_UNCONNECTED_152 ;
wire SYNOPSYS_UNCONNECTED_153 ;
wire SYNOPSYS_UNCONNECTED_154 ;
wire SYNOPSYS_UNCONNECTED_155 ;
wire SYNOPSYS_UNCONNECTED_156 ;
wire SYNOPSYS_UNCONNECTED_157 ;
wire SYNOPSYS_UNCONNECTED_158 ;
wire SYNOPSYS_UNCONNECTED_159 ;
wire SYNOPSYS_UNCONNECTED_160 ;
wire SYNOPSYS_UNCONNECTED_161 ;
wire SYNOPSYS_UNCONNECTED_162 ;
wire SYNOPSYS_UNCONNECTED_163 ;
wire SYNOPSYS_UNCONNECTED_164 ;
wire SYNOPSYS_UNCONNECTED_165 ;
wire SYNOPSYS_UNCONNECTED_166 ;
wire SYNOPSYS_UNCONNECTED_167 ;
wire SYNOPSYS_UNCONNECTED_168 ;
wire SYNOPSYS_UNCONNECTED_169 ;
wire SYNOPSYS_UNCONNECTED_170 ;
wire SYNOPSYS_UNCONNECTED_171 ;
wire SYNOPSYS_UNCONNECTED_172 ;
wire SYNOPSYS_UNCONNECTED_173 ;
wire SYNOPSYS_UNCONNECTED_174 ;
wire SYNOPSYS_UNCONNECTED_175 ;
wire SYNOPSYS_UNCONNECTED_176 ;
wire SYNOPSYS_UNCONNECTED_177 ;
wire SYNOPSYS_UNCONNECTED_178 ;
wire SYNOPSYS_UNCONNECTED_179 ;
wire SYNOPSYS_UNCONNECTED_180 ;
wire SYNOPSYS_UNCONNECTED_181 ;
wire SYNOPSYS_UNCONNECTED_182 ;
wire SYNOPSYS_UNCONNECTED_183 ;
wire SYNOPSYS_UNCONNECTED_184 ;
wire SYNOPSYS_UNCONNECTED_185 ;
wire SYNOPSYS_UNCONNECTED_186 ;
wire SYNOPSYS_UNCONNECTED_187 ;
wire SYNOPSYS_UNCONNECTED_188 ;
wire SYNOPSYS_UNCONNECTED_189 ;
wire SYNOPSYS_UNCONNECTED_190 ;
wire SYNOPSYS_UNCONNECTED_191 ;
wire SYNOPSYS_UNCONNECTED_192 ;
wire SYNOPSYS_UNCONNECTED_193 ;
wire SYNOPSYS_UNCONNECTED_194 ;
wire SYNOPSYS_UNCONNECTED_195 ;
wire SYNOPSYS_UNCONNECTED_196 ;
wire SYNOPSYS_UNCONNECTED_197 ;
wire SYNOPSYS_UNCONNECTED_198 ;
wire SYNOPSYS_UNCONNECTED_199 ;
wire SYNOPSYS_UNCONNECTED_200 ;
wire SYNOPSYS_UNCONNECTED_201 ;
wire SYNOPSYS_UNCONNECTED_202 ;
wire SYNOPSYS_UNCONNECTED_203 ;
wire SYNOPSYS_UNCONNECTED_204 ;
wire SYNOPSYS_UNCONNECTED_205 ;

NBUFFX2 PLACE_HFSBUF_2817_69 ( .INP ( PLACE_HFSNET_30 ) , 
    .Z ( PLACE_HFSNET_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_908_100 ( .INP ( PLACE_HFSNET_60 ) , 
    .Z ( PLACE_HFSNET_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8881 ( .ZN ( optlc_net_5162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_69_110 ( .INP ( PLACE_HFSNET_59 ) , 
    .Z ( PLACE_HFSNET_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3159_72 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 PLACE_HFSINV_907_243 ( .INP ( copt_net_2906 ) , 
    .ZN ( PLACE_HFSNET_164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8883 ( .ZN ( optlc_net_5163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8884 ( .ZN ( optlc_net_5164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 PLACE_HFSINV_350_248 ( .INP ( copt_net_3115 ) , 
    .ZN ( PLACE_HFSNET_169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_1 U0_MUX2x1 ( .in_0 ( FUN_REF_CLK ) , .in_1 ( cts0 ) , 
    .sel ( TEST_MODE ) , .p_abuf77 ( p_abuf79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p_abuf78 ( p_abuf80 ) , .p_abuf79 ( p_abuf81 ) , 
    .p_abuf80 ( p_abuf82 ) , .p_abuf81 ( p_abuf83 ) , .p_abuf82 ( p_abuf84 ) , 
    .p_abuf38 ( p_abuf39 ) ) ;
Mux2x1_4 U1_MUX2x1 ( .in_0 ( FUN_UART_CLK ) , .in_1 ( cts0 ) , 
    .sel ( TEST_MODE ) , .out ( UART_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_3 U2_MUX2x1 ( .in_0 ( FUN_TX_CLK ) , .in_1 ( cts0 ) , 
    .sel ( TEST_MODE ) , .out ( TX_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_2 U3_MUX2x1 ( .in_0 ( FUN_RX_CLK ) , .in_1 ( cts0 ) , 
    .sel ( TEST_MODE ) , .out ( RX_CLK ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_0 U4_MUX2x1 ( .in_0 ( FUN_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( RST ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
Mux2x1_6 U5_MUX2x1 ( .in_0 ( FUN_REF_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( PLACE_HFSNET_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
Mux2x1_5 U6_MUX2x1 ( .in_0 ( FUN_UART_RST ) , .in_1 ( SCAN_RST ) , 
    .sel ( TEST_MODE ) , .out ( PLACE_HFSNET_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
RST_SYNC_0 RST_SYNC_1 ( .RST ( RST ) , .CLK ( p_abuf83 ) , 
    .SYNC_RST ( FUN_REF_RST ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_se ( PLACE_HFSNET_122 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_3 ) , .dftopt15 ( dftopt36 ) , 
    .p0 ( SYNOPSYS_UNCONNECTED_4 ) , .p2 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt2 ( dftopt21 ) , .dftopt3 ( DEF_DIV_RATIO[3] ) , 
    .p10 ( optlc_net_5186 ) ) ;
RST_SYNC_1 RST_SYNC_2 ( .RST ( RST ) , .CLK ( cts4 ) , 
    .SYNC_RST ( FUN_UART_RST ) , .test_si ( SYNOPSYS_UNCONNECTED_6 ) , 
    .test_se ( PLACE_HFSNET_122 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_7 ) , .dftopt1 ( dftopt2 ) , 
    .dftopt2 ( FUN_REF_RST ) , .dftopt3 ( dftopt37 ) , 
    .p0 ( SYNOPSYS_UNCONNECTED_8 ) , .p2 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .p10 ( optlc_net_5186 ) ) ;
ClkDiv_0 TX_CLK_DIV ( .cts1 ( cts1 ) , .i_rst_n ( PLACE_HFSNET_59 ) , 
    .i_div_ratio ( DEF_DIV_RATIO ) , .i_clk_en ( SYNOPSYS_UNCONNECTED_10 ) , 
    .o_div_clk ( FUN_TX_CLK ) , .test_si ( SYNOPSYS_UNCONNECTED_11 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_12 ) , .test_se ( PLACE_HFSNET_122 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .p2 ( SYNOPSYS_UNCONNECTED_14 ) , .PLACE_HFSNET_58 ( PLACE_HFSNET_58 ) , 
    .PLACE_HFSNET_123 ( PLACE_HFSNET_124 ) , .dftopt2 ( dftopt34 ) , 
    .\counter[0] ( dftopt35 ) , .dftopt1 ( FUN_UART_RST ) , 
    .dftopt3 ( dftopt37 ) , .dftopt4 ( dftopt2 ) , 
    .p0 ( SYNOPSYS_UNCONNECTED_15 ) , .cts3 ( cts4 ) , .cts2 ( UART_CLK ) , 
    .p10 ( optlc_net_5186 ) , .\counter[3] ( dftopt10 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_16 ) ) ;
ClkDiv_1 RX_CLK_DIV ( .cts1 ( cts1 ) , .i_rst_n ( PLACE_HFSNET_58 ) ,
    .i_div_ratio ( { SYNOPSYS_UNCONNECTED_17 , SYNOPSYS_UNCONNECTED_18 , 
        SYNOPSYS_UNCONNECTED_19 , SYNOPSYS_UNCONNECTED_20 , 
        SYNOPSYS_UNCONNECTED_21 , DIV_RATIO[2] , DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .i_clk_en ( SYNOPSYS_UNCONNECTED_22 ) , .o_div_clk ( FUN_RX_CLK ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_23 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_25 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_26 ) , .dftopt2 ( dftopt34 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_28 ) , .p0 ( SYNOPSYS_UNCONNECTED_29 ) , 
    .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_122 ( PLACE_HFSNET_123 ) , 
    .PLACE_HFSNET_124 ( PLACE_HFSNET_124 ) , .p1 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .p2 ( SYNOPSYS_UNCONNECTED_31 ) , .p3 ( SYNOPSYS_UNCONNECTED_32 ) , 
    .cts3 ( cts4 ) , .cts2 ( UART_CLK ) , 
    .dftopt33 ( SYNOPSYS_UNCONNECTED_33 ) , .dftopt3 ( dftopt10 ) , 
    .\counter[0] ( dftopt22 ) , .p4 ( SYNOPSYS_UNCONNECTED_34 ) , 
    .p5 ( SYNOPSYS_UNCONNECTED_35 ) , .p6 ( SYNOPSYS_UNCONNECTED_36 ) , 
    .dftopt4 ( SCAN_IN_3 ) , .p7 ( optlc_net_5165 ) , .p8 ( optlc_net_5175 ) , 
    .p9 ( optlc_net_5176 ) , .p10 ( optlc_net_5184 ) ) ;
Prescale_mux Mux3x1 ( .\prescale[5] ( PLACE_HFSNET_187 ) , 
    .\prescale[4] ( PLACE_HFSNET_176 ) , .\prescale[2] ( PLACE_HFSNET_177 ) , 
    .\prescale[1] ( PLACE_HFSNET_179 ) , .\prescale[0] ( UART_CONFIG[2] ) ,
    .div_ratio ( { SYNOPSYS_UNCONNECTED_37 , SYNOPSYS_UNCONNECTED_38 , 
        SYNOPSYS_UNCONNECTED_39 , SYNOPSYS_UNCONNECTED_40 , 
        SYNOPSYS_UNCONNECTED_41 , DIV_RATIO[2] , DIV_RATIO[1] , DIV_RATIO[0] } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) , .PLACE_HFSNET_187 ( copt_net_5390 ) , 
    .PLACE_HFSNET_189 ( PLACE_HFSNET_189 ) ) ;
REG_FILE U0_REG_FILE ( .WrData ( Wr_D ) , .Address ( Addr ) , 
    .PLACE_HFSNET_186 ( PLACE_HFSNET_187 ) , .RdEn ( RdEn ) , 
    .p_abuf36 ( p_abuf80 ) , .RST ( PLACE_HFSNET_51 ) , .RdData ( Rd_D ) , 
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
    .REG3 ( DEF_DIV_RATIO ) , .test_si3 ( SYNOPSYS_UNCONNECTED_42 ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_43 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_44 ) , 
    .test_so3 ( SYNOPSYS_UNCONNECTED_45 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_46 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_47 ) , .test_se ( PLACE_HFSNET_123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SCAN_IN_1 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_48 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_49 ) , .dftopt3 ( SCAN_IN_2 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_50 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_51 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_52 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_53 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_54 ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_55 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_56 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_57 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_58 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_59 ) , 
    .PLACE_HFSNET_30 ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_49 ( PLACE_HFSNET_49 ) , 
    .PLACE_HFSNET_52 ( PLACE_HFSNET_52 ) , 
    .PLACE_HFSNET_53 ( copt_net_2819 ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_96 ( PLACE_HFSNET_97 ) , 
    .PLACE_HFSNET_103 ( PLACE_HFSNET_103 ) , 
    .PLACE_HFSNET_105 ( PLACE_HFSNET_105 ) , 
    .PLACE_HFSNET_122 ( PLACE_HFSNET_122 ) , 
    .PLACE_HFSNET_123 ( PLACE_HFSNET_124 ) , 
    .PLACE_HFSNET_164 ( PLACE_HFSNET_164 ) , 
    .PLACE_HFSNET_165 ( copt_net_2904 ) , 
    .PLACE_HFSNET_167 ( PLACE_HFSNET_167 ) , 
    .PLACE_HFSNET_188 ( copt_net_5397 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_60 ) , .dftopt14 ( dftopt35 ) , 
    .dftopt15 ( dftopt36 ) , .dftopt16 ( SYNOPSYS_UNCONNECTED_61 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_62 ) , 
    .dftopt18 ( SYNOPSYS_UNCONNECTED_63 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_64 ) , .dftopt21 ( dftopt41 ) , 
    .dftopt22 ( SYNOPSYS_UNCONNECTED_65 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_66 ) , 
    .dftopt37 ( SYNOPSYS_UNCONNECTED_67 ) , 
    .dftopt25 ( SYNOPSYS_UNCONNECTED_68 ) , 
    .dftopt24 ( SYNOPSYS_UNCONNECTED_69 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_70 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_71 ) , 
    .dftopt28 ( SYNOPSYS_UNCONNECTED_72 ) , .dftopt29 ( ALU_OUT[0] ) , 
    .dftopt30 ( SYNOPSYS_UNCONNECTED_73 ) , .p_abuf37 ( p_abuf81 ) , 
    .p_abuf38 ( p_abuf82 ) , .p_abuf2 ( p_abuf79 ) , .p_abuf39 ( p_abuf83 ) , 
    .dftopt31 ( SYNOPSYS_UNCONNECTED_74 ) , 
    .dftopt32 ( SYNOPSYS_UNCONNECTED_75 ) , 
    .dftopt33 ( SYNOPSYS_UNCONNECTED_76 ) , 
    .dftopt34 ( SYNOPSYS_UNCONNECTED_77 ) , .dftopt35 ( dftopt14 ) , 
    .dftopt36 ( SYNOPSYS_UNCONNECTED_78 ) , .dftopt38 ( dftopt1 ) , 
    .dftopt39 ( dftopt48 ) , .dftopt40 ( dftopt19 ) , .dftopt41 ( dftopt21 ) , 
    .dftopt42 ( dftopt22 ) , .dftopt43 ( dftopt23 ) ) ;
UART U0_UART ( .TX_CLK ( TX_CLK ) , .RX_CLK ( RX_CLK ) , 
    .PLACE_HFSNET_89 ( PLACE_HFSNET_89 ) , .PAR_TYP ( UART_CONFIG[1] ) , 
    .PAR_EN ( UART_CONFIG[0] ) , .\Prescale[5] ( PLACE_HFSNET_187 ) , 
    .\Prescale[4] ( PLACE_HFSNET_176 ) , .\Prescale[3] ( copt_net_5397 ) , 
    .PLACE_HFSNET_179 ( PLACE_HFSNET_179 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_79 ) , .\Prescale[0] ( UART_CONFIG[2] ) , 
    .TX_IN_P ( RD_DATA ) , .PLACE_HFSNET_177 ( PLACE_HFSNET_177 ) , 
    .TX_OUT_S ( TX_OUT ) , .TX_OUT_V ( Busy ) , .RX_IN_S ( RX_IN ) , 
    .RX_OUT_P ( RX_P_DATA ) , .RX_OUT_V ( RX_VLD_SIG ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_80 ) , 
    .PLACE_HFSNET_159 ( PLACE_HFSNET_159 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_81 ) , .dftopt1 ( n17 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_82 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_83 ) , .dftopt8 ( dftopt7 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_84 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_85 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_86 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_87 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_88 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_89 ) , .dftopt14 ( SCAN_IN_4 ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_90 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_91 ) , 
    .dftopt18 ( SYNOPSYS_UNCONNECTED_92 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_54 ) , 
    .PLACE_HFSNET_56 ( PLACE_HFSNET_60 ) , 
    .PLACE_HFSNET_59 ( PLACE_HFSNET_59 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_90 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_94 ( PLACE_HFSNET_95 ) , 
    .PLACE_HFSNET_110 ( PLACE_HFSNET_110 ) , 
    .PLACE_HFSNET_111 ( PLACE_HFSNET_111 ) , 
    .PLACE_HFSNET_112 ( PLACE_HFSNET_112 ) , 
    .PLACE_HFSNET_113 ( PLACE_HFSNET_113 ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_93 ) , .dftopt21 ( dftopt44 ) , 
    .dftopt32 ( SYNOPSYS_UNCONNECTED_94 ) , .dftopt34 ( dftopt46 ) , 
    .dftopt23 ( dftopt47 ) , .dftopt39 ( SYNOPSYS_UNCONNECTED_95 ) , 
    .dftopt25 ( SYNOPSYS_UNCONNECTED_96 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_97 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_98 ) , .dftopt28 ( dftopt55 ) , 
    .dftopt30 ( dftopt56 ) , .dftopt31 ( SYNOPSYS_UNCONNECTED_99 ) , 
    .dftopt33 ( SYNOPSYS_UNCONNECTED_100 ) , 
    .p1 ( SYNOPSYS_UNCONNECTED_101 ) , .p3 ( SYNOPSYS_UNCONNECTED_102 ) , 
    .dftopt22 ( dftopt3 ) , .dftopt4 ( SYNOPSYS_UNCONNECTED_103 ) , 
    .dftopt17 ( dftopt14 ) , .dftopt36 ( SYNOPSYS_UNCONNECTED_104 ) , 
    .dftopt2 ( dftopt41 ) , .dftopt49 ( SYNOPSYS_UNCONNECTED_105 ) , 
    .dftopt29 ( SCAN_OUT_4 ) , .p0 ( SYNOPSYS_UNCONNECTED_106 ) , 
    .p2 ( SYNOPSYS_UNCONNECTED_107 ) , .dftopt6 ( dftopt8 ) , 
    .dftopt38 ( dftopt15 ) , .dftopt24 ( dftopt24 ) , .dftopt48 ( dftopt45 ) , 
    .dftopt37 ( SCAN_OUT_1 ) , .dftopt40 ( dftopt18 ) , 
    .dftopt41 ( dftopt48 ) , .dftopt43 ( dftopt49 ) , .dftopt44 ( dftopt23 ) , 
    .dftopt54 ( dftopt53 ) , .p9 ( optlc_net_5179 ) , 
    .p10 ( optlc_net_5185 ) ) ;
DATA_SYNC U0_DATA_SYNC ( .Unsync_bus ( RX_P_DATA ) , 
    .bus_enable ( RX_VLD_SIG ) , .dftopt2 ( dftopt42 ) , 
    .RST ( PLACE_HFSNET_50 ) , .sync_bus ( SYNC_RX_P_DATA ) , 
    .enable_pulse ( SYNC_RX_VLD_SIG ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_108 ) , .test_se ( PLACE_HFSNET_95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( dftopt13 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_109 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_110 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_111 ) , 
    .PLACE_HFSNET_40 ( PLACE_HFSNET_40 ) , 
    .PLACE_HFSNET_92 ( PLACE_HFSNET_93 ) , 
    .PLACE_HFSNET_93 ( PLACE_HFSNET_94 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_112 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_113 ) , .p_abuf0 ( p_abuf79 ) , 
    .dftopt46 ( SYNOPSYS_UNCONNECTED_114 ) , .dftopt6 ( dftopt18 ) ) ;
SYS_CTRL U0_SYS_CTRL ( .CLK ( p_abuf79 ) , .RST ( PLACE_HFSNET_50 ) ,
    .RdData ( { Rd_D[7] , Rd_D[6] , Rd_D[5] , Rd_D[4] , copt_net_2916 , 
        Rd_D[2] , Rd_D[1] , Rd_D[0] } ) ,
    .RdData_Valid ( Rd_D_Vld ) , .RX_P_DATA ( SYNC_RX_P_DATA ) , 
    .RX_D_VLD ( SYNC_RX_VLD_SIG ) , .FIFO_FULL ( copt_net_3115 ) ,
    .ALU_OUT ( { ALU_OUT[15] , ALU_OUT[14] , ALU_OUT[13] , ALU_OUT[12] , 
        ALU_OUT[11] , aps_rename_14_ , ALU_OUT[9] , ALU_OUT[8] , ALU_OUT[7] , 
        ALU_OUT[6] , ALU_OUT[5] , ALU_OUT[4] , ALU_OUT[3] , ALU_OUT[2] , 
        ALU_OUT[1] , ALU_OUT[0] } ) ,
    .ALU_OUT_VLD ( ALU_OUT_VLD ) , .ALU_FUN ( FUN ) , .ALU_EN ( EN ) , 
    .GATE_EN ( Gate_EN ) , .UART_TX_DATA ( WR_DATA ) , 
    .UART_TX_VLD ( WR_INC ) , .Address ( Addr ) , .WrEn ( PLACE_HFSNET_167 ) , 
    .RdEn ( RdEn ) , .WrData ( Wr_D ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_115 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_116 ) , .test_se ( PLACE_HFSNET_93 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt4 ( SYNOPSYS_UNCONNECTED_117 ) , 
    .\stored_addr[2] ( dftopt13 ) , .\cs[1] ( SYNOPSYS_UNCONNECTED_118 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_119 ) , .\cs[0] ( dftopt42 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_120 ) , 
    .dftopt31 ( SYNOPSYS_UNCONNECTED_121 ) , 
    .PLACE_HFSNET_49 ( PLACE_HFSNET_49 ) , 
    .PLACE_HFSNET_90 ( PLACE_HFSNET_91 ) , 
    .PLACE_HFSNET_91 ( PLACE_HFSNET_92 ) , 
    .PLACE_HFSNET_164 ( PLACE_HFSNET_164 ) , 
    .PLACE_HFSNET_165 ( copt_net_2904 ) , 
    .PLACE_HFSNET_169 ( PLACE_HFSNET_169 ) , 
    .dftopt18 ( SYNOPSYS_UNCONNECTED_122 ) , .dftopt38 ( dftopt1 ) , 
    .dftopt21 ( SYNOPSYS_UNCONNECTED_123 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_124 ) , .dftopt43 ( dftopt49 ) , 
    .dftopt0 ( dftopt19 ) , .dftopt1 ( dftopt44 ) , .\cs[2] ( dftopt25 ) ) ;
CLK_GATE U0_CLK_GATE ( .CLK ( p_abuf84 ) , .CLK_EN ( Gate_EN ) , 
    .SCAN_EN ( TEST_MODE ) , .GATED_CLK ( ALU_CLK ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
ALU U0_ALU ( .CLK ( ALU_CLK ) , .RST ( PLACE_HFSNET_30 ) , 
    .PLACE_HFSNET_186 ( PLACE_HFSNET_186 ) , 
    .PLACE_HFSNET_196 ( PLACE_HFSNET_196 ) , 
    .PLACE_HFSNET_200 ( PLACE_HFSNET_200 ) , 
    .PLACE_HFSNET_192 ( PLACE_HFSNET_192 ) , 
    .PLACE_HFSNET_230 ( PLACE_HFSNET_230 ) , 
    .PLACE_HFSNET_235 ( PLACE_HFSNET_235 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_125 ) , 
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
        ALU_OUT[11] , aps_rename_14_ , ALU_OUT[9] , ALU_OUT[8] , ALU_OUT[7] , 
        ALU_OUT[6] , ALU_OUT[5] , ALU_OUT[4] , ALU_OUT[3] , ALU_OUT[2] , 
        ALU_OUT[1] , ALU_OUT[0] } ) ,
    .OUT_VALID ( ALU_OUT_VLD ) , .test_si ( SYNOPSYS_UNCONNECTED_126 ) , 
    .PLACE_HFSNET_182 ( PLACE_HFSNET_182 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_127 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_128 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_129 ) , 
    .PLACE_HFSNET_28 ( PLACE_HFSNET_28 ) , 
    .PLACE_HFSNET_105 ( PLACE_HFSNET_106 ) , 
    .PLACE_HFSNET_118 ( PLACE_HFSNET_118 ) , 
    .PLACE_HFSNET_120 ( PLACE_HFSNET_120 ) , 
    .dftopt45 ( SYNOPSYS_UNCONNECTED_130 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_131 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_132 ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_133 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_134 ) , .dftopt6 ( Rd_D[5] ) , 
    .dftopt7 ( dftopt20 ) , .dftopt8 ( Rd_D[6] ) ) ;
ASYNC_FIFO U0_ASYN_FIFO ( .p_abuf40 ( p_abuf79 ) , 
    .PLACE_HFSNET_53 ( PLACE_HFSNET_54 ) , .W_INC ( WR_INC ) , 
    .R_CLK ( TX_CLK ) , .PLACE_HFSNET_92 ( PLACE_HFSNET_93 ) , 
    .R_INC ( RD_INC ) , .WR_DATA ( WR_DATA ) , .RD_DATA ( RD_DATA ) , 
    .FULL ( F_FULL ) , .EMPTY ( PLACE_HFSNET_159 ) , 
    .test_si2 ( SYNOPSYS_UNCONNECTED_135 ) , 
    .test_si1 ( SYNOPSYS_UNCONNECTED_136 ) , 
    .test_so2 ( SYNOPSYS_UNCONNECTED_137 ) , 
    .test_so1 ( SYNOPSYS_UNCONNECTED_138 ) , .test_se ( PLACE_HFSNET_120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_139 ) , 
    .\wq2_rptr_tp[0] ( SYNOPSYS_UNCONNECTED_140 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_141 ) , .\r_addr_tp[1] ( dftopt4 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_142 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_143 ) , .dftopt8 ( dftopt7 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_144 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_145 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_146 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_147 ) , 
    .dftopt16 ( SYNOPSYS_UNCONNECTED_148 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_149 ) , 
    .\rq2_wptr_tp[2] ( SYNOPSYS_UNCONNECTED_150 ) , .dftopt18 ( Rd_D[2] ) , 
    .dftopt20 ( SYNOPSYS_UNCONNECTED_151 ) , 
    .dftopt21 ( SYNOPSYS_UNCONNECTED_152 ) , 
    .dftopt23 ( SYNOPSYS_UNCONNECTED_153 ) , 
    .dftopt24 ( SYNOPSYS_UNCONNECTED_154 ) , 
    .dftopt26 ( SYNOPSYS_UNCONNECTED_155 ) , 
    .dftopt27 ( SYNOPSYS_UNCONNECTED_156 ) , 
    .dftopt29 ( SYNOPSYS_UNCONNECTED_157 ) , 
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
    .PLACE_HFSNET_169 ( PLACE_HFSNET_169 ) , 
    .dftopt30 ( SYNOPSYS_UNCONNECTED_158 ) , 
    .dftopt32 ( SYNOPSYS_UNCONNECTED_159 ) , .dftopt34 ( dftopt46 ) , 
    .dftopt35 ( dftopt47 ) , .dftopt37 ( SYNOPSYS_UNCONNECTED_160 ) , 
    .dftopt39 ( SYNOPSYS_UNCONNECTED_161 ) , 
    .dftopt40 ( SYNOPSYS_UNCONNECTED_162 ) , .PLACE_HFSNET_172 ( dftopt55 ) , 
    .dftopt42 ( SYNOPSYS_UNCONNECTED_163 ) , 
    .dftopt44 ( SYNOPSYS_UNCONNECTED_164 ) , 
    .dftopt45 ( SYNOPSYS_UNCONNECTED_165 ) , .p_abuf41 ( p_abuf80 ) , 
    .p_abuf1 ( p_abuf39 ) , .dftopt22 ( dftopt3 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_166 ) , .dftopt9 ( ALU_OUT[13] ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_167 ) , 
    .dftopt19 ( SYNOPSYS_UNCONNECTED_168 ) , 
    .\_gOb24_rq2_wptr_tp[2] ( SCAN_OUT_2 ) , .dftopt28 ( Rd_D[7] ) , 
    .dftopt33 ( SCAN_OUT_3 ) , .dftopt36 ( SYNOPSYS_UNCONNECTED_169 ) , 
    .dftopt46 ( SYNOPSYS_UNCONNECTED_170 ) , 
    .dftopt47 ( SYNOPSYS_UNCONNECTED_171 ) , 
    .dftopt49 ( SYNOPSYS_UNCONNECTED_172 ) , .dftopt2 ( dftopt56 ) , 
    .dftopt4 ( dftopt8 ) , .dftopt38 ( dftopt15 ) , .dftopt31 ( dftopt24 ) , 
    .dftopt48 ( dftopt45 ) , .\wq2_rptr_tp[2] ( dftopt20 ) , 
    .dftopt51 ( ALU_OUT[12] ) , .dftopt52 ( dftopt25 ) , 
    .dftopt54 ( dftopt53 ) ) ;
PULSE_GEN_0 U0_PULSE_GEN ( .LVL_SIG ( Busy ) , .CLK ( TX_CLK ) , 
    .RST ( PLACE_HFSNET_54 ) , .PULSE_SIG ( RD_INC ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_173 ) , .test_so ( n17 ) , 
    .test_se ( PLACE_HFSNET_110 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_174 ) , 
    .dftopt30 ( SYNOPSYS_UNCONNECTED_175 ) , .dftopt1 ( dftopt4 ) ) ;
TIEL PLACE_optlc_8886 ( .ZN ( optlc_net_5165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5080_146 ( .INP ( PLACE_HFSNET_90 ) , 
    .Z ( PLACE_HFSNET_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_5316_147 ( .INP ( PLACE_HFSNET_97 ) , 
    .Z ( PLACE_HFSNET_90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_0 ( .IN1 ( optlc_net_5174 ) , .IN2 ( optlc_net_5174 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_1 ( .IN1 ( optlc_net_5168 ) , .IN2 ( optlc_net_5168 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_2 ( .IN1 ( optlc_net_5166 ) , .IN2 ( optlc_net_5166 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_3 ( .IN1 ( optlc_net_5162 ) , .IN2 ( optlc_net_5162 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_4 ( .IN1 ( optlc_net_5181 ) , .IN2 ( optlc_net_5181 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_5 ( .IN1 ( optlc_net_5180 ) , .IN2 ( optlc_net_5180 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_6 ( .IN1 ( optlc_net_5169 ) , .IN2 ( optlc_net_5169 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_7 ( .IN1 ( optlc_net_5180 ) , .IN2 ( optlc_net_5180 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_8 ( .IN1 ( optlc_net_5171 ) , .IN2 ( optlc_net_5171 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_9 ( .IN1 ( optlc_net_5172 ) , .IN2 ( optlc_net_5172 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_0 ( .INP ( optlc_net_5167 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_1 ( .INP ( optlc_net_5168 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_2 ( .INP ( optlc_net_5170 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_3 ( .INP ( optlc_net_5164 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_4 ( .INP ( optlc_net_5181 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_5 ( .INP ( optlc_net_5178 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_6 ( .INP ( optlc_net_5162 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_7 ( .INP ( optlc_net_5183 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_8 ( .INP ( optlc_net_5169 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2 SpareCell_0_9 ( .INP ( optlc_net_5182 ) , 
    .ZN ( SYNOPSYS_UNCONNECTED_195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_0 ( .IN1 ( optlc_net_5174 ) , .IN2 ( optlc_net_5174 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_1 ( .IN1 ( optlc_net_5173 ) , .IN2 ( optlc_net_5173 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_2 ( .IN1 ( optlc_net_5166 ) , .IN2 ( optlc_net_5166 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_3 ( .IN1 ( optlc_net_5162 ) , .IN2 ( optlc_net_5162 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_4 ( .IN1 ( optlc_net_5173 ) , .IN2 ( optlc_net_5173 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_5 ( .IN1 ( optlc_net_5178 ) , .IN2 ( optlc_net_5178 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_6 ( .IN1 ( optlc_net_5163 ) , .IN2 ( optlc_net_5163 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_7 ( .IN1 ( optlc_net_5182 ) , .IN2 ( optlc_net_5182 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_8 ( .IN1 ( optlc_net_5182 ) , .IN2 ( optlc_net_5182 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1 SpareCell_1_9 ( .IN1 ( optlc_net_5177 ) , .IN2 ( optlc_net_5177 ) , 
    .Q ( SYNOPSYS_UNCONNECTED_205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8888 ( .ZN ( optlc_net_5166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8889 ( .ZN ( optlc_net_5167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8891 ( .ZN ( optlc_net_5168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8893 ( .ZN ( optlc_net_5169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8894 ( .ZN ( optlc_net_5170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8896 ( .ZN ( optlc_net_5171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8899 ( .ZN ( optlc_net_5172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8903 ( .ZN ( optlc_net_5173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8905 ( .ZN ( optlc_net_5174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8907 ( .ZN ( optlc_net_5175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8909 ( .ZN ( optlc_net_5176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8912 ( .ZN ( optlc_net_5177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8917 ( .ZN ( optlc_net_5178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8918 ( .ZN ( optlc_net_5179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8921 ( .ZN ( optlc_net_5180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8923 ( .ZN ( optlc_net_5181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8926 ( .ZN ( optlc_net_5182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8927 ( .ZN ( optlc_net_5183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_3659_83 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1190_93 ( .INP ( PLACE_HFSNET_51 ) , 
    .Z ( PLACE_HFSNET_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_962_95 ( .INP ( PLACE_HFSNET_51 ) , 
    .Z ( PLACE_HFSNET_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_1461_97 ( .INP ( PLACE_HFSNET_52 ) , 
    .Z ( PLACE_HFSNET_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8 PLACE_HFSBUF_5147_98 ( .INP ( copt_net_2819 ) , 
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
NBUFFX32 CTS_SCAN_CLK_btd1732 ( .INP ( SCAN_CLK ) , .Z ( cts0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 CTS_cto_buf_7487 ( .INP ( cts2 ) , .Z ( cts1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX2 PLACE_HFSINV_170_257 ( .INP ( UART_CONFIG[6] ) , 
    .ZN ( PLACE_HFSNET_176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_224_269 ( .INP ( copt_net_5390 ) , 
    .Z ( PLACE_HFSNET_187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_HFSBUF_383_271 ( .INP ( PLACE_HFSNET_189 ) , 
    .Z ( PLACE_HFSNET_188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 CTS_cto_buf_7523 ( .INP ( cts3 ) , .Z ( cts2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 CTS_cto_buf_7524 ( .INP ( UART_CLK ) , .Z ( cts3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
DELLN1X2 CTS_cto_buf_7525 ( .INP ( cts5 ) , .Z ( cts4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 CTS_cto_buf_7526 ( .INP ( cts1 ) , .Z ( cts5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
TIEH PLACE_optlc_8929 ( .Z ( optlc_net_5184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEH PLACE_optlc_8930 ( .Z ( optlc_net_5185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEH PLACE_optlc_8932 ( .Z ( optlc_net_5186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9134 ( .INP ( UART_CONFIG[7] ) , 
    .Z ( copt_net_5390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4841 ( .INP ( copt_net_2821 ) , 
    .Z ( copt_net_2819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4842 ( .INP ( copt_net_2828 ) , 
    .Z ( copt_net_2820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4843 ( .INP ( copt_net_2823 ) , 
    .Z ( copt_net_2821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4844 ( .INP ( copt_net_2825 ) , 
    .Z ( copt_net_2822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4845 ( .INP ( copt_net_2822 ) , 
    .Z ( copt_net_2823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4846 ( .INP ( copt_net_2827 ) , 
    .Z ( copt_net_2824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4847 ( .INP ( copt_net_2824 ) , 
    .Z ( copt_net_2825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32 PLACE_copt_h_inst_4849 ( .INP ( copt_net_2820 ) , 
    .Z ( copt_net_2827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4850 ( .INP ( PLACE_HFSNET_53 ) , 
    .Z ( copt_net_2828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4926 ( .INP ( copt_net_2906 ) , 
    .Z ( copt_net_2904 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN3X2 PLACE_copt_h_inst_4928 ( .INP ( copt_net_2907 ) , 
    .Z ( copt_net_2906 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4929 ( .INP ( PLACE_HFSNET_167 ) , 
    .Z ( copt_net_2907 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_4938 ( .INP ( Rd_D[3] ) , .Z ( copt_net_2916 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5137 ( .INP ( copt_net_3117 ) , 
    .Z ( copt_net_3115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5138 ( .INP ( F_FULL ) , .Z ( copt_net_3116 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_5139 ( .INP ( copt_net_3116 ) , 
    .Z ( copt_net_3117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9140 ( .INP ( PLACE_HFSNET_188 ) , 
    .Z ( copt_net_5396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2 PLACE_copt_h_inst_9141 ( .INP ( copt_net_5396 ) , 
    .Z ( copt_net_5397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


