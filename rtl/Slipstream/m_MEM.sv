                                                                                //[MEM.NET:00001] COMPILE;
                                                                                //[MEM.NET:00002] DIRECTORY MASTER;
/********************************************************
*	mem-hdl						*
*	7/11/88						*
********************************************************/

/*
This module is the provides memory timing in the SLIPSTREAM chip on the ACW
*/





module m_MEM                                                                    //[MEM.NET:00016] MODULE MEM;
(                                                                               //[MEM.NET:00016] MODULE MEM;

    input    MasterClock,
    input    RESETL_0,                                                          //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    CLK,                                                               //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    DQCLK,                                                             //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    BMREQ,                                                             //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    DMREQ,                                                             //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    HLDAL,                                                             //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    RDL,                                                               //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    WRL,                                                               //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    IOML,                                                              //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    A_0,                                                               //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    A_18,                                                              //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    A_19,                                                              //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    VBUSYL_0,                                                          //[MEM.NET:00018] INPUTS	RESETL_0,CLK,DQCLK,BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,
    input    VBUSYL_1,                                                          //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    VCS,                                                               //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    VOE,                                                               //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    VCAS,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    VRAS,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    WD_0,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    WD_1,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    WD_2,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    WD_3,                                                              //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    MEMLD,                                                             //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    PSUEDO,                                                            //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    BWORD,                                                             //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    input    DWORD,                                                             //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
                                                                                //[MEM.NET:00019]    VBUSYL_1,VCS,VOE,VCAS,VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD;
    output    CAS,                                                              //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    MUXL,                                                             //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    WAITL,                                                            //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    SCE_0,                                                            //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    SCE_1,                                                            //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    WE,                                                               //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    DWE,                                                              //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    CS_0,                                                             //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    CS_1,                                                             //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
    output    OE                                                                //[MEM.NET:00020] OUTPUTS	CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE;
);                                                                              //[MEM.NET:00016] MODULE MEM;
                                                                                //[MEM.NET:00021] LEVEL FUNCTION;
