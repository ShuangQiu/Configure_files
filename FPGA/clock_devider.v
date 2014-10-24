//=============================================================================
//     FileName: clock_devider.v
//      Project: Morning Clock 
//         Desc: this is a module for devide te base clock to some bigger Cycle.
//       Author: Kechang Shao
//        Email: shao.kc@gmail.com
//   Department: UESTC ME
//     Homepage: http://qing.blog.sina.com.cn/1824997373
//      Version: 0.0.1
//      Created: 2014-10-23 15:00:57
//   LastChange: 2014-10-24 14:18:14
//      History:
//=============================================================================


module clock_devider(
//In
input   clk,
input   x_clr,

//Out
output D_1us_clk, 
output D_1ms_clk,
output D_1s_clk,
output D_1m_clk,
output D_1h_clk,
output D_1d_clk);


reg D_1us_clk; 
reg D_1ms_clk;
reg D_1s_clk;
reg D_1m_clk;
reg D_1h_clk;
reg D_1d_clk;

reg[31:0] clk_count;
reg[31:0] clk_1us_count;
reg[31:0] clk_1ms_count;
reg[31:0] clk_1s_count;

parameter P_COUNT_1US = 50;          //soppose that the FRQ of the clk is 50MHz;
parameter P_COUNT_1MS = P_COUNT_1US * 1000; 
parameter P_COUNT_1S  = P_COUNT_1MS * 1000; 
parameter P_COUNT_1M  = P_COUNT_1S * 60; 
parameter P_COUNT_1H  = P_COUNT_1M * 60 ; 
parameter P_COUNT_1D  = P_COUNT_1H * 24 ; 


always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_count <= 32'b0;
   end
   else begin
    clk_count <= clk_count + 1'b1;
   end
end


always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1us_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1US) begin
    D_1us_clk <= ~D_1us_clk;
   end
   else begin
    D_1us_clk <= D_1us_clk;
   end
end

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1ms_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1MS) begin
    D_1ms_clk <= ~D_1ms_clk;
   end
   else begin
    D_1ms_clk <= D_1ms_clk;
   end
end

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1s_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1S) begin
    D_1s_clk <= ~D_1s_clk;
   end
   else begin
    D_1s_clk <= D_1s_clk;
   end
end

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1m_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1M) begin
    D_1m_clk <= ~D_1m_clk;
   end
   else begin
    D_1m_clk <= D_1m_clk;
   end
end

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1h_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1H) begin
    D_1h_clk <= ~D_1us_clk;
   end
   else begin
    D_1h_clk <= D_1us_clk;
   end
end

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_1d_clk <= 'b0;
   end
   else if( clk_count == P_COUNT_1D) begin
    D_1d_clk <= ~D_1us_clk;
   end
   else begin
    D_1d_clk <= D_1us_clk;
   end
end

endmodule
