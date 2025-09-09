
module BIT_SYNC #(
    parameter BUS_WIDTH = 1,
              NUM_STAGES = 2
)

(
    input wire[BUS_WIDTH-1:0] ASYNC,
    input wire CLK,
    input wire RST,
    output reg[BUS_WIDTH-1:0] SYNC
);


reg[BUS_WIDTH-1:0] q[0:NUM_STAGES-1];
integer i;

always @(posedge CLK, negedge RST) begin
    if(!RST) begin
        for(i=0;i<NUM_STAGES;i=i+1)
        q[i]<=0;
    end
    else begin
        // First Flop accepts ASYNC signal
        q[0]<=ASYNC;
        // Sifting data between stages
        for(i=1;i<NUM_STAGES;i=i+1) 
            q[i]<=q[i-1];
        
    end
end

// assigning last flop data to o/p SYNC
always @(*) SYNC=q[NUM_STAGES-1];

endmodule