                                                                                //[STATE.NET:00001] COMPILE;
                                                                                //[STATE.NET:00002] DIRECTORY MASTER;
/***************************************************************************
state
15/10/88

Blitter state machines

This section contains the state machines, counters, command registers and
general control logic for the blitter.

****************************************************************************/


module m_STATE                                                                  //[STATE.NET:00015] MODULE STATE;
(                                                                               //[STATE.NET:00015] MODULE STATE;

    input    MasterClock,
    input    inD_0,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_1,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_2,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_3,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_4,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_5,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_6,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    inD_7,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    ACKINT,                                                            //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    BORROW,                                                            //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    CCLK,                                                              //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    CMDWRL,                                                            //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    CONWRL,                                                            //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    DAM1L,                                                             //[STATE.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,CONWRL,DAM1L,
    input    ID_0,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_1,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_2,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_3,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_4,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_5,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_6,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    ID_7,                                                              //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    INCRDL,                                                            //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    INHIB,                                                             //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    OUTCRDL,                                                           //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    RESET,                                                             //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    SAM1L,                                                             //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
    input    STRD,                                                              //[STATE.NET:00019]    STRD,WAITL;
    input    WAITL,                                                             //[STATE.NET:00019]    STRD,WAITL;
                                                                                //[STATE.NET:00018]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,RESET,SAM1L,
                                                                                //[STATE.NET:00019]    STRD,WAITL;
    output    outD_0, enD_0,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_1, enD_1,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_2, enD_2,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_3, enD_3,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_4, enD_4,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_5, enD_5,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_6, enD_6,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    outD_7, enD_7,                                                    //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    ADDBACKL,                                                         //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    ADDBLDL,                                                          //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    ADSTP,                                                            //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    DATOEL,                                                           //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    ICNT_0,                                                           //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
    output    ICNT_1,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    ICNT_2,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    INCYCL,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDCMPL,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDDAL_0,                                                          //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDDAL_1,                                                          //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDDAL_2,                                                          //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDDSTL,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDMODL,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDPATL,                                                           //[STATE.NET:00021]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
    output    LDSAL_0,                                                          //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    LDSAL_1,                                                          //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    LDSAL_2,                                                          //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    LDSRCL,                                                           //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    LDSTPL,                                                           //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    LINDR,                                                            //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    PCEN,                                                             //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    RES_0,                                                            //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    RES_1,                                                            //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    RUN,                                                              //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    SDASEL,                                                           //[STATE.NET:00022]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
    output    SRCENF,                                                           //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    SRCLTOH,                                                          //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    SRCRD,                                                            //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    SSWAP,                                                            //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    STOP,                                                             //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    UPDDSTL,                                                          //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    UPDPCL,                                                           //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    UPDSRCL,                                                          //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    UPSLDL,                                                           //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    BMREQ,                                                            //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    BRD,                                                              //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    BWR,                                                              //[STATE.NET:00023]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
    output    BWORD                                                             //[STATE.NET:00024]    BWORD;
);                                                                              //[STATE.NET:00015] MODULE STATE;
                                                                                //[STATE.NET:00025] LEVEL FUNCTION;
