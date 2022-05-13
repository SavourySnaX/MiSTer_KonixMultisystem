module m_CTNR                                                                   //[COUNTERS.NET:00035] MODULE CTNR;
(                                                                               //[COUNTERS.NET:00035] MODULE CTNR;

    input    MasterClock,
    input    D,                                                                 //[COUNTERS.NET:00037] INPUTS	D,LD,LDL,ENAB,CK;
    input    LD,                                                                //[COUNTERS.NET:00037] INPUTS	D,LD,LDL,ENAB,CK;
    input    LDL,                                                               //[COUNTERS.NET:00037] INPUTS	D,LD,LDL,ENAB,CK;
    input    ENAB,                                                              //[COUNTERS.NET:00037] INPUTS	D,LD,LDL,ENAB,CK;
    input    CK,                                                                //[COUNTERS.NET:00037] INPUTS	D,LD,LDL,ENAB,CK;
    output    Q,                                                                //[COUNTERS.NET:00038] OUTPUTS	Q,QL;
    output    QL                                                                //[COUNTERS.NET:00038] OUTPUTS	Q,QL;
);                                                                              //[COUNTERS.NET:00035] MODULE CTNR;
                                                                                //[COUNTERS.NET:00039] LEVEL FUNCTION;
wire X;                                                                         //[COUNTERS.NET:00042] DIN_(DIN) = AO2A(D,LD,LDL,X);
wire DIN;                                                                       //[COUNTERS.NET:00042] DIN_(DIN) = AO2A(D,LD,LDL,X);

assign DIN = ~((D & LD)|(LDL & X));                                             //[COUNTERS.NET:00042] DIN_(DIN) = AO2A(D,LD,LDL,X);
FD1A Q__inst (.MasterClock(MasterClock),.q(QL),.qL(Q),.d(DIN),.clk(CK));        //[COUNTERS.NET:00043] Q_(QL,Q) = FD1A(DIN,CK);
assign X = Q ^ ENAB;                                                            //[COUNTERS.NET:00044] X_(X) = EOA(Q,ENAB);

endmodule                                                                       //[COUNTERS.NET:00046] END MODULE;
