module half_adder (

    input wire A, 
    input wire B, 
    output wire Sum,
    output wire Carry
);


xor_gate xor_gate_inst (

    .A(A), 
    .B(B),
    .Y(Sum)
);

and_gate and_gate_inst (

    .A(A), 
    .B(B), 
    .Y(Carry)
);

endmodule