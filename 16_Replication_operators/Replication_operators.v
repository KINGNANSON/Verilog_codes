module replication_op ();
    reg [7:0] a;
    reg [31:0] b;

    initial begin
        
        #1; a = {4{2'b10}};
        $display("a = %b",a);

        #1; a = {2{4'b1x0z}};
        $display("a = %b",a);

        #1; a = {{4'b1010},{4{1'b1}}};
        $display("a = %b",a);

        #1; b = {8{4'b0110}};
        $display("b = %b",b);

        #1; b = {{2{8'b0111_0001}},{4{4'bxz01}}};
        $display("b = %b",b);

        #1; b = {16{2'b10}};
        $display("b = %b",b);


    end
endmodule