/*
`include "BIT_SYNC.v"
`include "PULSE_GEN.v"
*/
module DATA_SYNC #(
    parameter BUS_WIDTH_TOP = 8,
              NUM_STAGES_TOP = 2
)
(
    input wire[BUS_WIDTH_TOP-1:0] Unsync_bus,
    input wire bus_enable,
    input wire CLK,
    input wire RST,
    output reg[BUS_WIDTH_TOP-1:0] sync_bus,
    output reg enable_pulse
);

    wire sync_enable;
    wire enable_pulse_comb;

BIT_SYNC #(.BUS_WIDTH(1'b1),.NUM_STAGES(NUM_STAGES_TOP)) U0_BIT_SYNC(
    .ASYNC(bus_enable),
    .CLK(CLK),
    .RST(RST),
    .SYNC(sync_enable)
);

PULSE_GEN U0_PULSE_GEN(
    .LVL_SIG(sync_enable),
    .CLK(CLK),
    .RST(RST),
    .PULSE_SIG(enable_pulse_comb)
);


always @(posedge CLK,negedge RST) begin
    if(!RST) enable_pulse <= 1'b0;
    else enable_pulse <= enable_pulse_comb;
end

always @(posedge CLK, negedge RST) begin
    if(!RST) sync_bus <= 0;
    else begin 
        if(enable_pulse_comb) sync_bus <= Unsync_bus;
    end
end

endmodule
