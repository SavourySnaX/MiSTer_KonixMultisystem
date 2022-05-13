                                                                                //[STINNER.NET:00001] COMPILE;
                                                                                //[STINNER.NET:00002] DIRECTORY MASTER;
/****************************************************************************
stinner
19/10/88

Blitter Inner Loop State Machine

****************************************************************************/


module m_STINNER                                                                //[STINNER.NET:00012] MODULE STINNER;
(                                                                               //[STINNER.NET:00012] MODULE STINNER;

    input    MasterClock,
    input    BORROW,                                                            //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    CCLK,                                                              //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    COLST,                                                             //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    CYCEND,                                                            //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    CYCST,                                                             //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    DAM1L,                                                             //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    DSTEN,                                                             //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    ICYCEND,                                                           //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    ICYCST,                                                            //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    ILDPATL,                                                           //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    INHIB,                                                             //[STINNER.NET:00014] INPUTS	BORROW,CCLK,COLST,CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,
    input    INLP,                                                              //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    INNER0,                                                            //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    IUPDDSTL,                                                          //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    IUPDSRCL,                                                          //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    LINDR,                                                             //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    RES_0,                                                             //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    RESET,                                                             //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    RESUME,                                                            //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    SAM1L,                                                             //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    SRCEN,                                                             //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    SRCENF,                                                            //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
    input    SRESET,                                                            //[STINNER.NET:00016]    SRESET;
                                                                                //[STINNER.NET:00015]    INLP,INNER0,IUPDDSTL,IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,
                                                                                //[STINNER.NET:00016]    SRESET;
    output    ADDBACKL,                                                         //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    ADDBLDL,                                                          //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    DSTWR,                                                            //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    IDSTWR,                                                           //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    INCLKL,                                                           //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    INCRQ,                                                            //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    IQUIET,                                                           //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    LDDSTL,                                                           //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    LDSRCL,                                                           //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    SRCLTOH,                                                          //[STINNER.NET:00017] OUTPUTS	ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,SRCLTOH,
    output    SRCRD,                                                            //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
    output    SSWAP,                                                            //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
    output    STOP,                                                             //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
    output    UPDDSTL,                                                          //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
    output    UPDSRCL,                                                          //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
    output    UPSLDL                                                            //[STINNER.NET:00018]    SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL;
);                                                                              //[STINNER.NET:00012] MODULE STINNER;
                                                                                //[STINNER.NET:00019] LEVEL FUNCTION;
