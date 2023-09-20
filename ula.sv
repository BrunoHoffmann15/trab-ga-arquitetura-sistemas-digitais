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