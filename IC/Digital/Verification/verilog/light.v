//=============================================================================
//     FileName: light.v
//      Project: Morning Clock 
//         Desc: this is a module for transfer the Digital num to 
//               the Pin signal of  SEG7-MPX1-CA-BLUE.
//               this is a CADT(Common Anode digital tube).
//       Author: Kechang Shao
//        Email: shao.kc@gmail.com
//   Department: UESTC ME
//     Homepage: http://qing.blog.sina.com.cn/1824997373
//      Version: 0.0.1
//      Created: 2014-10-23 15:00:57
//   LastChange: 2014-10-23 15:00:57
//      History:
//=============================================================================


module light(
//In
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

reg[7:0]   Pin_Digital_to_display;

wire   Pin_a;
wire   Pin_b;
wire   Pin_c;
wire   Pin_d;
wire   Pin_e;
wire   Pin_f;
wire   Pin_g;
wire   Pin_dp;


always@(Digital_to_display)
begin
  case (Digital_to_display)
    4'h1: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "1"
    4'h2: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "2"
    4'h3: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "3"
    4'h4: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "4"
    4'h5: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "5"
    4'h6: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "6"
    4'h7: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "7"
    4'h8: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "8"
    4'h9: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "9"
    4'hA: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "A"
    4'hB: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "B"
    4'hC: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "C"
    4'hD: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "D"
    4'hE: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "E"
    4'hF: Pin_Digital_to_display = 8'b0_11_0_00_0_0;     //Display "F"
    default: Pin_Digital_to_display = 8'b0_11_0_11_1_0;  // display "H"
 endcase
end

assign Pin_a = Pin_Digital_to_display[7];
assign Pin_b = Pin_Digital_to_display[6];
assign Pin_c = Pin_Digital_to_display[5];
assign Pin_d = Pin_Digital_to_display[4];
assign Pin_e = Pin_Digital_to_display[3];
assign Pin_f = Pin_Digital_to_display[2];
assign Pin_g = Pin_Digital_to_display[1];
assign Pin_dp = Pin_Digital_to_display[0];

endmodule
