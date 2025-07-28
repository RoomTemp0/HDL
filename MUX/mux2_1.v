module mux2_1 (

    input wire D0,
    input wire D1,
    input wire Sel,
    output wire Y
);

wire not_sel_out;
wire and_out_d0;
wire and_out_d1;

not_gate not_gate_inst (

    .A(Sel),
    .Y(not_sel_out)
);


and_gate and_gate_d0_inst (

    .A(not_sel_out), 
    .B(D0), 
    .Y(and_out_d0)
);


and_gate and_gate_d1_inst (

    .A(Sel), 
    .B(D1), 
    .Y(and_out_d1)
);


or_gate or_gate_inst (

    .A(and_out_d0), 
    .B(and_out_d1), 
    .Y(Y)
);

endmodule