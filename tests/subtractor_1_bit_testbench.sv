module test_bench_full_subtractor_1_bit_structure();
  reg  BIN, A, B;
  wire BOUT, SUB;
  
  full_subtractor_structure fa(BIN, A, B, BOUT, SUB);
  
  initial begin
    $dumpfile("dump.vcd");
	  $dumpvars(1);
    
    $display("\n### Begin tests FULL SUBTRACTOR 1 bit ###\n");

    // Simulation 1:
    // A = 0
    // B = 0
    // BIN = 0
    // BOUT = 0 SUB = 0

    A = 0; B = 0; BIN = 0; #10;
    
    $display("__________________________________________________\n# Simulation 1: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 0) $display("--------------------------------------------------\nFailed on scenario 1, RESULT should be 0; BOUT should be 0");

    $display("__________________________________________________");

    // Simulation 2:
    // A = 1
    // B = 0
    // BIN = 0
    // BOUT = 0 SUB = 1
    
    A = 1; B = 0; BIN = 0; #10;
    
    $display("# Simulation 2: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 1) $display("--------------------------------------------------\nFailed on scenario 2, RESULT should be 1; BOUT should be 0");

    $display("__________________________________________________");

    // Simulation 3:
    // A = 0
    // B = 1
    // BIN = 0
    // BOUT = 1 SUB = 1

    A = 0; B = 1; BIN = 0; #10;
    
    $display("# Simulation 3: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 1) $display("--------------------------------------------------\nFailed on scenario 3, RESULT should be 1; BOUT should be 1");

    $display("__________________________________________________");

    // Simulation 4:
    // A = 0
    // B = 0
    // BIN = 1
    // BOUT = 1 SUB = 1

    A = 0; B = 0; BIN = 1; #10;
    
    $display("# Simulation 4: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 1) $display("--------------------------------------------------\nFailed on scenario 4, RESULT should be 1; BOUT should be 1");

    $display("__________________________________________________");

    // Simulation 5:
    // A = 1
    // B = 0
    // BIN = 1
    // BOUT = 0 SUB = 0

    A = 1; B = 0; BIN = 1; #10;
    
    $display("# Simulation 5: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 0 | SUB != 0) $display("--------------------------------------------------\nFailed on scenario 5, RESULT should be 0; BOUT should be 0");

    $display("__________________________________________________");
    
    // Simulation 6:
    // A = 0
    // B = 1
    // BIN = 1
    // BOUT = 0 SUB = 1

    A = 0; B = 1; BIN = 1; #10;
    
    $display("# Simulation 6: \n\nA=%b; B=%b; CIN=%b; \nBOUT=%b; RESULT=%b;", A, B, BIN, BOUT, SUB);

    if (BOUT != 1 | SUB != 0) $display("--------------------------------------------------\nFailed on scenario 6, RESULT should be 0; BOUT should be 1");

    $display("__________________________________________________");
    
    $display("\n### End tests FULL SUBTRACTOR 1 bit ###\n");
  end
endmodule