wire CCLKL;                                                                     //[STINNER.NET:00024] CCLKINV_(CCLKL) = N1A(CCLK);
wire CYCENDL;                                                                   //[STINNER.NET:00025] CYCENDL_(CYCENDL) = N1A(CYCEND);
wire DSTENL;                                                                    //[STINNER.NET:00026] DSTENL_(DSTENL) = N1A(DSTEN);
wire INLPL;                                                                     //[STINNER.NET:00027] INLPL_(INLPL) = N1A(INLP);
wire INNER0L;                                                                   //[STINNER.NET:00028] INNER0L_(INNER0L) = N1A(INNER0);
wire LINDRL;                                                                    //[STINNER.NET:00029] LINDRL_(LINDRL) = N1A(LINDR);
wire RESUMEL;                                                                   //[STINNER.NET:00030] RESUMEL_(RESUMEL) = N1A(RESUME);
wire SRCENL;                                                                    //[STINNER.NET:00031] SRCENL_(SRCENL) = N1A(SRCEN);
wire SRCENFL;                                                                   //[STINNER.NET:00032] SRCENFL_(SRCENFL) = N1A(SRCENF);
wire SRESETL;                                                                   //[STINNER.NET:00033] SRESETL_(SRESETL) = N1A(SRESET);
wire COLSTOPL;                                                                  //[STINNER.NET:00035] COLSTOPL_(COLSTOPL) = ND2A(INHIB,COLST);
wire COLSTOP;                                                                   //[STINNER.NET:00036] COLSTOP_(COLSTOP) = N1A(COLSTOPL);
wire QUIET;                                                                     //[STINNER.NET:00040] QT0_(QT_0) = ND2A(QUIET,INLPL);
wire QT_0;                                                                      //[STINNER.NET:00040] QT0_(QT_0) = ND2A(QUIET,INLPL);
wire QT_1;                                                                      //[STINNER.NET:00041] QT1_(QT_1) = ND3A(DSTWR,CYCEND,INNER0);
wire QUIETL;                                                                    //[STINNER.NET:00043] QUIET_(QUIET,QUIETL) = FD4A(IQUIET,CCLK,SRESETL);
wire SRT_0;                                                                     //[STINNER.NET:00047] SRT0_(SRT_0) = ND3A(QUIET,INLP,SRCENF);
wire SRT_1;                                                                     //[STINNER.NET:00048] SRT1_(SRT_1) = ND3A(QUIET,INLP,SRCEN);
wire SRT_2;                                                                     //[STINNER.NET:00049] SRT2_(SRT_2) = ND2A(SRCRD,CYCENDL);
wire SRT_3;                                                                     //[STINNER.NET:00050] SRT3_(SRT_3) = ND4A(DSTWR,CYCEND,INNER0L,SRCEN);
wire ISRCRD;                                                                    //[STINNER.NET:00051] SRT4_(ISRCRD) = ND4A(SRT_0,SRT_1,SRT_2,SRT_3);
wire SRCRDL;                                                                    //[STINNER.NET:00052] SRCRD_(SRCRD,SRCRDL) = FD2A(ISRCRD,CCLK,SRESETL);
wire DRT_0;                                                                     //[STINNER.NET:00056] DRT0_(DRT_0) = ND5A(QUIET,INLP,DSTEN,SRCENL,SRCENFL);
wire DRT_1;                                                                     //[STINNER.NET:00057] DRT1_(DRT_1) = ND3A(SRCRD,CYCEND,DSTEN);
wire DSTRD;                                                                     //[STINNER.NET:00058] DRT2_(DRT_2) = ND2A(DSTRD,CYCENDL);
wire DRT_2;                                                                     //[STINNER.NET:00058] DRT2_(DRT_2) = ND2A(DSTRD,CYCENDL);
wire DRT_3;                                                                     //[STINNER.NET:00059] DRT3_(DRT_3) = ND5A(DSTWR,CYCEND,INNER0L,SRCENL,DSTEN);
wire IDSTRD;                                                                    //[STINNER.NET:00060] DRT4_(IDSTRD) = ND4A(DRT_0,DRT_1,DRT_2,DRT_3);
wire DSTRDL;                                                                    //[STINNER.NET:00061] DSTRD_(DSTRD,DSTRDL) = FD2A(IDSTRD,CCLK,SRESETL);
wire DWT_0;                                                                     //[STINNER.NET:00065] DWT0_(DWT_0) = ND5A(QUIET,INLP,DSTENL,SRCENL,SRCENFL);
wire DWT_1;                                                                     //[STINNER.NET:00066] DWT1_(DWT_1) = ND3A(DSTRD,CYCEND,COLSTOPL);
wire DWT_2;                                                                     //[STINNER.NET:00067] DWT2_(DWT_2) = ND4A(SRCRD,CYCEND,DSTENL,COLSTOPL);
wire DWT_3;                                                                     //[STINNER.NET:00068] DWT3_(DWT_3) = ND2A(DSTWR,CYCENDL);
wire DWT_4;                                                                     //[STINNER.NET:00069] DWT4_(DWT_4) = ND5A(DSTWR,CYCEND,INNER0L,DSTENL,SRCENL);
wire DWT_5;                                                                     //[STINNER.NET:00070] DWT5_(DWT_5) = ND2A(STOP,RESUME);
wire DSTWRL;                                                                    //[STINNER.NET:00072] DSTWR_(DSTWR,DSTWRL) = FD2A(IDSTWR,CCLK,SRESETL);
wire STT_0;                                                                     //[STINNER.NET:00076] STT0_(STT_0) = ND3A(DSTRD,CYCEND,COLSTOP);
wire STT_1;                                                                     //[STINNER.NET:00077] STT1_(STT_1) = ND4A(SRCRD,CYCEND,COLSTOP,DSTENL);
wire STT_2;                                                                     //[STINNER.NET:00078] STT2_(STT_2) = ND2A(STOP,RESUMEL);
wire ISTOP;                                                                     //[STINNER.NET:00079] STT3_(ISTOP) = ND3A(STT_0,STT_1,STT_2);
wire STOPL;                                                                     //[STINNER.NET:00080] STOP_(STOP,STOPL) = FD2A(ISTOP,CCLK,SRESETL);
wire IINCLKL;                                                                   //[STINNER.NET:00091] INCKGEN_(IINCLKL) = ND2A(ICYCST,IDSTWR);
wire INCLK;                                                                     //[STINNER.NET:00092] INCKLAT_(INCLKL,INCLK) = FD1A(IINCLKL,CCLK);
wire SUT_0;                                                                     //[STINNER.NET:00099] SUT_0_(SUT_0) = ND2A(SRCRD,ICYCEND);
wire SUT_1;                                                                     //[STINNER.NET:00100] SUT_1_(SUT_1) = ND3A(IDSTWR,ICYCST,LINDR);
wire SUT_2;                                                                     //[STINNER.NET:00101] SUT_2_(SUT_2) = ND3B(IUPDSRCL,SUT_0,SUT_1);
wire UPDSRC;                                                                    //[STINNER.NET:00102] UPDSRC_(UPDSRC,UPDSRCL) = FD1A(SUT_2,CCLK);
wire SUTL_3;                                                                    //[STINNER.NET:00108] SUT3_(SUTL_3,SUT_3) = FD1A(UPDSRCL,CCLKL);
wire SUT_3;                                                                     //[STINNER.NET:00108] SUT3_(SUTL_3,SUT_3) = FD1A(UPDSRCL,CCLKL);
wire SUT_4;                                                                     //[STINNER.NET:00109] SUT4_(SUT_4,SUTL_4) = FD1A(SUT_3,CCLK);
wire SUTL_4;                                                                    //[STINNER.NET:00109] SUT4_(SUT_4,SUTL_4) = FD1A(SUT_3,CCLK);
wire ABTL_0;                                                                    //[STINNER.NET:00124] ABD_0_(ABTL_0,ABT_0) = FD1A(ADDBACKL,CCLKL);
wire ABT_0;                                                                     //[STINNER.NET:00124] ABD_0_(ABTL_0,ABT_0) = FD1A(ADDBACKL,CCLKL);
wire ABT_1;                                                                     //[STINNER.NET:00125] ABT_1_(ABT_1,ABTL_1) = FD1A(ABT_0,CCLK);
wire ABTL_1;                                                                    //[STINNER.NET:00125] ABT_1_(ABT_1,ABTL_1) = FD1A(ABT_0,CCLK);
wire DUT_0;                                                                     //[STINNER.NET:00132] DUT_0_(DUT_0) = ND2A(DSTWR,ICYCEND);
wire DUT_1;                                                                     //[STINNER.NET:00133] DUT_1_(DUT_1) = ND2A(IUPDDSTL,DUT_0);
wire UPDDST;                                                                    //[STINNER.NET:00134] UPDDST_(UPDDST,UPDDSTL) = FD1A(DUT_1,CCLK);
wire LSTL;                                                                      //[STINNER.NET:00139] LDSTRM_(LSTL) = ND3A(ICYCEND,SRCRD,LINDRL);
wire ILDSRC;                                                                    //[STINNER.NET:00140] LDSGEN_(ILDSRC) = ND2A(ILDPATL,LSTL);
wire LDSRCT;                                                                    //[STINNER.NET:00141] LDSLATCH_(LDSRCT,LDSRCTL) = FD1A(ILDSRC,CCLK);
wire LDSRCTL;                                                                   //[STINNER.NET:00141] LDSLATCH_(LDSRCT,LDSRCTL) = FD1A(ILDSRC,CCLK);
wire LHT_0;                                                                     //[STINNER.NET:00148] LHT_0_(LHT_0,LHT_1) = FD1A(ILDPATL,CCLK);
wire LHT_1;                                                                     //[STINNER.NET:00148] LHT_0_(LHT_0,LHT_1) = FD1A(ILDPATL,CCLK);
wire LHT_2;                                                                     //[STINNER.NET:00149] LHT_2_(LHT_2) = ND2A(ILDPATL,LHT_0);
wire SRCLTOHL;                                                                  //[STINNER.NET:00150] SRCLTOH_(SRCLTOH,SRCLTOHL) = FD1A(LHT_2,CCLK);
wire LDTL;                                                                      //[STINNER.NET:00155] LDDDEC0_(LDTL) = ND2A(ICYCEND,DSTRD);
wire ILDDST;                                                                    //[STINNER.NET:00156] LDTGEN_(ILDDST) = ND2A(ILDPATL,LDTL);
wire LDDST;                                                                     //[STINNER.NET:00157] LDDLATCH_(LDDST,LDDSTL) = FD1A(ILDDST,CCLK);
wire NIBDIFL;                                                                   //[STINNER.NET:00163] SSWGEN_(SSWAP) = NR3C(NIBDIFL,RES_0,SRCENF);
wire STLDT;                                                                     //[STINNER.NET:00173] STLDT_(STLDT) = AND2A(SRCRD,CYCST);
wire STLDL;                                                                     //[STINNER.NET:00174] STLDL_(STLDL) = NR2A(STLDT,QUIET);
wire SAM1DL;                                                                    //[STINNER.NET:00175] SALATCH_(SAM1DL,SAM1D) = LD2A(SAM1L,STLDL);
wire SAM1D;                                                                     //[STINNER.NET:00175] SALATCH_(SAM1DL,SAM1D) = LD2A(SAM1L,STLDL);
wire DAM1;                                                                      //[STINNER.NET:00176] AINV_(DAM1) = N1A(DAM1L);

