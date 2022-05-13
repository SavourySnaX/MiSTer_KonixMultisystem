                                                                                //[BUSCON.NET:00001] COMPILE;
                                                                                //[BUSCON.NET:00002] DIRECTORY MASTER;
/****************************************************************************
buscon
20/10/88

Bus Control and IO decoding

****************************************************************************/


module m_BUSCON                                                                 //[BUSCON.NET:00012] MODULE BUSCON;
(                                                                               //[BUSCON.NET:00012] MODULE BUSCON;

    input    MasterClock,
    input    inD_0,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    inD_3,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    inD_4,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    inD_5,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    inD_6,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    inD_7,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    A_0,                                                               //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    A_1,                                                               //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    A_2,                                                               //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    A_3,                                                               //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    A_4,                                                               //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    BCSL,                                                              //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    HLDAL,                                                             //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    DSPBRQL,                                                           //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    ID_0,                                                              //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    INTL,                                                              //[BUSCON.NET:00014] INPUTS	D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,
    input    IORDL,                                                             //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    input    IOWRL,                                                             //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    input    INCYCL,                                                            //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    input    RESET,                                                             //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    input    RUN,                                                               //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    input    STOP,                                                              //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
                                                                                //[BUSCON.NET:00015]    IORDL,IOWRL,INCYCL,RESET,RUN,STOP;
    output    outD_0, enD_0,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    outD_3, enD_3,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    outD_4, enD_4,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    outD_5, enD_5,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    outD_6, enD_6,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    outD_7, enD_7,                                                    //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    ACKINT,                                                           //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    BHOLDL,                                                           //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    BUSOE,                                                            //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    CMDWRL,                                                           //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    CONWRL,                                                           //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    DSPBAKL,                                                          //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
    output    DSTRDL_0,                                                         //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    DSTRDL_1,                                                         //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    DSTRDL_2,                                                         //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    INCRDL,                                                           //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    OUTCRDL,                                                          //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    PCWRL_0,                                                          //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    PCWRL_1,                                                          //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    PCWRL_2,                                                          //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    SRCRDL_0,                                                         //[BUSCON.NET:00017]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
    output    SRCRDL_1,                                                         //[BUSCON.NET:00018]    SRCRDL_1,SRCRDL_2,STRD,TESTWRL;
    output    SRCRDL_2,                                                         //[BUSCON.NET:00018]    SRCRDL_1,SRCRDL_2,STRD,TESTWRL;
    output    STRD,                                                             //[BUSCON.NET:00018]    SRCRDL_1,SRCRDL_2,STRD,TESTWRL;
    output    TESTWRL                                                           //[BUSCON.NET:00018]    SRCRDL_1,SRCRDL_2,STRD,TESTWRL;
);                                                                              //[BUSCON.NET:00012] MODULE BUSCON;
                                                                                //[BUSCON.NET:00019] LEVEL FUNCTION;
