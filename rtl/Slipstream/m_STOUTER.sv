                                                                                //[STOUTER.NET:00001] COMPILE;
                                                                                //[STOUTER.NET:00002] DIRECTORY MASTER;
/****************************************************************************
stouter
15/10/88

Blitter outer loop control state machine

The outer loop is the top level of control, and invokes the read command, 
read parameter and inner loop state machines.  This is unchanged from the
old blitter.

****************************************************************************/


module m_STOUTER                                                                //[STOUTER.NET:00016] MODULE STOUTER;
(                                                                               //[STOUTER.NET:00016] MODULE STOUTER;

    input    MasterClock,
    input    COMDN,                                                             //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    DSTUP,                                                             //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    IQUIET,                                                            //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    OUTER0L,                                                           //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    PARDN,                                                             //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    PARRD,                                                             //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    SRESET,                                                            //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    SRCUP,                                                             //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    input    CCLK,                                                              //[STOUTER.NET:00018] INPUTS	COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,CCLK;
    output    ADSTP,                                                            //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    INLP,                                                             //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    LDICNTL,                                                          //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    RDCMD,                                                            //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    RDPAR,                                                            //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    SDASEL,                                                           //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    OTCLKL,                                                           //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    IUPDDSTL,                                                         //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
    output    IUPDSRCL                                                          //[STOUTER.NET:00019] OUTPUTS	ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,IUPDSRCL;
);                                                                              //[STOUTER.NET:00016] MODULE STOUTER;
                                                                                //[STOUTER.NET:00020] LEVEL FUNCTION;
