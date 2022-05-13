module m_MACAND6                                                                //[QMACROS.NET:00080] MODULE MACAND6;
(                                                                               //[QMACROS.NET:00080] MODULE MACAND6;

    input    MasterClock,
    input    A,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    input    B,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    input    C,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    input    D,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    input    E,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    input    F,                                                                 //[QMACROS.NET:00082] INPUTS A,B,C,D,E,F;
    output    Q                                                                 //[QMACROS.NET:00083] OUTPUTS Q;
);                                                                              //[QMACROS.NET:00080] MODULE MACAND6;

                                                                                //[QMACROS.NET:00085] LEVEL FUNCTION;
wire QL;                                                                        //[QMACROS.NET:00087] ONE_(QL) = ND6A (A,B,C,D,E,F);
assign QL = ~(A & B & C & D & E & F);                                           //[QMACROS.NET:00087] ONE_(QL) = ND6A (A,B,C,D,E,F);
assign Q = ~QL;                                                                 //[QMACROS.NET:00088] TWO_(Q) = N1A (QL);
endmodule                                                                       //[QMACROS.NET:00089] END MODULE;
