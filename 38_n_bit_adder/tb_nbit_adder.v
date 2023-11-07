`timescale 1us/1ns

module tb_adder_nbit ();

parameter N = 10;
reg [N-1:0] a;
reg [N-1:0] b;
wire [N:0] sum;

adder_nbit #(.N(N)) dut1(.a(a), .b(b), .sum(sum));

initial begin
    $monitor($time," a = %d, b = %d, sum = %d",a,b,sum);
    #1; a = 0; b = 0;
    #1; a = 1; b = 99;
    #1; a = 33; b = 66;
    #1; a = 100; b = 47;
    #1; $stop;
end
    
endmodule