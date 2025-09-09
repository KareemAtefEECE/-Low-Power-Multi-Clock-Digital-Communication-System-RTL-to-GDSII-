
`include "serializer.v"
`include "controller_fsm.v"
`include "parity_calc.v"
`include "mux4x1.v"

module UART_TX(
    input wire CLK,
    input wire RST,
    input wire PAR_TYP,
    input wire PAR_EN,
    input wire[7:0] P_DATA,
    input wire Data_Valid,
    output wire TX_OUT,
    output wire Busy
);

wire Serial_En;
wire Serial_Done;
wire Serial_Data;
wire[1:0] MUX_Sel;
wire PARITY_BIT;

serializer U0_SER(
    .P_DATA(P_DATA),
    .ser_en(Serial_En),
    .busy(Busy),
    .Data_Valid(Data_Valid),
    .CLK(CLK),
    .RST(RST),
    .ser_done(Serial_Done),
    .ser_data(Serial_Data)
);

controller_fsm U0_FSM(
    .Data_Valid(Data_Valid),
    .PAR_EN(PAR_EN),
    .CLK(CLK),
    .RST(RST),
    .ser_done(Serial_Done),
    .ser_en(Serial_En),
    .mux_sel(MUX_Sel),
    .busy(Busy)
);

parity_calc U0_PARITY_CALC(
    .CLK(CLK),
    .RST(RST),
    .Data_Valid(Data_Valid),
    .P_DATA(P_DATA),
    .PAR_TYP(PAR_TYP),
    .par_bit(PARITY_BIT)
);

mux4x1 U0_MUX(
    .CLK(CLK),
    .RST(RST),
    .start_bit(1'b0),
    .stop_bit(1'b1),
    .ser_data(Serial_Data),
    .par_bit(PARITY_BIT),
    .mux_sel(MUX_Sel),
    .TX_OUT (TX_OUT)
);

endmodule
