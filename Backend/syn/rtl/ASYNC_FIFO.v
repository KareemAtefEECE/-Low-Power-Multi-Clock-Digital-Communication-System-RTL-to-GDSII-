
`include "FIFO_MEM_CNTRL.v"
`include "FIFO_WR.v"
`include "FIFO_RD.v"
//`include "BIT_SYNC.v"

module ASYNC_FIFO #(
  parameter   DATA_WIDTH_TOP = 8,
              PTR_WIDTH_TOP = 4,
              FIFO_DEPTH_TOP = 8
)
(
    input wire W_CLK,
    input wire W_RST,
    input wire W_INC,
    input wire R_CLK,
    input wire R_RST,
    input wire R_INC,
    input wire[DATA_WIDTH_TOP-1:0] WR_DATA,
    output wire[DATA_WIDTH_TOP-1:0] RD_DATA,
    output wire FULL,
    output wire EMPTY
);

wire[PTR_WIDTH_TOP-1:0] gray_w_ptr_tp,
                        gray_r_ptr_tp,
                        rq2_wptr_tp,
                        wq2_rptr_tp;

wire[PTR_WIDTH_TOP-2:0] w_addr_tp,
                        r_addr_tp;

FIFO_MEM_CNTRL #(
    .DATA_WIDTH(DATA_WIDTH_TOP),
    .PTR_WIDTH(PTR_WIDTH_TOP),
    .FIFO_DEPTH(FIFO_DEPTH_TOP)
) U0_FIFO_MEM_CNTRL(
    .w_data(WR_DATA),
    .w_clk(W_CLK),
    .w_rst_n(W_RST),
    .w_inc(W_INC),
    .w_full(FULL),
    .w_addr(w_addr_tp),
    .r_addr(r_addr_tp),
    .r_data(RD_DATA)
);

FIFO_WR #(.PTR_WIDTH(PTR_WIDTH_TOP)) U0_FIFO_WR(
    .w_clk(W_CLK),
    .w_rst_n(W_RST),
    .w_inc(W_INC),
    .wq2_rptr(wq2_rptr_tp),
    .w_addr(w_addr_tp),
    .w_full(FULL),
    .gray_w_ptr(gray_w_ptr_tp)
);

FIFO_RD #(.PTR_WIDTH(PTR_WIDTH_TOP)) U0_FIFO_RD(
    .r_clk(R_CLK),
    .r_rst_n(R_RST),
    .r_inc(R_INC),
    .rq2_wptr(rq2_wptr_tp),
    .r_addr(r_addr_tp),
    .r_empty(EMPTY),
    .gray_r_ptr(gray_r_ptr_tp)
);

BIT_SYNC #(
    .BUS_WIDTH(PTR_WIDTH_TOP),
    .NUM_STAGES(2)
    ) U0_SYNC_W2R(
        .ASYNC(gray_w_ptr_tp),
        .CLK(R_CLK),
        .RST(R_RST),
        .SYNC(rq2_wptr_tp)
    );

BIT_SYNC #(
    .BUS_WIDTH(PTR_WIDTH_TOP),
    .NUM_STAGES(2)
    ) U1_SYNC_R2W(
        .ASYNC(gray_r_ptr_tp),
        .CLK(W_CLK),
        .RST(W_RST),
        .SYNC(wq2_rptr_tp)
    );

endmodule
