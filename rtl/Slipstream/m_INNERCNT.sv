                                                                                //[INNERCNT.NET:00001] COMPILE;
                                                                                //[INNERCNT.NET:00002] DIRECTORY MASTER;
/****************************************************************************
innercnt
15/10/88

Blitter operation inner loop length counter

This a a synchronous down counter, with a register containing the programmed
value so that the counter could be reloaded.

****************************************************************************/


module m_INNERCNT                                                               //[INNERCNT.NET:00015] MODULE INNERCNT;
(                                                                               //[INNERCNT.NET:00015] MODULE INNERCNT;

    input    MasterClock,
    input    CCLK,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_0,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_1,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_2,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_3,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_4,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_5,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_6,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    ID_7,                                                              //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    LDINRL,                                                            //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    LDMODL,                                                            //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    LDICNTL,                                                           //[INNERCNT.NET:00017] INPUTS	CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,LDMODL,LDICNTL,
    input    INCLKL,                                                            //[INNERCNT.NET:00018]    INCLKL,RESET;
    input    RESET,                                                             //[INNERCNT.NET:00018]    INCLKL,RESET;
                                                                                //[INNERCNT.NET:00018]    INCLKL,RESET;
    output    INNER0,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_0,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_1,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_2,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_3,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_4,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_5,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_6,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_7,                                                           //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
    output    ICNT_8                                                            //[INNERCNT.NET:00019] OUTPUTS	INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,ICNT_8;
);                                                                              //[INNERCNT.NET:00015] MODULE INNERCNT;
                                                                                //[INNERCNT.NET:00020] LEVEL FUNCTION;
