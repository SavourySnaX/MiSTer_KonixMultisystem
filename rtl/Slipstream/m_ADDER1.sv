module m_ADDER1                                                                 //[COUNTERS.NET:00201] MODULE ADDER1;
(                                                                               //[COUNTERS.NET:00201] MODULE ADDER1;

    input    MasterClock,
    input    X,                                                                 //[COUNTERS.NET:00203] INPUTS	X,Y;
    input    Y,                                                                 //[COUNTERS.NET:00203] INPUTS	X,Y;
    output    Z,                                                                //[COUNTERS.NET:00204] OUTPUTS	Z,COUT;
    output    COUT                                                              //[COUNTERS.NET:00204] OUTPUTS	Z,COUT;
);                                                                              //[COUNTERS.NET:00201] MODULE ADDER1;
                                                                                //[COUNTERS.NET:00205] LEVEL FUNCTION;

assign Z = X ^ Y;                                                               //[COUNTERS.NET:00208] Z_(Z) = EOA(X,Y);
assign COUT = X & Y;                                                            //[COUNTERS.NET:00209] COUT_(COUT) = AND2A(X,Y);

endmodule                                                                       //[COUNTERS.NET:00211] END MODULE;
