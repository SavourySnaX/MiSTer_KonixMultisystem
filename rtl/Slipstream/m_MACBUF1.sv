module m_MACBUF1                                                                //[QMACROS.NET:00028] MODULE MACBUF1;
(                                                                               //[QMACROS.NET:00028] MODULE MACBUF1;

    input    MasterClock,
    input    I,                                                                 //[QMACROS.NET:00030] INPUTS	I;
    output    Q                                                                 //[QMACROS.NET:00031] OUTPUTS	Q;
);                                                                              //[QMACROS.NET:00028] MODULE MACBUF1;

                                                                                //[QMACROS.NET:00033] LEVEL FUNCTION;
wire T;                                                                         //[QMACROS.NET:00035] ONE_(T)=N1A(I);
assign T = ~I;                                                                  //[QMACROS.NET:00035] ONE_(T)=N1A(I);
assign Q = ~T;                                                                  //[QMACROS.NET:00036] TWO_(Q)=N1A(T);
endmodule                                                                       //[QMACROS.NET:00037] END MODULE;
