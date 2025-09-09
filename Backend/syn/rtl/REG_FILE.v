
module REG_FILE #(
    parameter WR_WIDTH = 8,
              RD_WIDTH = 8,
              ADDR_WIDTH = 4,
              REG_WIDTH = 8
)
(
    input wire[WR_WIDTH-1:0] WrData,
    input wire[ADDR_WIDTH-1:0] Address,
    input wire WrEn,
    input wire RdEn,
    input wire CLK,
    input wire RST,
    output reg[RD_WIDTH-1:0] RdData,
    output reg RdData_Valid,
    output wire[REG_WIDTH-1:0] REG0,
    output wire[REG_WIDTH-1:0] REG1,
    output wire[REG_WIDTH-1:0] REG2,
    output wire[REG_WIDTH-1:0] REG3
);

reg[WR_WIDTH-1:0] regfile[15:0];
integer i;

always @(posedge CLK,negedge RST) begin
     if(!RST) begin
        for(i=0;i<16;i=i+1) begin
            if(i==2) regfile[i] <= 'b100000_01;
            else if(i==3) regfile[i] <= 'b00100000;
            else regfile[i]<=0;
        end
         RdData<={RD_WIDTH{1'b0}};
         RdData_Valid <= 1'b0;
     end
     else begin
        if(WrEn) regfile[Address]<=WrData;
        else if(RdEn) begin
            RdData <= regfile[Address];
            RdData_Valid <= 1'b1;
        end
        else begin
         RdData<={RD_WIDTH{1'b0}};
         RdData_Valid <= 1'b0;
        end
     end
end

    assign REG0 = regfile[0];
    assign REG1 = regfile[1];
    assign REG2 = regfile[2];
    assign REG3 = regfile[3];

endmodule