wire WORDL;                                                                     //[MEM.NET:00024] WORDL_(WORDL) = NR2A(BWORD,DWORD);
wire MREQL;                                                                     //[MEM.NET:00025] MREQL_(MREQL) = NR2A(BMREQ,DMREQ);
wire MEM_0;                                                                     //[MEM.NET:00029] MEM_0_(MEM_0,MEML_0) = LD1A(WD_0,MEMLD);
wire MEML_0;                                                                    //[MEM.NET:00029] MEM_0_(MEM_0,MEML_0) = LD1A(WD_0,MEMLD);
wire MEM_1;                                                                     //[MEM.NET:00030] MEM_1_(MEM_1,MEML_1) = LD1A(WD_1,MEMLD);
wire MEML_1;                                                                    //[MEM.NET:00030] MEM_1_(MEM_1,MEML_1) = LD1A(WD_1,MEMLD);
wire MEM_2;                                                                     //[MEM.NET:00031] MEM_2_(MEM_2,MEML_2) = LD1A(WD_2,MEMLD);
wire MEML_2;                                                                    //[MEM.NET:00031] MEM_2_(MEM_2,MEML_2) = LD1A(WD_2,MEMLD);
wire MEM_3;                                                                     //[MEM.NET:00032] MEM_3_(MEM_3,MEML_3) = LD1A(WD_3,MEMLD);
wire MEML_3;                                                                    //[MEM.NET:00032] MEM_3_(MEM_3,MEML_3) = LD1A(WD_3,MEMLD);
wire AL_18;                                                                     //[MEM.NET:00044] AL_18_(AL_18) = N1C(A_18);
wire AL_19;                                                                     //[MEM.NET:00045] AL_19_(AL_19) = N1C(A_19);
wire DEC_0;                                                                     //[MEM.NET:00046] DEC_0_(DEC_0) = NR2A(A_18,A_19);
wire DEC_1;                                                                     //[MEM.NET:00047] DEC_1_(DEC_1) = NR2A(AL_18,A_19);
wire DEC_2;                                                                     //[MEM.NET:00048] DEC_2_(DEC_2) = NR2A(A_18,AL_19);
wire DEC_3;                                                                     //[MEM.NET:00049] DEC_3_(DEC_3) = NR2A(AL_18,AL_19);
wire T00;                                                                       //[MEM.NET:00051] T00_(T00) = ND2A(DEC_0,PSUEDO);
wire T01;                                                                       //[MEM.NET:00052] T01_(T01) = ND2A(DEC_2,MEM_0);
wire T02;                                                                       //[MEM.NET:00053] T02_(T02) = ND2A(DEC_3,MEM_2);
wire TYPE_0;                                                                    //[MEM.NET:00055] TYPE_0_(TYPE_0) = ND3C(T00,T01,T02);
wire T10;                                                                       //[MEM.NET:00057] T10_(T10) = N1A(DEC_0);
wire T11;                                                                       //[MEM.NET:00058] T11_(T11) = ND2A(DEC_2,MEM_1);
wire T12;                                                                       //[MEM.NET:00059] T12_(T12) = ND2A(DEC_3,MEM_3);
wire T13;                                                                       //[MEM.NET:00060] T13_(T13) = N1A(DEC_1);
wire TYPE_1;                                                                    //[MEM.NET:00062] TYPE_1_(TYPE_1) = ND4C(T10,T11,T12,T13);
wire TYPEL_1;                                                                   //[MEM.NET:00063] TYPEL_1_(TYPEL_1) = N1C(TYPE_1);
wire RDWR;                                                                      //[MEM.NET:00076] RDWR_(RDWR) = ND2C(RDL,WRL);
wire HREQL;                                                                     //[MEM.NET:00077] HREQ_(HREQL) = ND2A(IOML,RDWR);
wire HLDA;                                                                      //[MEM.NET:00081] HLDA_(HLDA) = N1A(HLDAL);
wire MEMREQ;                                                                    //[MEM.NET:00082] MEMREQ_(MEMREQ) = AO2C(HLDA,MREQL,HLDAL,HREQL);
wire XREQL;                                                                     //[MEM.NET:00083] XREQL_(XREQL) = ND2A(HLDAL,IOML);
wire REQ;                                                                       //[MEM.NET:00084] REQ_(REQ) = ND2C(MREQL,XREQL);
wire CLKL;                                                                      //[MEM.NET:00108] CLKL_(CLKL) = N1C(CLK);
wire RESETL;                                                                    //[MEM.NET:00109] RESET_(RESETL) = B3A(RESETL_0);
wire VBUSY_0;                                                                   //[MEM.NET:00110] VBUSYL_0_(VBUSY_0) = N1C(VBUSYL_0);
wire VBUSY_1;                                                                   //[MEM.NET:00111] VBUSYL_1_(VBUSY_1) = N1C(VBUSYL_1);
wire D_0;                                                                       //[MEM.NET:00113] Q_0_(Q_0,QB_0) = FD2A(D_0,CLK,RESETL);
wire Q_0;                                                                       //[MEM.NET:00113] Q_0_(Q_0,QB_0) = FD2A(D_0,CLK,RESETL);
wire QB_0;                                                                      //[MEM.NET:00113] Q_0_(Q_0,QB_0) = FD2A(D_0,CLK,RESETL);
wire D_1;                                                                       //[MEM.NET:00114] Q_1_(Q_1,QB_1) = FD2A(D_1,CLK,RESETL);
wire Q_1;                                                                       //[MEM.NET:00114] Q_1_(Q_1,QB_1) = FD2A(D_1,CLK,RESETL);
wire QB_1;                                                                      //[MEM.NET:00114] Q_1_(Q_1,QB_1) = FD2A(D_1,CLK,RESETL);
wire MT_0;                                                                      //[MEM.NET:00116] MT_0_(MT_0) = ND6A(RESETL,QB_0,QB_1,MEMREQ,TYPEL_1,VBUSYL_0);
wire MT_1;                                                                      //[MEM.NET:00117] MT_1_(MT_1) = ND6A(RESETL,QB_0,QB_1,MEMREQ,TYPE_1,VBUSYL_1);
wire MT_2;                                                                      //[MEM.NET:00118] MT_2_(MT_2) = ND3A(RESETL,Q_0,QB_1);
wire MT_3;                                                                      //[MEM.NET:00119] MT_3_(MT_3) = ND4A(RESETL,Q_0,Q_1,MEMREQ);
wire QREQL_0;                                                                   //[MEM.NET:00128] QREQL_0_(QREQL_0) = ND4A(RDWR,AL_19,REQ,VBUSYL_1);
wire QREQL_1;                                                                   //[MEM.NET:00129] QREQL_1_(QREQL_1) = ND6A(RDWR,A_19,AL_18,MEM_1,REQ,VBUSYL_1);
wire QREQL_2;                                                                   //[MEM.NET:00130] QREQL_2_(QREQL_2) = ND6A(RDWR,A_19,A_18,MEM_3,REQ,VBUSYL_1);
wire SREQL_0;                                                                   //[MEM.NET:00131] SREQL_0_(SREQL_0) = ND6A(RDWR,A_19,AL_18,MEML_1,REQ,VBUSYL_0);
wire SREQL_1;                                                                   //[MEM.NET:00132] SREQL_1_(SREQL_1) = ND6A(RDWR,A_19,A_18,MEML_3,REQ,VBUSYL_0);
wire REQ_0;                                                                     //[MEM.NET:00133] REQ_0_(REQ_0) = ND5A(QREQL_0,QREQL_1,QREQL_2,SREQL_0,SREQL_1);
wire REQ_1;                                                                     //[MEM.NET:00135] REQ_1_(REQ_1,REQL_1) = FD2A(REQ_0,CLKL,RESETL);
wire REQL_1;                                                                    //[MEM.NET:00135] REQ_1_(REQ_1,REQL_1) = FD2A(REQ_0,CLKL,RESETL);
wire REQ_2;                                                                     //[MEM.NET:00137] REQ_2_(REQ_2,REQL_2) = FD2A(REQ_1,CLKL,RESETL);
wire REQL_2;                                                                    //[MEM.NET:00137] REQ_2_(REQ_2,REQL_2) = FD2A(REQ_1,CLKL,RESETL);
wire START1L;                                                                   //[MEM.NET:00140] START1L_(START1L) = ND2C(REQ_1,REQL_2);
wire START1;                                                                    //[MEM.NET:00141] START1_(START1) = N1C(START1L);
wire DQCLKL;                                                                    //[MEM.NET:00158] DQCLKL_(DQCLKL) = N1A(DQCLK);
wire MUXDL;                                                                     //[MEM.NET:00159] MUXD_(MUXDL,MUXD) = FD4A(START1L,DQCLKL,RESETL);
wire MUXD;                                                                      //[MEM.NET:00159] MUXD_(MUXDL,MUXD) = FD4A(START1L,DQCLKL,RESETL);
wire RASD;                                                                      //[MEM.NET:00161] RASD_(RASD) = ND2C(START1L,MUXDL);
wire CASD;                                                                      //[MEM.NET:00162] CASD_(CASD) = ND3A(REQL_1,MT_2,MT_3);
wire CAST;                                                                      //[MEM.NET:00163] CAST_(CAST,CASTL) = FD2A(CASD,CLK,RESETL);
wire CASTL;                                                                     //[MEM.NET:00163] CAST_(CAST,CASTL) = FD2A(CASD,CLK,RESETL);
wire CASTL_0;                                                                   //[MEM.NET:00165] CASTL_0_(CASTL_0) = ND5A(AL_18,A_19,MEM_0,MEML_1,CAST);
wire CASTL_1;                                                                   //[MEM.NET:00166] CASTL_1_(CASTL_1) = ND5A(A_18,A_19,MEM_2,MEML_3,CAST);
wire VCASL;                                                                     //[MEM.NET:00167] VCASL_(VCASL) = N1A(VCAS);
wire DRAM;                                                                      //[MEM.NET:00170] DRAM_(DRAM) = AND2A(TYPE_0,TYPEL_1);
wire PSCE;                                                                      //[MEM.NET:00175] PSCE_(PSCE) = ND2C(START1L,CASTL);
wire AL_0;                                                                      //[MEM.NET:00180] AL_0_(AL_0) = N1A(A_0);
wire WORD;                                                                      //[MEM.NET:00182] WORD_(WORD) = N1A(WORDL);
wire WIDEPL;                                                                    //[MEM.NET:00183] WIDEPL_(WIDEPL) = ND5A(WORD,HLDA,AL_18,AL_19,PSCE);
wire ODDPL;                                                                     //[MEM.NET:00184] ODDPL_(ODDPL) = ND5A(IOML,AL_18,AL_19,A_0,PSCE);
wire EVENPL;                                                                    //[MEM.NET:00185] EVENPL_(EVENPL) = ND5A(IOML,AL_18,AL_19,AL_0,PSCE);
wire VCSL;                                                                      //[MEM.NET:00186] VCSL_(VCSL) = N1C(VCS);
wire WEL;                                                                       //[MEM.NET:00191] WEL_(WEL) = NR2A(START1,MUXD);
wire RASL_0;                                                                    //[MEM.NET:00196] RASL_0_(RASL_0) = ND5A(AL_18,A_19,MEM_0,MEML_1,RASD);
wire RASL_1;                                                                    //[MEM.NET:00197] RASL_1_(RASL_1) = ND5A(A_18,A_19,MEM_2,MEML_3,RASD);
wire PSCEL_0;                                                                   //[MEM.NET:00198] PSCEL_0_(PSCEL_0) = ND5A(AL_18,A_19,MEM_0,MEM_1,PSCE);
wire PSCEL_1;                                                                   //[MEM.NET:00199] PSCEL_1_(PSCEL_1) = ND5A(A_18,A_19,MEM_2,MEM_3,PSCE);
wire RDWRL_0;                                                                   //[MEM.NET:00200] RDWRL_0_(RDWRL_0) = ND4A(AL_18,A_19,MEML_0,PSCE);
wire RDWRL_1;                                                                   //[MEM.NET:00201] RDWRL_1_(RDWRL_1) = ND4A(A_18,A_19,MEML_2,PSCE);
wire VRASL_0;                                                                   //[MEM.NET:00205] VRASL_0_(VRASL_0) = ND3A(VRAS,MEM_0,MEML_1);
wire VRASL_1;                                                                   //[MEM.NET:00206] VRASL_1_(VRASL_1) = ND3A(VRAS,MEM_2,MEML_3);
wire RD;                                                                        //[MEM.NET:00215] RD_(RD) = N1A(RDL);
wire VOEL;                                                                      //[MEM.NET:00216] VOEL_(VOEL) = N1A(VOE);
wire PSCEL;                                                                     //[MEM.NET:00217] PSCEL_(PSCEL) = ND2A(PSCE,RD);
wire ZERO;                                                                      //[MEM.NET:00225] ZERO_(ZERO) = NR2A(Q_0,Q_1);
wire WAITL_0;                                                                   //[MEM.NET:00226] WAITL_0_(WAITL_0) = ND4A(MEMREQ,TYPEL_1,ZERO,VBUSY_0);
wire WAITL_1;                                                                   //[MEM.NET:00227] WAITL_1_(WAITL_1) = ND4A(MEMREQ,TYPE_1,ZERO,VBUSY_1);
wire WRL_1;                                                                     //[MEM.NET:00232] WR_1_(WRL_1,WR_1) = FD2A(WRL,CLK,RESETL);
wire WR_1;                                                                      //[MEM.NET:00232] WR_1_(WRL_1,WR_1) = FD2A(WRL,CLK,RESETL);
wire WR_2;                                                                      //[MEM.NET:00234] WR_2_(WR_2,WRL_2) = FD2A(WR_1,CLK,RESETL);
wire WRL_2;                                                                     //[MEM.NET:00234] WR_2_(WR_2,WRL_2) = FD2A(WR_1,CLK,RESETL);

