module byte_memory(
    input [7:0] A,
    input store,
    output reg [7:0] memory
);

    always @(store) begin
        if (store)
            memory <= A;
    end

endmodule