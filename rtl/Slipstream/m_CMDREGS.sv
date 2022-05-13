                                                                                //[CMDREGS.NET:00001] COMPILE;
                                                                                //[CMDREGS.NET:00002] DIRECTORY MASTER;
/****************************************************************************
cmdregs
15/10/88

Blitter state machine command registers

Parts of some of these registers lie elsewhere in the blitter.

****************************************************************************/


module m_CMDREGS                                                                //[CMDREGS.NET:00014] MODULE CMDREGS;
(                                                                               //[CMDREGS.NET:00014] MODULE CMDREGS;

    input    MasterClock,
    input    inD_1,                                                             //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    inD_2,                                                             //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    CCLK,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    CMDWRL,                                                            //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    CONWRL,                                                            //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ICNT_8,                                                            //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_0,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_1,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_2,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_3,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_4,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_5,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_6,                                                              //[CMDREGS.NET:00016] INPUTS	D_1,D_2,CCLK,CMDWRL,CONWRL,ICNT_8,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_7,                                                              //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    input    LDMODL,                                                            //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    input    LDCMDL,                                                            //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    input    RESET,                                                             //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    input    STOP,                                                              //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    input    STRD,                                                              //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
                                                                                //[CMDREGS.NET:00017]    ID_7,LDMODL,LDCMDL,RESET,STOP,STRD;
    output    outD_1, enD_1,                                                    //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    outD_2, enD_2,                                                    //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    COLST,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    DSTEN,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    DSTUP,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    LINDR,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    PARRD,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    RES_0,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    RES_1,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    RESUME,                                                           //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    RUN,                                                              //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    SRCEN,                                                            //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
    output    SRCENF,                                                           //[CMDREGS.NET:00019]    SRCENF,SRCUP,SRESET;
    output    SRCUP,                                                            //[CMDREGS.NET:00019]    SRCENF,SRCUP,SRESET;
    output    SRESET                                                            //[CMDREGS.NET:00019]    SRCENF,SRCUP,SRESET;
);                                                                              //[CMDREGS.NET:00014] MODULE CMDREGS;
                                                                                //[CMDREGS.NET:00020] LEVEL FUNCTION;
wire RESETL;                                                                    //[CMDREGS.NET:00023] RESETL_(RESETL) = N1A(RESET);
wire CMDLDL;                                                                    //[CMDREGS.NET:00028] CMDLDL_(CMDLDL) = AND2A(CMDWRL,LDCMDL);
wire SRESETL;                                                                   //[CMDREGS.NET:00029] COMR_0_(RUN,RUNL) = FD2A(ID_0,CMDLDL,SRESETL);
wire RUNL;                                                                      //[CMDREGS.NET:00029] COMR_0_(RUN,RUNL) = FD2A(ID_0,CMDLDL,SRESETL);
wire COLSTL;                                                                    //[CMDREGS.NET:00030] COMR_1_(COLST,COLSTL) = LD2A(ID_1,CMDLDL);
wire PARRDL;                                                                    //[CMDREGS.NET:00031] COMR_2_(PARRD,PARRDL) = LD2A(ID_2,CMDLDL);
wire SRCUPL;                                                                    //[CMDREGS.NET:00032] COMR_3_(SRCUP,SRCUPL) = LD2A(ID_3,CMDLDL);
wire DSTUPL;                                                                    //[CMDREGS.NET:00033] COMR_4_(DSTUP,DSTUPL) = LD2A(ID_4,CMDLDL);
wire SRCENL;                                                                    //[CMDREGS.NET:00034] COMR_5_(SRCEN,SRCENL) = LD2A(ID_5,CMDLDL);
wire DSTENL;                                                                    //[CMDREGS.NET:00035] COMR_6_(DSTEN,DSTENL) = LD2A(ID_6,CMDLDL);
wire SRCENFL;                                                                   //[CMDREGS.NET:00036] COMR_7_(SRCENF,SRCENFL) = LD2A(ID_7,CMDLDL);
wire LINDRL;                                                                    //[CMDREGS.NET:00040] MODL_3_(LINDR,LINDRL) = LD2A(ID_3,LDMODL);
wire RESL_0;                                                                    //[CMDREGS.NET:00041] MODL_5_(RES_0,RESL_0) = LD2A(ID_5,LDMODL);
wire RESL_1;                                                                    //[CMDREGS.NET:00042] MODL_6_(RES_1,RESL_1) = LD2A(ID_6,LDMODL);
wire RESCLRL;                                                                   //[CMDREGS.NET:00047] RESFF0_(RSM_0,RSML_0) = FD2A(ID_1,CONWRL,RESCLRL);
wire RSM_0;                                                                     //[CMDREGS.NET:00047] RESFF0_(RSM_0,RSML_0) = FD2A(ID_1,CONWRL,RESCLRL);
wire RSML_0;                                                                    //[CMDREGS.NET:00047] RESFF0_(RSM_0,RSML_0) = FD2A(ID_1,CONWRL,RESCLRL);
wire RSM_1;                                                                     //[CMDREGS.NET:00048] RESFF1_(RSM_1,RSML_1) = FD2A(RSM_0,CCLK,RESETL);
wire RSML_1;                                                                    //[CMDREGS.NET:00048] RESFF1_(RSM_1,RSML_1) = FD2A(RSM_0,CCLK,RESETL);
wire RSM_2;                                                                     //[CMDREGS.NET:00049] RESFF2_(RSM_2,RSML_2) = FD2A(RSM_1,CCLK,RESETL);
wire RSML_2;                                                                    //[CMDREGS.NET:00049] RESFF2_(RSM_2,RSML_2) = FD2A(RSM_1,CCLK,RESETL);
wire SRES_0;                                                                    //[CMDREGS.NET:00055] SRES0_(SRES_0,SRESL_0) = FD2A(ID_2,CONWRL,SRESETL);
wire SRESL_0;                                                                   //[CMDREGS.NET:00055] SRES0_(SRES_0,SRESL_0) = FD2A(ID_2,CONWRL,SRESETL);
wire SRES_1;                                                                    //[CMDREGS.NET:00056] SRES1_(SRES_1,SRESL_1) = FD2A(SRES_0,CCLK,RESETL);
wire SRESL_1;                                                                   //[CMDREGS.NET:00056] SRES1_(SRES_1,SRESL_1) = FD2A(SRES_0,CCLK,RESETL);
wire SRES_2;                                                                    //[CMDREGS.NET:00057] SRES2_(SRES_2,SRESL_2) = FD2A(SRES_1,CCLK,RESETL);
wire SRESL_2;                                                                   //[CMDREGS.NET:00057] SRES2_(SRES_2,SRESL_2) = FD2A(SRES_1,CCLK,RESETL);
wire SRES_3;                                                                    //[CMDREGS.NET:00058] SRES3_(SRES_3) = NR2A(SRESL_1,SRES_2);
wire drv0_outD_1;                                                               //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
wire drv0_enD_1;                                                                //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
wire drv0_outD_2;                                                               //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,
wire drv0_enD_2;                                                                //[CMDREGS.NET:00018] OUTPUTS	D_1,D_2,COLST,DSTEN,DSTUP,LINDR,PARRD,RES_0,RES_1,RESUME,RUN,SRCEN,

