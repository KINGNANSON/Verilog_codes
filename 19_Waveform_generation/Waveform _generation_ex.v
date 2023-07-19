
`timescale 1us/1ns

module waveform ();

reg [1:0] sig1;
reg sig2;

initial begin
    sig1 = 0;
    #1;
    sig1[0] = 1'b1;
    #2;
    sig2 = 1'bz;
    #3;
    sig1[1] = 1'b1;
    #2;
    sig1 = 2'b0;
    sig2 = 1'b1;
    #7;
    sig1[0] = 1'b1;
    #6;
    sig2 = ~sig2;
    #4;
end
    
endmodule