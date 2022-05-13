module m_N4AND                                                                  //[IODEC.NET:00115] MODULE N4AND;
(                                                                               //[IODEC.NET:00115] MODULE N4AND;

    input    MasterClock,
    input    R,                                                                 //[IODEC.NET:00117] INPUTS	R,A,B,C,D;
    input    A,                                                                 //[IODEC.NET:00117] INPUTS	R,A,B,C,D;
    input    B,                                                                 //[IODEC.NET:00117] INPUTS	R,A,B,C,D;
    input    C,                                                                 //[IODEC.NET:00117] INPUTS	R,A,B,C,D;
    input    D,                                                                 //[IODEC.NET:00117] INPUTS	R,A,B,C,D;
    output    Q                                                                 //[IODEC.NET:00118] OUTPUTS	Q;
);                                                                              //[IODEC.NET:00115] MODULE N4AND;
                                                                                //[IODEC.NET:00119] LEVEL FUNCTION;
wire E;                                                                         //[IODEC.NET:00122] E_(E) = ND4A(A,B,C,D);

assign E = ~(A & B & C & D);                                                    //[IODEC.NET:00122] E_(E) = ND4A(A,B,C,D);
assign Q = ~(E & R);                                                            //[IODEC.NET:00123] Q_(Q) = ND2C(E,R);

endmodule                                                                       //[IODEC.NET:00125] END MODULE;
