module full_adder_behavioral (a,b,carry_in,sum,carry_out);

input a,b,carry_in;
output reg sum,carry_out;

always @(a,b,carry_in) begin
    sum = a^b^carry_in;
    carry_out = (a&b) | (carry_in & (a^b));
end


endmodule