assign WORDL = ~(BWORD | DWORD);                                                //[MEM.NET:00024] WORDL_(WORDL) = NR2A(BWORD,DWORD);
assign MREQL = ~(BMREQ | DMREQ);                                                //[MEM.NET:00025] MREQL_(MREQL) = NR2A(BMREQ,DMREQ);

/* latch the memory type */

LD1A MEM_0__inst (.MasterClock(MasterClock),.q(MEM_0),.qL(MEML_0),.d(WD_0),.en(MEMLD));//[MEM.NET:00029] MEM_0_(MEM_0,MEML_0) = LD1A(WD_0,MEMLD);
LD1A MEM_1__inst (.MasterClock(MasterClock),.q(MEM_1),.qL(MEML_1),.d(WD_1),.en(MEMLD));//[MEM.NET:00030] MEM_1_(MEM_1,MEML_1) = LD1A(WD_1,MEMLD);
LD1A MEM_2__inst (.MasterClock(MasterClock),.q(MEM_2),.qL(MEML_2),.d(WD_2),.en(MEMLD));//[MEM.NET:00031] MEM_2_(MEM_2,MEML_2) = LD1A(WD_2,MEMLD);
LD1A MEM_3__inst (.MasterClock(MasterClock),.q(MEM_3),.qL(MEML_3),.d(WD_3),.en(MEMLD));//[MEM.NET:00032] MEM_3_(MEM_3,MEML_3) = LD1A(WD_3,MEMLD);

