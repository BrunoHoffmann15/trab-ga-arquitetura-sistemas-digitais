module full_adder_structure (CIN, A, B, COUT, SUM);
  input A, B, CIN;
  wire SUM_1, COUT_1, COUT_2, COUT_3;
  output COUT, SUM;
  
  xor sum_1 (SUM_1, A, B);
  xor sum_final (SUM, SUM_1, CIN);
  
  xor cout_1(COUT_1, A, B);
  and cout_2(COUT_2, COUT_1, CIN);
  and cout_3(COUT_3, A, B);
  or cout_final(COUT, COUT_2, COUT_3);
endmodule


module full_adder_8_bits_structure (
  CIN, A1, B1, A2, B2, 
  A3, B3, A4, B4, A5, B5,
  A6, B6, A7, B7, A8, B8,
  S1, S2, S3, S4, S5, S6, 
  S7, S8, COUT
);
  input CIN, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  output S1, S2, S3, S4, S5, S6, S7, S8, COUT;
  wire COUT1, COUT2, COUT3, COUT4, COUT5, COUT6, COUT7;

  full_adder_structure fa1(CIN, A1, B1, COUT1, S1);
  full_adder_structure fa2(COUT1, A2, B2, COUT2, S2);
  full_adder_structure fa3(COUT2, A3, B3, COUT3, S3);
  full_adder_structure fa4(COUT3, A4, B4, COUT4, S4);
  full_adder_structure fa5(COUT4, A5, B5, COUT5, S5);
  full_adder_structure fa6(COUT5, A6, B6, COUT6, S6);
  full_adder_structure fa7(COUT6, A7, B7, COUT7, S7);
  full_adder_structure fa8(COUT7, A8, B8, COUT, S8);
endmodule

module and_8_bits_structure (
  A1, B1, A2, B2, 
  A3, B3, A4, B4, A5, B5,
  A6, B6, A7, B7, A8, B8,
  S1, S2, S3, S4, S5, S6, 
  S7, S8
);
  input A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  output S1, S2, S3, S4, S5, S6, S7, S8;

  and and_1(S1, A1, B1);
  and and_2(S2, A2, B2);
  and and_3(S3, A3, B3);
  and and_4(S4, B4, B4);
  and and_5(S5, A5, B5);
  and and_6(S6, A6, B6);
  and and_7(S7, A7, B7);
  and and_8(S8, A8, B8);
endmodule

module or_8_bits_structure (
  A1, B1, A2, B2, 
  A3, B3, A4, B4, A5, B5,
  A6, B6, A7, B7, A8, B8,
  S1, S2, S3, S4, S5, S6, 
  S7, S8
);
  input A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  output S1, S2, S3, S4, S5, S6, S7, S8;

  or or_1(S1, A1, B1);
  or or_2(S2, A2, B2);
  or or_3(S3, A3, B3);
  or or_4(S4, A4, B4);
  or or_5(S5, A5, B5);
  or or_6(S6, A6, B6);
  or or_7(S7, A7, B7);
  or or_8(S8, A8, B8);
endmodule


module full_subtractor_structure (BIN, A, B, BOUT, SUB);
  input A, B, BIN;
  output BOUT, SUB;
  wire SUB_1, BOUT_1, NOT_A, NOT_SUB_1, BOUT_2;

  xor sub_1 (SUB_1, A, B);
  xor sub_final(SUB, BIN, SUB_1);
  not not_a (NOT_A, A);
  not not_sub_1 (NOT_SUB_1, SUB_1);
  and bout_1 (BOUT_1, NOT_A, B);
  and bout_2 (BOUT_2, NOT_SUB_1, BIN);
  or bout_final (BOUT, BOUT_1, BOUT_2);
endmodule

