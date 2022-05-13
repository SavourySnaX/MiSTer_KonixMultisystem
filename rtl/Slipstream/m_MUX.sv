module m_MUX                                                                    //[COUNTERS.NET:00243] MODULE MUX;
(                                                                               //[COUNTERS.NET:00243] MODULE MUX;

    input    MasterClock,
    input    A,                                                                 //[COUNTERS.NET:00245] INPUTS	A,B,C,D;
    input    B,                                                                 //[COUNTERS.NET:00245] INPUTS	A,B,C,D;
    input    C,                                                                 //[COUNTERS.NET:00245] INPUTS	A,B,C,D;
    input    D,                                                                 //[COUNTERS.NET:00245] INPUTS	A,B,C,D;
    output    Z                                                                 //[COUNTERS.NET:00246] OUTPUTS	Z;
);                                                                              //[COUNTERS.NET:00243] MODULE MUX;
                                                                                //[COUNTERS.NET:00247] LEVEL FUNCTION;
wire ZL;                                                                        //[COUNTERS.NET:00250] ZL_(ZL) = AO2A(A,B,C,D);

assign ZL = ~((A & B)|(C & D));                                                 //[COUNTERS.NET:00250] ZL_(ZL) = AO2A(A,B,C,D);
assign Z = ~ZL;                                                                 //[COUNTERS.NET:00251] Z_(Z) = N1A(ZL);
endmodule                                                                       //[COUNTERS.NET:00252] END MODULE;
