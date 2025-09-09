
module ALU #(
    parameter A_WIDTH = 8,
              B_WIDTH = 8,
              FUN_WIDTH = 4,
              OUT_WIDTH = 16
)(
    input wire CLK,
    input wire RST,
    input wire[A_WIDTH-1:0] A,
    input wire[B_WIDTH-1:0] B,
    input wire[FUN_WIDTH-1:0] ALU_FUN,
    input wire Enable,
    output reg[OUT_WIDTH-1:0] ALU_OUT,
    output reg OUT_VALID
);

reg[OUT_WIDTH-1:0] ALU_OUT_Comb;
reg OUT_VALID_Comb;

always @(posedge CLK, negedge RST) begin
    if(!RST) begin
        ALU_OUT <= {OUT_WIDTH{1'b0}} ;
        OUT_VALID <= 1'b0 ;
    end
    else begin
        ALU_OUT <= ALU_OUT_Comb ;
        OUT_VALID <= OUT_VALID_Comb ;
    end
end


always @(*)
  begin
	 ALU_OUT_Comb = {OUT_WIDTH{1'b0}} ;
     OUT_VALID_Comb = 1'b0 ;
     if(Enable) begin
        OUT_VALID_Comb = 1'b1;
    case (ALU_FUN) 
    4'b0000:  ALU_OUT_Comb = A+B;
    4'b0001:  ALU_OUT_Comb = A-B;
    4'b0010:  ALU_OUT_Comb = A*B;
    4'b0011:  ALU_OUT_Comb = A/B;
    4'b0100:  ALU_OUT_Comb = A & B;
    4'b0101:  ALU_OUT_Comb = A | B;
    4'b0110:  ALU_OUT_Comb = ~ (A & B);
    4'b0111:  ALU_OUT_Comb = ~ (A | B);   
    4'b1000:  ALU_OUT_Comb =  (A ^ B);
    4'b1001:  ALU_OUT_Comb = ~ (A ^ B);
    4'b1010:  ALU_OUT_Comb = (A==B) ? {OUT_WIDTH{1'b1}} : {OUT_WIDTH{1'b0}} ;
    4'b1011:  ALU_OUT_Comb = (A>B) ? {OUT_WIDTH{1'b1}} : {OUT_WIDTH{1'b0}} ;     
    4'b1100:  ALU_OUT_Comb = A>>1;
    4'b1101:  ALU_OUT_Comb = A<<1;
    default:  ALU_OUT_Comb = {OUT_WIDTH{1'b0}};
    endcase
     end
     else OUT_VALID_Comb = 1'b0 ;
  end

  endmodule