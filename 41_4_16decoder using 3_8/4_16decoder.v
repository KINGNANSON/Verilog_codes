
module decoder_3to8 
    (input [2:0] a,
     input enable,
     output reg [7:0] y
    );
 
    
    always @(a or enable) begin  
        if (enable == 0)
           y = 8'b0;
        else begin
            case (a)   
                3'b000 : y = 8'b00000001;
                3'b001 : y = 8'b00000010;
                3'b010 : y = 8'b00000100;
                3'b011 : y = 8'b00001000;
                3'b100 : y = 8'b00010000;
                3'b101 : y = 8'b00100000;
                3'b110 : y = 8'b01000000;
                3'b111 : y = 8'b10000000;
                
                default : y = 8'b00000000;
            endcase
        end
    end
  
endmodule


//verilog code for 4:16 decoder using module instantiation of 3_8 decoder

module decoder_4to16 
  (input [3:0] a,
   output[15:0] d
  );
 
    decoder_3to8 DEC1 (
        .a(a[2:0]),
        .enable(~a[3]),
        .y(d[7:0])
    );
  
    decoder_3to8 DEC2 (
        .a(a[2:0]),
        .enable(a[3]),
        .y(d[15:8])
    );
  
endmodule