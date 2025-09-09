
module CLK_GATE(
 input wire CLK,
 input wire CLK_EN,
 output wire GATED_CLK
);

reg Latch;

always @(CLK,CLK_EN) begin
   if(!CLK) Latch <= CLK_EN;
end

assign GATED_CLK = Latch & CLK;

endmodule