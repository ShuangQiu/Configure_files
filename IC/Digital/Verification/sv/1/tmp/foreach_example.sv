//Chapter2 foreach_example.sv
module foreach_example();
string words[2] = '{"hello","world"};
//int prod[1:8][1:3];

initial begin
foreach (words [j])
	$display(j,words[j]);  //print each index and value
//foreach(prod[k,m])
//	prod[k][m] = k*m;	//initialize
end

endmodule
