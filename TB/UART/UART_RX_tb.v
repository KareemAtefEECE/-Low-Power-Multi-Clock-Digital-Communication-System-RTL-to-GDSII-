`timescale 1ns/1ps

module UART_RX_tb();


    reg CLK;
    reg RST;
    reg RX_IN;
    reg PAR_EN;
    reg PAR_TYP;
    reg[5:0] Prescale;
    wire Data_valid;
    wire[7:0] P_DATA;

    reg TX_CLK;

    parameter TX_CLK_PERIOD = 8680.55;

    UART_RX DUT(
    CLK,
    RST,
    RX_IN,
    PAR_EN,
    PAR_TYP,
    Prescale,
    Data_valid,
    P_DATA
    );
    

    initial begin
        initialize();
        reset();

        ///////TEST CASE 1//////////

        // no parity, presecale = 8

        uart_config(1'b0,1'b0,6'd8);

        data_in(8'hEA);

        check_result(8'hEA,1);

        ///////TEST CASE 2//////////

        // par en = 1, parity_typ = 0 (even) presecale = 8

        uart_config(1'b1,1'b0,6'd8);

        data_in(8'hEA);

        check_result(8'hEA,2);

        ///////TEST CASE 3//////////

        // par en = 1, parity_typ = 1 (odd) presecale = 8

        uart_config(1'b1,1'b1,6'd8);

        data_in(8'hEA);

        check_result(8'hEA,3);

        ///////TEST CASE 4//////////

        // par en = 0, parity_typ = 0 (even) presecale = 16

        uart_config(1'b0,1'b0,6'd16);

        data_in(8'hEA);

        check_result(8'hEA,4);

        ///////TEST CASE 5//////////

        // par en = 1, parity_typ = 0 (even) presecale = 16

        uart_config(1'b1,1'b0,6'd16);

        data_in(8'hEA);

        check_result(8'hEA,5);

        ///////TEST CASE 6//////////

        // par en = 1, parity_typ = 1 (even) presecale = 16

        uart_config(1'b1,1'b1,6'd16);

        data_in(8'hEA);

        check_result(8'hEA,6);

        ///////TEST CASE 7//////////

        // par en = 0, parity_typ = 0 (even) presecale = 32

        uart_config(1'b0,1'b0,6'd32);

        data_in(8'hEA);

        check_result(8'hEA,7);

        ///////TEST CASE 8//////////

        // par en = 1, parity_typ = 0 (even) presecale = 32

        uart_config(1'b1,1'b0,6'd32);

        data_in(8'hEA);

        check_result(8'hEA,8);

        ///////TEST CASE 9//////////

        // par en = 1, parity_typ = 1 (even) presecale = 32

        uart_config(1'b1,1'b0,6'd32);

        data_in(8'hEA);

        check_result(8'hEA,9);

       #100;
       $stop;
    end

    task initialize ;
        begin
            CLK = 1'b0;
            TX_CLK = 1'b0;
            RST = 1'b0;
            RX_IN = 1'b1;
            PAR_EN = 1'b0;
            PAR_TYP = 1'b0;
            Prescale = 6'd8;
        end
    endtask

    task reset ; 
        begin
        RST = 1'b0;
        #(TX_CLK_PERIOD/Prescale)
        RST = 1'b1;
        #(TX_CLK_PERIOD/Prescale);
        end
    endtask

    task uart_config ;
        input par_en;
        input par_typ;
        input[5:0] prescale;
            begin
                PAR_EN = par_en;
                PAR_TYP = par_typ;
                Prescale = prescale;
            end
    endtask

    task data_in ; 
        input[7:0] p_data;
        integer i;
            begin
                
                // start_bit
                @(posedge TX_CLK)
                    RX_IN = 1'b0;

                // serial data
                for(i=0;i<8;i=i+1) begin
                    @(posedge TX_CLK)
                        RX_IN = p_data[i];
                end

                    if(PAR_EN) begin
                        @(posedge TX_CLK)
                        if(!PAR_TYP) RX_IN = ^p_data;
                        else RX_IN = ~^p_data;
                    end
 
                // stop_bit
                @(posedge TX_CLK)
                 RX_IN = 1'b1;
            end
    endtask

    task check_result ;
        input[7:0] DATA;
        input[4:0] CASE_NUM;
            begin
                @(posedge Data_valid)
                if(DATA == P_DATA) $display("TEST CASE NUM %0d SUCSSES",CASE_NUM);
                else $display("TEST CASE NUM %0d FAILED",CASE_NUM);
            end
    endtask


    always #((TX_CLK_PERIOD/Prescale)/2) CLK = ~CLK;
    always #(TX_CLK_PERIOD/2) TX_CLK = ~TX_CLK;


    endmodule