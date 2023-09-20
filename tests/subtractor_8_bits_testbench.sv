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

    $display("End tests Full Subtractor 8 bits:");
  end
endmodule