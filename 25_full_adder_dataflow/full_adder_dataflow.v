module full_adder_dataflow (a,b,carry_in,sum,carry_out);

input a,b,carry_in;
output sum, carry_out;

wire sum1;
wire and1;
wire and2;


// stage 1
assign sum1 = a^b;
assign and1 = sum1 & carry_in;
assign and2 = a & b;

assign sum = sum1^carry_in;
assign carry_out = and1 | and2;
    
endmodule