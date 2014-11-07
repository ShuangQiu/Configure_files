//=============================================================================
//     FileName: display_time.v
//      Project: Morning Clock 
//         Desc:  this is a 7-4 CADT to display the time.
//                CADT is :Common Anode digital tube.
//       Author: Kechang Shao
//        Email: shao.kc@gmail.com
//   Department: UESTC ME
//     Homepage: http://qing.blog.sina.com.cn/1824997373
//      Version: 0.0.1
//      Created: 2014-10-23 15:00:57
//   LastChange: 2014-10-25 11:04:55
//      History:
//=============================================================================


module display_time(
//In
input   clk,
input   x_clr,

reg[31:0] clk_1ms_count;
reg[31:0] clk_1s_count;



input[3:0]  Digital_to_display,
//Out
output Pin_a,
output Pin_b,
output Pin_c,
output Pin_d,
output Pin_e,
output Pin_f,
output Pin_g,
output Pin_dp);


endmodule
