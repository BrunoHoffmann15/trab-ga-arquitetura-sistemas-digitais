module test_bench_ula_8_bits_structure ();
	reg CIN;
	reg [7:0]A;
	reg [7:0]B;
	reg [2:0]X;
  reg [7:0]EXPECTED;
	wire [7:0]S;
	wire COUT;

	ula_8_bits_structure u8bs(CIN, A[7:0], B[7:0], X[2:0], S[7:0], COUT);

	initial begin
		$dumpfile("ula_8_bits_structure.vcd");
		$dumpvars(1);

		$display("Begin tests ULA 8 bits.");

		// Simulation 1
		// A = 1000 0011
		// B = 0000 0001
		// X = 000 -> FULL ADDER
		// Expected = 1000 0100

		CIN=0;X=3'b000;A=8'b10000011;B=8'b00000001;EXPECTED=8'b10000100;#10

		$display("__________________________________________________\n# Simulation 1: \n\nOption=%b; -> FULL ADDER \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 1,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 2
		// A = 1000 0011
		// B = 0000 0001
		// X = 001 -> FULL SUBTRACTOR
		// Expected = 1000 0010

		CIN=0;X=3'b001;A=8'b10000011;B=8'b00000001;EXPECTED=8'b10000010;#10
		$display("# Simulation 2: \n\nOption=%b; -> FULL SUBTRACTOR \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 2,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 3
		// A = 1000 0011
		// B = 0000 0001
		// X = 010 -> AND
		// Expected = 0000 0001

		CIN=0;X=3'b010;A=8'b10000011;B=8'b00000001;EXPECTED=8'b00000001;#10
		$display("# Simulation 3: \n\nOption=%b; -> AND \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 3,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 4
		// A = 1000 0011
		// B = 0000 0001
		// X = 011 -> OR

		CIN=0;X=3'b011;A=8'b10000011;B=8'b00000001;EXPECTED=8'b10000011;#10
		$display("# Simulation 4: \n\nOption=%b; -> OR \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 4,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 5
		// A = 1000 0011
		// X = 100 -> NOT
		// Expected = 0111 1100

		CIN=0;X=3'b100;A=8'b10000011;EXPECTED=8'b01111100;#10
		$display("# Simulation 5: \n\nOption=%b; -> NOT \nA=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 5,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 6
		// A = 0001 0011
		// B = 0001 0001
		// X = 000 -> FULL ADDER
		// Expected = 0010 0100

		CIN=0;X=3'b000;A=8'b00010011;B=8'b00010001;EXPECTED=8'b00100100;#10

		$display("# Simulation 6: \n\nOption=%b; -> FULL ADDER \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 6,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 7
		// A = 1001 0010
		// B = 0000 0110
		// X = 001 -> FULL SUBTRACTOR
		// Expected = 1000 1100

		CIN=0;X=3'b001;A=8'b10010010;B=8'b00000110;EXPECTED=8'b10001100;#10
		$display("# Simulation 7: \n\nOption=%b; -> FULL SUBTRACTOR \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 7,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 8
		// A = 1111 1111
    // B = 1010 1001
		// X = 010 -> AND
		// Expected = 1010 1001

		CIN=0;X=3'b010;A=8'b11111111;B=8'b10101001;EXPECTED=8'b10101001;#10
		$display("# Simulation 8: \n\nOption=%b; -> AND \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 8,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 9
		// A = 1001 1101
    // B = 1001 1111
		// X = 011 -> OR
		// Expected = 1001 1111

		CIN=0;X=3'b011;A=8'b10011101;B=8'b10011111;EXPECTED=8'b10011111;#10
		$display("# Simulation 9: \n\nOption=%b; -> OR \nA=%b %b; B=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 9,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");

		// Simulation 10
		// A = 0000 0000
		// X = 100 -> NOT
		// Expected = 1111 1111

		CIN=0;X=3'b100;A=8'b00000000;EXPECTED=8'b11111111;#10
		$display("# Simulation 10: \n\nOption=%b; -> NOT \nA=%b %b; \nRESULT = %b %b;", X, A[7:4], A[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("--------------------------------------------------\nFailed on scenario 10,RESULT should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
		$display("__________________________________________________");
		
	end
endmodule