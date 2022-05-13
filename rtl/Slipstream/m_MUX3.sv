module m_MUX3                                                                   //[COUNTERS.NET:00228] MODULE MUX3;
(                                                                               //[COUNTERS.NET:00228] MODULE MUX3;

    input    MasterClock,
    input    A,                                                                 //[COUNTERS.NET:00230] INPUTS	A,B,C,SEL_0,SEL_1;
    input    B,                                                                 //[COUNTERS.NET:00230] INPUTS	A,B,C,SEL_0,SEL_1;
    input    C,                                                                 //[COUNTERS.NET:00230] INPUTS	A,B,C,SEL_0,SEL_1;
    input    SEL_0,                                                             //[COUNTERS.NET:00230] INPUTS	A,B,C,SEL_0,SEL_1;
    input    SEL_1,                                                             //[COUNTERS.NET:00230] INPUTS	A,B,C,SEL_0,SEL_1;
    output    Z_3                                                               //[COUNTERS.NET:00231] OUTPUTS	Z_3;
);                                                                              //[COUNTERS.NET:00228] MODULE MUX3;
                                                                                //[COUNTERS.NET:00232] LEVEL FUNCTION;
wire SEL_2;                                                                     //[COUNTERS.NET:00235] SEL_2_(SEL_2) = NR2A(SEL_0,SEL_1);
wire Z_0;                                                                       //[COUNTERS.NET:00236] A_(Z_0) = ND2A(A,SEL_2);
wire Z_1;                                                                       //[COUNTERS.NET:00237] B_(Z_1) = ND2A(B,SEL_0);
wire Z_2;                                                                       //[COUNTERS.NET:00238] C_(Z_2) = ND2A(C,SEL_1);

assign SEL_2 = ~(SEL_0 | SEL_1);                                                //[COUNTERS.NET:00235] SEL_2_(SEL_2) = NR2A(SEL_0,SEL_1);
assign Z_0 = ~(A & SEL_2);                                                      //[COUNTERS.NET:00236] A_(Z_0) = ND2A(A,SEL_2);
assign Z_1 = ~(B & SEL_0);                                                      //[COUNTERS.NET:00237] B_(Z_1) = ND2A(B,SEL_0);
assign Z_2 = ~(C & SEL_1);                                                      //[COUNTERS.NET:00238] C_(Z_2) = ND2A(C,SEL_1);
assign Z_3 = ~(Z_0 & Z_1 & Z_2);                                                //[COUNTERS.NET:00239] Z_(Z_3) = ND3A(Z_0,Z_1,Z_2);

endmodule                                                                       //[COUNTERS.NET:00241] END MODULE;
