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

		$display("Simulation 1: Option=%b; A=%b %b; B=%b %b; Add=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 1 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 2
		// A = 1000 0011
		// B = 0000 0001
		// X = 001 -> FULL SUBTRACTOR
		// Expected = 1000 0010

		CIN=0;X=3'b001;A=8'b10000011;B=8'b00000001;EXPECTED=8'b10000010;#10
		$display("Simulation 2: Option=%b; A=%b %b; B=%b %b; Subtract=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 2 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 3
		// A = 1000 0011
		// B = 0000 0001
		// X = 010 -> AND
		// Expected = 0000 0001

		CIN=0;X=3'b010;A=8'b10000011;B=8'b00000001;EXPECTED=8'b00000001;#10
		$display("Simulation 3: Option=%b; A=%b %b; B=%b %b; And=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 3 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 4
		// A = 1000 0011
		// B = 0000 0001
		// X = 011 -> OR

		CIN=0;X=3'b011;A=8'b10000011;B=8'b00000001;EXPECTED=8'b10000011;#10
		$display("Simulation 4: Option=%b; A=%b %b; B=%b %b; Or=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 4 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 5
		// A = 1000 0011
		// X = 100 -> NOT
		// Expected = 0111 1100

		CIN=0;X=3'b100;A=8'b10000011;EXPECTED=8'b01111100;#10
		$display("Simulation 5: Option=%b; A=%b %b; Not=%b %b;", X, A[7:4], A[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 5 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 6
		// A = 0001 0011
		// B = 0001 0001
		// X = 000 -> FULL ADDER
		// Expected = 0010 0100

		CIN=0;X=3'b000;A=8'b00010011;B=8'b00010001;EXPECTED=8'b00100100;#10

		$display("Simulation 6: Option=%b; A=%b %b; B=%b %b; Add=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 6 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end

		// Simulation 7
		// A = 1001 0010
		// B = 0000 0110
		// X = 001 -> FULL SUBTRACTOR
		// Expected = 1000 1100

		CIN=0;X=3'b001;A=8'b10010010;B=8'b00000110;EXPECTED=8'b10001100;#10
		$display("Simulation 7: Option=%b; A=%b %b; B=%b %b; Subtract=%b %b;", X, A[7:4], A[3:0], B[7:4], B[3:0], S[7:4], S[3:0]);

		if(EXPECTED != S) begin
			$display("Failed on scenario 7 should be %b %b.", EXPECTED[7:4], EXPECTED[3:0]);
		end
	end
endmodule