wire INCYC;                                                                     //[BUSCON.NET:00022] INCYCINV_(INCYC) = N1A(INCYCL);
wire DSPBRQ;                                                                    //[BUSCON.NET:00023] DSPBRQINV_(DSPBRQ) = N1A(DSPBRQL);
wire RESETL;                                                                    //[BUSCON.NET:00024] RESETL_(RESETL) = N1A(RESET);
wire STOPL;                                                                     //[BUSCON.NET:00025] STOPL_(STOPL) = N1A(STOP);
wire BUSREQL;                                                                   //[BUSCON.NET:00030] BUSREQL_(BUSREQL) = ND2A(RUN,STOPL);
wire BUSREQ;                                                                    //[BUSCON.NET:00031] BUSREQ_(BUSREQ) = N1A(BUSREQL);
wire IMASK;                                                                     //[BUSCON.NET:00035] FINT_(FINT) = NR2A(INTL,IMASK);
wire FINT;                                                                      //[BUSCON.NET:00035] FINT_(FINT) = NR2A(INTL,IMASK);
wire FINTL;                                                                     //[BUSCON.NET:00036] FINTL_(FINTL) = N1A(FINT);
wire CBRQT;                                                                     //[BUSCON.NET:00040] CBRQT_(CBRQT) = ND2A(FINTL,BUSREQ);
wire DSPBAK;                                                                    //[BUSCON.NET:00045] DBAGEN_(DSPBAK) = NR3A(DSPBRQL,HLDAL,INCYC);
wire AL_0;                                                                      //[BUSCON.NET:00079] AINV_0_(AL_0) = N1B(A_0);
wire AL_1;                                                                      //[BUSCON.NET:00080] AINV_1_(AL_1) = N1B(A_1);
wire AL_2;                                                                      //[BUSCON.NET:00081] AINV_2_(AL_2) = N1B(A_2);
wire AL_3;                                                                      //[BUSCON.NET:00082] AINV_3_(AL_3) = N1B(A_3);
wire AL_4;                                                                      //[BUSCON.NET:00083] AINV_4_(AL_4) = N1B(A_4);
wire BRD;                                                                       //[BUSCON.NET:00084] BRD_(BRD) = NR2A(BCSL,IORDL);
wire BWR;                                                                       //[BUSCON.NET:00085] BWR_(BWR) = NR2C(BCSL,IOWRL);
wire STRDL;                                                                     //[BUSCON.NET:00093] STRDL_(STRDL) = ND6A(AL_0,A_1,A_2,AL_3,AL_4,BRD);
wire OUTCRDT;                                                                   //[BUSCON.NET:00095] OUTCRDT_(OUTCRDT) = ND2A(AL_3,AL_4);
wire PCWRTL_0;                                                                  //[BUSCON.NET:00098] PCWRTL_0_(PCWRTL_0) = ND6A(AL_0,AL_1,AL_2,AL_3,A_4,BWR);
wire PCWRTL_1;                                                                  //[BUSCON.NET:00099] PCWRTL_1_(PCWRTL_1) = ND6A(A_0,AL_1,AL_2,AL_3,A_4,BWR);
wire PCWRTL_2;                                                                  //[BUSCON.NET:00100] PCWRTL_2_(PCWRTL_2) = ND6A(AL_0,A_1,AL_2,AL_3,A_4,BWR);
wire CONWRTL;                                                                   //[BUSCON.NET:00106] CONWRTL_(CONWRTL) = ND6A(AL_0,AL_1,A_2,AL_3,A_4,BWR);
wire TESTWRTL;                                                                  //[BUSCON.NET:00109] TESTWRTL_(TESTWRTL) = ND6A(A_0,A_1,A_2,A_3,A_4,BWR);
wire ISTOPL;                                                                    //[BUSCON.NET:00118] ISTOPL_(ISTOPL) = ND3A(RUN,FINT,BHOLDL);
wire IMASKL;                                                                    //[BUSCON.NET:00130] IMASK_(IMASK,IMASKL) = LD2A(ID_0,CONWRL);
wire drv0_outD_0;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_0;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_outD_3;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_3;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_outD_4;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_4;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_outD_5;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_5;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_outD_6;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_6;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_outD_7;                                                               //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
wire drv0_enD_7;                                                                //[BUSCON.NET:00016] OUTPUTS	D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,

assign INCYC = ~INCYCL;                                                         //[BUSCON.NET:00022] INCYCINV_(INCYC) = N1A(INCYCL);
assign DSPBRQ = ~DSPBRQL;                                                       //[BUSCON.NET:00023] DSPBRQINV_(DSPBRQ) = N1A(DSPBRQL);
assign RESETL = ~RESET;                                                         //[BUSCON.NET:00024] RESETL_(RESETL) = N1A(RESET);
assign STOPL = ~STOP;                                                           //[BUSCON.NET:00025] STOPL_(STOPL) = N1A(STOP);