assign RESETL = ~RESET;                                                         //[CMDREGS.NET:00023] RESETL_(RESETL) = N1A(RESET);

/* Command Register, this is loaded by a program fetch or by an IO write
cycle.  */

assign CMDLDL = CMDWRL & LDCMDL;                                                //[CMDREGS.NET:00028] CMDLDL_(CMDLDL) = AND2A(CMDWRL,LDCMDL);
FD2A COMR_0__inst (.MasterClock(MasterClock),.q(RUN),.qL(RUNL),.d(ID_0),.clk(CMDLDL),.rL(SRESETL));//[CMDREGS.NET:00029] COMR_0_(RUN,RUNL) = FD2A(ID_0,CMDLDL,SRESETL);
LD2A COMR_1__inst (.MasterClock(MasterClock),.q(COLST),.qL(COLSTL),.d(ID_1),.en(CMDLDL));//[CMDREGS.NET:00030] COMR_1_(COLST,COLSTL) = LD2A(ID_1,CMDLDL);
LD2A COMR_2__inst (.MasterClock(MasterClock),.q(PARRD),.qL(PARRDL),.d(ID_2),.en(CMDLDL));//[CMDREGS.NET:00031] COMR_2_(PARRD,PARRDL) = LD2A(ID_2,CMDLDL);
LD2A COMR_3__inst (.MasterClock(MasterClock),.q(SRCUP),.qL(SRCUPL),.d(ID_3),.en(CMDLDL));//[CMDREGS.NET:00032] COMR_3_(SRCUP,SRCUPL) = LD2A(ID_3,CMDLDL);
LD2A COMR_4__inst (.MasterClock(MasterClock),.q(DSTUP),.qL(DSTUPL),.d(ID_4),.en(CMDLDL));//[CMDREGS.NET:00033] COMR_4_(DSTUP,DSTUPL) = LD2A(ID_4,CMDLDL);
LD2A COMR_5__inst (.MasterClock(MasterClock),.q(SRCEN),.qL(SRCENL),.d(ID_5),.en(CMDLDL));//[CMDREGS.NET:00034] COMR_5_(SRCEN,SRCENL) = LD2A(ID_5,CMDLDL);
LD2A COMR_6__inst (.MasterClock(MasterClock),.q(DSTEN),.qL(DSTENL),.d(ID_6),.en(CMDLDL));//[CMDREGS.NET:00035] COMR_6_(DSTEN,DSTENL) = LD2A(ID_6,CMDLDL);
LD2A COMR_7__inst (.MasterClock(MasterClock),.q(SRCENF),.qL(SRCENFL),.d(ID_7),.en(CMDLDL));//[CMDREGS.NET:00036] COMR_7_(SRCENF,SRCENFL) = LD2A(ID_7,CMDLDL);

