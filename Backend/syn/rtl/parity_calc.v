
module parity_calc(
    input wire CLK,
    input wire RST,
    input wire Data_Valid,
    input wire[7:0] P_DATA,
    input wire PAR_TYP,
    output reg par_bit
);

reg[7:0] P_DATA_Valid;
wire par_bit_comb;

assign par_bit_comb = PAR_TYP?(~^P_DATA_Valid):(^P_DATA_Valid);

always @(posedge CLK, negedge RST) begin

if(!RST) P_DATA_Valid <= 0;
else if(Data_Valid) P_DATA_Valid <= P_DATA;

end

always @(posedge CLK, negedge RST) begin

        if(!RST) par_bit<=0;
        else par_bit <= par_bit_comb;
        
end

endmodule
