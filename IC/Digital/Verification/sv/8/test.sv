//program automatic test;
program test;

//int md[2][3] = '{'{0,1,2},'{3,4,5}};
int md[2][3] = {{0,1,2},{3,4,5}};

initial begin

$display("Initial Value:");
foreach(md[i,j])
    $display("md[%0d][%0d] = %0d",i,j,md[i][j]);

$display("New Value:");
md = '{'{9,8,7},'{3{32'd5}}};
foreach(md[i,j])
    $display("md[%0d][%0d] = %0d",i,j,md[i][j]);

end

endprogram
