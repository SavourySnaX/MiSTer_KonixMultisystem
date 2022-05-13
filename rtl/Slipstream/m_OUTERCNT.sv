                                                                                //[OUTERCNT.NET:00001] COMPILE;
                                                                                //[OUTERCNT.NET:00002] DIRECTORY MASTER;
/****************************************************************************
outercnt
15/10/88

Outer counter

This is a synchronous down counter, loaded as part fo the blitter program.

****************************************************************************/


module m_OUTERCNT                                                               //[OUTERCNT.NET:00014] MODULE OUTERCNT;
(                                                                               //[OUTERCNT.NET:00014] MODULE OUTERCNT;

    input    MasterClock,
    input    inD_0,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_1,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_2,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_3,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_4,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_5,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_6,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    inD_7,                                                             //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    CCLK,                                                              //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_0,                                                            //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_1,                                                            //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_2,                                                            //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_3,                                                            //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_4,                                                            //[OUTERCNT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,
    input    ICNT_5,                                                            //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ICNT_6,                                                            //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ICNT_7,                                                            //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_0,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_1,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_2,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_3,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_4,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_5,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_6,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    ID_7,                                                              //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    INCRDL,                                                            //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    LDOUTL,                                                            //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
    input    OTCLKL,                                                            //[OUTERCNT.NET:00018]    OTCLKL,OUTCRDL,RESET;
    input    OUTCRDL,                                                           //[OUTERCNT.NET:00018]    OTCLKL,OUTCRDL,RESET;
    input    RESET,                                                             //[OUTERCNT.NET:00018]    OTCLKL,OUTCRDL,RESET;
                                                                                //[OUTERCNT.NET:00017]    ICNT_5,ICNT_6,ICNT_7,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,
                                                                                //[OUTERCNT.NET:00018]    OTCLKL,OUTCRDL,RESET;
    output    outD_0, enD_0,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_1, enD_1,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_2, enD_2,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_3, enD_3,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_4, enD_4,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_5, enD_5,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_6, enD_6,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    outD_7, enD_7,                                                    //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
    output    OUTER0L                                                           //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
);                                                                              //[OUTERCNT.NET:00014] MODULE OUTERCNT;
                                                                                //[OUTERCNT.NET:00020] LEVEL FUNCTION;
