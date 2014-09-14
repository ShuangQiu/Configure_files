/*#=============================================================================
#     FileName: test.sv
#      Project: Traning
#         Desc: 
#       Author: Kechang Shao
#        Email: shao.kc@gmail.com
#   Department: UESTC ME
#     Homepage: http://qing.blog.sina.com.cn/1824997373
#      Version: 0.0.1
#      Created: 2014-09-14 22:58:22
#   LastChange: 2014-09-14 22:58:22
#      History:
#=============================================================================*/
//program automatic test;
program test;

int md[2][3] = '{'{0,1,2},'{3,4,5}};
//int md[2][3] = {{0,1,2},{3,4,5}};//Error.

initial begin

$display("Initial Value:");
foreach(md[i,j])
    $display("md[%0d][%0d] = %0d",i,j,md[i][j]);

$display("New Value:");
//md = '{'{9,8,7},'{3{32'd5}}}; //Error.
//md = '{'{9,8,7},'{{32'd5},{32'd5},{32'd5}}}; //OK.
//md = '{'{9,8,7},'{3{5}}}; //Error.
md = '{'{9,8,7},'{5,5,5}};//OK.
foreach(md[i,j])
    $display("md[%0d][%0d] = %0d",i,j,md[i][j]);

end

endprogram
