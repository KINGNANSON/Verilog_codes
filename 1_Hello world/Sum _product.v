module arithmetic ();

integer a,b,sum;

real x,y,pro;

initial begin
    a=298;
    b=10;
    sum=a+b;
    $display("\n\t the sum of a =%4d, b=%0d, sum =%0d ",a,b,sum);

    //now
    x=13.2;
    y=19.4;

    pro = x*y;
    $display("\n\t x=%0.2f, y =%0.2f, pro =%0.2f ", x,y,pro);

end

    
endmodule