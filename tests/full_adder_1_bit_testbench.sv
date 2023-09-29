module test_bench_full_adder_1_bit_structure();
  reg  CIN, A, B;
  wire COUT, SUM;
  
  full_adder_structure fa(CIN, A, B, COUT, SUM);
  
  initial begin
    $dumpfile("full_adder_1_bit_structure.vcd");
	  $dumpvars(1);
    
    $display("\nBegin tests FULL ADDER 1 bit ###\n");

    // Simulation 1:
    // A = 1
    // B = 0
    // CIN = 0
    // COUT = 0 SUM = 0
    A = 1; B = 0; CIN = 0; #10;
    
    $display("__________________________________________________\n# Simulation 1: \nA=%b; B=%b; CIN=%b; \nCOUT=%b; RESULT=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("--------------------------------------------------\nFailed on scenario 1, RESULT should be 1; COUT should be 0");

    $display("__________________________________________________");

    // Simulation 2:
    // A = 1
    // B = 1
    // CIN = 0
    // COUT = 1 SUM = 0  
    A = 1; B = 1; CIN = 0; #10;
    
    $display("# Simulation 2: \nA=%b; B=%b; CIN=%b; \nCOUT=%b; RESULT=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("--------------------------------------------------\nFailed on scenario 2, RESULT should be 0; COUT should be 1");

    $display("__________________________________________________");
    
    // Simulation 3:
    // A = 1
    // B = 1
    // CIN = 1
    // COUT = 1 SUM = 1  
    A = 1; B = 1; CIN = 1; #10;
    
    $display("# Simulation 3: \nA=%b; B=%b; CIN=%b; \nCOUT=%b; RESULT=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("--------------------------------------------------\nFailed on scenario 3, RESULT should be 1; COUT should be 1");

    $display("__________________________________________________");

    // Simulation 4:
    // A = 0
    // B = 1
    // CIN = 0
    // COUT = 0 SUM = 1  
    A = 0; B = 1; CIN = 0; #10;
    
    $display("# Simulation 4: \nA=%b; B=%b; CIN=%b; \nCOUT=%b; RESULT=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("--------------------------------------------------\nFailed on scenario 4, RESULT should be 1; COUT should be 0");

    $display("__________________________________________________");

    $display("### End tests FULL ADDER 1 bit ###\n");
  end
endmodule