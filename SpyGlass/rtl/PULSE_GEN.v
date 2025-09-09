
module PULSE_GEN(
    input wire LVL_SIG,
    input wire CLK,
    input wire RST,
    output wire PULSE_SIG
);

reg SYNC_REG;

always @(posedge CLK, negedge RST) begin
    if(!RST) SYNC_REG <= 1'b0;
    else SYNC_REG <= LVL_SIG;
end

assign PULSE_SIG = !SYNC_REG && LVL_SIG;

endmodule