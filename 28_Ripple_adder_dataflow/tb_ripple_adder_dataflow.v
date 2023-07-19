module tesetbench_4bit_adder1();

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;


integer i,j;

parameter LOOP_LIMIT = 4;

ripple_adder_4bit_dataflow M1(.a(a), .b(b), .carry_in(cin), .sum(sum), .carry_out(cout));

always @(*) begin

    $display("a=%0d, b=%0d, carry_in=%0b, sum=%0d, carry_out=%b", a,b, cin,sum,cout);

end

initial begin
    for (i = 0 ;i<LOOP_LIMIT ;i=i+1 ) begin
        for (j = 0;j<LOOP_LIMIT ;j=j+1 ) begin
            #1 a = i; b = j; cin = i%2;
        end
        
    end
end
    
endmodule 
