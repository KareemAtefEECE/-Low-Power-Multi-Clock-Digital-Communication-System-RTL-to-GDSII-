
module deserializer(
    input wire CLK,
    input wire RST,
    input wire s_data,
    input wire deser_en,
    output reg[7:0] P_DATA
);

always @(posedge CLK, negedge RST) begin
    if(!RST) P_DATA <= 8'd0;
    else if(deser_en) P_DATA <= {s_data,P_DATA[7:1]};
end

endmodule
