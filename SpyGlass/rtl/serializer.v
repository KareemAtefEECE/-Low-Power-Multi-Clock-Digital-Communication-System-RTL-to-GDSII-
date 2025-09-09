
module serializer(
input wire[7:0] P_DATA,
input wire ser_en,
input wire busy,
input wire Data_Valid,
input wire CLK,
input wire RST,
output wire ser_done,
output wire ser_data
);

reg[2:0] counter;
reg[7:0] P_DATA_Valid;

always @(posedge CLK, negedge RST) begin
if(!RST) P_DATA_Valid <= 0;
else if(Data_Valid && !busy) P_DATA_Valid <= P_DATA;
else if(ser_en) P_DATA_Valid <= P_DATA_Valid >> 1;
end

always @(posedge CLK, negedge RST) begin
if(!RST)  counter<=0;
else if(ser_en) counter <= counter + 1'b1;
else counter<=1'b0;
end

assign ser_done = (counter==3'b111);

assign ser_data = P_DATA_Valid[0];

endmodule