wire CCLKL;                                                                     //[OUTERCNT.NET:00023] CCLKL_(CCLKL) = N1A(CCLK);
wire RESETL;                                                                    //[OUTERCNT.NET:00024] RESETL_(RESETL) = N1A(RESET);
wire LDOUTDL;                                                                   //[OUTERCNT.NET:00033] LDOCNTD_(LDOUTDL,LDOUTD) = FD1A(LDOUTL,CCLKL);
wire LDOUTD;                                                                    //[OUTERCNT.NET:00033] LDOCNTD_(LDOUTDL,LDOUTD) = FD1A(LDOUTL,CCLKL);
wire LDOCLKL;                                                                   //[OUTERCNT.NET:00034] LDOCLK_(LDOCLKL) = OR2A(LDOUTL,LDOUTD);
wire OCLKL;                                                                     //[OUTERCNT.NET:00038] OCLKL_(OCLKL) = AND2A(OTCLKL,LDOCLKL);
wire LDOUT;                                                                     //[OUTERCNT.NET:00042] LDOUTINV_(LDOUT) = N1A(LDOUTL);
wire OCNT_0;                                                                    //[OUTERCNT.NET:00043] OCNT_0_(OCNT_0,OCNTL_0,CARRY_0) = LSCNTEL(ID_0,LDOUT,LDOUTL,OCLKL,RESET,
wire OCNTL_0;                                                                   //[OUTERCNT.NET:00043] OCNT_0_(OCNT_0,OCNTL_0,CARRY_0) = LSCNTEL(ID_0,LDOUT,LDOUTL,OCLKL,RESET,
wire CARRY_0;                                                                   //[OUTERCNT.NET:00043] OCNT_0_(OCNT_0,OCNTL_0,CARRY_0) = LSCNTEL(ID_0,LDOUT,LDOUTL,OCLKL,RESET,
wire OCNT_1;                                                                    //[OUTERCNT.NET:00045] OCNT_1_(OCNT_1,OCNTL_1,CARRY_1) = LSCNTEL(ID_1,LDOUT,LDOUTL,OCLKL,CARRY_0,
wire OCNTL_1;                                                                   //[OUTERCNT.NET:00045] OCNT_1_(OCNT_1,OCNTL_1,CARRY_1) = LSCNTEL(ID_1,LDOUT,LDOUTL,OCLKL,CARRY_0,
wire CARRY_1;                                                                   //[OUTERCNT.NET:00045] OCNT_1_(OCNT_1,OCNTL_1,CARRY_1) = LSCNTEL(ID_1,LDOUT,LDOUTL,OCLKL,CARRY_0,
wire OCNT_2;                                                                    //[OUTERCNT.NET:00047] OCNT_2_(OCNT_2,OCNTL_2,CARRY_2) = LSCNTEL(ID_2,LDOUT,LDOUTL,OCLKL,CARRY_1,
wire OCNTL_2;                                                                   //[OUTERCNT.NET:00047] OCNT_2_(OCNT_2,OCNTL_2,CARRY_2) = LSCNTEL(ID_2,LDOUT,LDOUTL,OCLKL,CARRY_1,
wire CARRY_2;                                                                   //[OUTERCNT.NET:00047] OCNT_2_(OCNT_2,OCNTL_2,CARRY_2) = LSCNTEL(ID_2,LDOUT,LDOUTL,OCLKL,CARRY_1,
wire OCNT_3;                                                                    //[OUTERCNT.NET:00049] OCNT_3_(OCNT_3,OCNTL_3,CARRY_3) = LSCNTEL(ID_3,LDOUT,LDOUTL,OCLKL,CARRY_2,
wire OCNTL_3;                                                                   //[OUTERCNT.NET:00049] OCNT_3_(OCNT_3,OCNTL_3,CARRY_3) = LSCNTEL(ID_3,LDOUT,LDOUTL,OCLKL,CARRY_2,
wire CARRY_3;                                                                   //[OUTERCNT.NET:00049] OCNT_3_(OCNT_3,OCNTL_3,CARRY_3) = LSCNTEL(ID_3,LDOUT,LDOUTL,OCLKL,CARRY_2,
wire OCNT_4;                                                                    //[OUTERCNT.NET:00051] OCNT_4_(OCNT_4,OCNTL_4,CARRY_4) = LSCNTEL(ID_4,LDOUT,LDOUTL,OCLKL,CARRY_3,
wire OCNTL_4;                                                                   //[OUTERCNT.NET:00051] OCNT_4_(OCNT_4,OCNTL_4,CARRY_4) = LSCNTEL(ID_4,LDOUT,LDOUTL,OCLKL,CARRY_3,
wire CARRY_4;                                                                   //[OUTERCNT.NET:00051] OCNT_4_(OCNT_4,OCNTL_4,CARRY_4) = LSCNTEL(ID_4,LDOUT,LDOUTL,OCLKL,CARRY_3,
wire OCNT_5;                                                                    //[OUTERCNT.NET:00053] OCNT_5_(OCNT_5,OCNTL_5,CARRY_5) = LSCNTEL(ID_5,LDOUT,LDOUTL,OCLKL,CARRY_4,
wire OCNTL_5;                                                                   //[OUTERCNT.NET:00053] OCNT_5_(OCNT_5,OCNTL_5,CARRY_5) = LSCNTEL(ID_5,LDOUT,LDOUTL,OCLKL,CARRY_4,
wire CARRY_5;                                                                   //[OUTERCNT.NET:00053] OCNT_5_(OCNT_5,OCNTL_5,CARRY_5) = LSCNTEL(ID_5,LDOUT,LDOUTL,OCLKL,CARRY_4,
wire OCNT_6;                                                                    //[OUTERCNT.NET:00055] OCNT_6_(OCNT_6,OCNTL_6,CARRY_6) = LSCNTEL(ID_6,LDOUT,LDOUTL,OCLKL,CARRY_5,
wire OCNTL_6;                                                                   //[OUTERCNT.NET:00055] OCNT_6_(OCNT_6,OCNTL_6,CARRY_6) = LSCNTEL(ID_6,LDOUT,LDOUTL,OCLKL,CARRY_5,
wire CARRY_6;                                                                   //[OUTERCNT.NET:00055] OCNT_6_(OCNT_6,OCNTL_6,CARRY_6) = LSCNTEL(ID_6,LDOUT,LDOUTL,OCLKL,CARRY_5,
wire OCNT_7;                                                                    //[OUTERCNT.NET:00057] OCNT_7_(OCNT_7,OCNTL_7,CARRY_7) = LSCNTEL(ID_7,LDOUT,LDOUTL,OCLKL,CARRY_6,
wire OCNTL_7;                                                                   //[OUTERCNT.NET:00057] OCNT_7_(OCNT_7,OCNTL_7,CARRY_7) = LSCNTEL(ID_7,LDOUT,LDOUTL,OCLKL,CARRY_6,
wire CARRY_7;                                                                   //[OUTERCNT.NET:00057] OCNT_7_(OCNT_7,OCNTL_7,CARRY_7) = LSCNTEL(ID_7,LDOUT,LDOUTL,OCLKL,CARRY_6,
wire RC_0;                                                                      //[OUTERCNT.NET:00067] CRDSEL_0_(RC_0) = AO2A(INCRDL,OCNT_0,OUTCRDL,ICNT_0);
wire RC_1;                                                                      //[OUTERCNT.NET:00068] CRDSEL_1_(RC_1) = AO2A(INCRDL,OCNT_1,OUTCRDL,ICNT_1);
wire RC_2;                                                                      //[OUTERCNT.NET:00069] CRDSEL_2_(RC_2) = AO2A(INCRDL,OCNT_2,OUTCRDL,ICNT_2);
wire RC_3;                                                                      //[OUTERCNT.NET:00070] CRDSEL_3_(RC_3) = AO2A(INCRDL,OCNT_3,OUTCRDL,ICNT_3);
wire RC_4;                                                                      //[OUTERCNT.NET:00071] CRDSEL_4_(RC_4) = AO2A(INCRDL,OCNT_4,OUTCRDL,ICNT_4);
wire RC_5;                                                                      //[OUTERCNT.NET:00072] CRDSEL_5_(RC_5) = AO2A(INCRDL,OCNT_5,OUTCRDL,ICNT_5);
wire RC_6;                                                                      //[OUTERCNT.NET:00073] CRDSEL_6_(RC_6) = AO2A(INCRDL,OCNT_6,OUTCRDL,ICNT_6);
wire RC_7;                                                                      //[OUTERCNT.NET:00074] CRDSEL_7_(RC_7) = AO2A(INCRDL,OCNT_7,OUTCRDL,ICNT_7);
wire KEVIN;                                                                     //[OUTERCNT.NET:00075] KEVIN_(KEVIN) = ND2A(INCRDL,OUTCRDL);
wire drv0_outD_0;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_0;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_1;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_1;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_2;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_2;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_3;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_3;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_4;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_4;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_5;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_5;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_6;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_6;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_outD_7;                                                               //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;
wire drv0_enD_7;                                                                //[OUTERCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L;