/* Invert inputs as required */

assign CCLKL = ~CCLK;                                                           //[STINNER.NET:00024] CCLKINV_(CCLKL) = N1A(CCLK);
assign CYCENDL = ~CYCEND;                                                       //[STINNER.NET:00025] CYCENDL_(CYCENDL) = N1A(CYCEND);
assign DSTENL = ~DSTEN;                                                         //[STINNER.NET:00026] DSTENL_(DSTENL) = N1A(DSTEN);
assign INLPL = ~INLP;                                                           //[STINNER.NET:00027] INLPL_(INLPL) = N1A(INLP);
assign INNER0L = ~INNER0;                                                       //[STINNER.NET:00028] INNER0L_(INNER0L) = N1A(INNER0);
assign LINDRL = ~LINDR;                                                         //[STINNER.NET:00029] LINDRL_(LINDRL) = N1A(LINDR);
assign RESUMEL = ~RESUME;                                                       //[STINNER.NET:00030] RESUMEL_(RESUMEL) = N1A(RESUME);
assign SRCENL = ~SRCEN;                                                         //[STINNER.NET:00031] SRCENL_(SRCENL) = N1A(SRCEN);
assign SRCENFL = ~SRCENF;                                                       //[STINNER.NET:00032] SRCENFL_(SRCENFL) = N1A(SRCENF);
assign SRESETL = ~SRESET;                                                       //[STINNER.NET:00033] SRESETL_(SRESETL) = N1A(SRESET);

