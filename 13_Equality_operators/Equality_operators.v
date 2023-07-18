module equality_op ();
    reg result;


    initial begin
        #1; result = (1'b1 == 1'b0);
        $display("result = %b",result);
        #1; result = (1'b1 == 1'b1);
        $display("result = %b",result);
        #1; result = (1'b1 == 1'bx);
        $display("result = %b",result);
        #1; result = (3'b101 == 3'b100);
        $display("result = %b",result);
        #1; result = (3'b101 != 3'b101);
        $display("result = %b",result);


        #1; result = (3'b10z == 3'b10z);
        $display("result = %b",result);
        #1; result = (3'b10z === 3'b10z);
        $display("result = %b",result);
        #1; result = (3'b1xz == 3'b10z);
        $display("result = %b",result);
        #1; result = (3'b1xz == 3'b1xz);
        $display("result = %b",result);
        #1; result = (2'bxx !== 2'bxx);
        $display("result = %b",result);
    end
endmodule