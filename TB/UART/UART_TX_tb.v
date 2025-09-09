`timescale 1ns/1ps


module UART_TX_tb();

    reg CLK;
    reg RST;
    reg PAR_TYP;
    reg PAR_EN;
    reg[7:0] P_DATA;
    reg Data_Valid;
    wire TX_OUT;
    wire Busy;

    UART_TX DUT(CLK,RST,PAR_TYP,PAR_EN,P_DATA,Data_Valid,TX_OUT,Busy);

    initial begin
        CLK = 0;
        forever
            #2.5 CLK = ~CLK;
    end

    initial begin
        RST = 1'b0;
        #10
        RST = 1'b1;
        Data_Valid = 1'b1;
        P_DATA = 8'b10010011;
        // Data with even parity
        #5
        Data_Valid = 1'b0;
        PAR_EN = 1'b1;
        PAR_TYP = 1'b0;
        #100       
        Data_Valid = 1'b1;
        #5
        Data_Valid = 1'b0;
        // Data with odd parity
        PAR_TYP = 1'b1;
        #100
        Data_Valid = 1'b1;
        #5
        Data_Valid = 1'b0;
        // Data with no parity
        PAR_EN = 1'b0;
        #200
        $stop;
    end

    endmodule