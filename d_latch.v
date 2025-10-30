module d_latch(
    input En, D,
    output reg Q,
    output NotQ
);

    always @(En) begin
        if (En)
            Q <= D;
    end

    assign NotQ = ~Q;

endmodule