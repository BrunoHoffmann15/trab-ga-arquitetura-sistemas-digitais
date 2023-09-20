module test_bench_full_subtractor_1_bit_structure();
  reg  BIN, A, B;
  wire BOUT, SUB;
  
  full_subtractor_structure fa(BIN, A, B, BOUT, SUB);
  
  initial begin
    $dumpfile("dump.vcd");
	  $dumpvars(1);
    
    $display("Begin tests Full Subtractor:");

    // scenario 1:

    A = 0; B = 0; BIN = 0; #10;
    
    $display("Simulation 1: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 0) $display("Failed on scenario 1 should be SUB=0; BOUT=0");

    // scenario 2:
    
    A = 1; B = 0; BIN = 0; #10;
    
    $display("Simulation 2: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 1) $display("Failed on scenario 2 should be SUB=1; BOUT=0");

    // scenario 3:
    
    A = 0; B = 1; BIN = 0; #10;
    
    $display("Simulation 3: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 1) $display("Failed on scenario 3 should be SUB=1; BOUT=1");

    // scenario 4:

    A = 0; B = 0; BIN = 1; #10;
    
    $display("Simulation 4: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 1) $display("Failed on scenario 4 should be SUB=1; BOUT=1");

    // scenario 5:

    A = 1; B = 0; BIN = 1; #10;
    
    $display("Simulation 5: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 0) $display("Failed on scenario 5 should be SUB=0; BOUT=0");
    
    // scenario 6:

    A = 0; B = 1; BIN = 1; #10;
    
    $display("Simulation 6: A=%b; B=%b; BIN=%b; BOUT=%b; SUB=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 0) $display("Failed on scenario 6 should be SUB=1; BOUT=0");
    
    $display("End tests Full Subtractor.");
  end
endmodule