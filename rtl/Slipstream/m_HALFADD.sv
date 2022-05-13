module m_HALFADD                                                                //[MACROS.NET:00062] MODULE HALFADD;
(                                                                               //[MACROS.NET:00062] MODULE HALFADD;

    input    MasterClock,
    input    A,                                                                 //[MACROS.NET:00064] INPUTS	A,B;
    input    B,                                                                 //[MACROS.NET:00064] INPUTS	A,B;
    output    Q,                                                                //[MACROS.NET:00065] OUTPUTS	Q,CO;
    output    CO                                                                //[MACROS.NET:00065] OUTPUTS	Q,CO;
);                                                                              //[MACROS.NET:00062] MODULE HALFADD;
                                                                                //[MACROS.NET:00066] LEVEL FUNCTION;

assign Q = A ^ B;                                                               //[MACROS.NET:00069] Q_(Q) = EOA(A,B);
assign CO = A & B;                                                              //[MACROS.NET:00070] CO_(CO) = AND2A(A,B);

endmodule                                                                       //[MACROS.NET:00072] END MODULE;