wire SRESETL;                                                                   //[STOUTER.NET:00025] SRESETL_(SRESETL) = N1A(SRESET);
wire PARDNL;                                                                    //[STOUTER.NET:00026] PARDNL_(PARDNL) = N1A(PARDN);
wire SRCUPL;                                                                    //[STOUTER.NET:00027] SRCUPL_(SRCUPL) = N1A(SRCUP);
wire DSTUPL;                                                                    //[STOUTER.NET:00028] DSTUPL_(DSTUPL) = N1A(DSTUP);
wire IQUIETL;                                                                   //[STOUTER.NET:00029] IQUIETL_(IQUIETL) = N1A(IQUIET);
wire TLL_2;                                                                     //[STOUTER.NET:00035] TRM0GEN_(TRM0) = ND3A(TLL_2,TL_1,TL_0);
wire TL_1;                                                                      //[STOUTER.NET:00035] TRM0GEN_(TRM0) = ND3A(TLL_2,TL_1,TL_0);
wire TL_0;                                                                      //[STOUTER.NET:00035] TRM0GEN_(TRM0) = ND3A(TLL_2,TL_1,TL_0);
wire TRM0;                                                                      //[STOUTER.NET:00035] TRM0GEN_(TRM0) = ND3A(TLL_2,TL_1,TL_0);
wire TRM0L;                                                                     //[STOUTER.NET:00036] TRM0INV_(TRM0L) = N1A(TRM0);
wire TRM3;                                                                      //[STOUTER.NET:00037] TRM3INV_(TRM3L) = N1A(TRM3);
wire TRM3L;                                                                     //[STOUTER.NET:00037] TRM3INV_(TRM3L) = N1A(TRM3);
wire TRM1;                                                                      //[STOUTER.NET:00038] TRM1GEN_(TRM1) = ND2A(TRM3L,DSTUP);
wire TLL_1;                                                                     //[STOUTER.NET:00039] TRM2GEN_(TRM2) = ND4A(TLL_2,TLL_1,TLL_0,COMDN);
wire TLL_0;                                                                     //[STOUTER.NET:00039] TRM2GEN_(TRM2) = ND4A(TLL_2,TLL_1,TLL_0,COMDN);
wire TRM2;                                                                      //[STOUTER.NET:00039] TRM2GEN_(TRM2) = ND4A(TLL_2,TLL_1,TLL_0,COMDN);
wire TL_2;                                                                      //[STOUTER.NET:00040] TRM3GEN_(TRM3) = ND4A(TL_2,TLL_1,TLL_0,OUTER0L);
wire ITL0T_0;                                                                   //[STOUTER.NET:00044] ITL0T0_(ITL0T_0) = ND2A(TRM0L,PARDNL);
wire ITL0T_1;                                                                   //[STOUTER.NET:00045] ITL0T1_(ITL0T_1) = ND4A(TL_2,TL_1,TLL_0,PARRD);
wire ITL0T_2;                                                                   //[STOUTER.NET:00046] ITL0T2_(ITL0T_2) = ND5A(TL_2,TL_1,TL_0,PARRD,SRCUPL);
wire ITL0T_3;                                                                   //[STOUTER.NET:00047] ITL0T3_(ITL0T_3) = ND4A(TRM3L,DSTUPL,SRCUPL,PARRD);
wire ITL0T_4;                                                                   //[STOUTER.NET:00048] ITL0T4_(ITL0T_4) = ND3A(TLL_2,TL_1,TLL_0);
wire ITL0T_5;                                                                   //[STOUTER.NET:00049] ITL0T5_(ITL0T_5) = ND4A(TLL_2,TLL_1,TL_0,IQUIETL);
wire ITL_0;                                                                     //[STOUTER.NET:00050] ITL0GEN_(ITL_0) = ND8A(ITL0T_0,ITL0T_1,ITL0T_2,ITL0T_3,ITL0T_4,ITL0T_5,TRM2,
wire ITL1T;                                                                     //[STOUTER.NET:00055] ITL1T0_(ITL1T) = ND2A(TL_2,TL_1);
wire ITL_1;                                                                     //[STOUTER.NET:00056] ITL1GEN_(ITL_1) = ND4A(TRM0,TRM2,ITL1T,TRM3);
wire ITL2T_0;                                                                   //[STOUTER.NET:00060] ITL2T0_(ITL2T_0) = ND4A(TLL_2,TLL_1,TL_0,IQUIET);
wire ITL2T_1;                                                                   //[STOUTER.NET:00061] ITL2T1_(ITL2T_1) = ND3A(TRM3L,DSTUPL,SRCUP);
wire ITL2T_2;                                                                   //[STOUTER.NET:00062] ITL2T2_(ITL2T_2) = ND4A(TL_2,TL_1,TL_0,SRCUP);
wire ITL_2;                                                                     //[STOUTER.NET:00063] ITL2GEN_(ITL_2) = ND4A(ITL2T_0,ITL2T_1,ITL2T_2,TRM1);
wire ITLL_0;                                                                    //[STOUTER.NET:00073] ITLINV0_(ITLL_0) = N1A(ITL_0);
wire ITLL_1;                                                                    //[STOUTER.NET:00074] ITLINV1_(ITLL_1) = N1A(ITL_1);
wire ITLL_2;                                                                    //[STOUTER.NET:00075] ITLINV2_(ITLL_2) = N1A(ITL_2);
wire LDICNTTL;                                                                  //[STOUTER.NET:00086] LDICTRM_(LDICNTTL) = ND3A(ITLL_2,ITL_1,ITLL_0);
wire LDICNT;                                                                    //[STOUTER.NET:00087] LDICFF_(LDICNTL, LDICNT) = FD2A(LDICNTTL, CCLK, SRESETL);
wire OTCLK;                                                                     //[STOUTER.NET:00095] OTCLK_(OTCLK,OTCLKL) = FD1A(INLP,CCLK);

/* Buffer and invert some inputs */

assign SRESETL = ~SRESET;                                                       //[STOUTER.NET:00025] SRESETL_(SRESETL) = N1A(SRESET);
assign PARDNL = ~PARDN;                                                         //[STOUTER.NET:00026] PARDNL_(PARDNL) = N1A(PARDN);
assign SRCUPL = ~SRCUP;                                                         //[STOUTER.NET:00027] SRCUPL_(SRCUPL) = N1A(SRCUP);
assign DSTUPL = ~DSTUP;                                                         //[STOUTER.NET:00028] DSTUPL_(DSTUPL) = N1A(DSTUP);
assign IQUIETL = ~IQUIET;                                                       //[STOUTER.NET:00029] IQUIETL_(IQUIETL) = N1A(IQUIET);

/* Decode the next state */

/* Common terms */

