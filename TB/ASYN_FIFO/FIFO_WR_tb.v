
module FIFO_WR_tb();

    parameter PTR_WIDTH_TB = 4;

    reg w_clk;
    reg w_rst_n;
    reg w_inc;
    reg[PTR_WIDTH_TB-1:0] wq2_rptr;
    wire[PTR_WIDTH_TB-1:0] w_addr;
    wire w_full;
    wire[PTR_WIDTH_TB-1:0] w_ptr;

    integer i;

    FIFO_WR #(.PTR_WIDTH(PTR_WIDTH_TB)) DUT(
        w_clk,
        w_rst_n,
        w_inc,
        wq2_rptr,
        w_addr,
        w_full,
        w_ptr
    );

    initial begin
        w_clk = 1'b0;
        forever 
        #5 w_clk = ~w_clk;
    end

    initial begin
        w_rst_n = 1'b0;
        wq2_rptr = 4'd0;
        w_inc = 1'b0;
        #10
        w_rst_n = 1'b1;
        w_inc = 1'b1;
        #200
        $stop;
    end

    endmodule