/* Using the top two bits of the address, the memory type register, and
the psuedo signal from the status register generate the current memory type.

0..ROM
1..DRAM
2..SRAM
3..PSRAM

Memory between 256k and 512k is deemed to be SRAM */

assign AL_18 = ~A_18;                                                           //[MEM.NET:00044] AL_18_(AL_18) = N1C(A_18);
assign AL_19 = ~A_19;                                                           //[MEM.NET:00045] AL_19_(AL_19) = N1C(A_19);
assign DEC_0 = ~(A_18 | A_19);                                                  //[MEM.NET:00046] DEC_0_(DEC_0) = NR2A(A_18,A_19);
assign DEC_1 = ~(AL_18 | A_19);                                                 //[MEM.NET:00047] DEC_1_(DEC_1) = NR2A(AL_18,A_19);
assign DEC_2 = ~(A_18 | AL_19);                                                 //[MEM.NET:00048] DEC_2_(DEC_2) = NR2A(A_18,AL_19);
assign DEC_3 = ~(AL_18 | AL_19);                                                //[MEM.NET:00049] DEC_3_(DEC_3) = NR2A(AL_18,AL_19);

assign T00 = ~(DEC_0 & PSUEDO);                                                 //[MEM.NET:00051] T00_(T00) = ND2A(DEC_0,PSUEDO);
assign T01 = ~(DEC_2 & MEM_0);                                                  //[MEM.NET:00052] T01_(T01) = ND2A(DEC_2,MEM_0);
assign T02 = ~(DEC_3 & MEM_2);                                                  //[MEM.NET:00053] T02_(T02) = ND2A(DEC_3,MEM_2);

