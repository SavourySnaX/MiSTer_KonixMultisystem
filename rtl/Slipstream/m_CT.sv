module m_CT                                                                     //[COUNTERS.NET:00050] MODULE CT;
(                                                                               //[COUNTERS.NET:00050] MODULE CT;

    input    MasterClock,
    input    D,                                                                 //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    input    LD,                                                                //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    input    LDL,                                                               //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    input    ENAB,                                                              //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    input    CK,                                                                //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    input    RESETL,                                                            //[COUNTERS.NET:00052] INPUTS	D,LD,LDL,ENAB,CK,RESETL;
    output    Q,                                                                //[COUNTERS.NET:00053] OUTPUTS	Q,QL;
    output    QL                                                                //[COUNTERS.NET:00053] OUTPUTS	Q,QL;
);                                                                              //[COUNTERS.NET:00050] MODULE CT;
                                                                                //[COUNTERS.NET:00054] LEVEL FUNCTION;
wire X;                                                                         //[COUNTERS.NET:00057] DIN_(DIN) = AO2A(D,LD,LDL,X);
wire DIN;                                                                       //[COUNTERS.NET:00057] DIN_(DIN) = AO2A(D,LD,LDL,X);

assign DIN = ~((D & LD)|(LDL & X));                                             //[COUNTERS.NET:00057] DIN_(DIN) = AO2A(D,LD,LDL,X);
FD4A Q__inst (.MasterClock(MasterClock),.q(QL),.qL(Q),.d(DIN),.clk(CK),.sL(RESETL));//[COUNTERS.NET:00058] Q_(QL,Q) = FD4A(DIN,CK,RESETL);
assign X = Q ^ ENAB;                                                            //[COUNTERS.NET:00059] X_(X) = EOA(Q,ENAB);

endmodule                                                                       //[COUNTERS.NET:00061] END MODULE;
