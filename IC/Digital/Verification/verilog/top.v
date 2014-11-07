/*=============================================================================
#     FileName: top.v
#      Project: clock 
#         Desc: 
#       Author: Kechang Shao
#        Email: shao.kc@gmail.com
#   Department: Me
#     Homepage: 
#      Version: 0.0.1
#      Created: 2014-10-25 10:50:02
#   LastChange: 2014-10-25 10:50:02
#      History:
=============================================================================*/
module top;

reg clk;
reg x_clr;

wire D_2us_clk;
wire D_1ms_clk;
wire D_1s_clk;
wire D_1m_clk;
wire D_1h_clk;
wire D_1d_clk;

wire [5:0]  clk_1s_count;
wire [5:0]  clk_1m_count;
wire [4:0]  clk_1h_count;
wire [9:0]  clk_1d_count;

initial begin
  x_clr = 0;
  clk   = 0;
  $display("Now is : %t",$time);
  #300
  x_clr = 1;
  $display("Now is : %t",$time);
end

always #10 clk = ~clk;

clock_devider INST_clock_devider (
              .clk      (clk       ),
              .x_clr    (x_clr     ),
              .D_2us_clk(D_2us_clk ),
              .D_1ms_clk(D_1ms_clk ),
              .D_1s_clk (D_1s_clk  ),
              .clk_1s_count(clk_1s_count),
              .clk_1m_count(clk_1m_count),
              .clk_1h_count(clk_1h_count),
              .clk_1d_count(clk_1d_count));

always @(posedge D_1s_clk)
begin
  $display("Now,System time is:%t",$time);
  $display("%2d:%2d:%2d",clk_1h_count,clk_1m_count,clk_1s_count);
end





endmodule