assign TYPE_0 = ~(T00 & T01 & T02);                                             //[MEM.NET:00055] TYPE_0_(TYPE_0) = ND3C(T00,T01,T02);

assign T10 = ~DEC_0;                                                            //[MEM.NET:00057] T10_(T10) = N1A(DEC_0);
assign T11 = ~(DEC_2 & MEM_1);                                                  //[MEM.NET:00058] T11_(T11) = ND2A(DEC_2,MEM_1);
assign T12 = ~(DEC_3 & MEM_3);                                                  //[MEM.NET:00059] T12_(T12) = ND2A(DEC_3,MEM_3);
assign T13 = ~DEC_1;                                                            //[MEM.NET:00060] T13_(T13) = N1A(DEC_1);

assign TYPE_1 = ~(T10 & T11 & T12 & T13);                                       //[MEM.NET:00062] TYPE_1_(TYPE_1) = ND4C(T10,T11,T12,T13);
assign TYPEL_1 = ~TYPE_1;                                                       //[MEM.NET:00063] TYPEL_1_(TYPEL_1) = N1C(TYPE_1);

/* Memory timing is generated by a three state machine
however in order to achieve the resolution required for

1) psuedo static chip enable
2) screen ram write strobe
3) dram address multiplexer

the 17MHz clock is used to generate certain signals.*/

/* Decode host memory cycle request */

assign RDWR = ~(RDL & WRL);                                                     //[MEM.NET:00076] RDWR_(RDWR) = ND2C(RDL,WRL);
assign HREQL = ~(IOML & RDWR);                                                  //[MEM.NET:00077] HREQ_(HREQL) = ND2A(IOML,RDWR);

/* generate combined memory cycle request */

assign HLDA = ~HLDAL;                                                           //[MEM.NET:00081] HLDA_(HLDA) = N1A(HLDAL);
assign MEMREQ = ~((HLDA & MREQL)|(HLDAL & HREQL));                              //[MEM.NET:00082] MEMREQ_(MEMREQ) = AO2C(HLDA,MREQL,HLDAL,HREQL);
assign XREQL = ~(HLDAL & IOML);                                                 //[MEM.NET:00083] XREQL_(XREQL) = ND2A(HLDAL,IOML);
assign REQ = ~(MREQL & XREQL);                                                  //[MEM.NET:00084] REQ_(REQ) = ND2C(MREQL,XREQL);

/* the next state is defined by the current state and the signals
resetL, memreq, type[1], vbusy[0] and vbusy[1] as follows :-


	State	Q's	R M T V0 V1	Next	D's
	--------------------------------------------
	X	XX	L X X X  X	0	00	reset

	0	00	H L X X  X	0	00	idle
	0	00	H H L H  X	0	00
	0	00	H H L L  X	1	01
	0	00	H H H X  H	0	00
	0	00	H H H X  L	2	11

	1	01	H X X X  X	2	11	ROM/DRAM access

	2	11	H H X X  X	2	11	Screen access
	2	11	H L X X  X	0	00
*/

/* buffer the clocks & reset */

assign CLKL = ~CLK;                                                             //[MEM.NET:00108] CLKL_(CLKL) = N1C(CLK);
assign RESETL = RESETL_0;                                                       //[MEM.NET:00109] RESET_(RESETL) = B3A(RESETL_0);
assign VBUSY_0 = ~VBUSYL_0;                                                     //[MEM.NET:00110] VBUSYL_0_(VBUSY_0) = N1C(VBUSYL_0);
assign VBUSY_1 = ~VBUSYL_1;                                                     //[MEM.NET:00111] VBUSYL_1_(VBUSY_1) = N1C(VBUSYL_1);

FD2A Q_0__inst (.MasterClock(MasterClock),.q(Q_0),.qL(QB_0),.d(D_0),.clk(CLK),.rL(RESETL));//[MEM.NET:00113] Q_0_(Q_0,QB_0) = FD2A(D_0,CLK,RESETL);
FD2A Q_1__inst (.MasterClock(MasterClock),.q(Q_1),.qL(QB_1),.d(D_1),.clk(CLK),.rL(RESETL));//[MEM.NET:00114] Q_1_(Q_1,QB_1) = FD2A(D_1,CLK,RESETL);

assign MT_0 = ~(RESETL & QB_0 & QB_1 & MEMREQ & TYPEL_1 & VBUSYL_0);            //[MEM.NET:00116] MT_0_(MT_0) = ND6A(RESETL,QB_0,QB_1,MEMREQ,TYPEL_1,VBUSYL_0);
assign MT_1 = ~(RESETL & QB_0 & QB_1 & MEMREQ & TYPE_1 & VBUSYL_1);             //[MEM.NET:00117] MT_1_(MT_1) = ND6A(RESETL,QB_0,QB_1,MEMREQ,TYPE_1,VBUSYL_1);
assign MT_2 = ~(RESETL & Q_0 & QB_1);                                           //[MEM.NET:00118] MT_2_(MT_2) = ND3A(RESETL,Q_0,QB_1);
assign MT_3 = ~(RESETL & Q_0 & Q_1 & MEMREQ);                                   //[MEM.NET:00119] MT_3_(MT_3) = ND4A(RESETL,Q_0,Q_1,MEMREQ);

assign D_0 = ~(MT_0 & MT_1 & MT_2 & MT_3);                                      //[MEM.NET:00121] D_0_(D_0) = ND4A(MT_0,MT_1,MT_2,MT_3);
assign D_1 = ~(MT_1 & MT_2 & MT_3);                                             //[MEM.NET:00122] D_1_(D_1) = ND3A(MT_1,MT_2,MT_3);

/* produce pulses synchronized to clkL at the start of every cycle.
These are used in the generation of sce,soe,we,ras
start1 is one cycle long */

assign QREQL_0 = ~(RDWR & AL_19 & REQ & VBUSYL_1);                              //[MEM.NET:00128] QREQL_0_(QREQL_0) = ND4A(RDWR,AL_19,REQ,VBUSYL_1);
assign QREQL_1 = ~(RDWR & A_19 & AL_18 & MEM_1 & REQ & VBUSYL_1);               //[MEM.NET:00129] QREQL_1_(QREQL_1) = ND6A(RDWR,A_19,AL_18,MEM_1,REQ,VBUSYL_1);
assign QREQL_2 = ~(RDWR & A_19 & A_18 & MEM_3 & REQ & VBUSYL_1);                //[MEM.NET:00130] QREQL_2_(QREQL_2) = ND6A(RDWR,A_19,A_18,MEM_3,REQ,VBUSYL_1);
assign SREQL_0 = ~(RDWR & A_19 & AL_18 & MEML_1 & REQ & VBUSYL_0);              //[MEM.NET:00131] SREQL_0_(SREQL_0) = ND6A(RDWR,A_19,AL_18,MEML_1,REQ,VBUSYL_0);
assign SREQL_1 = ~(RDWR & A_19 & A_18 & MEML_3 & REQ & VBUSYL_0);               //[MEM.NET:00132] SREQL_1_(SREQL_1) = ND6A(RDWR,A_19,A_18,MEML_3,REQ,VBUSYL_0);
assign REQ_0 = ~(QREQL_0 & QREQL_1 & QREQL_2 & SREQL_0 & SREQL_1);              //[MEM.NET:00133] REQ_0_(REQ_0) = ND5A(QREQL_0,QREQL_1,QREQL_2,SREQL_0,SREQL_1);

FD2A REQ_1__inst (.MasterClock(MasterClock),.q(REQ_1),.qL(REQL_1),.d(REQ_0),.clk(CLKL),.rL(RESETL));//[MEM.NET:00135] REQ_1_(REQ_1,REQL_1) = FD2A(REQ_0,CLKL,RESETL);

FD2A REQ_2__inst (.MasterClock(MasterClock),.q(REQ_2),.qL(REQL_2),.d(REQ_1),.clk(CLKL),.rL(RESETL));//[MEM.NET:00137] REQ_2_(REQ_2,REQL_2) = FD2A(REQ_1,CLKL,RESETL);


assign START1L = ~(REQ_1 & REQL_2);                                             //[MEM.NET:00140] START1L_(START1L) = ND2C(REQ_1,REQL_2);
assign START1 = ~START1L;                                                       //[MEM.NET:00141] START1_(START1) = N1C(START1L);


/* from the above we must generate timing for:-

romcs,ras,cas,mux,sce,soe,oe,we

romcs timing is as rdl
ras is start1 + mux 
cas is (req1 + state1 or (state2 and memreq)) sampled by clk
mux is start1 sampled by dqclk
psce is start1 + cas
psoe is as psce
we is as ras

*/

