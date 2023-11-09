module encoder_8to3 
(
 input [7:0] d,
 input enable,
 output reg [2:0] y   
);

always @(*) begin
    if(enable==0)
    y = 8'b0;
    else begin
        case (d)
        8'b0000_0001 : y=3'd0;
        8'b0000_0010 : y=3'd1;
        8'b0000_0100 : y=3'd2;
        8'b0000_1000 : y=3'd3;
        8'b0001_0000 : y=3'd4; 
        8'b0010_0000 : y=3'd5;
        8'b0100_0000 : y=3'd6;
        8'b1000_0000 : y=3'd7;
            default: y=3'd0;
        endcase
    end
end
    
endmodule