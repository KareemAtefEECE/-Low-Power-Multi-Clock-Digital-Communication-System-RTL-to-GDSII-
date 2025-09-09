
module parity_check(
    input wire CLK,
    input wire RST,
    input wire par_typ,
    input wire sampled_bit,
    input wire[7:0] P_DATA,
    input wire enable,
    output reg par_err
);


always @(posedge CLK, negedge RST) begin
    if(!RST) par_err <= 1'b0;
    else if(enable) begin
        par_err <= (!par_typ)?(sampled_bit != (^P_DATA)):(sampled_bit != ~(^P_DATA));
    end
end

endmodule