wire CCLKL;                                                                     //[INNERCNT.NET:00023] CCLKL_(CCLKL) = N1A(CCLK);
wire RESETL;                                                                    //[INNERCNT.NET:00024] RESETL_(RESETL) = N1A(RESET);
wire ICVAL_0;                                                                   //[INNERCNT.NET:00028] ICNTR_0_(ICVAL_0,ICVALL_0) = LD2A(ID_0,LDINRL);
wire ICVALL_0;                                                                  //[INNERCNT.NET:00028] ICNTR_0_(ICVAL_0,ICVALL_0) = LD2A(ID_0,LDINRL);
wire ICVAL_1;                                                                   //[INNERCNT.NET:00029] ICNTR_1_(ICVAL_1,ICVALL_1) = LD2A(ID_1,LDINRL);
wire ICVALL_1;                                                                  //[INNERCNT.NET:00029] ICNTR_1_(ICVAL_1,ICVALL_1) = LD2A(ID_1,LDINRL);
wire ICVAL_2;                                                                   //[INNERCNT.NET:00030] ICNTR_2_(ICVAL_2,ICVALL_2) = LD2A(ID_2,LDINRL);
wire ICVALL_2;                                                                  //[INNERCNT.NET:00030] ICNTR_2_(ICVAL_2,ICVALL_2) = LD2A(ID_2,LDINRL);
wire ICVAL_3;                                                                   //[INNERCNT.NET:00031] ICNTR_3_(ICVAL_3,ICVALL_3) = LD2A(ID_3,LDINRL);
wire ICVALL_3;                                                                  //[INNERCNT.NET:00031] ICNTR_3_(ICVAL_3,ICVALL_3) = LD2A(ID_3,LDINRL);
wire ICVAL_4;                                                                   //[INNERCNT.NET:00032] ICNTR_4_(ICVAL_4,ICVALL_4) = LD2A(ID_4,LDINRL);
wire ICVALL_4;                                                                  //[INNERCNT.NET:00032] ICNTR_4_(ICVAL_4,ICVALL_4) = LD2A(ID_4,LDINRL);
wire ICVAL_5;                                                                   //[INNERCNT.NET:00033] ICNTR_5_(ICVAL_5,ICVALL_5) = LD2A(ID_5,LDINRL);
wire ICVALL_5;                                                                  //[INNERCNT.NET:00033] ICNTR_5_(ICVAL_5,ICVALL_5) = LD2A(ID_5,LDINRL);
wire ICVAL_6;                                                                   //[INNERCNT.NET:00034] ICNTR_6_(ICVAL_6,ICVALL_6) = LD2A(ID_6,LDINRL);
wire ICVALL_6;                                                                  //[INNERCNT.NET:00034] ICNTR_6_(ICVAL_6,ICVALL_6) = LD2A(ID_6,LDINRL);
wire ICVAL_7;                                                                   //[INNERCNT.NET:00035] ICNTR_7_(ICVAL_7,ICVALL_7) = LD2A(ID_7,LDINRL);
wire ICVALL_7;                                                                  //[INNERCNT.NET:00035] ICNTR_7_(ICVAL_7,ICVALL_7) = LD2A(ID_7,LDINRL);
wire ICVAL_8;                                                                   //[INNERCNT.NET:00036] ICNTR_8_(ICVAL_8,ICVALL_8) = LD2A(ID_1,LDMODL);
wire ICVALL_8;                                                                  //[INNERCNT.NET:00036] ICNTR_8_(ICVAL_8,ICVALL_8) = LD2A(ID_1,LDMODL);
wire LDICNTDL;                                                                  //[INNERCNT.NET:00044] LDICNTD_(LDICNTDL,LDICNTD) = FD1A(LDICNTL,CCLKL);
wire LDICNTD;                                                                   //[INNERCNT.NET:00044] LDICNTD_(LDICNTDL,LDICNTD) = FD1A(LDICNTL,CCLKL);
wire LDICLKL;                                                                   //[INNERCNT.NET:00045] LDICLK_(LDICLKL) = OR2A(LDICNTL,LDICNTD);
wire ICLKL;                                                                     //[INNERCNT.NET:00049] ICLKL_(ICLKL) = AND2A(INCLKL,LDICLKL);
wire LDICNT;                                                                    //[INNERCNT.NET:00053] LDIINV_(LDICNT) = N1A(LDICNTL);
wire ICNTL_0;                                                                   //[INNERCNT.NET:00054] ICNT_0_(ICNT_0,ICNTL_0,CARRY_0) = LSCNTEL(ICVAL_0,LDICNT,LDICNTL,ICLKL,RESET,
wire CARRY_0;                                                                   //[INNERCNT.NET:00054] ICNT_0_(ICNT_0,ICNTL_0,CARRY_0) = LSCNTEL(ICVAL_0,LDICNT,LDICNTL,ICLKL,RESET,
wire ICNTL_1;                                                                   //[INNERCNT.NET:00056] ICNT_1_(ICNT_1,ICNTL_1,CARRY_1) = LSCNTEL(ICVAL_1,LDICNT,LDICNTL,ICLKL,CARRY_0,
wire CARRY_1;                                                                   //[INNERCNT.NET:00056] ICNT_1_(ICNT_1,ICNTL_1,CARRY_1) = LSCNTEL(ICVAL_1,LDICNT,LDICNTL,ICLKL,CARRY_0,
wire ICNTL_2;                                                                   //[INNERCNT.NET:00058] ICNT_2_(ICNT_2,ICNTL_2,CARRY_2) = LSCNTEL(ICVAL_2,LDICNT,LDICNTL,ICLKL,CARRY_1,
wire CARRY_2;                                                                   //[INNERCNT.NET:00058] ICNT_2_(ICNT_2,ICNTL_2,CARRY_2) = LSCNTEL(ICVAL_2,LDICNT,LDICNTL,ICLKL,CARRY_1,
wire ICNTL_3;                                                                   //[INNERCNT.NET:00060] ICNT_3_(ICNT_3,ICNTL_3,CARRY_3) = LSCNTEL(ICVAL_3,LDICNT,LDICNTL,ICLKL,CARRY_2,
wire CARRY_3;                                                                   //[INNERCNT.NET:00060] ICNT_3_(ICNT_3,ICNTL_3,CARRY_3) = LSCNTEL(ICVAL_3,LDICNT,LDICNTL,ICLKL,CARRY_2,
wire ICNTL_4;                                                                   //[INNERCNT.NET:00062] ICNT_4_(ICNT_4,ICNTL_4,CARRY_4) = LSCNTEL(ICVAL_4,LDICNT,LDICNTL,ICLKL,CARRY_3,
wire CARRY_4;                                                                   //[INNERCNT.NET:00062] ICNT_4_(ICNT_4,ICNTL_4,CARRY_4) = LSCNTEL(ICVAL_4,LDICNT,LDICNTL,ICLKL,CARRY_3,
wire ICNTL_5;                                                                   //[INNERCNT.NET:00064] ICNT_5_(ICNT_5,ICNTL_5,CARRY_5) = LSCNTEL(ICVAL_5,LDICNT,LDICNTL,ICLKL,CARRY_4,
wire CARRY_5;                                                                   //[INNERCNT.NET:00064] ICNT_5_(ICNT_5,ICNTL_5,CARRY_5) = LSCNTEL(ICVAL_5,LDICNT,LDICNTL,ICLKL,CARRY_4,
wire ICNTL_6;                                                                   //[INNERCNT.NET:00066] ICNT_6_(ICNT_6,ICNTL_6,CARRY_6) = LSCNTEL(ICVAL_6,LDICNT,LDICNTL,ICLKL,CARRY_5,
wire CARRY_6;                                                                   //[INNERCNT.NET:00066] ICNT_6_(ICNT_6,ICNTL_6,CARRY_6) = LSCNTEL(ICVAL_6,LDICNT,LDICNTL,ICLKL,CARRY_5,
wire ICNTL_7;                                                                   //[INNERCNT.NET:00068] ICNT_7_(ICNT_7,ICNTL_7,CARRY_7) = LSCNTEL(ICVAL_7,LDICNT,LDICNTL,ICLKL,CARRY_6,
wire CARRY_7;                                                                   //[INNERCNT.NET:00068] ICNT_7_(ICNT_7,ICNTL_7,CARRY_7) = LSCNTEL(ICVAL_7,LDICNT,LDICNTL,ICLKL,CARRY_6,
wire ICNTL_8;                                                                   //[INNERCNT.NET:00070] ICNT_8_(ICNT_8,ICNTL_8,CARRY_8) = LSCNTEL(ICVAL_8,LDICNT,LDICNTL,ICLKL,CARRY_7,
wire CARRY_8;                                                                   //[INNERCNT.NET:00070] ICNT_8_(ICNT_8,ICNTL_8,CARRY_8) = LSCNTEL(ICVAL_8,LDICNT,LDICNTL,ICLKL,CARRY_7,
wire IN0T;                                                                      //[INNERCNT.NET:00075] IN0T_(IN0T) = NR2A(ICNT_0,ICNT_1);
wire INNER0L;                                                                   //[INNERCNT.NET:00076] IN0GEN_(INNER0L) = ND8A(IN0T,ICNTL_2,ICNTL_3,ICNTL_4,ICNTL_5,ICNTL_6,ICNTL_7,

