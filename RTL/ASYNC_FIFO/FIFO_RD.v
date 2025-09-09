
module FIFO_RD #(
    parameter PTR_WIDTH = 4
)
(
    input wire r_clk,
    input wire r_rst_n,
    input wire r_inc,
    input wire[PTR_WIDTH-1:0] rq2_wptr,
    output wire[PTR_WIDTH-2:0] r_addr,
    output wire r_empty,
    output reg[PTR_WIDTH-1:0] gray_r_ptr
);

integer i;
reg[PTR_WIDTH-1:0] r_ptr;

assign r_addr = r_ptr[PTR_WIDTH-2:0];

always @(posedge r_clk, negedge r_rst_n) begin
    if(!r_rst_n) r_ptr <= {PTR_WIDTH{1'b0}};
    else if(r_inc && !r_empty) r_ptr <= r_ptr + 1'b1;
end

always @(*) begin
    gray_r_ptr[PTR_WIDTH-1] = r_ptr[PTR_WIDTH-1];
    for(i=PTR_WIDTH-2;i>-1;i=i-1)
        gray_r_ptr[i] = r_ptr[i+1] ^ r_ptr[i];
end

assign r_empty = (gray_r_ptr==rq2_wptr);

endmodule