assign COLSTOPL = ~(INHIB & COLST);                                             //[STINNER.NET:00035] COLSTOPL_(COLSTOPL) = ND2A(INHIB,COLST);
assign COLSTOP = ~COLSTOPL;                                                     //[STINNER.NET:00036] COLSTOP_(COLSTOP) = N1A(COLSTOPL);

/* Quiescent state of state machine - quiet */

assign QT_0 = ~(QUIET & INLPL);                                                 //[STINNER.NET:00040] QT0_(QT_0) = ND2A(QUIET,INLPL);
assign QT_1 = ~(DSTWR & CYCEND & INNER0);                                       //[STINNER.NET:00041] QT1_(QT_1) = ND3A(DSTWR,CYCEND,INNER0);
assign IQUIET = ~(QT_0 & QT_1);                                                 //[STINNER.NET:00042] QT2_(IQUIET) = ND2A(QT_0,QT_1);
FD4A QUIET__inst (.MasterClock(MasterClock),.q(QUIET),.qL(QUIETL),.d(IQUIET),.clk(CCLK),.sL(SRESETL));//[STINNER.NET:00043] QUIET_(QUIET,QUIETL) = FD4A(IQUIET,CCLK,SRESETL);

/* Source read cycle */

assign SRT_0 = ~(QUIET & INLP & SRCENF);                                        //[STINNER.NET:00047] SRT0_(SRT_0) = ND3A(QUIET,INLP,SRCENF);
assign SRT_1 = ~(QUIET & INLP & SRCEN);                                         //[STINNER.NET:00048] SRT1_(SRT_1) = ND3A(QUIET,INLP,SRCEN);
assign SRT_2 = ~(SRCRD & CYCENDL);                                              //[STINNER.NET:00049] SRT2_(SRT_2) = ND2A(SRCRD,CYCENDL);
assign SRT_3 = ~(DSTWR & CYCEND & INNER0L & SRCEN);                             //[STINNER.NET:00050] SRT3_(SRT_3) = ND4A(DSTWR,CYCEND,INNER0L,SRCEN);
assign ISRCRD = ~(SRT_0 & SRT_1 & SRT_2 & SRT_3);                               //[STINNER.NET:00051] SRT4_(ISRCRD) = ND4A(SRT_0,SRT_1,SRT_2,SRT_3);
FD2A SRCRD__inst (.MasterClock(MasterClock),.q(SRCRD),.qL(SRCRDL),.d(ISRCRD),.clk(CCLK),.rL(SRESETL));//[STINNER.NET:00052] SRCRD_(SRCRD,SRCRDL) = FD2A(ISRCRD,CCLK,SRESETL);

