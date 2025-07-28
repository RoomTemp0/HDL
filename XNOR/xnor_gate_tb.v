`timescale 1ns/1ps

module xnor_gate_tb;


    reg A;
    reg B;
    wire Y;


    xnor_gate uut (
        .A(A), 
        .B(B), 
        .Y(Y)
    );

    initial begin
        
        $dumpfile("xnor_gate_tb.vcd");
        $dumpvars(0, xnor_gate_tb);

        $display("Time | A | B | Y");
        $display("------------------");


        A = 0; B = 0; #5;
        $display("%t   | %b | %b | %b", $time, A, B, Y);

        A = 0; B = 1; #5;
        $display("%t   | %b | %b | %b", $time, A, B, Y);

        A = 1; B = 0; #5;
        $display("%t   | %b | %b | %b", $time, A, B, Y);

        A = 1; B = 1; #5;
        $display("%t   | %b | %b | %b", $time, A, B, Y);

        $stop;
    end

endmodule