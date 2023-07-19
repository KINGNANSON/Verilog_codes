module full_adder_structural (a,b,carry_in,sum,carry_out);

input a,b,carry_in;
output sum,carry_out;
wire sum1;
wire carry1,carry2;

half_add_structural HA1(.a(a), .b(b), .sum(sum1), .carry(carry1));

half_add_structural HA2(.a(sum1), .b(carry_in), .sum(sum), .carry(carry2));

or (carry_out,carry1,carry2);

    
endmodule