assign CCLKL = ~CCLK;                                                           //[OUTERCNT.NET:00023] CCLKL_(CCLKL) = N1A(CCLK);
assign RESETL = ~RESET;                                                         //[OUTERCNT.NET:00024] RESETL_(RESETL) = N1A(RESET);

/*  Outer counter load - as the outer counter is a synchronous counter
loaded in one tick and the data must be multiplexed onto its inputs for
one tick duration, it is necessary to synthesize a load clock which will
have a suitable rising edge within the load signal.  This is given by
producing a delayed version off the back edge of the clock and making
the clock active (low) only during the first half of the cycle */

FD1A LDOCNTD__inst (.MasterClock(MasterClock),.q(LDOUTDL),.qL(LDOUTD),.d(LDOUTL),.clk(CCLKL));//[OUTERCNT.NET:00033] LDOCNTD_(LDOUTDL,LDOUTD) = FD1A(LDOUTL,CCLKL);
assign LDOCLKL = LDOUTL | LDOUTD;                                               //[OUTERCNT.NET:00034] LDOCLK_(LDOCLKL) = OR2A(LDOUTL,LDOUTD);

/* From this, the counter clock */

assign OCLKL = OTCLKL & LDOCLKL;                                                //[OUTERCNT.NET:00038] OCLKL_(OCLKL) = AND2A(OTCLKL,LDOCLKL);

/* The outer counter */

assign LDOUT = ~LDOUTL;                                                         //[OUTERCNT.NET:00042] LDOUTINV_(LDOUT) = N1A(LDOUTL);
m_LSCNTEL OCNT_0_ (.MasterClock(MasterClock),.D(ID_0),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(RESET),.RSTL(RESETL),.Q(OCNT_0),.QL(OCNTL_0),.CO(CARRY_0));//[OUTERCNT.NET:00043] OCNT_0_(OCNT_0,OCNTL_0,CARRY_0) = LSCNTEL(ID_0,LDOUT,LDOUTL,OCLKL,RESET,
                                                                                //[OUTERCNT.NET:00044]    RESETL);
