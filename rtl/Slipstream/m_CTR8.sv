module m_CTR8                                                                   //[COUNTERS.NET:00064] MODULE CTR8;
(                                                                               //[COUNTERS.NET:00064] MODULE CTR8;

    input    MasterClock,
    input    D_0,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_1,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_2,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_3,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_4,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_5,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_6,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    D_7,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    LDL,                                                               //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    ENAB,                                                              //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    CK,                                                                //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    input    RESETL,                                                            //[COUNTERS.NET:00066] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,LDL,ENAB,CK,RESETL;
    output    Q_0,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_1,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_2,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_3,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_4,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_5,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_6,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    Q_7,                                                              //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_0,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_1,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_2,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_3,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_4,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_5,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_6,                                                             //[COUNTERS.NET:00067] OUTPUTS	Q_0,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6,
    output    QL_7                                                              //[COUNTERS.NET:00068]    QL_7;
);                                                                              //[COUNTERS.NET:00064] MODULE CTR8;
                                                                                //[COUNTERS.NET:00069] LEVEL FUNCTION;
wire LD;                                                                        //[COUNTERS.NET:00072] Q_0_(Q_0,QL_0) = CT(D_0,LD,LDL,ENAB,CK,RESETL);
wire CY_0;                                                                      //[COUNTERS.NET:00073] Q_1_(Q_1,QL_1) = CT(D_1,LD,LDL,CY_0,CK,RESETL);
wire CY_1;                                                                      //[COUNTERS.NET:00075] Q_2_(Q_2,QL_2) = CT(D_2,LD,LDL,CY_1,CK,RESETL);
wire CY_2;                                                                      //[COUNTERS.NET:00077] Q_3_(Q_3,QL_3) = CT(D_3,LD,LDL,CY_2,CK,RESETL);
wire CY_3;                                                                      //[COUNTERS.NET:00079] Q_4_(Q_4,QL_4) = CT(D_4,LD,LDL,CY_3,CK,RESETL);
wire CY_4;                                                                      //[COUNTERS.NET:00081] Q_5_(Q_5,QL_5) = CT(D_5,LD,LDL,CY_4,CK,RESETL);
wire CY_5;                                                                      //[COUNTERS.NET:00083] Q_6_(Q_6,QL_6) = CT(D_6,LD,LDL,CY_5,CK,RESETL);
wire CY_6;                                                                      //[COUNTERS.NET:00085] Q_7_(Q_7,QL_7) = CT(D_7,LD,LDL,CY_6,CK,RESETL);
wire CY_7;                                                                      //[COUNTERS.NET:00094] CY_7_(CY_7) = AND2A(Q_7,CY_6);

m_CT Q_0_ (.MasterClock(MasterClock),.D(D_0),.LD(LD),.LDL(LDL),.ENAB(ENAB),.CK(CK),.RESETL(RESETL),.Q(Q_0),.QL(QL_0));//[COUNTERS.NET:00072] Q_0_(Q_0,QL_0) = CT(D_0,LD,LDL,ENAB,CK,RESETL);
m_CT Q_1_ (.MasterClock(MasterClock),.D(D_1),.LD(LD),.LDL(LDL),.ENAB(CY_0),.CK(CK),.RESETL(RESETL),.Q(Q_1),.QL(QL_1));//[COUNTERS.NET:00073] Q_1_(Q_1,QL_1) = CT(D_1,LD,LDL,CY_0,CK,RESETL);

m_CT Q_2_ (.MasterClock(MasterClock),.D(D_2),.LD(LD),.LDL(LDL),.ENAB(CY_1),.CK(CK),.RESETL(RESETL),.Q(Q_2),.QL(QL_2));//[COUNTERS.NET:00075] Q_2_(Q_2,QL_2) = CT(D_2,LD,LDL,CY_1,CK,RESETL);

m_CT Q_3_ (.MasterClock(MasterClock),.D(D_3),.LD(LD),.LDL(LDL),.ENAB(CY_2),.CK(CK),.RESETL(RESETL),.Q(Q_3),.QL(QL_3));//[COUNTERS.NET:00077] Q_3_(Q_3,QL_3) = CT(D_3,LD,LDL,CY_2,CK,RESETL);

m_CT Q_4_ (.MasterClock(MasterClock),.D(D_4),.LD(LD),.LDL(LDL),.ENAB(CY_3),.CK(CK),.RESETL(RESETL),.Q(Q_4),.QL(QL_4));//[COUNTERS.NET:00079] Q_4_(Q_4,QL_4) = CT(D_4,LD,LDL,CY_3,CK,RESETL);

m_CT Q_5_ (.MasterClock(MasterClock),.D(D_5),.LD(LD),.LDL(LDL),.ENAB(CY_4),.CK(CK),.RESETL(RESETL),.Q(Q_5),.QL(QL_5));//[COUNTERS.NET:00081] Q_5_(Q_5,QL_5) = CT(D_5,LD,LDL,CY_4,CK,RESETL);

m_CT Q_6_ (.MasterClock(MasterClock),.D(D_6),.LD(LD),.LDL(LDL),.ENAB(CY_5),.CK(CK),.RESETL(RESETL),.Q(Q_6),.QL(QL_6));//[COUNTERS.NET:00083] Q_6_(Q_6,QL_6) = CT(D_6,LD,LDL,CY_5,CK,RESETL);

m_CT Q_7_ (.MasterClock(MasterClock),.D(D_7),.LD(LD),.LDL(LDL),.ENAB(CY_6),.CK(CK),.RESETL(RESETL),.Q(Q_7),.QL(QL_7));//[COUNTERS.NET:00085] Q_7_(Q_7,QL_7) = CT(D_7,LD,LDL,CY_6,CK,RESETL);

assign CY_0 = Q_0 & ENAB;                                                       //[COUNTERS.NET:00087] CY_0_(CY_0) = AND2A(Q_0,ENAB);
assign CY_1 = Q_1 & CY_0;                                                       //[COUNTERS.NET:00088] CY_1_(CY_1) = AND2A(Q_1,CY_0);
assign CY_2 = Q_2 & CY_1;                                                       //[COUNTERS.NET:00089] CY_2_(CY_2) = AND2A(Q_2,CY_1);
assign CY_3 = Q_3 & CY_2;                                                       //[COUNTERS.NET:00090] CY_3_(CY_3) = AND2A(Q_3,CY_2);
assign CY_4 = Q_4 & CY_3;                                                       //[COUNTERS.NET:00091] CY_4_(CY_4) = AND2A(Q_4,CY_3);
assign CY_5 = Q_5 & CY_4;                                                       //[COUNTERS.NET:00092] CY_5_(CY_5) = AND2A(Q_5,CY_4);
assign CY_6 = Q_6 & CY_5;                                                       //[COUNTERS.NET:00093] CY_6_(CY_6) = AND2A(Q_6,CY_5);
assign CY_7 = Q_7 & CY_6;                                                       //[COUNTERS.NET:00094] CY_7_(CY_7) = AND2A(Q_7,CY_6);
assign LD = ~LDL;                                                               //[COUNTERS.NET:00095] LD_(LD) = N1A(LDL);

endmodule                                                                       //[COUNTERS.NET:00097] END MODULE;
