module ripple_adder_4bit_structural (a,b,carry_in,sum,carry_out);

input [3:0] a,b;
input carry_in;
output [3:0] sum;
output carry_out;

wire [2:0] c;

full_adder_structural FA0( .a(a[0]), .b(b[0]), .carry_in(carry_in), .sum(sum[0]), .carry_out(c[0]));
full_adder_structural FA1( .a(a[1]), .b(b[1]), .carry_in(c[0]), .sum(sum[1]), .carry_out(c[1]));
full_adder_structural FA2( .a(a[2]), .b(b[2]), .carry_in(c[1]), .sum(sum[2]), .carry_out(c[2]));
full_adder_structural FA3( .a(a[3]), .b(b[3]), .carry_in(c[2]), .sum(sum[3]), .carry_out(carry_out));
    
endmodule




