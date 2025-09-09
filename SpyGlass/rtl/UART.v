/*
`include "UART_TX.v"
`include "UART_RX.v"
*/

module UART #(parameter DATA_WIDTH = 8)(
    input wire TX_CLK,
    input wire RX_CLK,
    input wire RST,
    input wire PAR_TYP,
    input wire PAR_EN,
    input wire[5:0] Prescale,
    input wire[DATA_WIDTH-1:0] TX_IN_P,
    input wire TX_IN_V,
    output wire TX_OUT_S,
    output wire TX_OUT_V,
    input wire RX_IN_S,
    output wire[DATA_WIDTH-1:0] RX_OUT_P,
    output wire RX_OUT_V
);


UART_TX U0_TX(
    .CLK(TX_CLK),
    .RST(RST),
    .PAR_TYP(PAR_TYP),
    .PAR_EN(PAR_EN),
    .P_DATA(TX_IN_P),
    .Data_Valid(TX_IN_V),
    .TX_OUT(TX_OUT_S),
    .Busy(TX_OUT_V)
);

UART_RX U0_RX(
    .CLK(RX_CLK),
    .RST(RST),
    .RX_IN(RX_IN_S),
    .PAR_EN(PAR_EN),
    .PAR_TYP(PAR_TYP),
    .Prescale(Prescale),
    .Data_valid(RX_OUT_V),
    .P_DATA(RX_OUT_P)
);


endmodule
