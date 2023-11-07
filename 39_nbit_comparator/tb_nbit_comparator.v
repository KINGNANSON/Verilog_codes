`timescale 1us/1ns

module tb_comparator_nbit ();

parameter data_width = 12;

reg [data_width-1:0] a;
reg [data_width-1:0] b;
wire smaller;
wire equal;
wire greater;

nbit_comparator #(.N(data_width)) mod1(.a(a), .b(b), .smaller(smaller), .equal(equal), .greater(greater));

initial begin
    $monitor($time,"a = %d, b = %d, smaller = %d, equal =%d, greater = %d", a,b,smaller,equal,greater);
    #1; a=0; b=0;
    #1; a=5; b=99;
    #1; a=66; b=66;
    #1; a=100; b=47;
    #1; $stop;
end
    
endmodule