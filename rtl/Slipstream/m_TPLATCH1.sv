module m_TPLATCH1                                                               //[MACROS.NET:00201] MODULE TPLATCH1;
(                                                                               //[MACROS.NET:00201] MODULE TPLATCH1;

    input    MasterClock,
    input    D,                                                                 //[MACROS.NET:00203] INPUTS	D,EB;
    input    EB,                                                                //[MACROS.NET:00203] INPUTS	D,EB;
    output    Q                                                                 //[MACROS.NET:00204] OUTPUTS	Q;
);                                                                              //[MACROS.NET:00201] MODULE TPLATCH1;
                                                                                //[MACROS.NET:00205] LEVEL FUNCTION;
wire QL;                                                                        //[MACROS.NET:00207] ONE (Q,QL) = LD1A (D,EB);
LD1A ONE_inst (.MasterClock(MasterClock),.q(Q),.qL(QL),.d(D),.en(EB));          //[MACROS.NET:00207] ONE (Q,QL) = LD1A (D,EB);
endmodule                                                                       //[MACROS.NET:00208] END MODULE;
