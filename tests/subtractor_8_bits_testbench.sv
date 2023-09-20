module test_bench_full_subtractor_8_bits_structure();
  reg  BIN, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  wire S1, S2, S3, S4, S5, S6, S7, S8, BOUT;
  
  full_subtractor_8_bits_structure fa8(BIN, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8, S1, S2, S3, S4, S5, S6, S7, S8, BOUT);
  
  initial begin
    #50
    $dumpfile("full_subtractor_8_bits.vcd");
	  $dumpvars(1);
    
    $display("Begin tests Full Subtractor 8 bits:");

    // Simulation 1:
    // A = 1111 1111
    // B = 0000 0000
    // Sub = 1111 1111
    
    A8 = 1; A7 = 1; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 1; A1 = 1;
    B8 = 0; B7 = 0; B6 = 0; B5 = 0; B4 = 0; B3 = 0; B2 = 0; B1 = 0;
    BIN = 0; #10
    
    $display("Simulation 1: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; Sub=%b%b%b%b %b%b%b%b; Bout=%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1, BOUT);

    if (S1 !== 1 | S2 !==1 | S3 !==1 | S4 !==1 | S5 !==1 | S6 !==1| S7 !==1 | S8 !==1) $display("Failed on scenario 1 should be 1111 1111.");

    // Simulation 2:
    // A = 0000 1111
    // B = 0000 0010
    // Sub = 0000 1101
    
    A8 = 0; A7 = 0; A6 = 0; A5 = 0; A4 = 1; A3 = 1; A2 = 1; A1 = 1;
    B8 = 0; B7 = 0; B6 = 0; B5 = 0; B4 = 0; B3 = 0; B2 = 1; B1 = 0;
    BIN = 0; #10
    
    $display("Simulation 2: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; Sub=%b%b%b%b %b%b%b%b; Bout=%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1, BOUT);

    if (S1 !== 1 | S2 !==0 | S3 !==1 | S4 !==1 | S5 !==0 | S6 !==0| S7 !==0 | S8 !==0) $display("Failed on scenario 2 should be 0000 1101.");

    // Simulation 3:
    // A = 0011 1100
    // B = 0000 1010
    // Sub = 0011 0010
    
    A8 = 0; A7 = 0; A6 = 1; A5 = 1; A4 = 1; A3 = 1; A2 = 0; A1 = 0;
    B8 = 0; B7 = 0; B6 = 0; B5 = 0; B4 = 1; B3 = 0; B2 = 1; B1 = 0;
    BIN = 0; #10
    
    $display("Simulation 3: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; Sub=%b%b%b%b %b%b%b%b; Bout=%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1, BOUT);

    if (S1 !== 0 | S2 !==1 | S3 !==0 | S4 !==0 | S5 !==1 | S6 !==1| S7 !==0 | S8 !==0) $display("Failed on scenario 3 should be 0011 0010.");


    // Simulation 4:
    // A = 1001 0010
    // B = 0000 0110
    // Sub = 1000 1100
    
    A8 = 1; A7 = 0; A6 = 0; A5 = 1; A4 = 0; A3 = 0; A2 = 1; A1 = 0;
    B8 = 0; B7 = 0; B6 = 0; B5 = 0; B4 = 0; B3 = 1; B2 = 1; B1 = 0;
    BIN = 0; #10
    
    $display("Simulation 4: A=%b%b%b%b %b%b%b%b; B=%b%b%b%b %b%b%b%b; Sub=%b%b%b%b %b%b%b%b; Bout=%b;", A8, A7, A6, A5, A4, A3, A2, A1, B8, B7, B6, B5, B4, B3, B2, B1, S8, S7, S6, S5, S4, S3, S2, S1, BOUT);

    if (S1 !== 0 | S2 !==0 | S3 !==1 | S4 !==1 | S5 !==0 | S6 !==0 | S7 !==0 | S8 !==1) $display("Failed on scenario 4 should be 1000 1100.");

    $display("End tests Full Subtractor 8 bits:");
  end
endmodule