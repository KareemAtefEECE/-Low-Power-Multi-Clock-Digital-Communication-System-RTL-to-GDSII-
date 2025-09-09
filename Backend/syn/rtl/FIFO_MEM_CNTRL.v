
module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
              PTR_WIDTH = 4,
              FIFO_DEPTH = 8
)
(
    input wire[DATA_WIDTH-1:0] w_data,
    input wire w_full,
    input wire w_inc,
    input wire[PTR_WIDTH-2:0] w_addr,
    input wire w_clk,
    input wire w_rst_n,
    input wire[PTR_WIDTH-2:0] r_addr,
    output wire[DATA_WIDTH-1:0] r_data
);

reg[DATA_WIDTH-1:0] fifo[0:FIFO_DEPTH-1];
integer i;

always @(posedge w_clk, negedge w_rst_n) begin
    if(!w_rst_n) 
        for(i=0;i<FIFO_DEPTH;i=i+1)
            fifo[i] <= {DATA_WIDTH{1'b0}};
    else begin
        if(w_inc && !w_full)
            fifo[w_addr] <= w_data;
    end
end

assign r_data = fifo[r_addr];

endmodule