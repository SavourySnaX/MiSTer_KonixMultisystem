                                                                                //[STPARAM.NET:00001] COMPILE;
                                                                                //[STPARAM.NET:00002] DIRECTORY MASTER;
/****************************************************************************
stparam
15/10/88

State machine for the read parameters operation

This state machine controls the blitter  read parameters operation within
the outer loop.

****************************************************************************/


module m_STPARAM                                                                //[STPARAM.NET:00015] MODULE STPARAM;
(                                                                               //[STPARAM.NET:00015] MODULE STPARAM;

    input    MasterClock,
    input    CYCEND,                                                            //[STPARAM.NET:00017] INPUTS	CYCEND,ICYCEND,SRESET,CCLK,RDPAR;
    input    ICYCEND,                                                           //[STPARAM.NET:00017] INPUTS	CYCEND,ICYCEND,SRESET,CCLK,RDPAR;
    input    SRESET,                                                            //[STPARAM.NET:00017] INPUTS	CYCEND,ICYCEND,SRESET,CCLK,RDPAR;
    input    CCLK,                                                              //[STPARAM.NET:00017] INPUTS	CYCEND,ICYCEND,SRESET,CCLK,RDPAR;
    input    RDPAR,                                                             //[STPARAM.NET:00017] INPUTS	CYCEND,ICYCEND,SRESET,CCLK,RDPAR;
    output    PARCRQ,                                                           //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
    output    PARDN,                                                            //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
    output    LDINRL,                                                           //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
    output    LDPATL,                                                           //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
    output    LDSTPL,                                                           //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
    output    ILDPATL                                                           //[STPARAM.NET:00018] OUTPUTS	PARCRQ,PARDN,LDINRL,LDPATL,LDSTPL,ILDPATL;
);                                                                              //[STPARAM.NET:00015] MODULE STPARAM;
                                                                                //[STPARAM.NET:00019] LEVEL FUNCTION;
wire CYCENDL;                                                                   //[STPARAM.NET:00024] CYCENDL_(CYCENDL) = N1A(CYCEND);
wire SRESETL;                                                                   //[STPARAM.NET:00025] SRESETL_(SRESETL) = N1A(SRESET);
wire RPL_1;                                                                     //[STPARAM.NET:00029] IRP0T0_(RP0T_0) = ND3A(RPL_1,RPL_0,RDPAR);
wire RPL_0;                                                                     //[STPARAM.NET:00029] IRP0T0_(RP0T_0) = ND3A(RPL_1,RPL_0,RDPAR);
wire RP0T_0;                                                                    //[STPARAM.NET:00029] IRP0T0_(RP0T_0) = ND3A(RPL_1,RPL_0,RDPAR);
wire RP_0;                                                                      //[STPARAM.NET:00030] IRP0T1_(RP0T_1) = ND2A(RP_0,CYCENDL);
wire RP0T_1;                                                                    //[STPARAM.NET:00030] IRP0T1_(RP0T_1) = ND2A(RP_0,CYCENDL);
wire RP_1;                                                                      //[STPARAM.NET:00031] IRP0T2_(RP0T_2) = ND3A(RP_1,RPL_0,CYCEND);
wire RP0T_2;                                                                    //[STPARAM.NET:00031] IRP0T2_(RP0T_2) = ND3A(RP_1,RPL_0,CYCEND);
wire IRP_0;                                                                     //[STPARAM.NET:00032] IRP0GEN_(IRP_0) = ND3A(RP0T_0,RP0T_1,RP0T_2);
wire RP1T_0;                                                                    //[STPARAM.NET:00034] IRP1T0_(RP1T_0) = ND3A(RPL_1,RP_0,CYCEND);
wire RP1T_1;                                                                    //[STPARAM.NET:00035] IRP1T1_(RP1T_1) = ND2A(RP_1,RPL_0);
wire RP1T_2;                                                                    //[STPARAM.NET:00036] IRP1T2_(RP1T_2) = ND2A(RP_1,CYCENDL);
wire IRP_1;                                                                     //[STPARAM.NET:00037] IRP1GEN_(IRP_1) = ND3A(RP1T_0,RP1T_1,RP1T_2);
wire ILDINRL;                                                                   //[STPARAM.NET:00046] LDIDEC_(ILDINRL) = ND3A(RPL_1,RP_0,ICYCEND);
wire LDINR;                                                                     //[STPARAM.NET:00047] LDIGEN_(LDINRL,LDINR) = FD1A(ILDINRL,CCLK);
wire ILDSTPL;                                                                   //[STPARAM.NET:00048] LDSDEC_(ILDSTPL) = ND3A(RP_1,RPL_0,ICYCEND);
wire LDSTP;                                                                     //[STPARAM.NET:00049] LDSGEN_(LDSTPL,LDSTP) = FD1A(ILDSTPL,CCLK);
wire LDPAT;                                                                     //[STPARAM.NET:00051] LDPGEN_(LDPATL,LDPAT) = FD1A(ILDPATL,CCLK);
wire PARDNT;                                                                    //[STPARAM.NET:00054] PARDGEN_(PARDNT) = ND3A(RP_0,RP_1,ICYCEND);
wire PARDNL;                                                                    //[STPARAM.NET:00055] PARDN_(PARDNL,PARDN) = FD1A(PARDNT,CCLK);

