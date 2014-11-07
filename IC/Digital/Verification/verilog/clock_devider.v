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
output       D_2us_clk, 
output       D_1ms_clk,
output       D_1s_clk,
output[5:0]  clk_1s_count,
output[5:0]  clk_1m_count,
output[4:0]  clk_1h_count,
output[9:0]  clk_1d_count);

reg D_2us_clk; 
reg D_1ms_clk;
reg D_1s_clk;

reg[63:0] clk_count;
reg[9:0]  clk_2us_count;
reg[9:0]  clk_1ms_count;
reg[5:0]  clk_1s_count;
reg[5:0]  clk_1m_count;
reg[4:0]  clk_1h_count;
reg[9:0]  clk_1d_count;

reg[9:0]  clk_1s_ms_count;


parameter[63:0] P_COUNT_1US = 50;            //soppose that the FRQ of the clk is 50MHz;
parameter[7:0] WIDTH_COUNT_1US = 8;          //soppose that the FRQ of the clk is 50MHz;

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_count <= 32'b0;
   end
   else if( clk_count[7:0] == 8'd49) begin
    clk_count <= 32'b0;
   end
   else begin
    clk_count <= clk_count + 1'b1;
   end
end


//////////////////////////////////////
//////clock devider///////////////////
//////////////////////////////////////

always@(posedge clk or negedge x_clr)
begin
   if (!x_clr) begin
    D_2us_clk <= 'b0;
   end
   else if( clk_count[WIDTH_COUNT_1US-1:0] == P_COUNT_1US - 1'b1) begin
    D_2us_clk <= ~D_2us_clk;
   end
   else begin
    D_2us_clk <= D_2us_clk;
   end
end

//Generate clock for 1ms
always@(posedge D_2us_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_2us_count <= 10'b0;
    D_1ms_clk     <= 1'b0;
   end
   else if( clk_2us_count  == 32'd250 - 32'd1 ) begin
    clk_2us_count <= 10'b0;
    D_1ms_clk     <= ~D_1ms_clk;
   end
   else begin
    clk_2us_count <= clk_2us_count + 1'b1;
    D_1ms_clk     <= D_1ms_clk;
   end
end


//Generate clock for 1s
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1ms_count <= 10'b0;
    D_1s_clk     <= 1'b0;
   end
   else if( clk_1ms_count  == 32'd500 - 32'd1 ) begin
    clk_1ms_count <= 10'b0;
    D_1s_clk     <= ~D_1s_clk;
   end
   else begin
    clk_1ms_count <= clk_1ms_count + 1'b1;
    D_1s_clk     <= D_1s_clk;
   end
end


//Generate Counter for micro-second 
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1s_ms_count <= 10'b0;
   end
   else if( clk_1s_ms_count  == 10'd1000 - 10'd1 ) begin
    clk_1s_ms_count <= 10'b0;
   end
   else begin
    clk_1s_ms_count <= clk_1s_ms_count + 1'b1;
   end
end

//Counter for second.
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1s_count <= 6'b0;
   end
   else if(( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1s_count <= 6'b0;
   end
   else if( clk_1s_ms_count  == 10'd1000 - 10'd1 ) begin
    clk_1s_count <= clk_1s_count + 6'b1;
   end
   else begin
    clk_1s_count <= clk_1s_count;
   end
end


//Counter for Minutes.
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1m_count <= 6'b0;
   end
   else if(( clk_1m_count  == 6'd60 - 6'd1 ) & ( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1m_count <= 6'b0;
   end
   else if(( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1m_count <= clk_1m_count + 6'b1;
   end
   else begin
    clk_1m_count <= clk_1m_count;
   end
end


//Counter for Hours.
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1h_count <= 5'b0;
   end
   else if(( clk_1h_count  == 5'd24 - 6'd1 ) & ( clk_1m_count  == 6'd60 - 6'd1 ) & ( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1h_count <= 5'b0;
   end
   else if(( clk_1m_count  == 6'd60 - 6'd1 ) & ( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1h_count <= clk_1h_count + 5'b1;
   end
   else begin
    clk_1h_count <= clk_1h_count;
   end
end

// Counter for days
always@(posedge D_1ms_clk or negedge x_clr)
begin
   if (!x_clr) begin
    clk_1d_count <= 10'b0;
   end
   else if(( clk_1d_count  == 10'd366 - 6'd1 ) & ( clk_1h_count  == 5'd24 - 6'd1 ) & ( clk_1m_count  == 6'd60 - 6'd1 ) & ( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1d_count <= 10'b0;
   end
   else if(( clk_1h_count  == 5'd24 - 6'd1 ) & ( clk_1m_count  == 6'd60 - 6'd1 ) & ( clk_1s_count  == 6'd60 - 6'd1 ) & ( clk_1s_ms_count  == 10'd1000 - 10'd1 )) begin
    clk_1d_count <= clk_1d_count + 10'b1;
   end
   else begin
    clk_1d_count <= clk_1d_count;
   end
end


endmodule