/* Destination read cycle */

assign DRT_0 = ~(QUIET & INLP & DSTEN & SRCENL & SRCENFL);                      //[STINNER.NET:00056] DRT0_(DRT_0) = ND5A(QUIET,INLP,DSTEN,SRCENL,SRCENFL);
assign DRT_1 = ~(SRCRD & CYCEND & DSTEN);                                       //[STINNER.NET:00057] DRT1_(DRT_1) = ND3A(SRCRD,CYCEND,DSTEN);
assign DRT_2 = ~(DSTRD & CYCENDL);                                              //[STINNER.NET:00058] DRT2_(DRT_2) = ND2A(DSTRD,CYCENDL);
assign DRT_3 = ~(DSTWR & CYCEND & INNER0L & SRCENL & DSTEN);                    //[STINNER.NET:00059] DRT3_(DRT_3) = ND5A(DSTWR,CYCEND,INNER0L,SRCENL,DSTEN);
assign IDSTRD = ~(DRT_0 & DRT_1 & DRT_2 & DRT_3);                               //[STINNER.NET:00060] DRT4_(IDSTRD) = ND4A(DRT_0,DRT_1,DRT_2,DRT_3);
FD2A DSTRD__inst (.MasterClock(MasterClock),.q(DSTRD),.qL(DSTRDL),.d(IDSTRD),.clk(CCLK),.rL(SRESETL));//[STINNER.NET:00061] DSTRD_(DSTRD,DSTRDL) = FD2A(IDSTRD,CCLK,SRESETL);

/* Destination write cycle */

