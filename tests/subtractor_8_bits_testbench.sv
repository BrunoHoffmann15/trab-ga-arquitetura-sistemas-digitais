module test_bench_full_subtractor_8_bits_structure();
  reg BIN;
  reg [7:0]A;
	reg [7:0]B;
  reg [7:0]EXPECTED;
  wire [7:0]S;
  wire BOUT;
  
  full_subtractor_8_bits_structure fa8(BIN, A[7:0], B[7:0], S[7:0], BOUT);
  
  initial begin
    #50
    $dumpfile("full_subtractor_8_bits.vcd");
	  $dumpvars(1);
    
    $display("\n### Begin tests FULL SUBTRACTOR 8 bits ###\n");

    // Simulation 1:
    // A = 1111 1111
    // B = 0000 0000
    // Sub = 1111 1111
    
    BIN=1'b0;A=8'b11111111;B=8'b00000000;EXPECTED=8'b11111111;#10
    
    $display("__________________________________________________\n# Simulation 1: \n\nA=%b %b; B=%b %b; \nBOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], BOUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 1,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 2:
    // A = 0000 1111
    // B = 0000 0010
    // Sub = 0000 1101
    
    BIN=1'b0;A=8'b00001111;B=8'b00000010;EXPECTED=8'b00001101;#10
    
    $display("# Simulation 2: \n\nA=%b %b; B=%b %b; \nBOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], BOUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    // Simulation 3:
    // A = 0011 1100
    // B = 0000 1010
    // Sub = 0011 0010
    
    BIN=1'b0;A=8'b00111100;B=8'b00001010;EXPECTED=8'b00110010;#10
    
    $display("# Simulation 3: \n\nA=%b %b; B=%b %b; \nBOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], BOUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 3,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");


    // Simulation 4:
    // A = 1001 0010
    // B = 0000 0110
    // Sub = 1000 1100
    
    BIN=1'b0;A=8'b10010010;B=8'b00000110;EXPECTED=8'b10001100;#10
    
    $display("# Simulation 4: \n\nA=%b %b; B=%b %b; \nBOUT = %b; RESULT = %b %b;", A[7:4], A[3:0], B[7:4], B[3:0], BOUT, S[7:4], S[3:0]);

    if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 4,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
    $display("__________________________________________________");

    $display("\n### End tests FULL SUBTRACTOR 8 bits ###\n");
  end
endmodule