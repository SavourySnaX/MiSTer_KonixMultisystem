module m_FULLADD                                                                //[MACROS.NET:00042] MODULE FULLADD;
(                                                                               //[MACROS.NET:00042] MODULE FULLADD;

    input    MasterClock,
    input    A,                                                                 //[MACROS.NET:00044] INPUTS	A,B,CI;
    input    B,                                                                 //[MACROS.NET:00044] INPUTS	A,B,CI;
    input    CI,                                                                //[MACROS.NET:00044] INPUTS	A,B,CI;
    output    Q,                                                                //[MACROS.NET:00045] OUTPUTS	Q,CO;
    output    CO                                                                //[MACROS.NET:00045] OUTPUTS	Q,CO;
);                                                                              //[MACROS.NET:00042] MODULE FULLADD;
                                                                                //[MACROS.NET:00046] LEVEL FUNCTION;
wire AABL;                                                                      //[MACROS.NET:00049] AABGEN_(AABL) = ND2A(A,B);
wire AOBL;                                                                      //[MACROS.NET:00050] AOBGEN_(AOBL) = NR2A(A,B);
wire AAB;                                                                       //[MACROS.NET:00051] AABINV_(AAB) = N1A(AABL);
wire QT;                                                                        //[MACROS.NET:00052] QTGEN_(QT) = NR2A(AAB,AOBL);
wire QTL;                                                                       //[MACROS.NET:00053] QTCIINV_(QTL,CIL) = MACINV2(QT,CI);
wire CIL;                                                                       //[MACROS.NET:00053] QTCIINV_(QTL,CIL) = MACINV2(QT,CI);
wire COT;                                                                       //[MACROS.NET:00055] COTGEN_(COT) = NR2C(CI,AAB);

assign AABL = ~(A & B);                                                         //[MACROS.NET:00049] AABGEN_(AABL) = ND2A(A,B);
assign AOBL = ~(A | B);                                                         //[MACROS.NET:00050] AOBGEN_(AOBL) = NR2A(A,B);
assign AAB = ~AABL;                                                             //[MACROS.NET:00051] AABINV_(AAB) = N1A(AABL);
assign QT = ~(AAB | AOBL);                                                      //[MACROS.NET:00052] QTGEN_(QT) = NR2A(AAB,AOBL);
m_MACINV2 QTCIINV_ (.MasterClock(MasterClock),.I1(QT),.I2(CI),.Q1(QTL),.Q2(CIL));//[MACROS.NET:00053] QTCIINV_(QTL,CIL) = MACINV2(QT,CI);
assign Q = ~((QT & CI)|(QTL & CIL));                                            //[MACROS.NET:00054] QGEN_(Q) = AO2A(QT,CI,QTL,CIL);
assign COT = ~(CI | AAB);                                                       //[MACROS.NET:00055] COTGEN_(COT) = NR2C(CI,AAB);
assign CO = ~(COT | AOBL);                                                      //[MACROS.NET:00056] COGEN_(CO) = NR2C(COT,AOBL);

endmodule                                                                       //[MACROS.NET:00058] END MODULE;
