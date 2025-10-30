module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .En(btnC)
    );
    
    memory_system part2(
        .A(sw[15:8]),
        .Sel(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule