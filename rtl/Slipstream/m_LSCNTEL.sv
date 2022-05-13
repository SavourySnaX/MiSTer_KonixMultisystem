module m_LSCNTEL                                                                //[MACROS.NET:00186] MODULE LSCNTEL;
(                                                                               //[MACROS.NET:00186] MODULE LSCNTEL;

    input    MasterClock,
    input    D,                                                                 //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    input    LD,                                                                //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    input    LDL,                                                               //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    input    CLK,                                                               //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    input    CI,                                                                //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    input    RSTL,                                                              //[MACROS.NET:00188] INPUTS	D,LD,LDL,CLK,CI,RSTL;
    output    Q,                                                                //[MACROS.NET:00189] OUTPUTS	Q,QL,CO;
    output    QL,                                                               //[MACROS.NET:00189] OUTPUTS	Q,QL,CO;
    output    CO                                                                //[MACROS.NET:00189] OUTPUTS	Q,QL,CO;
);                                                                              //[MACROS.NET:00186] MODULE LSCNTEL;
                                                                                //[MACROS.NET:00190] LEVEL FUNCTION;
wire QNT_0;                                                                     //[MACROS.NET:00194] QNT_0_(QNT_0) = ENA(CI,Q);
wire QNT_1;                                                                     //[MACROS.NET:00195] QNT_1_(QNT_1) = MUX2(LDL,QNT_0,LD,D);

assign CO = CI | Q;                                                             //[MACROS.NET:00193] CO_(CO) = OR2A(CI,Q);
assign QNT_0 = ~(CI ^ Q);                                                       //[MACROS.NET:00194] QNT_0_(QNT_0) = ENA(CI,Q);
m_MUX2 QNT_1_ (.MasterClock(MasterClock),.IN1(LDL),.SEL1(QNT_0),.IN2(LD),.SEL2(D),.OUT(QNT_1));//[MACROS.NET:00195] QNT_1_(QNT_1) = MUX2(LDL,QNT_0,LD,D);
FD2A QFF__inst (.MasterClock(MasterClock),.q(Q),.qL(QL),.d(QNT_1),.clk(CLK),.rL(RSTL));//[MACROS.NET:00196] QFF_(Q,QL) = FD2A(QNT_1,CLK,RSTL);

endmodule                                                                       //[MACROS.NET:00198] END MODULE;