wire COMDN;                                                                     //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire DSTUP;                                                                     //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire IQUIET;                                                                    //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire OUTER0L;                                                                   //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire PARDN;                                                                     //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire PARRD;                                                                     //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire SRESET;                                                                    //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire SRCUP;                                                                     //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire INLP;                                                                      //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire LDICNTL;                                                                   //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire RDCMD;                                                                     //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire RDPAR;                                                                     //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire OTCLKL;                                                                    //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire IUPDDSTL;                                                                  //[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
wire IUPDSRCL;                                                                  //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
wire CYCEND;                                                                    //[STATE.NET:00037]    COMDN,COMCRQ,LDCMDL) = STCMD(CCLK,CYCEND,ICYCEND,RDCMD,RESET,RUN,SRESET);
wire ICYCEND;                                                                   //[STATE.NET:00037]    COMDN,COMCRQ,LDCMDL) = STCMD(CCLK,CYCEND,ICYCEND,RDCMD,RESET,RUN,SRESET);
wire LDOUTL;                                                                    //[STATE.NET:00036] STCMD_(LDSAL_0,LDSAL_1,LDSAL_2,LDDAL_0,LDDAL_1,LDDAL_2,LDCMPL,LDOUTL,LDMODL,
wire COMCRQ;                                                                    //[STATE.NET:00037]    COMDN,COMCRQ,LDCMDL) = STCMD(CCLK,CYCEND,ICYCEND,RDCMD,RESET,RUN,SRESET);
wire LDCMDL;                                                                    //[STATE.NET:00037]    COMDN,COMCRQ,LDCMDL) = STCMD(CCLK,CYCEND,ICYCEND,RDCMD,RESET,RUN,SRESET);
wire PARCRQ;                                                                    //[STATE.NET:00041] STPARAM_(PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL) = STPARAM(CYCEND,ICYCEND,
wire LDINRL;                                                                    //[STATE.NET:00041] STPARAM_(PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL) = STPARAM(CYCEND,ICYCEND,
wire ILDPATL;                                                                   //[STATE.NET:00041] STPARAM_(PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL) = STPARAM(CYCEND,ICYCEND,
wire COLST;                                                                     //[STATE.NET:00047]    SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL) = STINNER(BORROW,CCLK,COLST,
wire CYCST;                                                                     //[STATE.NET:00048]    CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,INLP,INNER0,IUPDDSTL,
wire DSTEN;                                                                     //[STATE.NET:00048]    CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,INLP,INNER0,IUPDDSTL,
wire ICYCST;                                                                    //[STATE.NET:00048]    CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,INLP,INNER0,IUPDDSTL,
wire INNER0;                                                                    //[STATE.NET:00048]    CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,INLP,INNER0,IUPDDSTL,
wire RESUME;                                                                    //[STATE.NET:00049]    IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,SRESET);
wire SRCEN;                                                                     //[STATE.NET:00049]    IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,SRESET);
wire DSTWR;                                                                     //[STATE.NET:00046] STINNER_(ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,
wire IDSTWR;                                                                    //[STATE.NET:00046] STINNER_(ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,
wire INCLKL;                                                                    //[STATE.NET:00046] STINNER_(ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,
wire INCRQ;                                                                     //[STATE.NET:00046] STINNER_(ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,
wire ICNT_8;                                                                    //[STATE.NET:00060]    SRCENF,SRCUP,SRESET) = CMDREGS(D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,
wire ICNT_3;                                                                    //[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
wire ICNT_4;                                                                    //[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
wire ICNT_5;                                                                    //[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
wire ICNT_6;                                                                    //[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
wire ICNT_7;                                                                    //[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
wire drv0_outD_0;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_0;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_1;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_1;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv1_outD_1;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv1_enD_1;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_2;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_2;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv1_outD_2;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv1_enD_2;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_3;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_3;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_4;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_4;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_5;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_5;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_6;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_6;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_outD_7;                                                               //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
wire drv0_enD_7;                                                                //[STATE.NET:00020] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,

/* Outer loop state machine */

m_STOUTER STOUTER_ (.MasterClock(MasterClock),.COMDN(COMDN),.DSTUP(DSTUP),.IQUIET(IQUIET),.OUTER0L(OUTER0L),.PARDN(PARDN),.PARRD(PARRD),.SRESET(SRESET),.SRCUP(SRCUP),.CCLK(CCLK),.ADSTP(ADSTP),.INLP(INLP),.LDICNTL(LDICNTL),.RDCMD(RDCMD),.RDPAR(RDPAR),.SDASEL(SDASEL),.OTCLKL(OTCLKL),.IUPDDSTL(IUPDDSTL),.IUPDSRCL(IUPDSRCL));//[STATE.NET:00030] STOUTER_(ADSTP,INLP,LDICNTL,RDCMD,RDPAR,SDASEL,OTCLKL,IUPDDSTL,
                                                                                //[STATE.NET:00031]    IUPDSRCL) = STOUTER(COMDN,DSTUP,IQUIET,OUTER0L,PARDN,PARRD,SRESET,SRCUP,
                                                                                //[STATE.NET:00032]    CCLK);

/* Command read state machine */