/* Internal bus reques busreq occurs as soon as the run bit is set, and
is disabled if the inner loop goes into its stop state */

assign BUSREQL = ~(RUN & STOPL);                                                //[BUSCON.NET:00030] BUSREQL_(BUSREQL) = ND2A(RUN,STOPL);
assign BUSREQ = ~BUSREQL;                                                       //[BUSCON.NET:00031] BUSREQ_(BUSREQ) = N1A(BUSREQL);

/* Interrupts are filtered by the imask flag */

assign FINT = ~(INTL | IMASK);                                                  //[BUSCON.NET:00035] FINT_(FINT) = NR2A(INTL,IMASK);
assign FINTL = ~FINT;                                                           //[BUSCON.NET:00036] FINTL_(FINTL) = N1A(FINT);

/* CPU Bus Request */

assign CBRQT = ~(FINTL & BUSREQ);                                               //[BUSCON.NET:00040] CBRQT_(CBRQT) = ND2A(FINTL,BUSREQ);
assign BHOLDL = DSPBRQL & INCYCL & CBRQT;                                       //[BUSCON.NET:00041] CBRQGEN_(BHOLDL) = AND3A(DSPBRQL,INCYCL,CBRQT);

/* DSP Bus Acknowledge */

assign DSPBAK = ~(DSPBRQL | HLDAL | INCYC);                                     //[BUSCON.NET:00045] DBAGEN_(DSPBAK) = NR3A(DSPBRQL,HLDAL,INCYC);
assign DSPBAKL = ~DSPBAK;                                                       //[BUSCON.NET:00046] DSPBAKL_(DSPBAKL) = N1C(DSPBAK);

/* Internal Acknowledge */

assign ACKINT = ~(DSPBRQ | HLDAL | FINT | BUSREQL);                             //[BUSCON.NET:00050] IAKGEN_(ACKINT) = NR4A(DSPBRQ,HLDAL,FINT,BUSREQL);

/* The address is enabled onto the bus whenever a hold acknowlwdge is
received (even if not requested!), unless the DSP owns the bus.  This
is given by:
	busoe = hlda . /dspbak  */

assign BUSOE = ~(HLDAL | DSPBAK);                                               //[BUSCON.NET:00057] BUSOE_(BUSOE) = NR2C(HLDAL,DSPBAK);

/* IO Decoding 
Blitter IO is given by a chip select signal bcsL, and iordL and iowrL
control lines.  The blitter has 32 IO locations available to it, not
all of which are used.  So that there are no un-acknowledged locations,
which would leave the bus undriven, the outer counter address decode
is expanded to fill the available IO space. 
	A43210
	 00000	Destination byte 0 read / Program byte 0 write
	 00001	Destination byte 1 read / Program byte 1 write
	 00010	Destination byte 2 read / Program byte 2 write
	 00011	Source byte 0 read / Command register write
	 00100	Source byte 1 read / Control register write
	 00101	Source byte 2 read
	 00110	Status read
	 00111	Inner counter read
	 x1xxx }Outer counter read
	 1xxxx }
	 11111	Test mode register write (used at top level) 
*/

assign AL_0 = ~A_0;                                                             //[BUSCON.NET:00079] AINV_0_(AL_0) = N1B(A_0);
assign AL_1 = ~A_1;                                                             //[BUSCON.NET:00080] AINV_1_(AL_1) = N1B(A_1);
assign AL_2 = ~A_2;                                                             //[BUSCON.NET:00081] AINV_2_(AL_2) = N1B(A_2);
assign AL_3 = ~A_3;                                                             //[BUSCON.NET:00082] AINV_3_(AL_3) = N1B(A_3);
assign AL_4 = ~A_4;                                                             //[BUSCON.NET:00083] AINV_4_(AL_4) = N1B(A_4);
assign BRD = ~(BCSL | IORDL);                                                   //[BUSCON.NET:00084] BRD_(BRD) = NR2A(BCSL,IORDL);
assign BWR = ~(BCSL | IOWRL);                                                   //[BUSCON.NET:00085] BWR_(BWR) = NR2C(BCSL,IOWRL);

