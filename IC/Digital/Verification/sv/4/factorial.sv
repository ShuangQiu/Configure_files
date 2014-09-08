import "DPI-C" function int factorial(input int i);

//program automatic test;
program test;
initial
begin
    for (int i =1;i<=10;i++)
        #1
        $display("%0d!=%0d",i,factorial(i));
end

endprogram
