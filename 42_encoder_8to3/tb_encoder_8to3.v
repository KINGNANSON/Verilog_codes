module tb_encoder_8to3 ();

reg [7:0]d;
reg enable;
wire [2:0]out;
integer i;
encoder_8to3 mod1(.d(d), .enable(enable), .y(out));

initial begin
    $monitor($time," data = %b, y = %d",d,out);
    #1; d=0; enable = 0;
    for(i=0;i<8;i=i+1)begin
        #1; d = (1<<i); enable=1;
    end
    #1; d = 8'b1111_1111;
    #5; $stop;

end
    
endmodule