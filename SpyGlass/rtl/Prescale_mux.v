
module Prescale_mux(
    input wire [5:0] prescale,
    output reg[7:0] div_ratio
);

always @(*) begin
    case(prescale)
    6'd8: div_ratio = 8'd4;
    6'd16: div_ratio = 8'd2;
    6'd32: div_ratio = 8'd1;
    default: div_ratio = 8'd1;
    endcase
end

endmodule