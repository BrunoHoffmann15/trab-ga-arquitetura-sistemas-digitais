module test_bench_not_8_bits_structure();
  reg [7:0]A;
	reg [7:0]B;
  reg [7:0]EXPECTED;
  wire [7:0]S;
  
  not_8_bits_structure not_8(A[7:0], S[7:0]);
  
  initial begin
    $dumpfile("not_8_bits_structure.vcd");
	  $dumpvars(1);
    
    $display("\n### Begin tests NOT 8 bits ###\n");

    // Simulation 1:
    // A = 1111 1111
    // NOT = 0000 0000
        
    A=8'b11111111;EXPECTED=8'b00000000;#10
    
    $display("__________________________________________________\n# Simulation 1: \n\nA=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 1,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 2:
    // A = 0000 0000
    // NOT = 1111 1111
    
    A=8'b00000000;EXPECTED=8'b11111111;#10
    
    $display("# Simulation 2: \n\nA=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 3:
    // A = 1001 1001
    // NOT = 0110 0110
    
    A=8'b10011001;EXPECTED=8'b01100110;#10
    
    $display("# Simulation 3: \n\nA=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 3,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 4:
    // A = 1111 0000
    // NOT = 0000 1111
    
    A=8'b11110000;EXPECTED=8'b00001111;#10
    
    $display("# Simulation 4: \n\nA=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 4,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    $display("\n### Finish tests NOT 8 bits ###\n");

end
endmodule