m_STCMD STCMD_ (.MasterClock(MasterClock),.CCLK(CCLK),.CYCEND(CYCEND),.ICYCEND(ICYCEND),.RDCMD(RDCMD),.RESET(RESET),.RUN(RUN),.SRESET(SRESET),.LDSAL_0(LDSAL_0),.LDSAL_1(LDSAL_1),.LDSAL_2(LDSAL_2),.LDDAL_0(LDDAL_0),.LDDAL_1(LDDAL_1),.LDDAL_2(LDDAL_2),.LDCMPL(LDCMPL),.LDOUTL(LDOUTL),.LDMODL(LDMODL),.COMDN(COMDN),.IRC_4(COMCRQ),.LDCMDL(LDCMDL));//[STATE.NET:00036] STCMD_(LDSAL_0,LDSAL_1,LDSAL_2,LDDAL_0,LDDAL_1,LDDAL_2,LDCMPL,LDOUTL,LDMODL,
                                                                                //[STATE.NET:00037]    COMDN,COMCRQ,LDCMDL) = STCMD(CCLK,CYCEND,ICYCEND,RDCMD,RESET,RUN,SRESET);

/* Parameter read state machine */

m_STPARAM STPARAM_ (.MasterClock(MasterClock),.CYCEND(CYCEND),.ICYCEND(ICYCEND),.SRESET(SRESET),.CCLK(CCLK),.RDPAR(RDPAR),.PARCRQ(PARCRQ),.PARDN(PARDN),.LDINRL(LDINRL),.LDPATL(LDPATL),.LDSTPL(LDSTPL),.ILDPATL(ILDPATL));//[STATE.NET:00041] STPARAM_(PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL) = STPARAM(CYCEND,ICYCEND,
                                                                                //[STATE.NET:00042]    SRESET,CCLK,RDPAR);

/* Inner loop state machine */ 

m_STINNER STINNER_ (.MasterClock(MasterClock),.BORROW(BORROW),.CCLK(CCLK),.COLST(COLST),.CYCEND(CYCEND),.CYCST(CYCST),.DAM1L(DAM1L),.DSTEN(DSTEN),.ICYCEND(ICYCEND),.ICYCST(ICYCST),.ILDPATL(ILDPATL),.INHIB(INHIB),.INLP(INLP),.INNER0(INNER0),.IUPDDSTL(IUPDDSTL),.IUPDSRCL(IUPDSRCL),.LINDR(LINDR),.RES_0(RES_0),.RESET(RESET),.RESUME(RESUME),.SAM1L(SAM1L),.SRCEN(SRCEN),.SRCENF(SRCENF),.SRESET(SRESET),.ADDBACKL(ADDBACKL),.ADDBLDL(ADDBLDL),.DSTWR(DSTWR),.IDSTWR(IDSTWR),.INCLKL(INCLKL),.INCRQ(INCRQ),.IQUIET(IQUIET),.LDDSTL(LDDSTL),.LDSRCL(LDSRCL),.SRCLTOH(SRCLTOH),.SRCRD(SRCRD),.SSWAP(SSWAP),.STOP(STOP),.UPDDSTL(UPDDSTL),.UPDSRCL(UPDSRCL),.UPSLDL(UPSLDL));//[STATE.NET:00046] STINNER_(ADDBACKL,ADDBLDL,DSTWR,IDSTWR,INCLKL,INCRQ,IQUIET,LDDSTL,LDSRCL,
                                                                                //[STATE.NET:00047]    SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDSRCL,UPSLDL) = STINNER(BORROW,CCLK,COLST,
                                                                                //[STATE.NET:00048]    CYCEND,CYCST,DAM1L,DSTEN,ICYCEND,ICYCST,ILDPATL,INHIB,INLP,INNER0,IUPDDSTL,
                                                                                //[STATE.NET:00049]    IUPDSRCL,LINDR,RES_0,RESET,RESUME,SAM1L,SRCEN,SRCENF,SRESET);

/* Memory interface state machine */

