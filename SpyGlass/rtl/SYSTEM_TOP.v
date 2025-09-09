/*
`include "ALU.v"
`include "ASYNC_FIFO.v"
`include "ClkDiv.v"
`include "CLK_GATE.v"
`include "DATA_SYNC.v"
`include "PULSE_GEN.v"
`include "REG_FILE.v"
`include "SYS_CTRL.v"
`include "UART.v"
`include "RST_SYNC.v"
`include "Prescale_mux.v"
*/

module SYSTEM_TOP(
    input wire RX_IN,
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST,
    output wire TX_OUT
);

wire REF_RST;
wire UART_RST;
wire[7:0] DEF_DIV_RATIO;
wire[7:0] DIV_RATIO;
wire TX_CLK;
wire RX_CLK;
wire ALU_CLK;
wire[7:0] Wr_D;
wire[7:0] Rd_D;
wire[3:0] Addr;
wire[3:0] FUN;
wire[7:0] UART_CONFIG;
wire[7:0] RD_DATA;
wire[7:0] WR_DATA;
wire F_EMPTY;
wire F_FULL;
wire Busy;
wire EN;
wire[7:0] RX_P_DATA;
wire[7:0] SYNC_RX_P_DATA;
wire RX_VLD_SIG;
wire SYNC_RX_VLD_SIG;
wire WrEn;
wire RdEn;
wire Rd_D_Vld;
wire[7:0] OPERAND_A;
wire[7:0] OPERAND_B;
wire[15:0] ALU_OUT;
wire ALU_OUT_VLD;
wire WR_INC;
wire RD_INC;
wire Gate_EN;


RST_SYNC RST_SYNC_1(
    .RST(RST),
    .CLK(REF_CLK),
    .SYNC_RST(REF_RST)
);

RST_SYNC RST_SYNC_2(
    .RST(RST),
    .CLK(UART_CLK),
    .SYNC_RST(UART_RST)
);

ClkDiv TX_CLK_DIV(
    .i_ref_clk(UART_CLK),
    .i_rst_n(UART_RST),
    .i_div_ratio(DEF_DIV_RATIO),
    .i_clk_en(1'b1),
    .o_div_clk(TX_CLK)
);

ClkDiv RX_CLK_DIV(
    .i_ref_clk(UART_CLK),
    .i_rst_n(UART_RST),
    .i_div_ratio(DIV_RATIO),
    .i_clk_en(1'b1),
    .o_div_clk(RX_CLK)
);

Prescale_mux Mux3x1(
    .prescale(UART_CONFIG[7:2]),
    .div_ratio(DIV_RATIO)
);

REG_FILE U0_REG_FILE(
    .WrData(Wr_D),
    .Address(Addr),
    .WrEn(WrEn),
    .RdEn(RdEn),
    .CLK(REF_CLK),
    .RST(REF_RST),
    .RdData(Rd_D),
    .RdData_Valid(Rd_D_Vld),
    .REG0(OPERAND_A),
    .REG1(OPERAND_B),
    .REG2(UART_CONFIG),
    .REG3(DEF_DIV_RATIO)
);

UART U0_UART(
    .TX_CLK(TX_CLK),
    .RX_CLK(RX_CLK),
    .RST(UART_RST),
    .PAR_TYP(UART_CONFIG[1]),
    .PAR_EN(UART_CONFIG[0]),
    .Prescale(UART_CONFIG[7:2]),
    .TX_IN_P(RD_DATA),
    .TX_IN_V(!F_EMPTY),
    .TX_OUT_S(TX_OUT),
    .TX_OUT_V(Busy),
    .RX_IN_S(RX_IN),
    .RX_OUT_P(RX_P_DATA),
    .RX_OUT_V(RX_VLD_SIG)
);

DATA_SYNC U0_DATA_SYNC(
    .Unsync_bus(RX_P_DATA),
    .bus_enable(RX_VLD_SIG),
    .CLK(REF_CLK),
    .RST(REF_RST),
    .sync_bus(SYNC_RX_P_DATA),
    .enable_pulse(SYNC_RX_VLD_SIG)
);

SYS_CTRL U0_SYS_CTRL(
    .CLK(REF_CLK),
    .RST(REF_RST),
    .RdData(Rd_D),
    .RdData_Valid(Rd_D_Vld),
    .RX_P_DATA(SYNC_RX_P_DATA),
    .RX_D_VLD(SYNC_RX_VLD_SIG),
    .FIFO_FULL(F_FULL),
    .ALU_OUT(ALU_OUT),
    .ALU_OUT_VLD(ALU_OUT_VLD),
    .ALU_FUN(FUN),
    .ALU_EN(EN),
    .GATE_EN(Gate_EN),
    .UART_TX_DATA(WR_DATA),
    .UART_TX_VLD(WR_INC),
    .Address(Addr),
    .WrEn(WrEn),
    .RdEn(RdEn),
    .WrData(Wr_D)
);

CLK_GATE U0_CLK_GATE(
    .CLK(REF_CLK),
    .CLK_EN(Gate_EN),
    .GATED_CLK(ALU_CLK)
);

ALU U0_ALU(
    .CLK(ALU_CLK),
    .RST(REF_RST),
    .A(OPERAND_A),
    .B(OPERAND_B),
    .ALU_FUN(FUN),
    .Enable(EN),
    .ALU_OUT(ALU_OUT),
    .OUT_VALID(ALU_OUT_VLD)
);

ASYNC_FIFO U0_ASYN_FIFO(
    .W_CLK(REF_CLK),
    .W_RST(REF_RST),
    .W_INC(WR_INC),
    .R_CLK(TX_CLK),
    .R_RST(UART_RST),
    .R_INC(RD_INC),
    .WR_DATA(WR_DATA),
    .RD_DATA(RD_DATA),
    .FULL(F_FULL),
    .EMPTY(F_EMPTY)
);

PULSE_GEN U0_PULSE_GEN(
    .LVL_SIG(Busy),
    .CLK(TX_CLK),
    .RST(UART_RST),
    .PULSE_SIG(RD_INC)
);

endmodule
