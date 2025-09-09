
module data_sampling(
    input wire CLK,
    input wire RST,
    input wire RX_IN,
    input wire[5:0] prescale,
    input wire[5:0] edge_cnt,
    input wire enable,
    output reg sampled_bit
);

reg[2:0] samples;
wire sampled_bit_comb;
wire[4:0] half_edges, half_edges_plus1, half_edges_neg1;

assign half_edges = prescale >> 1;
assign half_edges_neg1 = half_edges - 1'b1;
assign half_edges_plus1 = half_edges + 1'b1;


// evaluate the dominant bit by truth table
assign sampled_bit_comb = (samples[1]&samples[0])|(samples[2]&(samples[1]^samples[0]));

always @(posedge CLK, negedge RST) begin
    if(!RST) samples <= 3'd0;
    else if(enable) begin
        if(edge_cnt[4:0] == half_edges_neg1) samples[0] <= RX_IN;
        if(edge_cnt[4:0] == half_edges) samples[1] <= RX_IN;
        if(edge_cnt[4:0] == half_edges_plus1) samples[2] <= RX_IN;
    end
    else samples <= 3'd0;
end

always @(posedge CLK, negedge RST) begin
    if(!RST) sampled_bit <= 1'b0;
    else if(enable) sampled_bit <= sampled_bit_comb;
end

endmodule