m_STMEM STMEM_ (.MasterClock(MasterClock),.ACKINT(ACKINT),.CCLK(CCLK),.COMCRQ(COMCRQ),.IDSTWR(IDSTWR),.INCRQ(INCRQ),.INHIB(INHIB),.PARCRQ(PARCRQ),.RESET(RESET),.RES_0(RES_0),.RES_1(RES_1),.WAITL(WAITL),.CYCEND(CYCEND),.CYCST(CYCST),.DATOEL(DATOEL),.ICYCEND(ICYCEND),.ICYCST(ICYCST),.INCYCL(INCYCL),.PCEN(PCEN),.UPDPCL(UPDPCL),.BMREQ(BMREQ),.BRD(BRD),.BWR(BWR),.BWORD(BWORD));//[STATE.NET:00053] STMEM_(CYCEND,CYCST,DATOEL,ICYCEND,ICYCST,INCYCL,PCEN,UPDPCL,BMREQ,BRD,BWR,
                                                                                //[STATE.NET:00054]    BWORD) = STMEM(ACKINT,CCLK,COMCRQ,IDSTWR,INCRQ,INHIB,PARCRQ,RESET,RES_0,
                                                                                //[STATE.NET:00055]    RES_1,WAITL);

/* State machine command registers */

m_CMDREGS CMDREGS_ (.MasterClock(MasterClock),.inD_1(inD_1),.inD_2(inD_2),.CCLK(CCLK),.CMDWRL(CMDWRL),.CONWRL(CONWRL),.ICNT_8(ICNT_8),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDMODL(LDMODL),.LDCMDL(LDCMDL),.RESET(RESET),.STOP(STOP),.STRD(STRD),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.COLST(COLST),.DSTEN(DSTEN),.DSTUP(DSTUP),.LINDR(LINDR),.PARRD(PARRD),.RES_0(RES_0),.RES_1(RES_1),.RESUME(RESUME),.RUN(RUN),.SRCEN(SRCEN),.SRCENF(SRCENF),.SRCUP(SRCUP),.SRESET(SRESET));//[STATE.NET:00059] CMDREGS_(D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
                                                                                //[STATE.NET:00060]    SRCENF,SRCUP,SRESET) = CMDREGS(D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,
                                                                                //[STATE.NET:00061]    ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDCMDL,RESET,STOP,STRD);

/* Inner loop length counter */

m_INNERCNT INNERCNT_ (.MasterClock(MasterClock),.CCLK(CCLK),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDINRL(LDINRL),.LDMODL(LDMODL),.LDICNTL(LDICNTL),.INCLKL(INCLKL),.RESET(RESET),.INNER0(INNER0),.ICNT_0(ICNT_0),.ICNT_1(ICNT_1),.ICNT_2(ICNT_2),.ICNT_3(ICNT_3),.ICNT_4(ICNT_4),.ICNT_5(ICNT_5),.ICNT_6(ICNT_6),.ICNT_7(ICNT_7),.ICNT_8(ICNT_8));//[STATE.NET:00065] INNERCNT_(INNER0,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
                                                                                //[STATE.NET:00066]    ICNT_8) = INNERCNT(CCLK,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDINRL,
                                                                                //[STATE.NET:00067]    LDMODL,LDICNTL,INCLKL,RESET);

/* Outer loop length counter */

m_OUTERCNT OUTERCNT_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.CCLK(CCLK),.ICNT_0(ICNT_0),.ICNT_1(ICNT_1),.ICNT_2(ICNT_2),.ICNT_3(ICNT_3),.ICNT_4(ICNT_4),.ICNT_5(ICNT_5),.ICNT_6(ICNT_6),.ICNT_7(ICNT_7),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.INCRDL(INCRDL),.LDOUTL(LDOUTL),.OTCLKL(OTCLKL),.OUTCRDL(OUTCRDL),.RESET(RESET),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv1_outD_1),.enD_1(drv1_enD_1),.outD_2(drv1_outD_2),.enD_2(drv1_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.OUTER0L(OUTER0L));//[STATE.NET:00071] OUTERCNT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OUTER0L) = OUTERCNT(D_0,D_1,D_2,D_3,
                                                                                //[STATE.NET:00072]    D_4,D_5,D_6,D_7,CCLK,ICNT_0,ICNT_1,ICNT_2,ICNT_3,ICNT_4,ICNT_5,ICNT_6,ICNT_7,
                                                                                //[STATE.NET:00073]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,LDOUTL,OTCLKL,OUTCRDL,RESET);

assign outD_0 = (drv0_outD_0 & drv0_enD_0);
assign enD_0 = drv0_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2;
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
endmodule                                                                       //[STATE.NET:00075] END MODULE;