assign DWT_0 = ~(QUIET & INLP & DSTENL & SRCENL & SRCENFL);                     //[STINNER.NET:00065] DWT0_(DWT_0) = ND5A(QUIET,INLP,DSTENL,SRCENL,SRCENFL);
assign DWT_1 = ~(DSTRD & CYCEND & COLSTOPL);                                    //[STINNER.NET:00066] DWT1_(DWT_1) = ND3A(DSTRD,CYCEND,COLSTOPL);
assign DWT_2 = ~(SRCRD & CYCEND & DSTENL & COLSTOPL);                           //[STINNER.NET:00067] DWT2_(DWT_2) = ND4A(SRCRD,CYCEND,DSTENL,COLSTOPL);
assign DWT_3 = ~(DSTWR & CYCENDL);                                              //[STINNER.NET:00068] DWT3_(DWT_3) = ND2A(DSTWR,CYCENDL);
assign DWT_4 = ~(DSTWR & CYCEND & INNER0L & DSTENL & SRCENL);                   //[STINNER.NET:00069] DWT4_(DWT_4) = ND5A(DSTWR,CYCEND,INNER0L,DSTENL,SRCENL);
assign DWT_5 = ~(STOP & RESUME);                                                //[STINNER.NET:00070] DWT5_(DWT_5) = ND2A(STOP,RESUME);
assign IDSTWR = ~(DWT_0 & DWT_1 & DWT_2 & DWT_3 & DWT_4 & DWT_5);               //[STINNER.NET:00071] DWT6_(IDSTWR) = ND6B(DWT_0,DWT_1,DWT_2,DWT_3,DWT_4,DWT_5);
FD2A DSTWR__inst (.MasterClock(MasterClock),.q(DSTWR),.qL(DSTWRL),.d(IDSTWR),.clk(CCLK),.rL(SRESETL));//[STINNER.NET:00072] DSTWR_(DSTWR,DSTWRL) = FD2A(IDSTWR,CCLK,SRESETL);

/* Collision stop state */

assign STT_0 = ~(DSTRD & CYCEND & COLSTOP);                                     //[STINNER.NET:00076] STT0_(STT_0) = ND3A(DSTRD,CYCEND,COLSTOP);
assign STT_1 = ~(SRCRD & CYCEND & COLSTOP & DSTENL);                            //[STINNER.NET:00077] STT1_(STT_1) = ND4A(SRCRD,CYCEND,COLSTOP,DSTENL);
assign STT_2 = ~(STOP & RESUMEL);                                               //[STINNER.NET:00078] STT2_(STT_2) = ND2A(STOP,RESUMEL);
assign ISTOP = ~(STT_0 & STT_1 & STT_2);                                        //[STINNER.NET:00079] STT3_(ISTOP) = ND3A(STT_0,STT_1,STT_2);
FD2A STOP__inst (.MasterClock(MasterClock),.q(STOP),.qL(STOPL),.d(ISTOP),.clk(CCLK),.rL(SRESETL));//[STINNER.NET:00080] STOP_(STOP,STOPL) = FD2A(ISTOP,CCLK,SRESETL);

/* Decodes from state */

/* Request a cycle for any of the three cycle types */

assign INCRQ = IDSTRD | ISRCRD | IDSTWR;                                        //[STINNER.NET:00086] INCRQ_(INCRQ) = OR3A(IDSTRD,ISRCRD,IDSTWR);

/* Inner count clock is a pulse one cycle long at the start of a destination
   write cycle.  */

assign IINCLKL = ~(ICYCST & IDSTWR);                                            //[STINNER.NET:00091] INCKGEN_(IINCLKL) = ND2A(ICYCST,IDSTWR);
FD1A INCKLAT__inst (.MasterClock(MasterClock),.q(INCLKL),.qL(INCLK),.d(IINCLKL),.clk(CCLK));//[STINNER.NET:00092] INCKLAT_(INCLKL,INCLK) = FD1A(IINCLKL,CCLK);

/* The source address register is updated in the last cycle of a source
address read.  It is also updated in the first cycle of a destination
write cycle in line draw mode, and can also be updated as part of the
outer loop, given by iupdsrcL */

