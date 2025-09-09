
module uart_rx_fsm(
    input wire clk,
    input wire rst,
    input wire par_en,
    input wire par_err,
    input wire strt_glitch,
    input wire stp_err,
    input wire[5:0] prescale,
    input wire ser_data,
    input wire[3:0] bit_cnt,
    input wire[5:0] edge_cnt,
    output reg counter_en,
    output reg data_samp_en,
    output reg par_chk_en,
    output reg strt_chk_en,
    output reg stp_chk_en,
    output reg deser_en,
    output reg data_valid
);

// States

parameter IDLE = 3'b000,
          START = 3'b001,
          SERIAL = 3'b010,
          PARITY = 3'b011,
          STOP = 3'b100;

reg[2:0] cs,ns;

wire[4:0] half_edges_plus1;

assign half_edges_plus1 = (prescale >> 1) + 2'd2;

// state memory
always @(posedge clk,negedge rst) begin
    if(!rst) cs <= 3'd0;
    else cs <= ns;
end

// next state logic
always @(*) begin
        case(cs) 
            IDLE: ns = (!ser_data)?START:IDLE;
            START: begin
                if(strt_glitch) ns = IDLE;
                else if(bit_cnt == 4'b0001) ns = SERIAL;
                else ns = START;
            end
            SERIAL: begin
            if(bit_cnt == 4'b1001) begin
                if(par_en)
                    ns = PARITY;
                else
                    ns = STOP;
            end
            else
                ns = SERIAL;
            end
            PARITY: begin
                if(par_err) ns = IDLE;
                else if(bit_cnt == 4'b1010) ns = STOP;
                else ns = PARITY;
            end
            STOP: ns = IDLE;
            default: ns = IDLE;
        endcase
end

// output logic
always @(*) begin

        counter_en = 1'b0;
        data_samp_en = 1'b0;
        par_chk_en = 1'b0;
        strt_chk_en = 1'b0;
        stp_chk_en = 1'b0;
        deser_en = 1'b0;
        data_valid = 1'b0;

    case(cs) 
    IDLE: begin
        counter_en = 1'b0;
        data_samp_en = 1'b0;
        par_chk_en = 1'b0;
        strt_chk_en = 1'b0;
        stp_chk_en = 1'b0;
        deser_en = 1'b0;
        data_valid = 1'b0;
    end
    START: begin
        counter_en = 1'b1;
        data_samp_en = 1'b1;
        strt_chk_en = (edge_cnt[4:0] == half_edges_plus1)?1'b1:1'b0;
    end
    SERIAL: begin
        counter_en = 1'b1;
        data_samp_en = 1'b1;
        deser_en = (edge_cnt[4:0] == half_edges_plus1)?1'b1:1'b0;
    end
    PARITY: begin
        counter_en = 1'b1;
        data_samp_en = 1'b1;
        par_chk_en = (edge_cnt[4:0] == half_edges_plus1)?1'b1:1'b0;
    end
    STOP: begin
        counter_en = 1'b1;
        data_samp_en = 1'b1;
        stp_chk_en = (edge_cnt[4:0] == half_edges_plus1)?1'b1:1'b0;
        data_valid = (!stp_err)?1'b1:1'b0;
    end
    default: begin
        counter_en = 1'b0;
        data_samp_en = 1'b0;
        par_chk_en = 1'b0;
        strt_chk_en = 1'b0;
        stp_chk_en = 1'b0;
        deser_en = 1'b0;
        data_valid = 1'b0;
    end
    endcase
end
          
endmodule