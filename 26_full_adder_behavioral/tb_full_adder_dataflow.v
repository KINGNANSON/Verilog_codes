module full_adder_tb__behavioral ();

reg a_tb;
reg b_tb;
reg cin_tb;
wire sum_tb;
wire cout_tb;

full_adder_behavioral M1(.a(a_tb), .b(b_tb), .carry_in(cin_tb), .sum(sum_tb), .carry_out(cout_tb));

initial begin
    
    $monitor("a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b ",a_tb,b_tb,cin_tb,sum_tb,cout_tb);
end

initial begin
    #1;  a_tb = 0; b_tb = 0; cin_tb = 0;
    #1;  a_tb = 0; b_tb = 0; cin_tb = 1;
    #1;  a_tb = 0; b_tb = 1; cin_tb = 0; 
    #1;  a_tb = 0; b_tb = 1; cin_tb = 1;
    #1;  a_tb = 1; b_tb = 0; cin_tb = 0;
    #1;  a_tb = 1; b_tb = 0; cin_tb = 1;
    #1;  a_tb = 1; b_tb = 1; cin_tb = 0;
    #1;  a_tb = 1; b_tb = 1; cin_tb = 1;


end

    
endmodule
