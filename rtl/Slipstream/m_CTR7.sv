                                                                                //[COUNTERS.NET:00001] COMPILE;
                                                                                //[COUNTERS.NET:00002] DIRECTORY MASTER;


module m_CTR7                                                                   //[COUNTERS.NET:00005] MODULE CTR7;
(                                                                               //[COUNTERS.NET:00005] MODULE CTR7;

    input    MasterClock,
    input    D_0,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_1,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_2,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_3,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_4,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_5,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    D_6,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    LDL,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    ENAB,                                                              //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    input    XCK,                                                               //[COUNTERS.NET:00007] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,ENAB,XCK;
    output    QL_0,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_1,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_2,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_3,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_4,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_5,                                                             //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
    output    QL_6                                                              //[COUNTERS.NET:00008] OUTPUTS	QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6;
);                                                                              //[COUNTERS.NET:00005] MODULE CTR7;
                                                                                //[COUNTERS.NET:00009] LEVEL FUNCTION;
wire LD;                                                                        //[COUNTERS.NET:00012] Q_0_(Q_0,QL_0) = CTNR(D_0,LD,LDL,ENAB,XCK);
wire Q_0;                                                                       //[COUNTERS.NET:00012] Q_0_(Q_0,QL_0) = CTNR(D_0,LD,LDL,ENAB,XCK);
wire CY_0;                                                                      //[COUNTERS.NET:00013] Q_1_(Q_1,QL_1) = CTNR(D_1,LD,LDL,CY_0,XCK);
wire Q_1;                                                                       //[COUNTERS.NET:00013] Q_1_(Q_1,QL_1) = CTNR(D_1,LD,LDL,CY_0,XCK);
wire CY_1;                                                                      //[COUNTERS.NET:00015] Q_2_(Q_2,QL_2) = CTNR(D_2,LD,LDL,CY_1,XCK);
wire Q_2;                                                                       //[COUNTERS.NET:00015] Q_2_(Q_2,QL_2) = CTNR(D_2,LD,LDL,CY_1,XCK);
wire CY_2;                                                                      //[COUNTERS.NET:00017] Q_3_(Q_3,QL_3) = CTNR(D_3,LD,LDL,CY_2,XCK);
wire Q_3;                                                                       //[COUNTERS.NET:00017] Q_3_(Q_3,QL_3) = CTNR(D_3,LD,LDL,CY_2,XCK);
wire CY_3;                                                                      //[COUNTERS.NET:00019] Q_4_(Q_4,QL_4) = CTNR(D_4,LD,LDL,CY_3,XCK);
wire Q_4;                                                                       //[COUNTERS.NET:00019] Q_4_(Q_4,QL_4) = CTNR(D_4,LD,LDL,CY_3,XCK);
wire CY_4;                                                                      //[COUNTERS.NET:00021] Q_5_(Q_5,QL_5) = CTNR(D_5,LD,LDL,CY_4,XCK);
wire Q_5;                                                                       //[COUNTERS.NET:00021] Q_5_(Q_5,QL_5) = CTNR(D_5,LD,LDL,CY_4,XCK);
wire CY_5;                                                                      //[COUNTERS.NET:00023] Q_6_(Q_6,QL_6) = CTNR(D_6,LD,LDL,CY_5,XCK);
wire Q_6;                                                                       //[COUNTERS.NET:00023] Q_6_(Q_6,QL_6) = CTNR(D_6,LD,LDL,CY_5,XCK);

m_CTNR Q_0_ (.MasterClock(MasterClock),.D(D_0),.LD(LD),.LDL(LDL),.ENAB(ENAB),.CK(XCK),.Q(Q_0),.QL(QL_0));//[COUNTERS.NET:00012] Q_0_(Q_0,QL_0) = CTNR(D_0,LD,LDL,ENAB,XCK);
m_CTNR Q_1_ (.MasterClock(MasterClock),.D(D_1),.LD(LD),.LDL(LDL),.ENAB(CY_0),.CK(XCK),.Q(Q_1),.QL(QL_1));//[COUNTERS.NET:00013] Q_1_(Q_1,QL_1) = CTNR(D_1,LD,LDL,CY_0,XCK);

m_CTNR Q_2_ (.MasterClock(MasterClock),.D(D_2),.LD(LD),.LDL(LDL),.ENAB(CY_1),.CK(XCK),.Q(Q_2),.QL(QL_2));//[COUNTERS.NET:00015] Q_2_(Q_2,QL_2) = CTNR(D_2,LD,LDL,CY_1,XCK);

m_CTNR Q_3_ (.MasterClock(MasterClock),.D(D_3),.LD(LD),.LDL(LDL),.ENAB(CY_2),.CK(XCK),.Q(Q_3),.QL(QL_3));//[COUNTERS.NET:00017] Q_3_(Q_3,QL_3) = CTNR(D_3,LD,LDL,CY_2,XCK);

m_CTNR Q_4_ (.MasterClock(MasterClock),.D(D_4),.LD(LD),.LDL(LDL),.ENAB(CY_3),.CK(XCK),.Q(Q_4),.QL(QL_4));//[COUNTERS.NET:00019] Q_4_(Q_4,QL_4) = CTNR(D_4,LD,LDL,CY_3,XCK);

m_CTNR Q_5_ (.MasterClock(MasterClock),.D(D_5),.LD(LD),.LDL(LDL),.ENAB(CY_4),.CK(XCK),.Q(Q_5),.QL(QL_5));//[COUNTERS.NET:00021] Q_5_(Q_5,QL_5) = CTNR(D_5,LD,LDL,CY_4,XCK);

m_CTNR Q_6_ (.MasterClock(MasterClock),.D(D_6),.LD(LD),.LDL(LDL),.ENAB(CY_5),.CK(XCK),.Q(Q_6),.QL(QL_6));//[COUNTERS.NET:00023] Q_6_(Q_6,QL_6) = CTNR(D_6,LD,LDL,CY_5,XCK);

assign CY_0 = QL_0 & ENAB;                                                      //[COUNTERS.NET:00025] CY_0_(CY_0) = AND2A(QL_0,ENAB);
assign CY_1 = QL_1 & CY_0;                                                      //[COUNTERS.NET:00026] CY_1_(CY_1) = AND2A(QL_1,CY_0);
assign CY_2 = QL_2 & CY_1;                                                      //[COUNTERS.NET:00027] CY_2_(CY_2) = AND2A(QL_2,CY_1);
assign CY_3 = QL_3 & CY_2;                                                      //[COUNTERS.NET:00028] CY_3_(CY_3) = AND2A(QL_3,CY_2);
assign CY_4 = QL_4 & CY_3;                                                      //[COUNTERS.NET:00029] CY_4_(CY_4) = AND2A(QL_4,CY_3);
assign CY_5 = QL_5 & CY_4;                                                      //[COUNTERS.NET:00030] CY_5_(CY_5) = AND2A(QL_5,CY_4);
assign LD = ~LDL;                                                               //[COUNTERS.NET:00031] LD_(LD) = N1B(LDL);


endmodule                                                                       //[COUNTERS.NET:00034] END MODULE;
