module derived2based;

class Packet;
	integer i = 1;
	function integer get();
		get = i;
	endfunction
endclass

class DerivedPacket extends Packet;
	integer i = 2;
	function integer get();
		get = -i;
	endfunction
endclass

initial begin
//	DerivedPacket ld,lp=new;
	static DerivedPacket ld,lp=new;
	integer j;
//	static packet	p = lp
	j = lp.i;
//	j = lp.get();
//	$cast(ld,p);
	end

endmodule
