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
#   LastChange: 2014-09-16 23:07:12
#      History:
#=============================================================================*/
//program automatic test;
program test;

bit[31:0] src[5]='{5,5,5,5,5};

initial begin
//bit[31:0] src[5]='{5{5}};
$displayb (src[0],,      //'b101 or 'd5
           src[0][0],,   //'b1
           src[0][2:1]); //'b10
end

endprogram