m_LSCNTEL OCNT_1_ (.MasterClock(MasterClock),.D(ID_1),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_0),.RSTL(RESETL),.Q(OCNT_1),.QL(OCNTL_1),.CO(CARRY_1));//[OUTERCNT.NET:00045] OCNT_1_(OCNT_1,OCNTL_1,CARRY_1) = LSCNTEL(ID_1,LDOUT,LDOUTL,OCLKL,CARRY_0,
                                                                                //[OUTERCNT.NET:00046]    RESETL);
m_LSCNTEL OCNT_2_ (.MasterClock(MasterClock),.D(ID_2),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_1),.RSTL(RESETL),.Q(OCNT_2),.QL(OCNTL_2),.CO(CARRY_2));//[OUTERCNT.NET:00047] OCNT_2_(OCNT_2,OCNTL_2,CARRY_2) = LSCNTEL(ID_2,LDOUT,LDOUTL,OCLKL,CARRY_1,
                                                                                //[OUTERCNT.NET:00048]    RESETL);
m_LSCNTEL OCNT_3_ (.MasterClock(MasterClock),.D(ID_3),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_2),.RSTL(RESETL),.Q(OCNT_3),.QL(OCNTL_3),.CO(CARRY_3));//[OUTERCNT.NET:00049] OCNT_3_(OCNT_3,OCNTL_3,CARRY_3) = LSCNTEL(ID_3,LDOUT,LDOUTL,OCLKL,CARRY_2,
                                                                                //[OUTERCNT.NET:00050]    RESETL);
m_LSCNTEL OCNT_4_ (.MasterClock(MasterClock),.D(ID_4),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_3),.RSTL(RESETL),.Q(OCNT_4),.QL(OCNTL_4),.CO(CARRY_4));//[OUTERCNT.NET:00051] OCNT_4_(OCNT_4,OCNTL_4,CARRY_4) = LSCNTEL(ID_4,LDOUT,LDOUTL,OCLKL,CARRY_3,
                                                                                //[OUTERCNT.NET:00052]    RESETL);
m_LSCNTEL OCNT_5_ (.MasterClock(MasterClock),.D(ID_5),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_4),.RSTL(RESETL),.Q(OCNT_5),.QL(OCNTL_5),.CO(CARRY_5));//[OUTERCNT.NET:00053] OCNT_5_(OCNT_5,OCNTL_5,CARRY_5) = LSCNTEL(ID_5,LDOUT,LDOUTL,OCLKL,CARRY_4,
                                                                                //[OUTERCNT.NET:00054]    RESETL);
m_LSCNTEL OCNT_6_ (.MasterClock(MasterClock),.D(ID_6),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_5),.RSTL(RESETL),.Q(OCNT_6),.QL(OCNTL_6),.CO(CARRY_6));//[OUTERCNT.NET:00055] OCNT_6_(OCNT_6,OCNTL_6,CARRY_6) = LSCNTEL(ID_6,LDOUT,LDOUTL,OCLKL,CARRY_5,
                                                                                //[OUTERCNT.NET:00056]    RESETL);
m_LSCNTEL OCNT_7_ (.MasterClock(MasterClock),.D(ID_7),.LD(LDOUT),.LDL(LDOUTL),.CLK(OCLKL),.CI(CARRY_6),.RSTL(RESETL),.Q(OCNT_7),.QL(OCNTL_7),.CO(CARRY_7));//[OUTERCNT.NET:00057] OCNT_7_(OCNT_7,OCNTL_7,CARRY_7) = LSCNTEL(ID_7,LDOUT,LDOUTL,OCLKL,CARRY_6,
                                                                                //[OUTERCNT.NET:00058]    RESETL);

/* Generate outer0 */

assign OUTER0L = ~(OCNTL_0 & OCNTL_1 & OCNTL_2 & OCNTL_3 & OCNTL_4 & OCNTL_5 & OCNTL_6 & OCNTL_7);//[OUTERCNT.NET:00062] OUTER0GEN_(OUTER0L) = ND8A(OCNTL_0,OCNTL_1,OCNTL_2,OCNTL_3,OCNTL_4,OCNTL_5,
                                                                                //[OUTERCNT.NET:00063]    OCNTL_6,OCNTL_7);

/* Make the inner and outer counters readable */