assign DQCLKL = ~DQCLK;                                                         //[MEM.NET:00158] DQCLKL_(DQCLKL) = N1A(DQCLK);
FD4A MUXD__inst (.MasterClock(MasterClock),.q(MUXDL),.qL(MUXD),.d(START1L),.clk(DQCLKL),.sL(RESETL));//[MEM.NET:00159] MUXD_(MUXDL,MUXD) = FD4A(START1L,DQCLKL,RESETL);

assign RASD = ~(START1L & MUXDL);                                               //[MEM.NET:00161] RASD_(RASD) = ND2C(START1L,MUXDL);
assign CASD = ~(REQL_1 & MT_2 & MT_3);                                          //[MEM.NET:00162] CASD_(CASD) = ND3A(REQL_1,MT_2,MT_3);
FD2A CAST__inst (.MasterClock(MasterClock),.q(CAST),.qL(CASTL),.d(CASD),.clk(CLK),.rL(RESETL));//[MEM.NET:00163] CAST_(CAST,CASTL) = FD2A(CASD,CLK,RESETL);

assign CASTL_0 = ~(AL_18 & A_19 & MEM_0 & MEML_1 & CAST);                       //[MEM.NET:00165] CASTL_0_(CASTL_0) = ND5A(AL_18,A_19,MEM_0,MEML_1,CAST);
assign CASTL_1 = ~(A_18 & A_19 & MEM_2 & MEML_3 & CAST);                        //[MEM.NET:00166] CASTL_1_(CASTL_1) = ND5A(A_18,A_19,MEM_2,MEML_3,CAST);
assign VCASL = ~VCAS;                                                           //[MEM.NET:00167] VCASL_(VCASL) = N1A(VCAS);
assign CAS = ~(CASTL_0 & CASTL_1 & VCASL);                                      //[MEM.NET:00168] CAS_(CAS) = ND3A(CASTL_0,CASTL_1,VCASL);

assign DRAM = TYPE_0 & TYPEL_1;                                                 //[MEM.NET:00170] DRAM_(DRAM) = AND2A(TYPE_0,TYPEL_1);
assign MUXL = ~(DRAM & MUXD);                                                   //[MEM.NET:00171] MUXL_(MUXL) = ND2C(DRAM,MUXD);

/* generate the timing for screen chip select/output enable */

assign PSCE = ~(START1L & CASTL);                                               //[MEM.NET:00175] PSCE_(PSCE) = ND2C(START1L,CASTL);

/* generate the address decode for screen chip selects */
/* combine address decode with timing */

assign AL_0 = ~A_0;                                                             //[MEM.NET:00180] AL_0_(AL_0) = N1A(A_0);

assign WORD = ~WORDL;                                                           //[MEM.NET:00182] WORD_(WORD) = N1A(WORDL);
assign WIDEPL = ~(WORD & HLDA & AL_18 & AL_19 & PSCE);                          //[MEM.NET:00183] WIDEPL_(WIDEPL) = ND5A(WORD,HLDA,AL_18,AL_19,PSCE);
assign ODDPL = ~(IOML & AL_18 & AL_19 & A_0 & PSCE);                            //[MEM.NET:00184] ODDPL_(ODDPL) = ND5A(IOML,AL_18,AL_19,A_0,PSCE);
assign EVENPL = ~(IOML & AL_18 & AL_19 & AL_0 & PSCE);                          //[MEM.NET:00185] EVENPL_(EVENPL) = ND5A(IOML,AL_18,AL_19,AL_0,PSCE);
assign VCSL = ~VCS;                                                             //[MEM.NET:00186] VCSL_(VCSL) = N1C(VCS);

assign SCE_0 = ~(WIDEPL & EVENPL & VCSL);                                       //[MEM.NET:00188] SCE_0_(SCE_0) = ND3A(WIDEPL,EVENPL,VCSL);
assign SCE_1 = ~(WIDEPL & ODDPL & VCSL);                                        //[MEM.NET:00189] SCE_1_(SCE_1) = ND3A(WIDEPL,ODDPL,VCSL);

assign WEL = ~(START1 | MUXD);                                                  //[MEM.NET:00191] WEL_(WEL) = NR2A(START1,MUXD);
assign WE = ~(WRL | WEL);                                                       //[MEM.NET:00192] WE_(WE) = NR2A(WRL,WEL);

/* combine address decode with timing */

