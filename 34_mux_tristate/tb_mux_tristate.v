
`timescale 1us/1ns
module tb_mux_tristate(
    );
	
    reg d1,d0;
    reg sel;
    wire dout;

	
    // Instantiate the DUT
    mux_tristate MUX1(
       .a(d0), .b(d1),
       .sel(sel),
       .dout(dout)
    );
  
	// Generate stimulus
	initial begin
	   $monitor(" d1 = %b, d0 = %b, sel = %b, dout = %b", d1, d0, sel, dout);
       #1; d1 = 0; d0 = 0; sel = 0;
	   #1; d1 = 1; d0 = 0; sel = 0;
       #1; d1 = 1; d0 = 0; sel = 1;
       #1; d1 = 0; d0 = 1; sel = 1;
       #1; d1 = 0; d0 = 1; sel = 0;

	   #7; $stop;
	end

endmodule