assign TRM0 = ~(TLL_2 & TL_1 & TL_0);                                           //[STOUTER.NET:00035] TRM0GEN_(TRM0) = ND3A(TLL_2,TL_1,TL_0);
assign TRM0L = ~TRM0;                                                           //[STOUTER.NET:00036] TRM0INV_(TRM0L) = N1A(TRM0);
assign TRM3L = ~TRM3;                                                           //[STOUTER.NET:00037] TRM3INV_(TRM3L) = N1A(TRM3);
assign TRM1 = ~(TRM3L & DSTUP);                                                 //[STOUTER.NET:00038] TRM1GEN_(TRM1) = ND2A(TRM3L,DSTUP);
assign TRM2 = ~(TLL_2 & TLL_1 & TLL_0 & COMDN);                                 //[STOUTER.NET:00039] TRM2GEN_(TRM2) = ND4A(TLL_2,TLL_1,TLL_0,COMDN);
assign TRM3 = ~(TL_2 & TLL_1 & TLL_0 & OUTER0L);                                //[STOUTER.NET:00040] TRM3GEN_(TRM3) = ND4A(TL_2,TLL_1,TLL_0,OUTER0L);

/* Bit 0 */

assign ITL0T_0 = ~(TRM0L & PARDNL);                                             //[STOUTER.NET:00044] ITL0T0_(ITL0T_0) = ND2A(TRM0L,PARDNL);
assign ITL0T_1 = ~(TL_2 & TL_1 & TLL_0 & PARRD);                                //[STOUTER.NET:00045] ITL0T1_(ITL0T_1) = ND4A(TL_2,TL_1,TLL_0,PARRD);
assign ITL0T_2 = ~(TL_2 & TL_1 & TL_0 & PARRD & SRCUPL);                        //[STOUTER.NET:00046] ITL0T2_(ITL0T_2) = ND5A(TL_2,TL_1,TL_0,PARRD,SRCUPL);
assign ITL0T_3 = ~(TRM3L & DSTUPL & SRCUPL & PARRD);                            //[STOUTER.NET:00047] ITL0T3_(ITL0T_3) = ND4A(TRM3L,DSTUPL,SRCUPL,PARRD);
assign ITL0T_4 = ~(TLL_2 & TL_1 & TLL_0);                                       //[STOUTER.NET:00048] ITL0T4_(ITL0T_4) = ND3A(TLL_2,TL_1,TLL_0);
assign ITL0T_5 = ~(TLL_2 & TLL_1 & TL_0 & IQUIETL);                             //[STOUTER.NET:00049] ITL0T5_(ITL0T_5) = ND4A(TLL_2,TLL_1,TL_0,IQUIETL);
assign ITL_0 = ~(ITL0T_0 & ITL0T_1 & ITL0T_2 & ITL0T_3 & ITL0T_4 & ITL0T_5 & TRM2 & TRM1);//[STOUTER.NET:00050] ITL0GEN_(ITL_0) = ND8A(ITL0T_0,ITL0T_1,ITL0T_2,ITL0T_3,ITL0T_4,ITL0T_5,TRM2,
                                                                                //[STOUTER.NET:00051]    TRM1);

/* Bit 1 */

assign ITL1T = ~(TL_2 & TL_1);                                                  //[STOUTER.NET:00055] ITL1T0_(ITL1T) = ND2A(TL_2,TL_1);
assign ITL_1 = ~(TRM0 & TRM2 & ITL1T & TRM3);                                   //[STOUTER.NET:00056] ITL1GEN_(ITL_1) = ND4A(TRM0,TRM2,ITL1T,TRM3);

/* Bit 2 */

assign ITL2T_0 = ~(TLL_2 & TLL_1 & TL_0 & IQUIET);                              //[STOUTER.NET:00060] ITL2T0_(ITL2T_0) = ND4A(TLL_2,TLL_1,TL_0,IQUIET);
assign ITL2T_1 = ~(TRM3L & DSTUPL & SRCUP);                                     //[STOUTER.NET:00061] ITL2T1_(ITL2T_1) = ND3A(TRM3L,DSTUPL,SRCUP);
assign ITL2T_2 = ~(TL_2 & TL_1 & TL_0 & SRCUP);                                 //[STOUTER.NET:00062] ITL2T2_(ITL2T_2) = ND4A(TL_2,TL_1,TL_0,SRCUP);
assign ITL_2 = ~(ITL2T_0 & ITL2T_1 & ITL2T_2 & TRM1);                           //[STOUTER.NET:00063] ITL2GEN_(ITL_2) = ND4A(ITL2T_0,ITL2T_1,ITL2T_2,TRM1);

