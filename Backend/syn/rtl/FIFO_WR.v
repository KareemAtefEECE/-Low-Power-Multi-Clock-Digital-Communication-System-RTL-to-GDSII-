
module FIFO_WR #(
    parameter PTR_WIDTH = 4
)
(
    input wire w_clk,
    input wire w_rst_n,
    input wire w_inc,
    input wire[PTR_WIDTH-1:0] wq2_rptr,
    output wire[PTR_WIDTH-2:0] w_addr,
    output wire w_full,
    output reg[PTR_WIDTH-1:0] gray_w_ptr
);

integer i;

reg[PTR_WIDTH-1:0] w_ptr;

assign w_addr = w_ptr[PTR_WIDTH-2:0];

always @(posedge w_clk, negedge w_rst_n) begin
    if(!w_rst_n) w_ptr <= {PTR_WIDTH{1'b0}};
    else if(w_inc && !w_full) w_ptr <= w_ptr + 1'b1;
end

always @(*) begin
    gray_w_ptr[PTR_WIDTH-1] = w_ptr[PTR_WIDTH-1];
    for(i=PTR_WIDTH-2;i>-1;i=i-1)
        gray_w_ptr[i] = w_ptr[i+1] ^ w_ptr[i];
end

assign w_full = (gray_w_ptr[PTR_WIDTH-1] != wq2_rptr[PTR_WIDTH-1]) && 
                (gray_w_ptr[PTR_WIDTH-2] != wq2_rptr[PTR_WIDTH-2]) && 
                (gray_w_ptr[PTR_WIDTH-3:0] == wq2_rptr[PTR_WIDTH-3:0]);


endmodule