assign CCLKL = ~CCLK;                                                           //[INNERCNT.NET:00023] CCLKL_(CCLKL) = N1A(CCLK);
assign RESETL = ~RESET;                                                         //[INNERCNT.NET:00024] RESETL_(RESETL) = N1A(RESET);

/* The Inner count value register */

LD2A ICNTR_0__inst (.MasterClock(MasterClock),.q(ICVAL_0),.qL(ICVALL_0),.d(ID_0),.en(LDINRL));//[INNERCNT.NET:00028] ICNTR_0_(ICVAL_0,ICVALL_0) = LD2A(ID_0,LDINRL);
LD2A ICNTR_1__inst (.MasterClock(MasterClock),.q(ICVAL_1),.qL(ICVALL_1),.d(ID_1),.en(LDINRL));//[INNERCNT.NET:00029] ICNTR_1_(ICVAL_1,ICVALL_1) = LD2A(ID_1,LDINRL);
LD2A ICNTR_2__inst (.MasterClock(MasterClock),.q(ICVAL_2),.qL(ICVALL_2),.d(ID_2),.en(LDINRL));//[INNERCNT.NET:00030] ICNTR_2_(ICVAL_2,ICVALL_2) = LD2A(ID_2,LDINRL);
LD2A ICNTR_3__inst (.MasterClock(MasterClock),.q(ICVAL_3),.qL(ICVALL_3),.d(ID_3),.en(LDINRL));//[INNERCNT.NET:00031] ICNTR_3_(ICVAL_3,ICVALL_3) = LD2A(ID_3,LDINRL);
LD2A ICNTR_4__inst (.MasterClock(MasterClock),.q(ICVAL_4),.qL(ICVALL_4),.d(ID_4),.en(LDINRL));//[INNERCNT.NET:00032] ICNTR_4_(ICVAL_4,ICVALL_4) = LD2A(ID_4,LDINRL);
LD2A ICNTR_5__inst (.MasterClock(MasterClock),.q(ICVAL_5),.qL(ICVALL_5),.d(ID_5),.en(LDINRL));//[INNERCNT.NET:00033] ICNTR_5_(ICVAL_5,ICVALL_5) = LD2A(ID_5,LDINRL);
LD2A ICNTR_6__inst (.MasterClock(MasterClock),.q(ICVAL_6),.qL(ICVALL_6),.d(ID_6),.en(LDINRL));//[INNERCNT.NET:00034] ICNTR_6_(ICVAL_6,ICVALL_6) = LD2A(ID_6,LDINRL);
LD2A ICNTR_7__inst (.MasterClock(MasterClock),.q(ICVAL_7),.qL(ICVALL_7),.d(ID_7),.en(LDINRL));//[INNERCNT.NET:00035] ICNTR_7_(ICVAL_7,ICVALL_7) = LD2A(ID_7,LDINRL);
LD2A ICNTR_8__inst (.MasterClock(MasterClock),.q(ICVAL_8),.qL(ICVALL_8),.d(ID_1),.en(LDMODL));//[INNERCNT.NET:00036] ICNTR_8_(ICVAL_8,ICVALL_8) = LD2A(ID_1,LDMODL);

