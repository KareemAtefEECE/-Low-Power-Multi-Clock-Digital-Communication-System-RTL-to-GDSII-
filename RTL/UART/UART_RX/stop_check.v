
module stop_check(
    input wire CLK,
    input wire RST,
    input wire sampled_bit,
    input wire enable,
    output reg stp_err
);

always @(posedge CLK, negedge RST) begin
    if(!RST) stp_err <= 1'b0;
    else if(enable) begin
        stp_err <= (sampled_bit != 1'b1)?1'b1:1'b0;
    end
end

endmodule