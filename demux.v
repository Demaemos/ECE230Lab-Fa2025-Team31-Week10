module demux(
    input [7:0] A, [1:0] Sel,
    output reg [7:0] Y1, 
    output reg [7:0] Y2, 
    output reg [7:0] Y3, 
    output reg [7:0] Y4
);
    
    always @(*) begin 
        case(Sel)
            2'b00: {Y4, Y3, Y2, Y1} <= {8'b0, 8'b0, 8'b0, A}; 
            2'b01: {Y4, Y3, Y2, Y1} <= {8'b0, 8'b0, A, 8'b0};
            2'b10: {Y4, Y3, Y2, Y1} <= {8'b0, A, 8'b0, 8'b0};
            2'b11: {Y4, Y3, Y2, Y1} <= {A, 8'b0, 8'b0, 8'b0};
        endcase
    end
        
endmodule
