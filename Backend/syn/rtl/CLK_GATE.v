
module CLK_GATE(
 input wire CLK,
 input wire CLK_EN,
 input wire SCAN_EN,
 output wire GATED_CLK
);
/*
reg Latch;

always @(CLK,CLK_EN) begin
   if(!CLK) Latch <= CLK_EN;
end

assign GATED_CLK = Latch & CLK;
*/

CGLPPSX4 U0_CGLPPSX4(
   .CLK(CLK),
   .EN(CLK_EN),
   .SE(SCAN_EN),
   .GCLK(GATED_CLK)
);
endmodule