assign DSTRDL_0 = ~(AL_0 & AL_1 & AL_2 & AL_3 & AL_4 & BRD);                    //[BUSCON.NET:00087] DSTRDL_0_(DSTRDL_0) = ND6A(AL_0,AL_1,AL_2,AL_3,AL_4,BRD);
assign DSTRDL_1 = ~(A_0 & AL_1 & AL_2 & AL_3 & AL_4 & BRD);                     //[BUSCON.NET:00088] DSTRDL_1_(DSTRDL_1) = ND6A(A_0,AL_1,AL_2,AL_3,AL_4,BRD);
assign DSTRDL_2 = ~(AL_0 & A_1 & AL_2 & AL_3 & AL_4 & BRD);                     //[BUSCON.NET:00089] DSTRDL_2_(DSTRDL_2) = ND6A(AL_0,A_1,AL_2,AL_3,AL_4,BRD);
assign SRCRDL_0 = ~(A_0 & A_1 & AL_2 & AL_3 & AL_4 & BRD);                      //[BUSCON.NET:00090] SRCRDL_0_(SRCRDL_0) = ND6A(A_0,A_1,AL_2,AL_3,AL_4,BRD);
assign SRCRDL_1 = ~(AL_0 & AL_1 & A_2 & AL_3 & AL_4 & BRD);                     //[BUSCON.NET:00091] SRCRDL_1_(SRCRDL_1) = ND6A(AL_0,AL_1,A_2,AL_3,AL_4,BRD);
assign SRCRDL_2 = ~(A_0 & AL_1 & A_2 & AL_3 & AL_4 & BRD);                      //[BUSCON.NET:00092] SRCRDL_2_(SRCRDL_2) = ND6A(A_0,AL_1,A_2,AL_3,AL_4,BRD);
assign STRDL = ~(AL_0 & A_1 & A_2 & AL_3 & AL_4 & BRD);                         //[BUSCON.NET:00093] STRDL_(STRDL) = ND6A(AL_0,A_1,A_2,AL_3,AL_4,BRD);
assign INCRDL = ~(A_0 & A_1 & A_2 & AL_3 & AL_4 & BRD);                         //[BUSCON.NET:00094] INCRDL_(INCRDL) = ND6A(A_0,A_1,A_2,AL_3,AL_4,BRD);
assign OUTCRDT = ~(AL_3 & AL_4);                                                //[BUSCON.NET:00095] OUTCRDT_(OUTCRDT) = ND2A(AL_3,AL_4);
assign OUTCRDL = ~(OUTCRDT & BRD);                                              //[BUSCON.NET:00096] OUTCRDL_(OUTCRDL) = ND2A(OUTCRDT,BRD);

assign PCWRTL_0 = ~(AL_0 & AL_1 & AL_2 & AL_3 & A_4 & BWR);                     //[BUSCON.NET:00098] PCWRTL_0_(PCWRTL_0) = ND6A(AL_0,AL_1,AL_2,AL_3,A_4,BWR);
assign PCWRTL_1 = ~(A_0 & AL_1 & AL_2 & AL_3 & A_4 & BWR);                      //[BUSCON.NET:00099] PCWRTL_1_(PCWRTL_1) = ND6A(A_0,AL_1,AL_2,AL_3,A_4,BWR);
assign PCWRTL_2 = ~(AL_0 & A_1 & AL_2 & AL_3 & A_4 & BWR);                      //[BUSCON.NET:00100] PCWRTL_2_(PCWRTL_2) = ND6A(AL_0,A_1,AL_2,AL_3,A_4,BWR);
assign PCWRL_0 = PCWRTL_0 & RESETL;                                             //[BUSCON.NET:00101] PCWRL_0_(PCWRL_0) = AND2A(PCWRTL_0,RESETL);
assign PCWRL_1 = PCWRTL_1 & RESETL;                                             //[BUSCON.NET:00102] PCWRL_1_(PCWRL_1) = AND2A(PCWRTL_1,RESETL);
assign PCWRL_2 = PCWRTL_2 & RESETL;                                             //[BUSCON.NET:00103] PCWRL_2_(PCWRL_2) = AND2A(PCWRTL_2,RESETL);

