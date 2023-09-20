module test_bench_and_8_bits_structure();
  reg  A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  wire S1, S2, S3, S4, S5, S6, S7, S8;
  
  and_8_bits_structure fa8(A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8, S1, S2, S3, S4, S5, S6, S7, S8);
  
  initial begin
    $dumpfile("and_8_bits_structure.vcd");
	$dumpvars(1);
    
    $display("Begin tests And 8 bits.");

    // Simulation 1:
    // A = 1111 1111
    // B = 0000 0000
    // AND = 0000 0000
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 1; A1 = 1; 
    B8 = 0; B7 = 0; B6 = 0; B5 = 0; B4 = 0; B3 = 0; B2 = 0; B1 = 0; #10
    
    $display("Simulation 1: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; And=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !== 0 | S2 !==0 | S3 !==0 | S4 !==0 | S5 !==0 | S6 !==0| S7 !==0 | S8 !==0) $display("Failed on scenario 1 should be 0000 0000.");
    
    // Simulation 2:
    // A = 1111 1111
    // B = 1010 1001
    // AND = 1010 1001
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 1; A1 = 1; 
    B8 = 1; B7 = 0; B6 = 1; B5 = 0; B4 = 1; B3 = 0; B2 = 0; B1 = 1; #10
    
    $display("Simulation 2: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; And=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !== 1 | S2 !==0 | S3 !==0 | S4 !==1 | S5 !==0 | S6 !==1 | S7 !==0 | S8 !==1) $display("Failed on scenario 2 should be 1010 1001.");
    
    // Simulation 3:
    // A = 1111 1111
    // B = 1111 1111
    // AND = 1111 1111
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 1; A1 = 1; 
    B8 = 1; B7 = 1; B6 = 1; B5 = 1; B4 = 1; B3 = 1; B2 = 1; B1 = 1; #10
    
    $display("Simulation 3: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; And=%b%b%b%b %b%b%b%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1);

    if (S1 !== 1 | S2 !==1 | S3 !==1 | S4 !==1 | S5 !==1 | S6 !==1 | S7 !==1 | S8 !==1) $display("Failed on scenario 3 should be 1111 1111.");
    
    $display("Finish tests And 8 bits.");

  end
endmodule