module full_subtractor_8_bits_structure (
  BIN, A1, B1, A2, B2, 
  A3, B3, A4, B4, A5, B5,
  A6, B6, A7, B7, A8, B8,
  S1, S2, S3, S4, S5, S6, 
  S7, S8, BOUT
);
  input BIN, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
  output S1, S2, S3, S4, S5, S6, S7, S8, BOUT;
  wire BOUT1, BOUT2, BOUT3, BOUT4, BOUT5, BOUT6, BOUT7;

  full_subtractor_structure fs1(BIN, A1, B1, BOUT1, S1);
  full_subtractor_structure fs2(BOUT1, A2, B2, BOUT2, S2);
  full_subtractor_structure fs3(BOUT2, A3, B3, BOUT3, S3);
  full_subtractor_structure fs4(BOUT3, A4, B4, BOUT4, S4);
  full_subtractor_structure fs5(BOUT4, A5, B5, BOUT5, S5);
  full_subtractor_structure fs6(BOUT5, A6, B6, BOUT6, S6);
  full_subtractor_structure fs7(BOUT6, A7, B7, BOUT7, S7);
  full_subtractor_structure fs8(BOUT7, A8, B8, BOUT, S8);
endmodule

module not_8_bits_structure (
  A1, A2, A3, A4, A5, A6, A7, A8,
  S1, S2, S3, S4, S5, S6, S7, S8
);

  input A1, A2, A3, A4, A5, A6, A7, A8;
  output S1, S2, S3, S4, S5, S6, S7, S8;

  not not_1(S1, A1);
  not not_2(S2, A2);
  not not_3(S3, A3);
  not not_4(S4, A4);
  not not_5(S5, A5);
  not not_6(S6, A6);
  not not_7(S7, A7);
  not not_8(S8, A8);

endmodule

module mux_8_bits (CIN, A, B, X, S, COUT);
    input CIN;
    input [7:0] A;
    input [7:0] B;
    input [3:0] X;
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

    full_adder_8_bits_structure fa8b(CIN, A[0], B[0], A[1], B[1], A[2], B[2], A[3], B[3], A[4], B[4], A[5], B[5], A[6], B[6], A[7], B[7], FA[0], FA[1], FA[2], FA[3], FA[4], FA[5], FA[6], FA[7], FACOUT);
    full_subtractor_8_bits_structure fs8b(CIN, A[0], B[0], A[1], B[1], A[2], B[2], A[3], B[3], A[4], B[4], A[5], B[5], A[6], B[6], A[7], B[7], FS[0], FS[1], FS[2], FS[3], FS[4], FS[5], FS[6], FS[7], FSCOUT);
    and_8_bits_structure and8b(A[0], B[0], A[1], B[1], A[2], B[2], A[3], B[3], A[4], B[4], A[5], B[5], A[6], B[6], A[7], B[7], AND[0], AND[1], AND[2], AND[3], AND[4], AND[5], AND[6], AND[7]);
    or_8_bits_structure or8b(A[0], B[0], A[1], B[1], A[2], B[2], A[3], B[3], A[4], B[4], A[5], B[5], A[6], B[6], A[7], B[7], OR[0], OR[1], OR[2], OR[3], OR[4], OR[5], OR[6], OR[7]);
    not_8_bits_structure not8b(A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], NOT[0], NOT[1], NOT[2], NOT[3], NOT[4], NOT[5], NOT[6], NOT[7]);

    always @* begin
      if (!X[0] & !X[1] & !X[2])
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
      else if (!X[0] & !X[1] & X[2])
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
      else if (!X[0] & X[1] & !X[2])
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
      else if (!X[0] & X[1] & X[2])
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
      else if (X[0] & !X[1] & !X[2])
        begin
          reg_S[0] = NOT[0];
          reg_S[1] = NOT[1];
          reg_S[2] = NOT[2];
          reg_S[3] = NOT[3];
          reg_S[4] = NOT[4];
          reg_S[5] = NOT[5];
          reg_S[6] = NOT[6];
          reg_S[7] = NOT[7];
          reg_COUT = 1;
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