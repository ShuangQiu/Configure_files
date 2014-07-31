module assertion_chk();


reg clk;
reg a;
reg b;
reg c;


initial 
begin
$shm_open("./wave");
$shm_probe(assertion_chk,"AC");
$shm_close;
$dumpvars(0);
    $display($time);
    clk = 0;
    a=0;
    b=0;
    c=0;
    #4
    a=1;
    $display($time);
    #5
    b=1;
    $display($time);
    #20
    c=1;
    $display($time);
end

always #5 clk=~clk;

endmodule

