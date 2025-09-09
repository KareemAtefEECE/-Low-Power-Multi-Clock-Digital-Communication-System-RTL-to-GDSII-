
module SYS_CTRL(
    input wire CLK,
    input wire RST,
    input wire [7:0] RdData,
    input wire RdData_Valid,
    input wire [7:0] RX_P_DATA,
    input wire RX_D_VLD,
    input wire FIFO_FULL,
    input wire[15:0] ALU_OUT,
    input wire ALU_OUT_VLD,
    output reg[3:0] ALU_FUN,
    output reg ALU_EN,
    output reg GATE_EN,
    output reg [7:0] UART_TX_DATA,
    output reg UART_TX_VLD,
    output reg[3:0] Address,
    output reg WrEn,
    output reg RdEn,
    output reg [7:0] WrData
);


// Commands States

localparam [7:0] RF_WR_CMD = 8'hAA,
                 RF_RD_CMD = 8'hBB,
                 ALU_OPER_W_OP_CMD = 8'hCC,
                 ALU_OPER_W_NOP_CMD = 8'hDD;


// internal states 

localparam [3:0] IDLE = 4'b0000,
                 RF_WR_CMD_STATE = 4'b0001,
                 RF_WR_ADDR_STATE = 4'b0010,
                 RF_WR_DATA_STATE = 4'b0011,
                 RF_RD_CMD_STATE = 4'b0100,
                 RF_RD_ADDR_STATE = 4'b0101,
                 FIFO_RF_WR_STATE = 4'b0110,
                 ALU_OPER_W_OP_CMD_STATE = 4'b0111,
                 OPERAND_A_WR_STATE = 4'b1000,
                 OPERAND_B_WR_STATE = 4'b1001,
                 ALU_FUN_STATE = 4'b1010,
                 FIFO_ALU_BYTE_1_WR_STATE = 4'b1011,
                 FIFO_ALU_BYTE_2_WR_STATE = 4'b1100,
                 ALU_WAIT_1_STATE = 4'b1101,
                 ALU_WAIT_2_STATE = 4'b1110,
                 ALU_OPER_W_NOP_CMD_STATE = 4'b1111;

reg [3:0] cs,ns;
reg [3:0] stored_addr;

// state memory

always @(posedge CLK, negedge RST) begin
    if(!RST) cs <= IDLE;
    else cs <= ns;
end

// next state logic

always @(*) begin
    case(cs)
    IDLE: begin
     if(RX_D_VLD) begin
          case(RX_P_DATA) 
              RF_WR_CMD: ns = RF_WR_CMD_STATE;
              RF_RD_CMD: ns = RF_RD_CMD_STATE;
              ALU_OPER_W_OP_CMD: ns = ALU_OPER_W_OP_CMD_STATE;
              ALU_OPER_W_NOP_CMD: ns = ALU_OPER_W_NOP_CMD_STATE;
              default: ns = IDLE;
           endcase
        end
     else ns = IDLE;
           end
    RF_WR_CMD_STATE: ns = (RX_D_VLD)?RF_WR_ADDR_STATE:RF_WR_CMD_STATE;
    RF_WR_ADDR_STATE: ns = (RX_D_VLD)?RF_WR_DATA_STATE:RF_WR_ADDR_STATE;
    RF_WR_DATA_STATE: ns = IDLE;
    RF_RD_CMD_STATE: ns = (RX_D_VLD)?RF_RD_ADDR_STATE:RF_RD_CMD_STATE;
    RF_RD_ADDR_STATE: ns = (RdData_Valid)?FIFO_RF_WR_STATE:RF_RD_ADDR_STATE;
    FIFO_RF_WR_STATE: ns = IDLE;
    ALU_OPER_W_OP_CMD_STATE: ns = (RX_D_VLD)?OPERAND_A_WR_STATE:ALU_OPER_W_OP_CMD_STATE;
    OPERAND_A_WR_STATE: ns = ALU_WAIT_1_STATE;
    ALU_WAIT_1_STATE: ns = (RX_D_VLD)?OPERAND_B_WR_STATE:ALU_WAIT_1_STATE;
    OPERAND_B_WR_STATE: ns = ALU_WAIT_2_STATE;
    ALU_WAIT_2_STATE: ns = (RX_D_VLD)?ALU_FUN_STATE:ALU_WAIT_2_STATE;
    ALU_FUN_STATE: ns = (ALU_OUT_VLD)?FIFO_ALU_BYTE_1_WR_STATE:ALU_FUN_STATE;
    FIFO_ALU_BYTE_1_WR_STATE: ns = FIFO_ALU_BYTE_2_WR_STATE;
    FIFO_ALU_BYTE_2_WR_STATE: ns = IDLE;
    ALU_OPER_W_NOP_CMD_STATE: ns = (RX_D_VLD)?ALU_FUN_STATE:ALU_OPER_W_NOP_CMD_STATE;
    default: ns = IDLE;
    endcase
