module DUT;
reg data = 0;
reg clk = 0;
initial #10 clk = 1;
always @ (posedge clk)
    data <= 1;
endmodule

module tb_module;
initial forever @(posedge DUT.clk) $display("module data = %0d", DUT.data);
endmodule

program tb_program;
initial forever @(posedge DUT.clk) $display("program data = %0d", DUT.data);
endprogram
