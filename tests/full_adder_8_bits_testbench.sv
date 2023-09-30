module test_bench_full_adder_8_bits_structure();
  reg CIN;
  reg [7:0]A;
	reg [7:0]B;
  reg [7:0]EXPECTED;
  wire [7:0]S;
  wire COUT;
  
  full_adder_8_bits_structure fa8(CIN, A[7:0], B[7:0], S[7:0], COUT);
  
  initial begin
    $dumpfile("full_adder_8_bits.vcd");
	  $dumpvars(1);
    
    $display("\n### Begin tests FULL ADDER 8 bits ###\n");

    // Simulation 1:
    // A = 1111 1111
    // B = 0000 0000
    // SUM = 1111 1111
    
    CIN=1'b0;A=8'b11111111;B=8'b00000000;EXPECTED=8'b11111111;#10
    
    $display("__________________________________________________\n# Simulation 1: \n\nA=%b %b; B=%b %b; \nCOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], COUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 1,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 2:
    // A = 1000 1000
    // B = 0010 0110
    // SUM = 1010 1110

    CIN=1'b0;A=8'b10001000;B=8'b00100110;EXPECTED=8'b10101110;#10
    
    $display("# Simulation 2: \n\nA=%b %b; B=%b %b; \nCOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], COUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 3:
    // A = 1100 0011
    // B = 0011 1100
    // SUM = 1111 1111

    CIN=1'b0;A=8'b11000011;B=8'b00111100;EXPECTED=8'b11111111;#10
    
    $display("# Simulation 2: \n\nA=%b %b; B=%b %b; \nCOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], COUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 4:
    // A = 1001 1000
    // B = 0011 0110
    // SUM = 1100 1110

    CIN=1'b0;A=8'b10011000;B=8'b00110110;EXPECTED=8'b11001110;#10
    
    $display("# Simulation 2: \n\nA=%b %b; B=%b %b; \nCOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], COUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    $display("\n###End tests FULL ADDER 8 bits ###\n");
  end
endmodule