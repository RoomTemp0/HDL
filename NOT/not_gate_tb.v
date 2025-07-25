`timescale 1ns/1ps

module not_gate_tb;


    reg A;
    wire Y;

    not_gate uut (
        .A(A),  
        .Y(Y)
    );

    initial begin 


        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0, not_gate_tb);

        $display("Time | A | Y");
        $display("------------------");


        A = 0; #5;
        $display("%t   | %b | %b", $time, A, Y);

        A = 1; #5;
        $display("%t   | %b | %b", $time, A, Y);

        $stop;
    end

endmodule