/* Mode Register */

LD2A MODL_3__inst (.MasterClock(MasterClock),.q(LINDR),.qL(LINDRL),.d(ID_3),.en(LDMODL));//[CMDREGS.NET:00040] MODL_3_(LINDR,LINDRL) = LD2A(ID_3,LDMODL);
LD2A MODL_5__inst (.MasterClock(MasterClock),.q(RES_0),.qL(RESL_0),.d(ID_5),.en(LDMODL));//[CMDREGS.NET:00041] MODL_5_(RES_0,RESL_0) = LD2A(ID_5,LDMODL);
LD2A MODL_6__inst (.MasterClock(MasterClock),.q(RES_1),.qL(RESL_1),.d(ID_6),.en(LDMODL));//[CMDREGS.NET:00042] MODL_6_(RES_1,RESL_1) = LD2A(ID_6,LDMODL);

/* Blitter control register (part of) */

/* Resume is a pulse one tick wide produced when a 1 is written to bit 1 */
FD2A RESFF0__inst (.MasterClock(MasterClock),.q(RSM_0),.qL(RSML_0),.d(ID_1),.clk(CONWRL),.rL(RESCLRL));//[CMDREGS.NET:00047] RESFF0_(RSM_0,RSML_0) = FD2A(ID_1,CONWRL,RESCLRL);
FD2A RESFF1__inst (.MasterClock(MasterClock),.q(RSM_1),.qL(RSML_1),.d(RSM_0),.clk(CCLK),.rL(RESETL));//[CMDREGS.NET:00048] RESFF1_(RSM_1,RSML_1) = FD2A(RSM_0,CCLK,RESETL);
FD2A RESFF2__inst (.MasterClock(MasterClock),.q(RSM_2),.qL(RSML_2),.d(RSM_1),.clk(CCLK),.rL(RESETL));//[CMDREGS.NET:00049] RESFF2_(RSM_2,RSML_2) = FD2A(RSM_1,CCLK,RESETL);
assign RESUME = ~(RSML_1 | RSM_2);                                              //[CMDREGS.NET:00050] RESUME_(RESUME) = NR2A(RSML_1,RSM_2);
assign RESCLRL = ~(RSM_2 | RESET);                                              //[CMDREGS.NET:00051] RESCLR_(RESCLRL) = NR2A(RSM_2,RESET);

/* Sreset is a pulse one tick wide which is produced whenever a 1 is written
to the blitter control port on bit 2.  */
FD2A SRES0__inst (.MasterClock(MasterClock),.q(SRES_0),.qL(SRESL_0),.d(ID_2),.clk(CONWRL),.rL(SRESETL));//[CMDREGS.NET:00055] SRES0_(SRES_0,SRESL_0) = FD2A(ID_2,CONWRL,SRESETL);
FD2A SRES1__inst (.MasterClock(MasterClock),.q(SRES_1),.qL(SRESL_1),.d(SRES_0),.clk(CCLK),.rL(RESETL));//[CMDREGS.NET:00056] SRES1_(SRES_1,SRESL_1) = FD2A(SRES_0,CCLK,RESETL);
FD2A SRES2__inst (.MasterClock(MasterClock),.q(SRES_2),.qL(SRESL_2),.d(SRES_1),.clk(CCLK),.rL(RESETL));//[CMDREGS.NET:00057] SRES2_(SRES_2,SRESL_2) = FD2A(SRES_1,CCLK,RESETL);
assign SRES_3 = ~(SRESL_1 | SRES_2);                                            //[CMDREGS.NET:00058] SRES3_(SRES_3) = NR2A(SRESL_1,SRES_2);
assign SRESETL = ~(RESET | SRES_3);                                             //[CMDREGS.NET:00059] SRESETL_(SRESETL) = NR2A(RESET,SRES_3);
assign SRESET = ~SRESETL;                                                       //[CMDREGS.NET:00060] SRESET_(SRESET) = N1A(SRESETL);

/* Blitter status port (part of) */

assign drv0_outD_1 = STOP; assign drv0_enD_1 = STRD;                            //[CMDREGS.NET:00064] STAT_1_(D_1) = BTS4A(STOP,STRD);
assign drv0_outD_2 = ICNT_8; assign drv0_enD_2 = STRD;                          //[CMDREGS.NET:00065] STAT_2_(D_2) = BTS4A(ICNT_8,STRD);

assign outD_1 = (drv0_outD_1 & drv0_enD_1);
assign enD_1 = drv0_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2);
assign enD_2 = drv0_enD_2;
endmodule                                                                       //[CMDREGS.NET:00067] END MODULE;
