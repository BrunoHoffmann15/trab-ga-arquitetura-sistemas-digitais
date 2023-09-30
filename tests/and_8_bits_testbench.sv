module test_bench_and_8_bits_structure();
  reg [7:0]A;
	reg [7:0]B;
  reg [7:0]EXPECTED;
  wire [7:0]S;

  and_8_bits_structure fa8(A[7:0], B[7:0], S[7:0]);
  
  initial begin
    $dumpfile("and_8_bits_structure.vcd");
	  $dumpvars(1);
    
    $display("\n### Begin tests AND 8 bits ###\n");

    // Simulation 1:
    // A = 1111 1111
    // B = 0000 0000
    // AND = 0000 0000
    
    A=8'b11111111;B=8'b00000000;EXPECTED=8'b00000000;#10
    
    $display("__________________________________________________\n# Simulation 1: \n\nA=%b %b; B=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 1,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 2:
    // A = 1111 1111
    // B = 1010 1001
    // AND = 1010 1001
    
    A=8'b11111111;B=8'b10101001;EXPECTED=8'b10101001;#10
    
    $display("# Simulation 2: \n\nA=%b %b; B=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");
    
    // Simulation 3:
    // A = 1111 1111
    // B = 1111 1111
    // AND = 1111 1111
    
    A=8'b11111111;B=8'b11111111;EXPECTED=8'b11111111;#10
    
    $display("# Simulation 3: \n\nA=%b %b; B=%b %b; \nRESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 3,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");
    
    $display("\n### Finish tests AND 8 bits ###\n");

  end
endmodule