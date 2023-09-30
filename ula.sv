module full_adder_structure (CIN, A, B, COUT, SUM);
  input A, B, CIN;
  wire SUM_1, COUT_1, COUT_2, COUT_3;
  wire [2:0] WIRE_COUT;
  output COUT, SUM;
  
  xor sum_1 (SUM_1, A, B);
  xor sum_final (SUM, SUM_1, CIN);
  
  xor cout_1(WIRE_COUT[0], A, B);
  and cout_2(WIRE_COUT[1], WIRE_COUT[0], CIN);
  and cout_3(WIRE_COUT[2], A, B);
  or cout_final(COUT, WIRE_COUT[1], WIRE_COUT[2]);
endmodule


module full_adder_8_bits_structure (CIN, A, B, S, COUT);
  input CIN;
  input [7:0]A;
  input [7:0]B;

  output [7:0]S;
  output COUT;

  wire [6:0]WIRE_COUT;

  full_adder_structure fa1(CIN, A[0], B[0], WIRE_COUT[0], S[0]);
  full_adder_structure fa2(WIRE_COUT[0], A[1], B[1], WIRE_COUT[1], S[1]);
  full_adder_structure fa3(WIRE_COUT[1], A[2], B[2], WIRE_COUT[2], S[2]);
  full_adder_structure fa4(WIRE_COUT[2], A[3], B[3], WIRE_COUT[3], S[3]);
  full_adder_structure fa5(WIRE_COUT[3], A[4], B[4], WIRE_COUT[4], S[4]);
  full_adder_structure fa6(WIRE_COUT[4], A[5], B[5], WIRE_COUT[5], S[5]);
  full_adder_structure fa7(WIRE_COUT[5], A[6], B[6], WIRE_COUT[6], S[6]);
  full_adder_structure fa8(WIRE_COUT[6], A[7], B[7], COUT, S[7]);
endmodule

module and_8_bits_structure (A, B, S);
  input [7:0]A;
  input [7:0]B;
  output [7:0]S;

  and and_1(S[0], A[0], B[0]);
  and and_2(S[1], A[1], B[1]);
  and and_3(S[2], A[2], B[2]);
  and and_4(S[3], A[3], B[3]);
  and and_5(S[4], A[4], B[4]);
  and and_6(S[5], A[5], B[5]);
  and and_7(S[6], A[6], B[6]);
  and and_8(S[7], A[7], B[7]);
endmodule

module or_8_bits_structure (A, B, S);
  input [7:0]A;
  input [7:0]B;
  output [7:0]S;

  or or_1(S[0], A[0], B[0]);
  or or_2(S[1], A[1], B[1]);
  or or_3(S[2], A[2], B[2]);
  or or_4(S[3], A[3], B[3]);
  or or_5(S[4], A[4], B[4]);
  or or_6(S[5], A[5], B[5]);
  or or_7(S[6], A[6], B[6]);
  or or_8(S[7], A[7], B[7]);
endmodule


module full_subtractor_structure (BIN, A, B, BOUT, SUB);
  input A, B, BIN;
  output BOUT, SUB;
  wire WIRE_SUB, NOT_WIRE_SUB, NOT_A;
  wire [1:0]WIRE_BOUT;

  xor wire_sub (WIRE_SUB, A, B);
  xor sub_final(SUB, BIN, WIRE_SUB);
  not not_a (NOT_A, A);
  not not_wire_sub (NOT_WIRE_SUB, WIRE_SUB);
  and bout_1 (WIRE_BOUT[0], NOT_A, B);
  and bout_2 (WIRE_BOUT[1], NOT_WIRE_SUB, BIN);
  or bout_final (BOUT, WIRE_BOUT[0], WIRE_BOUT[1]);
endmodule

module full_subtractor_8_bits_structure (BIN, A, B, S, BOUT);
  input BIN;
  input [7:0]A;
  input [7:0]B;
  output BOUT;
  output [7:0]S;
  wire [6:0]WIRE_BOUT;

  full_subtractor_structure fs1(BIN, A[0], B[0], WIRE_BOUT[0], S[0]);
  full_subtractor_structure fs2(WIRE_BOUT[0], A[1], B[1], WIRE_BOUT[1], S[1]);
  full_subtractor_structure fs3(WIRE_BOUT[1], A[2], B[2], WIRE_BOUT[2], S[2]);
  full_subtractor_structure fs4(WIRE_BOUT[2], A[3], B[3], WIRE_BOUT[3], S[3]);
  full_subtractor_structure fs5(WIRE_BOUT[3], A[4], B[4], WIRE_BOUT[4], S[4]);
  full_subtractor_structure fs6(WIRE_BOUT[4], A[5], B[5], WIRE_BOUT[5], S[5]);
  full_subtractor_structure fs7(WIRE_BOUT[5], A[6], B[6], WIRE_BOUT[6], S[6]);
  full_subtractor_structure fs8(WIRE_BOUT[6], A[7], B[7], BOUT, S[7]);
