
module edge_bit_counter(
    input wire CLK,
    input wire RST,
    input wire enable,
    input wire par_en,
    input wire[5:0] prescale,
    output reg[3:0] bit_cnt,
    output reg[5:0] edge_cnt
);

always @(posedge CLK, negedge RST) begin
    if(!RST) begin
        bit_cnt <= 4'd0;
        edge_cnt <= 6'd0;
    end
    else if(enable) begin
        if(edge_cnt == prescale-1) begin
            edge_cnt <= 6'd0;
            if(par_en && bit_cnt == 4'b1011) bit_cnt <= 4'd0;
            else if(bit_cnt == 4'b1010) bit_cnt <= 4'd0;
            else bit_cnt <= bit_cnt + 1'b1;
        end
        else edge_cnt <= edge_cnt + 1'b1;
    end
    else begin
        bit_cnt <= 4'd0;
        edge_cnt <= 4'd0;
    end
end

endmodule