assign RASL_0 = ~(AL_18 & A_19 & MEM_0 & MEML_1 & RASD);                        //[MEM.NET:00196] RASL_0_(RASL_0) = ND5A(AL_18,A_19,MEM_0,MEML_1,RASD);
assign RASL_1 = ~(A_18 & A_19 & MEM_2 & MEML_3 & RASD);                         //[MEM.NET:00197] RASL_1_(RASL_1) = ND5A(A_18,A_19,MEM_2,MEML_3,RASD);
assign PSCEL_0 = ~(AL_18 & A_19 & MEM_0 & MEM_1 & PSCE);                        //[MEM.NET:00198] PSCEL_0_(PSCEL_0) = ND5A(AL_18,A_19,MEM_0,MEM_1,PSCE);
assign PSCEL_1 = ~(A_18 & A_19 & MEM_2 & MEM_3 & PSCE);                         //[MEM.NET:00199] PSCEL_1_(PSCEL_1) = ND5A(A_18,A_19,MEM_2,MEM_3,PSCE);
assign RDWRL_0 = ~(AL_18 & A_19 & MEML_0 & PSCE);                               //[MEM.NET:00200] RDWRL_0_(RDWRL_0) = ND4A(AL_18,A_19,MEML_0,PSCE);
assign RDWRL_1 = ~(A_18 & A_19 & MEML_2 & PSCE);                                //[MEM.NET:00201] RDWRL_1_(RDWRL_1) = ND4A(A_18,A_19,MEML_2,PSCE);

/* generate refresh RAS if dram installed */

assign VRASL_0 = 1;//~(VRAS & MEM_0 & MEML_1);                                      //[MEM.NET:00205] VRASL_0_(VRASL_0) = ND3A(VRAS,MEM_0,MEML_1);
assign VRASL_1 = 1;//~(VRAS & MEM_2 & MEML_3);                                      //[MEM.NET:00206] VRASL_1_(VRASL_1) = ND3A(VRAS,MEM_2,MEML_3);

/* combine refresh RAS and chip select */

assign CS_0 = ~(VRASL_0 & RASL_0 & PSCEL_0 & RDWRL_0);                          //[MEM.NET:00210] CS_0_(CS_0) = ND4C(VRASL_0,RASL_0,PSCEL_0,RDWRL_0);
assign CS_1 = ~(VRASL_1 & RASL_1 & PSCEL_1 & RDWRL_1);                          //[MEM.NET:00211] CS_1_(CS_1) = ND4C(VRASL_1,RASL_1,PSCEL_1,RDWRL_1);

/* generate output enable timing */

assign RD = ~RDL;                                                               //[MEM.NET:00215] RD_(RD) = N1A(RDL);
assign VOEL = ~VOE;                                                             //[MEM.NET:00216] VOEL_(VOEL) = N1A(VOE);
assign PSCEL = ~(PSCE & RD);                                                    //[MEM.NET:00217] PSCEL_(PSCEL) = ND2A(PSCE,RD);
assign OE = ~(PSCEL & VOEL);                                                    //[MEM.NET:00218] OE_(OE) = ND2A(PSCEL,VOEL);

/* generate wait */
/* vbusy[0] is asserted when it is too late to start a ROM/DRAM cycle */
/* vbusy[1] is asserted when it is too late to start any cycle */
/* wait is also asserted during ROM/DRAM cycles */

assign ZERO = ~(Q_0 | Q_1);                                                     //[MEM.NET:00225] ZERO_(ZERO) = NR2A(Q_0,Q_1);
assign WAITL_0 = ~(MEMREQ & TYPEL_1 & ZERO & VBUSY_0);                          //[MEM.NET:00226] WAITL_0_(WAITL_0) = ND4A(MEMREQ,TYPEL_1,ZERO,VBUSY_0);
assign WAITL_1 = ~(MEMREQ & TYPE_1 & ZERO & VBUSY_1);                           //[MEM.NET:00227] WAITL_1_(WAITL_1) = ND4A(MEMREQ,TYPE_1,ZERO,VBUSY_1);
assign WAITL = WAITL_0 & WAITL_1 & MT_0;                                        //[MEM.NET:00228] WAITL_(WAITL) = AND3A(WAITL_0,WAITL_1,MT_0);

/* generate a synchronous write strobe for the dsp */

FD2A WR_1__inst (.MasterClock(MasterClock),.q(WRL_1),.qL(WR_1),.d(WRL),.clk(CLK),.rL(RESETL));//[MEM.NET:00232] WR_1_(WRL_1,WR_1) = FD2A(WRL,CLK,RESETL);

FD2A WR_2__inst (.MasterClock(MasterClock),.q(WR_2),.qL(WRL_2),.d(WR_1),.clk(CLK),.rL(RESETL));//[MEM.NET:00234] WR_2_(WR_2,WRL_2) = FD2A(WR_1,CLK,RESETL);

assign DWE = ~(WRL_1 | WR_2);                                                   //[MEM.NET:00236] DWE_(DWE) = NR2A(WRL_1,WR_2);


endmodule                                                                       //[MEM.NET:00239] END MODULE;