endmodule

module not_8_bits_structure (A, S);

  input [7:0]A;
  output [7:0]S;

  not not_1(S[0], A[0]);
  not not_2(S[1], A[1]);
  not not_3(S[2], A[2]);
  not not_4(S[3], A[3]);
  not not_5(S[4], A[4]);
  not not_6(S[5], A[5]);
  not not_7(S[6], A[6]);
  not not_8(S[7], A[7]);

endmodule

module mux_8_bits_structure (CIN, A, B, X, S, COUT);
    input CIN;
    input [7:0] A;
    input [7:0] B;
  	input [2:0] X;
    output [7:0] S;
    output COUT;

    reg [7:0] reg_S;
    reg reg_COUT;
    wire [7:0]FA;
    wire [7:0]FS;
    wire [7:0]AND;
    wire [7:0]OR;
    wire [7:0]NOT;
    wire FACOUT, FSCOUT;

    full_adder_8_bits_structure fa8b(CIN, A, B, FA, FACOUT);
    full_subtractor_8_bits_structure fs8b(CIN, A, B, FS, FSCOUT);
    and_8_bits_structure and8b(A, B, AND);
    or_8_bits_structure or8b(A, B, OR);
    not_8_bits_structure not8b(A, NOT);
	
    always @* begin
      if (!X[2] & !X[1] & !X[0])
        begin
          reg_S[0] = FA[0];
          reg_S[1] = FA[1];
          reg_S[2] = FA[2];
          reg_S[3] = FA[3];
          reg_S[4] = FA[4];
          reg_S[5] = FA[5];
          reg_S[6] = FA[6];
          reg_S[7] = FA[7];
          reg_COUT = FACOUT;
        end
      else if (!X[2] & !X[1] & X[0])
        begin
          reg_S[0] = FS[0];
          reg_S[1] = FS[1];
          reg_S[2] = FS[2];
          reg_S[3] = FS[3];
          reg_S[4] = FS[4];
          reg_S[5] = FS[5];
          reg_S[6] = FS[6];
          reg_S[7] = FS[7];
          reg_COUT = FSCOUT;
        end
      else if (!X[2] & X[1] & !X[0])
        begin
          reg_S[0] = AND[0];
          reg_S[1] = AND[1];
          reg_S[2] = AND[2];
          reg_S[3] = AND[3];
          reg_S[4] = AND[4];
          reg_S[5] = AND[5];
          reg_S[6] = AND[6];
          reg_S[7] = AND[7];
          reg_COUT = 0;
        end
      else if (!X[2] & X[1] & X[0])
        begin
          reg_S[0] = OR[0];
          reg_S[1] = OR[1];
          reg_S[2] = OR[2];
          reg_S[3] = OR[3];
          reg_S[4] = OR[4];
          reg_S[5] = OR[5];
          reg_S[6] = OR[6];
          reg_S[7] = OR[7];
          reg_COUT = 0;
        end
      else if (X[2] & !X[1] & !X[0])
        begin
          reg_S[0] = NOT[0];
          reg_S[1] = NOT[1];
          reg_S[2] = NOT[2];
          reg_S[3] = NOT[3];
          reg_S[4] = NOT[4];
          reg_S[5] = NOT[5];
          reg_S[6] = NOT[6];
          reg_S[7] = NOT[7];
          reg_COUT = 0;
        end
    end

    assign S[0] = reg_S[0];
    assign S[1] = reg_S[1];
    assign S[2] = reg_S[2];
    assign S[3] = reg_S[3];
    assign S[4] = reg_S[4];
    assign S[5] = reg_S[5];
    assign S[6] = reg_S[6];
    assign S[7] = reg_S[7];
    assign COUT = reg_COUT;
  endmodule

  module ula_8_bits_structure (CIN, A, B, X, S, COUT);
    input CIN;
    input [7:0]A;
    input [7:0]B;
    input [2:0]X;
    output [7:0]S;
    output COUT;

    mux_8_bits_structure m8b(CIN, A, B, X, S, COUT);
  endmodule