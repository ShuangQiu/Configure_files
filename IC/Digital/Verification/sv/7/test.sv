//program automatic test;
program test;
reg[10000:0] reg_a;

initial
begin
    reg_a = 4'b0;

    for (int i =1;i<=20*10^20;i++)begin
        #1
//        $display("%t:\t%d",$time,reg_a);
        reg_a = reg_a + 1;
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
