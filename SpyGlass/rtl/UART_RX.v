/*
`include "uart_rx_fsm.v"
`include "edge_bit_counter.v"
`include "data_sampling.v"
`include "deserializer.v"
`include "parity_check.v"
`include "strt_check.v"
`include "stop_check.v"
*/
module UART_RX(
    input wire CLK,
    input wire RST,
    input wire RX_IN,
    input wire PAR_EN,
    input wire PAR_TYP,
    input wire[5:0] Prescale,
    output wire Data_valid,
    output wire[7:0] P_DATA
);

wire PAR_ERR,STRT_GLITCH,STP_ERR;
wire CNT_EN,SAMP_EN,PAR_CHK_EN,STRT_CHK_EN,STP_CHK_EN,DESER_EN;
wire SAMPLED_BIT;
wire[3:0] BIT_CNT;
wire[5:0] EDGE_CNT;


uart_rx_fsm fsm_inst(
    .clk(CLK),
    .rst(RST),
    .par_en(PAR_EN),
    .par_err(PAR_ERR),
    .strt_glitch(STRT_GLITCH),
    .stp_err(STP_ERR),
    .prescale(Prescale),
    .ser_data(RX_IN),
    .bit_cnt(BIT_CNT),
    .edge_cnt(EDGE_CNT),
    .counter_en(CNT_EN),
    .data_samp_en(SAMP_EN),
    .par_chk_en(PAR_CHK_EN),
    .strt_chk_en(STRT_CHK_EN),
    .stp_chk_en(STP_CHK_EN),
    .deser_en(DESER_EN),
    .data_valid(Data_valid)
);

edge_bit_counter counter_inst(
    .CLK(CLK),
    .RST(RST),
    .enable(CNT_EN),
    .par_en(PAR_EN),
    .prescale(Prescale),
    .bit_cnt(BIT_CNT),
    .edge_cnt(EDGE_CNT)
);

data_sampling samp_inst(
    .CLK(CLK),
    .RST(RST),
    .RX_IN(RX_IN),
    .prescale(Prescale),
    .edge_cnt(EDGE_CNT),
    .enable(SAMP_EN),
    .sampled_bit(SAMPLED_BIT)
);

deserializer deser_inst(
    .CLK(CLK),
    .RST(RST),
    .s_data(SAMPLED_BIT),
    .deser_en(DESER_EN),
    .P_DATA(P_DATA)
);

parity_check par_chk_inst(
    .CLK(CLK),
    .RST(RST),
    .par_typ(PAR_TYP),
    .sampled_bit(SAMPLED_BIT),
    .P_DATA(P_DATA),
    .enable(PAR_CHK_EN),
    .par_err(PAR_ERR)
);

strt_check strt_chk_inst(
    .CLK(CLK),
    .RST(RST),
    .sampled_bit(SAMPLED_BIT),
    .enable(STRT_CHK_EN),
    .strt_glitch(STRT_GLITCH)
);

stop_check stp_chk_inst(
    .CLK(CLK),
    .RST(RST),
    .sampled_bit(SAMPLED_BIT),
    .enable(STP_CHK_EN),
    .stp_err(STP_ERR)
);

endmodule
