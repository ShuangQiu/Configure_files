import "DPI-C" function int factorial(input int i);

//program automatic test;
program test;
reg[3:0] reg_a;

initial
begin
    reg_a = 4'b0;

    for (int i =1;i<=20;i++)begin
        #1
        $display("%t",$time);
        $display("%0d!=%0d",i,factorial(i));
        #1
        reg_a = reg_a + 4'b1;
    end
end

/* //this code segments have been merged into TCL files.
initial
begin
    $shm_open("wave.shm");
    $shm_probe(test,"AS");
end
*/

endprogram
