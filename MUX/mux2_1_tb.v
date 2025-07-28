`timescale 1ns/1ps

module mux2_1_tb;


    reg D0;
    reg D1;
    reg Sel;
    wire Y;

    mux2_1 uut (
        .D0(D0),
        .D1(D1), 
        .Sel(Sel),  
        .Y(Y)
    );

    initial begin 


        $dumpfile("mux2_1_tb.vcd");
        $dumpvars(0, mux2_1_tb);

        $display("Time | D0 | D1 | Sel | Y");
        $display("-------------------------");


        D0 = 0; D1 = 0; Sel = 1; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 0; D1 = 1; Sel = 0; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 0; D1 = 1; Sel = 1; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 1; D1 = 0; Sel = 0; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 1; D1 = 0; Sel = 1; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 1; D1 = 1; Sel = 0; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        D0 = 1; D1 = 1; Sel = 1; #5;
        $display("%t   | %b | %b | %b | %b", $time, D0, D1, Sel, Y);

        $stop;
    end

endmodule