module logical_op ();

reg [2:0] v1=3'b111;
reg [3:0] v2=4'b0000;

initial begin
    #1;
    if(!v1) begin
$display("v1 = %b",v1);
    end

    else begin
        $display("my v1=0 but v1=%b",v1);
    end

    #1;
    if(!v2) begin
        $display("v2 = %b",v2);
    end else begin
        $display("my value v2 = 0 but v2=%b",v2);
    end


#1;
if (v1&&(!v2)) begin
    $display("v1 = %b, v2 = %b", v1,v2);

end else begin
    $display("i expect v1!=0 and v2=0 but v1=%b but v2 =%b",v1,v2);
end

#1;
while (v2<3) begin
    $display("while loop v2 = %d", v2);
v2=v2+1;
end
end
    
endmodule