/* Invert some inputs */

assign CYCENDL = ~CYCEND;                                                       //[STPARAM.NET:00024] CYCENDL_(CYCENDL) = N1A(CYCEND);
assign SRESETL = ~SRESET;                                                       //[STPARAM.NET:00025] SRESETL_(SRESETL) = N1A(SRESET);

/* Decode next state */

assign RP0T_0 = ~(RPL_1 & RPL_0 & RDPAR);                                       //[STPARAM.NET:00029] IRP0T0_(RP0T_0) = ND3A(RPL_1,RPL_0,RDPAR);
assign RP0T_1 = ~(RP_0 & CYCENDL);                                              //[STPARAM.NET:00030] IRP0T1_(RP0T_1) = ND2A(RP_0,CYCENDL);
assign RP0T_2 = ~(RP_1 & RPL_0 & CYCEND);                                       //[STPARAM.NET:00031] IRP0T2_(RP0T_2) = ND3A(RP_1,RPL_0,CYCEND);
assign IRP_0 = ~(RP0T_0 & RP0T_1 & RP0T_2);                                     //[STPARAM.NET:00032] IRP0GEN_(IRP_0) = ND3A(RP0T_0,RP0T_1,RP0T_2);

assign RP1T_0 = ~(RPL_1 & RP_0 & CYCEND);                                       //[STPARAM.NET:00034] IRP1T0_(RP1T_0) = ND3A(RPL_1,RP_0,CYCEND);
assign RP1T_1 = ~(RP_1 & RPL_0);                                                //[STPARAM.NET:00035] IRP1T1_(RP1T_1) = ND2A(RP_1,RPL_0);
assign RP1T_2 = ~(RP_1 & CYCENDL);                                              //[STPARAM.NET:00036] IRP1T2_(RP1T_2) = ND2A(RP_1,CYCENDL);
assign IRP_1 = ~(RP1T_0 & RP1T_1 & RP1T_2);                                     //[STPARAM.NET:00037] IRP1GEN_(IRP_1) = ND3A(RP1T_0,RP1T_1,RP1T_2);

/* The state latches */

FD2A RPLATCH_0__inst (.MasterClock(MasterClock),.q(RP_0),.qL(RPL_0),.d(IRP_0),.clk(CCLK),.rL(SRESETL));//[STPARAM.NET:00041] RPLATCH_0_(RP_0,RPL_0) = FD2A(IRP_0,CCLK,SRESETL);
FD2A RPLATCH_1__inst (.MasterClock(MasterClock),.q(RP_1),.qL(RPL_1),.d(IRP_1),.clk(CCLK),.rL(SRESETL));//[STPARAM.NET:00042] RPLATCH_1_(RP_1,RPL_1) = FD2A(IRP_1,CCLK,SRESETL);

/* Decode from the state */

assign ILDINRL = ~(RPL_1 & RP_0 & ICYCEND);                                     //[STPARAM.NET:00046] LDIDEC_(ILDINRL) = ND3A(RPL_1,RP_0,ICYCEND);
FD1A LDIGEN__inst (.MasterClock(MasterClock),.q(LDINRL),.qL(LDINR),.d(ILDINRL),.clk(CCLK));//[STPARAM.NET:00047] LDIGEN_(LDINRL,LDINR) = FD1A(ILDINRL,CCLK);
assign ILDSTPL = ~(RP_1 & RPL_0 & ICYCEND);                                     //[STPARAM.NET:00048] LDSDEC_(ILDSTPL) = ND3A(RP_1,RPL_0,ICYCEND);
FD1A LDSGEN__inst (.MasterClock(MasterClock),.q(LDSTPL),.qL(LDSTP),.d(ILDSTPL),.clk(CCLK));//[STPARAM.NET:00049] LDSGEN_(LDSTPL,LDSTP) = FD1A(ILDSTPL,CCLK);
assign ILDPATL = ~(RP_1 & RP_0 & ICYCEND);                                      //[STPARAM.NET:00050] LDPDEC_(ILDPATL) = ND3C(RP_1,RP_0,ICYCEND);
FD1A LDPGEN__inst (.MasterClock(MasterClock),.q(LDPATL),.qL(LDPAT),.d(ILDPATL),.clk(CCLK));//[STPARAM.NET:00051] LDPGEN_(LDPATL,LDPAT) = FD1A(ILDPATL,CCLK);

/* Pardn is generated synchronously to remove an asynchronous loop */
assign PARDNT = ~(RP_0 & RP_1 & ICYCEND);                                       //[STPARAM.NET:00054] PARDGEN_(PARDNT) = ND3A(RP_0,RP_1,ICYCEND);
FD1A PARDN__inst (.MasterClock(MasterClock),.q(PARDNL),.qL(PARDN),.d(PARDNT),.clk(CCLK));//[STPARAM.NET:00055] PARDN_(PARDNL,PARDN) = FD1A(PARDNT,CCLK);

/* Parcrq is active while the state machine is active.  This is a
look-ahead signal */
assign PARCRQ = IRP_0 | IRP_1;                                                  //[STPARAM.NET:00059] PARCGEN_(PARCRQ) = OR2A(IRP_0,IRP_1);

endmodule                                                                       //[STPARAM.NET:00061] END MODULE;