assign RC_0 = ~((INCRDL & OCNT_0)|(OUTCRDL & ICNT_0));                          //[OUTERCNT.NET:00067] CRDSEL_0_(RC_0) = AO2A(INCRDL,OCNT_0,OUTCRDL,ICNT_0);
assign RC_1 = ~((INCRDL & OCNT_1)|(OUTCRDL & ICNT_1));                          //[OUTERCNT.NET:00068] CRDSEL_1_(RC_1) = AO2A(INCRDL,OCNT_1,OUTCRDL,ICNT_1);
assign RC_2 = ~((INCRDL & OCNT_2)|(OUTCRDL & ICNT_2));                          //[OUTERCNT.NET:00069] CRDSEL_2_(RC_2) = AO2A(INCRDL,OCNT_2,OUTCRDL,ICNT_2);
assign RC_3 = ~((INCRDL & OCNT_3)|(OUTCRDL & ICNT_3));                          //[OUTERCNT.NET:00070] CRDSEL_3_(RC_3) = AO2A(INCRDL,OCNT_3,OUTCRDL,ICNT_3);
assign RC_4 = ~((INCRDL & OCNT_4)|(OUTCRDL & ICNT_4));                          //[OUTERCNT.NET:00071] CRDSEL_4_(RC_4) = AO2A(INCRDL,OCNT_4,OUTCRDL,ICNT_4);
assign RC_5 = ~((INCRDL & OCNT_5)|(OUTCRDL & ICNT_5));                          //[OUTERCNT.NET:00072] CRDSEL_5_(RC_5) = AO2A(INCRDL,OCNT_5,OUTCRDL,ICNT_5);
assign RC_6 = ~((INCRDL & OCNT_6)|(OUTCRDL & ICNT_6));                          //[OUTERCNT.NET:00073] CRDSEL_6_(RC_6) = AO2A(INCRDL,OCNT_6,OUTCRDL,ICNT_6);
assign RC_7 = ~((INCRDL & OCNT_7)|(OUTCRDL & ICNT_7));                          //[OUTERCNT.NET:00074] CRDSEL_7_(RC_7) = AO2A(INCRDL,OCNT_7,OUTCRDL,ICNT_7);
assign KEVIN = ~(INCRDL & OUTCRDL);                                             //[OUTERCNT.NET:00075] KEVIN_(KEVIN) = ND2A(INCRDL,OUTCRDL);
assign drv0_outD_0 = ~RC_0; assign drv0_enD_0 = KEVIN;                          //[OUTERCNT.NET:00076] CRDEN_0_(D_0) = BTS5A(RC_0,KEVIN);
assign drv0_outD_1 = ~RC_1; assign drv0_enD_1 = KEVIN;                          //[OUTERCNT.NET:00077] CRDEN_1_(D_1) = BTS5A(RC_1,KEVIN);
assign drv0_outD_2 = ~RC_2; assign drv0_enD_2 = KEVIN;                          //[OUTERCNT.NET:00078] CRDEN_2_(D_2) = BTS5A(RC_2,KEVIN);
assign drv0_outD_3 = ~RC_3; assign drv0_enD_3 = KEVIN;                          //[OUTERCNT.NET:00079] CRDEN_3_(D_3) = BTS5A(RC_3,KEVIN);
assign drv0_outD_4 = ~RC_4; assign drv0_enD_4 = KEVIN;                          //[OUTERCNT.NET:00080] CRDEN_4_(D_4) = BTS5A(RC_4,KEVIN);
assign drv0_outD_5 = ~RC_5; assign drv0_enD_5 = KEVIN;                          //[OUTERCNT.NET:00081] CRDEN_5_(D_5) = BTS5A(RC_5,KEVIN);
assign drv0_outD_6 = ~RC_6; assign drv0_enD_6 = KEVIN;                          //[OUTERCNT.NET:00082] CRDEN_6_(D_6) = BTS5A(RC_6,KEVIN);
assign drv0_outD_7 = ~RC_7; assign drv0_enD_7 = KEVIN;                          //[OUTERCNT.NET:00083] CRDEN_7_(D_7) = BTS5A(RC_7,KEVIN);

assign outD_0 = (drv0_outD_0 & drv0_enD_0);
assign enD_0 = drv0_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1);
assign enD_1 = drv0_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2);
assign enD_2 = drv0_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3);
assign enD_3 = drv0_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4);
assign enD_4 = drv0_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5);
assign enD_5 = drv0_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6);
assign enD_6 = drv0_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7);
assign enD_7 = drv0_enD_7;
endmodule                                                                       //[OUTERCNT.NET:00085] END MODULE;
