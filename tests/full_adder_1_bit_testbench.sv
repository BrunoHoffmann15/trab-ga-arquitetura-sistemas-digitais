module test_bench_full_adder_1_bit_structure();
  reg  CIN, A, B;
  wire COUT, SUM;
  
  full_adder_structure fa(CIN, A, B, COUT, SUM);
  
  initial begin
    $dumpfile("full_adder_1_bit_structure.vcd");
	  $dumpvars(1);
    
    $display("Begin tests Full Adder:");

    // Simulation 1:
    // A = 1
    // B = 0
    // CIN = 0
    // COUT = 0 SUM = 0
    A = 1; B = 0; CIN = 0; #10;
    
    $display("Simulation 1: A=%b; B=%b; CIN=%b; COUT=%b; SUM=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("Failed on scenario 1 should be SUM=1; COUT=0");

    // Simulation 2:
    // A = 1
    // B = 1
    // CIN = 0
    // COUT = 1 SUM = 0  
    A = 1; B = 1; CIN = 0; #10;
    
    $display("Simulation 2: A=%b; B=%b; CIN=%b; COUT=%b; SUM=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 1 | SUM != 0) $display("Failed on scenario 1 should be SUM=0; COUT=1");
    
    // Simulation 3:
    // A = 1
    // B = 1
    // CIN = 1
    // COUT = 1 SUM = 1  
    A = 1; B = 1; CIN = 1; #10;
    
    $display("Simulation 3: A=%b; B=%b; CIN=%b; COUT=%b; SUM=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 1 | SUM != 1) $display("Failed on scenario 1 should be SUM=1; COUT=1");

    // Simulation 4:
    // A = 0
    // B = 1
    // CIN = 0
    // COUT = 0 SUM = 1  
    A = 0; B = 1; CIN = 0; #10;
    
    $display("Simulation 4: A=%b; B=%b; CIN=%b; COUT=%b; SUM=%b;", A, B, CIN, COUT, SUM);

    if (COUT != 0 | SUM != 1) $display("Failed on scenario 1 should be SUM=1; COUT=0");
    
    $display("End tests Full Adder:");
  end
endmodule