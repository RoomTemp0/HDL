`timescale 1ns/1ps

module half_adder_tb;

   reg A;
   reg B;
   wire Sum;
   wire Carry;


   half_adder uut (

    .A(A), 
    .B(B), 
    .Sum(Sum),
    .Carry(Carry)
   );


   initial begin 

      $dumpfile("half_adder_tb.vcd");
      $dumpvars(0, half_adder_tb);

      $display("Time | A | B | Sum | Carry");
      $display("---------------------------");


      A = 0; B = 0; #5;
      $display("%t | %b | %b | %b | %b", $time, A, B, Sum, Carry);

      A = 0; B = 1; #5;
      $display("%t | %b | %b | %b | %b", $time, A, B, Sum, Carry);

      A = 1; B = 0; #5;
      $display("%t | %b | %b | %b | %b", $time, A, B, Sum, Carry);

      A = 1; B = 1; #5;
      $display("%t | %b | %b | %b | %b", $time, A, B, Sum, Carry);

      $stop;

   end
 

endmodule