assign SUT_0 = ~(SRCRD & ICYCEND);                                              //[STINNER.NET:00099] SUT_0_(SUT_0) = ND2A(SRCRD,ICYCEND);
assign SUT_1 = ~(IDSTWR & ICYCST & LINDR);                                      //[STINNER.NET:00100] SUT_1_(SUT_1) = ND3A(IDSTWR,ICYCST,LINDR);
assign SUT_2 = ~(IUPDSRCL & SUT_0 & SUT_1);                                     //[STINNER.NET:00101] SUT_2_(SUT_2) = ND3B(IUPDSRCL,SUT_0,SUT_1);
FD1A UPDSRC__inst (.MasterClock(MasterClock),.q(UPDSRC),.qL(UPDSRCL),.d(SUT_2),.clk(CCLK));//[STINNER.NET:00102] UPDSRC_(UPDSRC,UPDSRCL) = FD1A(SUT_2,CCLK);

/* A load strobe is produced from this active only for the second
half of the clock cycle.  This is because it can immediately follow
the previous source update (the add back) as with addbldL */

FD1A SUT3__inst (.MasterClock(MasterClock),.q(SUTL_3),.qL(SUT_3),.d(UPDSRCL),.clk(CCLKL));//[STINNER.NET:00108] SUT3_(SUTL_3,SUT_3) = FD1A(UPDSRCL,CCLKL);
FD1A SUT4__inst (.MasterClock(MasterClock),.q(SUT_4),.qL(SUTL_4),.d(SUT_3),.clk(CCLK));//[STINNER.NET:00109] SUT4_(SUT_4,SUTL_4) = FD1A(SUT_3,CCLK);
assign UPSLDL = ~(SUT_3 & SUTL_4);                                              //[STINNER.NET:00110] UPSLDL_(UPSLDL) = ND2A(SUT_3,SUTL_4);

/* The source address can also perfrom the local addback in line
drawing mode.  This occurs on the last cycle of a line draw.  This
is an asynchronous signal as borrow does not become true until
after the first cycle of the write (which could immediately precede
the last */

assign ADDBACKL = ~(LINDR & DSTWR & BORROW & CYCEND);                           //[STINNER.NET:00118] ADDBACK_(ADDBACKL) = ND4A(LINDR,DSTWR,BORROW,CYCEND);

/* A load strobe is produced from this active only for the second
half of the clock cycle.  This is because it can immediately follow
the previous source update (the subtraction) */

FD1A ABD_0__inst (.MasterClock(MasterClock),.q(ABTL_0),.qL(ABT_0),.d(ADDBACKL),.clk(CCLKL));//[STINNER.NET:00124] ABD_0_(ABTL_0,ABT_0) = FD1A(ADDBACKL,CCLKL);
FD1A ABT_1__inst (.MasterClock(MasterClock),.q(ABT_1),.qL(ABTL_1),.d(ABT_0),.clk(CCLK));//[STINNER.NET:00125] ABT_1_(ABT_1,ABTL_1) = FD1A(ABT_0,CCLK);
assign ADDBLDL = ~(ABT_0 & ABTL_1);                                             //[STINNER.NET:00126] ADDBLDL_(ADDBLDL) = ND2A(ABT_0,ABTL_1);

/* The destination address register update will always occur on
the last cycle of the destination write cycle.  It can also occur
in the outer loop, given by iupddstL */

assign DUT_0 = ~(DSTWR & ICYCEND);                                              //[STINNER.NET:00132] DUT_0_(DUT_0) = ND2A(DSTWR,ICYCEND);
assign DUT_1 = ~(IUPDDSTL & DUT_0);                                             //[STINNER.NET:00133] DUT_1_(DUT_1) = ND2A(IUPDDSTL,DUT_0);
FD1A UPDDST__inst (.MasterClock(MasterClock),.q(UPDDST),.qL(UPDDSTL),.d(DUT_1),.clk(CCLK));//[STINNER.NET:00134] UPDDST_(UPDDST,UPDDSTL) = FD1A(DUT_1,CCLK);

/* The source data register is loaded in the last cycle of the source
read cycle, when the pattern data is loaded and also at reset */