/* Inner counter load - as the inner counter is a synchronous counter
loaded in one tick it is necessary to synthesize a load clock which will
have a suitable rising edge within the load signal.  This is given by
producing a delayed version off the back edge of the clock and making
the clock active (low) only during the first half of the cycle */

FD1A LDICNTD__inst (.MasterClock(MasterClock),.q(LDICNTDL),.qL(LDICNTD),.d(LDICNTL),.clk(CCLKL));//[INNERCNT.NET:00044] LDICNTD_(LDICNTDL,LDICNTD) = FD1A(LDICNTL,CCLKL);
assign LDICLKL = LDICNTL | LDICNTD;                                             //[INNERCNT.NET:00045] LDICLK_(LDICLKL) = OR2A(LDICNTL,LDICNTD);

/* From this, the counter clock */

assign ICLKL = INCLKL & LDICLKL;                                                //[INNERCNT.NET:00049] ICLKL_(ICLKL) = AND2A(INCLKL,LDICLKL);

/* The Inner counter */

assign LDICNT = ~LDICNTL;                                                       //[INNERCNT.NET:00053] LDIINV_(LDICNT) = N1A(LDICNTL);
m_LSCNTEL ICNT_0_ (.MasterClock(MasterClock),.D(ICVAL_0),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(RESET),.RSTL(RESETL),.Q(ICNT_0),.QL(ICNTL_0),.CO(CARRY_0));//[INNERCNT.NET:00054] ICNT_0_(ICNT_0,ICNTL_0,CARRY_0) = LSCNTEL(ICVAL_0,LDICNT,LDICNTL,ICLKL,RESET,
                                                                                //[INNERCNT.NET:00055]    RESETL);
m_LSCNTEL ICNT_1_ (.MasterClock(MasterClock),.D(ICVAL_1),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_0),.RSTL(RESETL),.Q(ICNT_1),.QL(ICNTL_1),.CO(CARRY_1));//[INNERCNT.NET:00056] ICNT_1_(ICNT_1,ICNTL_1,CARRY_1) = LSCNTEL(ICVAL_1,LDICNT,LDICNTL,ICLKL,CARRY_0,
                                                                                //[INNERCNT.NET:00057]    RESETL);
m_LSCNTEL ICNT_2_ (.MasterClock(MasterClock),.D(ICVAL_2),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_1),.RSTL(RESETL),.Q(ICNT_2),.QL(ICNTL_2),.CO(CARRY_2));//[INNERCNT.NET:00058] ICNT_2_(ICNT_2,ICNTL_2,CARRY_2) = LSCNTEL(ICVAL_2,LDICNT,LDICNTL,ICLKL,CARRY_1,
                                                                                //[INNERCNT.NET:00059]    RESETL);