/* The state latches */

FD2A TLLATCH_0__inst (.MasterClock(MasterClock),.q(TL_0),.qL(TLL_0),.d(ITL_0),.clk(CCLK),.rL(SRESETL));//[STOUTER.NET:00067] TLLATCH_0_(TL_0,TLL_0) = FD2A(ITL_0,CCLK,SRESETL);
FD2A TLLATCH_1__inst (.MasterClock(MasterClock),.q(TL_1),.qL(TLL_1),.d(ITL_1),.clk(CCLK),.rL(SRESETL));//[STOUTER.NET:00068] TLLATCH_1_(TL_1,TLL_1) = FD2A(ITL_1,CCLK,SRESETL);
FD2A TLLATCH_2__inst (.MasterClock(MasterClock),.q(TL_2),.qL(TLL_2),.d(ITL_2),.clk(CCLK),.rL(SRESETL));//[STOUTER.NET:00069] TLLATCH_2_(TL_2,TLL_2) = FD2A(ITL_2,CCLK,SRESETL);

/* Decodes from state */

assign ITLL_0 = ~ITL_0;                                                         //[STOUTER.NET:00073] ITLINV0_(ITLL_0) = N1A(ITL_0);
assign ITLL_1 = ~ITL_1;                                                         //[STOUTER.NET:00074] ITLINV1_(ITLL_1) = N1A(ITL_1);
assign ITLL_2 = ~ITL_2;                                                         //[STOUTER.NET:00075] ITLINV2_(ITLL_2) = N1A(ITL_2);
assign RDPAR = ~(ITL_2 | ITLL_1 | ITLL_0);                                      //[STOUTER.NET:00076] RDPARGEN_(RDPAR) = NR3A(ITL_2,ITLL_1,ITLL_0);
assign RDCMD = ~(ITL_2 | ITL_1 | ITL_0);                                        //[STOUTER.NET:00077] RDCMDGEN_(RDCMD) = NR3A(ITL_2,ITL_1,ITL_0);

/* The inner loop is fired off from the set up inner count state */
assign INLP = ~(TL_2 | TLL_1 | TL_0);                                           //[STOUTER.NET:00080] INLPGEN_(INLP) = NR3A(TL_2,TLL_1,TL_0);

assign IUPDDSTL = ~(ITL_2 & ITL_1 & ITL_0);                                     //[STOUTER.NET:00082] UDDGEN_(IUPDDSTL) = ND3A(ITL_2,ITL_1,ITL_0);
assign IUPDSRCL = ~(ITL_2 & ITL_1 & ITLL_0);                                    //[STOUTER.NET:00083] UDSGEN_(IUPDSRCL) = ND3A(ITL_2,ITL_1,ITLL_0);

/* make LDICNT a synchronous decode */
assign LDICNTTL = ~(ITLL_2 & ITL_1 & ITLL_0);                                   //[STOUTER.NET:00086] LDICTRM_(LDICNTTL) = ND3A(ITLL_2,ITL_1,ITLL_0);
FD2A LDICFF__inst (.MasterClock(MasterClock),.q(LDICNTL),.qL(LDICNT),.d(LDICNTTL),.clk(CCLK),.rL(SRESETL));//[STOUTER.NET:00087] LDICFF_(LDICNTL, LDICNT) = FD2A(LDICNTTL, CCLK, SRESETL);

assign ADSTP = ~(TLL_1 | TLL_2);                                                //[STOUTER.NET:00089] ADSTPGEN_(ADSTP) = NR2A(TLL_1,TLL_2);
assign SDASEL = ~(TLL_0 & TLL_1 & TLL_2);                                       //[STOUTER.NET:00090] SDAGEN_(SDASEL) = ND3C(TLL_0,TLL_1,TLL_2);

/* The outer counter is clocked on exit from the inner loop.  This is
given by an active low pulse decoded as the inner loop. */

FD1A OTCLK__inst (.MasterClock(MasterClock),.q(OTCLK),.qL(OTCLKL),.d(INLP),.clk(CCLK));//[STOUTER.NET:00095] OTCLK_(OTCLK,OTCLKL) = FD1A(INLP,CCLK);

endmodule                                                                       //[STOUTER.NET:00097] END MODULE;