assign CMDWRL = ~(A_0 & A_1 & AL_2 & AL_3 & A_4 & BWR);                         //[BUSCON.NET:00105] CMDWRL_(CMDWRL) = ND6C(A_0,A_1,AL_2,AL_3,A_4,BWR);
assign CONWRTL = ~(AL_0 & AL_1 & A_2 & AL_3 & A_4 & BWR);                       //[BUSCON.NET:00106] CONWRTL_(CONWRTL) = ND6A(AL_0,AL_1,A_2,AL_3,A_4,BWR);
assign CONWRL = CONWRTL & RESETL;                                               //[BUSCON.NET:00107] CONWRL_(CONWRL) = AND2A(CONWRTL,RESETL);

assign TESTWRTL = ~(A_0 & A_1 & A_2 & A_3 & A_4 & BWR);                         //[BUSCON.NET:00109] TESTWRTL_(TESTWRTL) = ND6A(A_0,A_1,A_2,A_3,A_4,BWR);
assign TESTWRL = TESTWRTL & RESETL;                                             //[BUSCON.NET:00110] TESTWRL_(TESTWRL) = AND2A(TESTWRTL,RESETL);

/* The blitter status read port (part of) */

assign STRD = ~STRDL;                                                           //[BUSCON.NET:00114] STRD_(STRD) = N1A(STRDL);

/* Interrupt stop is true if run is active, int is active and bus hold 
is inactive */
assign ISTOPL = ~(RUN & FINT & BHOLDL);                                         //[BUSCON.NET:00118] ISTOPL_(ISTOPL) = ND3A(RUN,FINT,BHOLDL);
assign drv0_outD_0 = ~ISTOPL; assign drv0_enD_0 = STRD;                         //[BUSCON.NET:00119] STAT_0_(D_0) = BTS5A(ISTOPL,STRD);

assign drv0_outD_3 = ~STRD; assign drv0_enD_3 = STRD;                           //[BUSCON.NET:00121] STAT_3_(D_3) = BTS5A(STRD,STRD);
assign drv0_outD_4 = ~STRD; assign drv0_enD_4 = STRD;                           //[BUSCON.NET:00122] STAT_4_(D_4) = BTS5A(STRD,STRD);
assign drv0_outD_5 = ~STRD; assign drv0_enD_5 = STRD;                           //[BUSCON.NET:00123] STAT_5_(D_5) = BTS5A(STRD,STRD);
assign drv0_outD_6 = ~STRD; assign drv0_enD_6 = STRD;                           //[BUSCON.NET:00124] STAT_6_(D_6) = BTS5A(STRD,STRD);
assign drv0_outD_7 = ~STRD; assign drv0_enD_7 = STRD;                           //[BUSCON.NET:00125] STAT_7_(D_7) = BTS5A(STRD,STRD);

/* The blitter control register.  The remainder of this register lies 
within the state block */

LD2A IMASK__inst (.MasterClock(MasterClock),.q(IMASK),.qL(IMASKL),.d(ID_0),.en(CONWRL));//[BUSCON.NET:00130] IMASK_(IMASK,IMASKL) = LD2A(ID_0,CONWRL);

assign outD_0 = (drv0_outD_0 & drv0_enD_0);
assign enD_0 = drv0_enD_0;
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
endmodule                                                                       //[BUSCON.NET:00132] END MODULE;