end

// output logic 

always @(*) begin

        ALU_FUN = 4'd0;
        ALU_EN = 1'b0;
        GATE_EN = 1'b0;
        UART_TX_DATA = 8'd0;
        UART_TX_VLD = 1'b0;
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData = 8'd0;

    case(cs) 
    IDLE: begin
        ALU_FUN = 4'd0;
        ALU_EN = 1'b0;
        GATE_EN = 1'b0;
        UART_TX_DATA = 8'd0;
        UART_TX_VLD = 1'b0;
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData = 8'd0;
    end
    RF_WR_ADDR_STATE: Address = stored_addr;

    RF_WR_DATA_STATE: begin
        WrData = RX_P_DATA;
        WrEn = 1'b1;
    end

    RF_RD_ADDR_STATE: begin
        Address = stored_addr;
        RdEn = 1'b1;
    end

    FIFO_RF_WR_STATE: begin
        if(!FIFO_FULL && !ALU_EN) begin
        UART_TX_DATA = RdData;
        UART_TX_VLD = 1'b1;
        end
    end

    OPERAND_A_WR_STATE: begin
        WrData = RX_P_DATA;
        WrEn = 1'b1;
        Address = 4'd0;
    end

    ALU_WAIT_1_STATE: WrEn = 1'b0;


    OPERAND_B_WR_STATE: begin
        WrData = RX_P_DATA;
        WrEn = 1'b1;
        Address = 4'd1;
        GATE_EN = 1'b1;
    end

    ALU_WAIT_2_STATE: begin
         GATE_EN = 1'b1;
         WrEn = 1'b0;

    end

    ALU_OPER_W_NOP_CMD_STATE: GATE_EN = 1'b1;

    ALU_FUN_STATE: begin
        ALU_FUN = RX_P_DATA[3:0];
        ALU_EN = 1'b1;
        GATE_EN = 1'b1;
    end

    FIFO_ALU_BYTE_1_WR_STATE: begin
        ALU_EN = 1'b1;
        if(!FIFO_FULL && ALU_EN) begin
            UART_TX_DATA = ALU_OUT[7:0];
            UART_TX_VLD = 1'b1;
        end
    end

    FIFO_ALU_BYTE_2_WR_STATE: begin
        ALU_EN = 1'b1;
        if(!FIFO_FULL && ALU_EN) begin
            UART_TX_DATA = ALU_OUT[15:8];
            UART_TX_VLD = 1'b1;
        end
    end

    default: begin
        ALU_FUN = 4'd0;
        ALU_EN = 1'b0;
        GATE_EN = 1'b0;
        UART_TX_DATA = 8'd0;
        UART_TX_VLD = 1'b0;
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData = 8'd0;
    end
    endcase
end


// Store RF Address

always @(posedge CLK, negedge RST) begin
    if(!RST) stored_addr <= 4'd0;
    else if(ns == RF_WR_ADDR_STATE || ns == RF_RD_ADDR_STATE) stored_addr <= RX_P_DATA[3:0];

end


endmodule
