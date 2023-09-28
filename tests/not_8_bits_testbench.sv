module test_bench_not_8_bits_structure();
  reg  A1, A2, A3, A4, A5, A6, A7, A8;
  wire S1, S2, S3, S4, S5, S6, S7, S8;
  
  not_8_bits_structure not_8(A1, A2, A3, A4, A5, A6, A7, A8, S1, S2, S3, S4, S5, S6, S7, S8);
  
  initial begin
    $dumpfile("not_8_bits_structure.vcd");
	  $dumpvars(1);
    
    $display("Begin tests NOT 8 bits.");

    // Simulation 1:
    // A = 1111 1111
    // NOT = 0000 0000
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 1; A1 = 1; #1
    
    $display("Simulation 1: A=%b%b%b%b %b%b%b%b; Not=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !== 0 | S2 !==0 | S3 !==0 | S4 !==0 | S5 !==0 | S6 !==0| S7 !==0 | S8 !==0) $display("Failed on scenario 1 should be 0000 0000.");

    // Simulation 2:
    // A = 0000 0000
    // NOT = 1111 1111
    
    A8 = 0; A7 = 0; A6 = 0; A5 = 0; A4 = 0; A3 = 0; A2 = 0; A1 = 0; #1
    
    $display("Simulation 2: A=%b%b%b%b %b%b%b%b; Not=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !==1 | S2 !==1 | S3 !==1 | S4 !==1 | S5 !==1 | S6 !==1 | S7 !==1 | S8 !==1) $display("Failed on scenario 2 should be 1111 1111.");

    // Simulation 3:
    // A = 1001 1001
    // NOT = 0110 0110
    
    A8 = 1; A7 = 0; A6 = 0; A5 = 1; A4 = 1; A3 = 0; A2 = 0; A1 = 1; #1
    
    $display("Simulation 3: A=%b%b%b%b %b%b%b%b; Not=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !==0 | S2 !==1 | S3 !==1 | S4 !==0 | S5 !==0 | S6 !==1 | S7 !==1 | S8 !==0) $display("Failed on scenario 3 should be 0110 0110.");

    // Simulation 4:
    // A = 1111 0000
    // NOT = 0000 1111
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 0; A3 = 0; A2 = 0; A1 = 0; #1
    
    $display("Simulation 4: A=%b%b%b%b %b%b%b%b; Not=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !==1 | S2 !==1 | S3 !==1 | S4 !==1 | S5 !==0 | S6 !==0 | S7 !==0 | S8 !==0) $display("Failed on scenario 4 should be 0000 1111.");

end
endmodule