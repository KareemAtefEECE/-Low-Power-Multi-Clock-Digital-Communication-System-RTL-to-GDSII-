module ClkDiv(
  input wire i_ref_clk,
  input wire i_rst_n,
  input wire[7:0] i_div_ratio,
  input wire i_clk_en,
  output wire o_div_clk
);

wire[6:0] toggle_at_half;
reg[6:0] counter;
reg div_clk;
wire is_odd;
reg odd_flag_toggle;
wire is_zero;
wire is_one;
wire clk_en;


always @(posedge i_ref_clk or negedge i_rst_n) begin
      if(!i_rst_n) begin
        div_clk <= 0;
        counter <= 0;
        odd_flag_toggle <= 0;
      end
      else if(((counter == toggle_at_half) && !odd_flag_toggle ) || ((counter == toggle_at_half+is_odd) && odd_flag_toggle )) begin
        counter <=0;
        div_clk <= ~div_clk;
        odd_flag_toggle <= ~odd_flag_toggle;
      end
      else counter <= counter + 1'b1;
end

assign is_zero = (i_div_ratio == 8'd0);
assign is_one = (i_div_ratio == 8'd1);
assign toggle_at_half = (i_div_ratio >> 1) -1;
assign is_odd = i_div_ratio[0];
assign clk_en = i_clk_en && !is_one && !is_zero;
assign o_div_clk = clk_en? div_clk : i_ref_clk;

endmodule


