module arithmetic_op();

integer a=2;
integer b=3;
integer result;

initial begin
    $monitor("MON a = %0d, b = %0d, result = %0d", a, b, result);
end

initial begin
    result = a*b;
    #1;
    result = b**a;
    #1; a=177; b=12;
    result = b*a;

    #1; a=199; b=19;
    result = a/b;
   
   
    #1;
     result = a%b;


    #1; a=199; b=-19;
    result = a%b;

    #1; a=4199; b=-2319;
    result = a+b;

    #1; a=19234; b=-19;
    result = a-b;


end
    
endmodule