assign LSTL = ~(ICYCEND & SRCRD & LINDRL);                                      //[STINNER.NET:00139] LDSTRM_(LSTL) = ND3A(ICYCEND,SRCRD,LINDRL);
assign ILDSRC = ~(ILDPATL & LSTL);                                              //[STINNER.NET:00140] LDSGEN_(ILDSRC) = ND2A(ILDPATL,LSTL);
FD1A LDSLATCH__inst (.MasterClock(MasterClock),.q(LDSRCT),.qL(LDSRCTL),.d(ILDSRC),.clk(CCLK));//[STINNER.NET:00141] LDSLATCH_(LDSRCT,LDSRCTL) = FD1A(ILDSRC,CCLK);
assign LDSRCL = ~(LDSRCT | RESET);                                              //[STINNER.NET:00142] LDSRCL_(LDSRCL) = NR2C(LDSRCT,RESET);

/* When the source data register is loading pattern data, it must load
data from the low byte of the data bus into the high byte of the
register */

FD1A LHT_0__inst (.MasterClock(MasterClock),.q(LHT_0),.qL(LHT_1),.d(ILDPATL),.clk(CCLK));//[STINNER.NET:00148] LHT_0_(LHT_0,LHT_1) = FD1A(ILDPATL,CCLK);
assign LHT_2 = ~(ILDPATL & LHT_0);                                              //[STINNER.NET:00149] LHT_2_(LHT_2) = ND2A(ILDPATL,LHT_0);
FD1A SRCLTOH__inst (.MasterClock(MasterClock),.q(SRCLTOH),.qL(SRCLTOHL),.d(LHT_2),.clk(CCLK));//[STINNER.NET:00150] SRCLTOH_(SRCLTOH,SRCLTOHL) = FD1A(LHT_2,CCLK);

/* The destination data register is loaded in the last cycle of the
destination read cycle, and again also when pattern data is loaded */

assign LDTL = ~(ICYCEND & DSTRD);                                               //[STINNER.NET:00155] LDDDEC0_(LDTL) = ND2A(ICYCEND,DSTRD);
assign ILDDST = ~(ILDPATL & LDTL);                                              //[STINNER.NET:00156] LDTGEN_(ILDDST) = ND2A(ILDPATL,LDTL);
FD1A LDDLATCH__inst (.MasterClock(MasterClock),.q(LDDST),.qL(LDDSTL),.d(ILDDST),.clk(CCLK));//[STINNER.NET:00157] LDDLATCH_(LDDST,LDDSTL) = FD1A(ILDDST,CCLK);

/* The two halves of the source data byte nust be swapped in hires or lores
if the -1 bits of the two addresses are different (given by nibdif, below).
It is inhibited if character painting is performed (srcenf) */

assign SSWAP = ~(NIBDIFL | RES_0 | SRCENF);                                     //[STINNER.NET:00163] SSWGEN_(SSWAP) = NR3C(NIBDIFL,RES_0,SRCENF);

/* Generate nibdif
This indicates that the nibble bits are different, and therefore the two
halves of the source data need to be swapped.  This requires that the source
address bit be latched at the start of the cycle as it may change part way 
through an inner loop pass, when it is updated at the end of the source read
cycle.  It is loaded in the first tick of a source read, and also when the
state machine is inactive (in case there are no source reads) */

assign STLDT = SRCRD & CYCST;                                                   //[STINNER.NET:00173] STLDT_(STLDT) = AND2A(SRCRD,CYCST);
assign STLDL = ~(STLDT | QUIET);                                                //[STINNER.NET:00174] STLDL_(STLDL) = NR2A(STLDT,QUIET);
LD2A SALATCH__inst (.MasterClock(MasterClock),.q(SAM1DL),.qL(SAM1D),.d(SAM1L),.en(STLDL));//[STINNER.NET:00175] SALATCH_(SAM1DL,SAM1D) = LD2A(SAM1L,STLDL);
assign DAM1 = ~DAM1L;                                                           //[STINNER.NET:00176] AINV_(DAM1) = N1A(DAM1L);
assign NIBDIFL = ~((DAM1L & SAM1D)|(DAM1 & SAM1DL));                            //[STINNER.NET:00177] NDGEN_(NIBDIFL) = AO2B(DAM1L,SAM1D,DAM1,SAM1DL);

endmodule                                                                       //[STINNER.NET:00179] END MODULE;
