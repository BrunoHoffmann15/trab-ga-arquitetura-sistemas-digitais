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