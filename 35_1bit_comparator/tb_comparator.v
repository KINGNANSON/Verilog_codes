`timescale 1us/1ns

module tb_comparator ();

reg a,b;
wire smaller, greater, equal;

comparator_1bit mod1(.a(a), .b(b), .smaller(smaller), .greater(greater), .equal(equal) );

initial begin
    $monitor("a = %b, b =%b, smaller = %b, greater = %b, equal = %b",a,b,smaller,greater,equal);
    #1; a = 0; b = 0;
    #1; a = 1; b = 0;
    #1; a = 1; b = 0;
    #1; a = 0; b = 1;
    #1; a = 1; b = 1;
    #1; $stop;
end
    
endmodule