m_LSCNTEL ICNT_3_ (.MasterClock(MasterClock),.D(ICVAL_3),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_2),.RSTL(RESETL),.Q(ICNT_3),.QL(ICNTL_3),.CO(CARRY_3));//[INNERCNT.NET:00060] ICNT_3_(ICNT_3,ICNTL_3,CARRY_3) = LSCNTEL(ICVAL_3,LDICNT,LDICNTL,ICLKL,CARRY_2,
                                                                                //[INNERCNT.NET:00061]    RESETL);
m_LSCNTEL ICNT_4_ (.MasterClock(MasterClock),.D(ICVAL_4),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_3),.RSTL(RESETL),.Q(ICNT_4),.QL(ICNTL_4),.CO(CARRY_4));//[INNERCNT.NET:00062] ICNT_4_(ICNT_4,ICNTL_4,CARRY_4) = LSCNTEL(ICVAL_4,LDICNT,LDICNTL,ICLKL,CARRY_3,
                                                                                //[INNERCNT.NET:00063]    RESETL);
m_LSCNTEL ICNT_5_ (.MasterClock(MasterClock),.D(ICVAL_5),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_4),.RSTL(RESETL),.Q(ICNT_5),.QL(ICNTL_5),.CO(CARRY_5));//[INNERCNT.NET:00064] ICNT_5_(ICNT_5,ICNTL_5,CARRY_5) = LSCNTEL(ICVAL_5,LDICNT,LDICNTL,ICLKL,CARRY_4,
                                                                                //[INNERCNT.NET:00065]    RESETL);
m_LSCNTEL ICNT_6_ (.MasterClock(MasterClock),.D(ICVAL_6),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_5),.RSTL(RESETL),.Q(ICNT_6),.QL(ICNTL_6),.CO(CARRY_6));//[INNERCNT.NET:00066] ICNT_6_(ICNT_6,ICNTL_6,CARRY_6) = LSCNTEL(ICVAL_6,LDICNT,LDICNTL,ICLKL,CARRY_5,
                                                                                //[INNERCNT.NET:00067]    RESETL);
m_LSCNTEL ICNT_7_ (.MasterClock(MasterClock),.D(ICVAL_7),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_6),.RSTL(RESETL),.Q(ICNT_7),.QL(ICNTL_7),.CO(CARRY_7));//[INNERCNT.NET:00068] ICNT_7_(ICNT_7,ICNTL_7,CARRY_7) = LSCNTEL(ICVAL_7,LDICNT,LDICNTL,ICLKL,CARRY_6,
                                                                                //[INNERCNT.NET:00069]    RESETL);
m_LSCNTEL ICNT_8_ (.MasterClock(MasterClock),.D(ICVAL_8),.LD(LDICNT),.LDL(LDICNTL),.CLK(ICLKL),.CI(CARRY_7),.RSTL(RESETL),.Q(ICNT_8),.QL(ICNTL_8),.CO(CARRY_8));//[INNERCNT.NET:00070] ICNT_8_(ICNT_8,ICNTL_8,CARRY_8) = LSCNTEL(ICVAL_8,LDICNT,LDICNTL,ICLKL,CARRY_7,
                                                                                //[INNERCNT.NET:00071]    RESETL);

/* Generate Inner0 */

assign IN0T = ~(ICNT_0 | ICNT_1);                                               //[INNERCNT.NET:00075] IN0T_(IN0T) = NR2A(ICNT_0,ICNT_1);
assign INNER0L = ~(IN0T & ICNTL_2 & ICNTL_3 & ICNTL_4 & ICNTL_5 & ICNTL_6 & ICNTL_7 & ICNTL_8);//[INNERCNT.NET:00076] IN0GEN_(INNER0L) = ND8A(IN0T,ICNTL_2,ICNTL_3,ICNTL_4,ICNTL_5,ICNTL_6,ICNTL_7,
                                                                                //[INNERCNT.NET:00077]    ICNTL_8);
assign INNER0 = ~INNER0L;                                                       //[INNERCNT.NET:00078] INNER0_(INNER0) = N1A(INNER0L);

endmodule                                                                       //[INNERCNT.NET:00080] END MODULE;
