module full_adder_structure (CIN, A, B, COUT, SUM);
    input A, B, CIN;
    output COUT, SUM;

    assign SUM = (A ^ B) ^ CIN; // TODO: Alterar para usar lógica estrutural
  	assign COUT = ((A ^ B) & CIN) | (A & B); // TODO: Alterar para usar lógica estrutural
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