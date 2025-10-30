module memory_system(
    input [7:0] A, 
    input [1:0] Sel,
    input store,
    output [7:0] memory   
);

    demux demux_a(
        .A(A),
        .Sel(Sel)
    );
    
    demux demux_b(
        .A(store),
        .Sel(Sel)
    );
    
    byte_memory mem_a(
        .A(demux_a.Y1),
        .store(demux_b.Y1)
    );
    
    byte_memory mem_b(
        .A(demux_a.Y2),
        .store(demux_b.Y2)
    );
    
    byte_memory mem_c(
        .A(demux_a.Y3),
        .store(demux_b.Y3)
    );
    
    byte_memory mem_d(
        .A(demux_a.Y4),
        .store(demux_b.Y4)
    );
    
    mux mux_a(
        .Sel(Sel),
        .A(mem_a.memory),
        .B(mem_b.memory),
        .C(mem_c.memory),
        .D(mem_d.memory),
        .Y(memory)
    );
        
endmodule
