
module controller_fsm(
    input wire Data_Valid,
    input wire PAR_EN,
    input wire CLK,
    input wire RST,
    input wire ser_done,
    output reg ser_en,
    output reg[1:0] mux_sel,
    output reg busy
);

// States

localparam[2:0] IDLE = 3'b000,
                START = 3'b001,
                TRANS = 3'b010,
                PARITY = 3'b011,
                STOP = 3'b100;

reg[2:0] cs,ns;
reg busy_c;

// state memory (next transition)

always @(posedge CLK, negedge RST) begin
        if(!RST) cs <= IDLE;
        else cs <= ns;
end


always @(*) begin
    ser_en = 1'b0;
    mux_sel = 2'b01;
    busy_c = 1'b0;
    case(cs)
    IDLE: begin
         mux_sel = 2'b01;
         busy_c = 1'b0;
         ser_en = 1'b0;
         ns = (Data_Valid)?START:IDLE;
    end
    START: begin
        mux_sel = 2'b00;
        busy_c = 1'b1;
        ser_en = 1'b0;
        ns = TRANS;
    end
    TRANS: begin
        mux_sel = 2'b10;
        ser_en = 1'b1;
        busy_c = 1'b1;
        ns = (ser_done&PAR_EN)?PARITY:(ser_done&!PAR_EN)?STOP:TRANS;
    end
    PARITY: begin
        mux_sel = 2'b11;
        ser_en = 1'b0;
        busy_c = 1'b1;
        ns = STOP;
    end
    STOP: begin
        mux_sel = 2'b01;
        busy_c = 1'b0;
        ser_en = 1'b0;
        ns = IDLE;
    end
    default: begin
    ser_en = 1'b0;
    mux_sel = 2'b01;
    busy_c = 1'b0;
    ns = IDLE;
    end
    endcase
end

always @(posedge CLK,negedge RST) begin
        if(!RST) busy<=1'b0;
        else busy <= busy_c;
end

endmodule