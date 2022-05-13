module m_MACNAND7                                                               //[QMACROS.NET:00094] MODULE MACNAND7;
(                                                                               //[QMACROS.NET:00094] MODULE MACNAND7;

    input    MasterClock,
    input    A,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    B,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    C,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    D,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    E,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    F,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    input    G,                                                                 //[QMACROS.NET:00096] INPUTS A,B,C,D,E,F,G;
    output    Q                                                                 //[QMACROS.NET:00097] OUTPUTS Q;
);                                                                              //[QMACROS.NET:00094] MODULE MACNAND7;

                                                                                //[QMACROS.NET:00099] LEVEL FUNCTION;
assign Q = ~(A & B & C & D & E & F & G & 1);                                    //[QMACROS.NET:00101] ONE_(Q) = ND8A (A,B,C,D,E,F,G,NC/1/);
endmodule                                                                       //[QMACROS.NET:00102] END MODULE;
