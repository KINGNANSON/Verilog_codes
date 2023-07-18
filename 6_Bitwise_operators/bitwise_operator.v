module  bitwise_examples();
reg [5:0] a = 0;
reg [5:0] b = 0;
reg [5:0] res = 0;



initial begin
    $monitor("check values for a=%b, b=%b, res=%b", a,b,res);
end

initial begin
    
  #1 ;
  a = 6'b00_0101;
  b = 6'b11_0001;

  res = a&b; 

#1 res = ~(a&b);
#1 res = a|b;
#1 res = ~(a|b);
#1 res = a^b;
#1 res = a~^b;
#1 res = ~(a^b);


end


    
endmodule