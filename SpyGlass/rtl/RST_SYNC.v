
module RST_SYNC #(
    parameter NUM_STAGES = 2
)
(
    input wire RST,
    input wire CLK,
    output reg SYNC_RST
);

reg sync_rst[0:NUM_STAGES-1];
integer i;

always @(posedge CLK, negedge RST) begin
    if(!RST) begin
        for(i=0;i<NUM_STAGES;i=i+1)
            sync_rst[i] <= 0;
    end
    else begin
        sync_rst[0] <= 1'b1;
        for(i=1;i<NUM_STAGES;i=i+1)
            sync_rst[i] <= sync_rst[i-1];
    end
end

always @(*) SYNC_RST = sync_rst[NUM_STAGES-1];

endmodule