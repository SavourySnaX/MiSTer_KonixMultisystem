module m_MACAND8                                                                //[QMACROS.NET:00067] MODULE MACAND8;
(                                                                               //[QMACROS.NET:00067] MODULE MACAND8;

    input    MasterClock,
    input    A,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    B,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    C,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    D,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    E,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    F,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    G,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    input    H,                                                                 //[QMACROS.NET:00069] INPUTS A,B,C,D,E,F,G,H;
    output    Q                                                                 //[QMACROS.NET:00070] OUTPUTS Q;
);                                                                              //[QMACROS.NET:00067] MODULE MACAND8;

                                                                                //[QMACROS.NET:00072] LEVEL FUNCTION;
wire QL;                                                                        //[QMACROS.NET:00074] ONE_(QL) = ND8A (A,B,C,D,E,F,G,H);
assign QL = ~(A & B & C & D & E & F & G & H);                                   //[QMACROS.NET:00074] ONE_(QL) = ND8A (A,B,C,D,E,F,G,H);
assign Q = ~QL;                                                                 //[QMACROS.NET:00075] TWO_(Q) = N1A (QL);
endmodule                                                                       //[QMACROS.NET:00076] END MODULE;
