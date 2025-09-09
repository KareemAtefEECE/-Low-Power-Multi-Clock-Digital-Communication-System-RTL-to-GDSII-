`timescale 1ns/1ps


module SYSTEM_TOP_tb();

    reg RX_IN_TB;
    reg REF_CLK_TB;
    reg UART_CLK_TB;
    reg RST_TB;
    wire TX_OUT_TB;

SYSTEM_TOP DUT(
    .RX_IN(RX_IN_TB),
    .REF_CLK(REF_CLK_TB),
    .UART_CLK(UART_CLK_TB),
    .RST(RST_TB),
    .TX_OUT(TX_OUT_TB)
);

parameter REF_CLK_PER = 10;
parameter UART_CLK_PER = 271.267;

// REF_CLK Generation 

initial begin
    REF_CLK_TB = 1'b0;
    forever 
    #(REF_CLK_PER/2) REF_CLK_TB = ~REF_CLK_TB;
end

// UART_CLK Generation 

initial begin
    UART_CLK_TB = 1'b0;
    forever 
    #(UART_CLK_PER/2) UART_CLK_TB = ~UART_CLK_TB;
end

initial begin

    initialize();

    // TEST 1: RF_WRITE_CMD

    RF_WRITE_CMD(8'd4,8'h95);

    // TEST 2: RF_READ_CMD

    RF_READ_CMD(8'd2);

    RF_READ_CMD(8'd4);

    // TEST 3: ALU_OPER_W_OP_CMD

        // CASE 1: ADDITION
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd0);

        // CASE 2: SUB
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd1);

        // CASE 3: MUL
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd2);

        // CASE 4: DIV
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd3);

        // CASE 5: AND
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd4);

        // CASE 6: OR
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd5);

        // CASE 7: NAND
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd6);

        // CASE 8: NOR
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd7);

        // CASE 9: XOR
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd8);

        // CASE 10: XNOR
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd9);

        // CASE 11: EQUAL?
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd10);

        // CASE 12: A > B ?
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd11);

        // CASE 13: SLL A
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd12);

        // CASE 14: SRL A
    ALU_OPER_WITH_OP_CMD(8'h8A,8'h85,8'd13);

    // TEST 4: ALU_OPER_W_OP_CMD

        // FIRST: WRITE OP_A WITH RF_WR_CMD
    RF_WRITE_CMD(8'd0,8'h6D);

        // SECOND: WRITE OP_B WITH RF_WR_CMD
    RF_WRITE_CMD(8'd1,8'hAE);

        // THIRD: PERFORM ALU OPs

    ALU_OPER_WITH_NOP_CMD(8'd0);
    ALU_OPER_WITH_NOP_CMD(8'd1);
    ALU_OPER_WITH_NOP_CMD(8'd2);
    ALU_OPER_WITH_NOP_CMD(8'd3);
    ALU_OPER_WITH_NOP_CMD(8'd4);
    ALU_OPER_WITH_NOP_CMD(8'd5);
    ALU_OPER_WITH_NOP_CMD(8'd6);
    ALU_OPER_WITH_NOP_CMD(8'd7);
    ALU_OPER_WITH_NOP_CMD(8'd8);
    ALU_OPER_WITH_NOP_CMD(8'd9);
    ALU_OPER_WITH_NOP_CMD(8'd10);
    ALU_OPER_WITH_NOP_CMD(8'd11);
    ALU_OPER_WITH_NOP_CMD(8'd12);
    ALU_OPER_WITH_NOP_CMD(8'd13);

    #6000;
    $stop;

end

task initialize; 
    begin
    RST_TB = 1'b0;
    RX_IN_TB = 1'b1;
    #(REF_CLK_PER)
    RST_TB = 1'b1;
    end
endtask


task LOAD_FRAME ;
    input[7:0] frame_data;
    integer i;
    begin

    @(posedge DUT.U0_UART.TX_CLK)
    RX_IN_TB = 1'b0;  // start_bit


    for(i=0;i<8;i=i+1) begin
        @(posedge DUT.U0_UART.TX_CLK)
        RX_IN_TB = frame_data[i];
    end

     if(DUT.U0_UART.PAR_EN) begin
     @(posedge DUT.U0_UART.TX_CLK)
     if(!(DUT.U0_UART.PAR_TYP)) RX_IN_TB = ^frame_data;
     else RX_IN_TB = ~^frame_data;
     end 
 
    // stop_bit
    @(posedge DUT.U0_UART.TX_CLK)
    RX_IN_TB = 1'b1;
    end
endtask

task RF_WRITE_CMD;
    input[7:0] WR_ADDR;
    input[7:0] WR_DATA;
        begin
            LOAD_FRAME(8'hAA);
            LOAD_FRAME(WR_ADDR);
            LOAD_FRAME(WR_DATA);
        end
endtask

task RF_READ_CMD;
    input[7:0] RD_ADDR;
        begin
            LOAD_FRAME(8'hBB);
            LOAD_FRAME(RD_ADDR);
        end
endtask

task ALU_OPER_WITH_OP_CMD;
    input[7:0] OP_A;
    input[7:0] OP_B;
    input[7:0] ALU_FUN;
        begin
            LOAD_FRAME(8'hCC);
            LOAD_FRAME(OP_A);
            LOAD_FRAME(OP_B);
            LOAD_FRAME(ALU_FUN);
        end
endtask

task ALU_OPER_WITH_NOP_CMD;
    input[7:0] ALU_FUN;
        begin
            LOAD_FRAME(8'hDD);
            LOAD_FRAME(ALU_FUN);
        end
endtask


endmodule