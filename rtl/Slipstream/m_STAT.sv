                                                                                //[STAT.NET:00001] COMPILE;
                                                                                //[STAT.NET:00002] DIRECTORY MASTER;
/********************************************************
*	stat-hdl					*
*	28/10/88					*
********************************************************/

/* 
This module contains the status,diagnostic and lcd registers in 
the SLIPSTREAM chip on the ACW
*/



module m_STAT                                                                   //[STAT.NET:00015] MODULE STAT;
(                                                                               //[STAT.NET:00015] MODULE STAT;

    input    MasterClock,
    input    inD_0,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_1,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_2,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_3,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_4,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_5,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_6,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    inD_7,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    RESETL_0,                                                          //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    WD_0,                                                              //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    WD_1,                                                              //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    WD_2,                                                              //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    WD_3,                                                              //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    WD_4,                                                              //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    STATL,                                                             //[STAT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,WD_2,WD_3,WD_4,STATL,
    input    DIAGL_0,                                                           //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    DIAG_1,                                                            //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    LCD,                                                               //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    LPSET,                                                             //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    PALL,                                                              //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    PSRAML,                                                            //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    FASTL,                                                             //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    input    XTALL,                                                             //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
                                                                                //[STAT.NET:00018]    DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL;
    output    outD_0, enD_0,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_1, enD_1,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_2, enD_2,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_3, enD_3,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_4, enD_4,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_5, enD_5,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_6, enD_6,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    outD_7, enD_7,                                                    //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    OPEN,                                                             //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    NTSC,                                                             //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    TESTENL,                                                          //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    PSUEDO,                                                           //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    VCEN,                                                             //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    TMODE,                                                            //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
    output    FAST,                                                             //[STAT.NET:00020]    FAST,TSTCLK,MO,DOEN;
    output    TSTCLK,                                                           //[STAT.NET:00020]    FAST,TSTCLK,MO,DOEN;
    output    MO,                                                               //[STAT.NET:00020]    FAST,TSTCLK,MO,DOEN;
    output    DOEN                                                              //[STAT.NET:00020]    FAST,TSTCLK,MO,DOEN;
);                                                                              //[STAT.NET:00015] MODULE STAT;
                                                                                //[STAT.NET:00021] LEVEL FUNCTION;
wire CLK;                                                                       //[STAT.NET:00026] CLK_(CLK) = N1A(XTALL);
wire RESET_0;                                                                   //[STAT.NET:00027] RESET_0_(RESET_0) = N1A(RESETL_0);
wire RESET_1;                                                                   //[STAT.NET:00028] RESETL_1_(RESET_1,RESETL_1) = FD4A(RESET_0,CLK,RESETL_0);
wire RESETL_1;                                                                  //[STAT.NET:00028] RESETL_1_(RESET_1,RESETL_1) = FD4A(RESET_0,CLK,RESETL_0);
wire TESTEN;                                                                    //[STAT.NET:00029] TESTEN_(TESTEN,TESTENL) = FD4A(RESET_1,CLK,RESETL_0);
wire STATIC;                                                                    //[STAT.NET:00033] PSUEDO_(STATIC,PSUEDO) = LD1A(PSRAML,RESET_0);
wire SLOW;                                                                      //[STAT.NET:00034] FAST_(SLOW,FAST) = LD1A(FASTL,RESET_0);
wire MODECLK;                                                                   //[STAT.NET:00039] MODECLK_(MODECLK) = ND2A(RESETL_0,DIAGL_0);
wire MODEL;                                                                     //[STAT.NET:00040] MODEL_(MODEL) = AO2A(RESET_1,PALL,TESTENL,WD_1);
wire PAL;                                                                       //[STAT.NET:00041] NTSC_(PAL,NTSC) = LD1A(MODEL,MODECLK);
wire OPENL;                                                                     //[STAT.NET:00045] OPEN_(OPEN,OPENL) = LD1A(WD_0,DIAG_1);
wire VCENL;                                                                     //[STAT.NET:00046] VCEN_(VCEN,VCENL) = LD1A(WD_2,DIAG_1);
wire TSTCLKL;                                                                   //[STAT.NET:00047] TSTCLK_(TSTCLK,TSTCLKL) = FD2A(WD_3,DIAGL_0,RESETL_0);
wire TMODEL;                                                                    //[STAT.NET:00048] TMODE_(TMODE,TMODEL) = LD1A(WD_4,DIAG_1);
wire MOL;                                                                       //[STAT.NET:00052] LCDD_(MO,MOL) = LD1A(WD_0,LCD);
wire DOENL;                                                                     //[STAT.NET:00053] DOEN_(DOEN,DOENL) = LD1A(WD_1,LCD);
wire LPSETL;                                                                    //[STAT.NET:00058] LPSETL_(LPSETL) = N1A(LPSET);
wire drv0_outD_0;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_0;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_1;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_1;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_2;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_2;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_3;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_3;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_4;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_4;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_5;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_5;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_6;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_6;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_outD_7;                                                               //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,
wire drv0_enD_7;                                                                //[STAT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,

/* delay reset to enable pal,psram and fast inputs */

assign CLK = ~XTALL;                                                            //[STAT.NET:00026] CLK_(CLK) = N1A(XTALL);
assign RESET_0 = ~RESETL_0;                                                     //[STAT.NET:00027] RESET_0_(RESET_0) = N1A(RESETL_0);
FD4A RESETL_1__inst (.MasterClock(MasterClock),.q(RESET_1),.qL(RESETL_1),.d(RESET_0),.clk(CLK),.sL(RESETL_0));//[STAT.NET:00028] RESETL_1_(RESET_1,RESETL_1) = FD4A(RESET_0,CLK,RESETL_0);
FD4A TESTEN__inst (.MasterClock(MasterClock),.q(TESTEN),.qL(TESTENL),.d(RESET_1),.clk(CLK),.sL(RESETL_0));//[STAT.NET:00029] TESTEN_(TESTEN,TESTENL) = FD4A(RESET_1,CLK,RESETL_0);

/* latch the screen ram type and processor speed */

LD1A PSUEDO__inst (.MasterClock(MasterClock),.q(STATIC),.qL(PSUEDO),.d(PSRAML),.en(RESET_0));//[STAT.NET:00033] PSUEDO_(STATIC,PSUEDO) = LD1A(PSRAML,RESET_0);
LD1A FAST__inst (.MasterClock(MasterClock),.q(SLOW),.qL(FAST),.d(FASTL),.en(RESET_0));//[STAT.NET:00034] FAST_(SLOW,FAST) = LD1A(FASTL,RESET_0);

/* latch the television mode */
/* NB this can also be written by the host */

assign MODECLK = ~(RESETL_0 & DIAGL_0);                                         //[STAT.NET:00039] MODECLK_(MODECLK) = ND2A(RESETL_0,DIAGL_0);
assign MODEL = ~((RESET_1 & PALL)|(TESTENL & WD_1));                            //[STAT.NET:00040] MODEL_(MODEL) = AO2A(RESET_1,PALL,TESTENL,WD_1);
LD1A NTSC__inst (.MasterClock(MasterClock),.q(PAL),.qL(NTSC),.d(MODEL),.en(MODECLK));//[STAT.NET:00041] NTSC_(PAL,NTSC) = LD1A(MODEL,MODECLK);

/* the other bits of the diagnostics register */

LD1A OPEN__inst (.MasterClock(MasterClock),.q(OPEN),.qL(OPENL),.d(WD_0),.en(DIAG_1));//[STAT.NET:00045] OPEN_(OPEN,OPENL) = LD1A(WD_0,DIAG_1);
LD1A VCEN__inst (.MasterClock(MasterClock),.q(VCEN),.qL(VCENL),.d(WD_2),.en(DIAG_1));//[STAT.NET:00046] VCEN_(VCEN,VCENL) = LD1A(WD_2,DIAG_1);
FD2A TSTCLK__inst (.MasterClock(MasterClock),.q(TSTCLK),.qL(TSTCLKL),.d(WD_3),.clk(DIAGL_0),.rL(RESETL_0));//[STAT.NET:00047] TSTCLK_(TSTCLK,TSTCLKL) = FD2A(WD_3,DIAGL_0,RESETL_0);
LD1A TMODE__inst (.MasterClock(MasterClock),.q(TMODE),.qL(TMODEL),.d(WD_4),.en(DIAG_1));//[STAT.NET:00048] TMODE_(TMODE,TMODEL) = LD1A(WD_4,DIAG_1);

/* the 'LCD' register */

LD1A LCDD__inst (.MasterClock(MasterClock),.q(MO),.qL(MOL),.d(WD_0),.en(LCD));  //[STAT.NET:00052] LCDD_(MO,MOL) = LD1A(WD_0,LCD);
LD1A DOEN__inst (.MasterClock(MasterClock),.q(DOEN),.qL(DOENL),.d(WD_1),.en(LCD));//[STAT.NET:00053] DOEN_(DOEN,DOENL) = LD1A(WD_1,LCD);

/* the status register */

assign drv0_outD_0 = ~PAL; assign drv0_enD_0 = ~STATL;                          //[STAT.NET:00057] D_0_(D_0) = MACZINVB1(PAL,STATL);
assign LPSETL = ~LPSET;                                                         //[STAT.NET:00058] LPSETL_(LPSETL) = N1A(LPSET);
assign drv0_outD_1 = ~LPSETL; assign drv0_enD_1 = ~STATL;                       //[STAT.NET:00059] D_1_(D_1) = MACZINVB1(LPSETL,STATL);
assign drv0_outD_2 = ~SLOW; assign drv0_enD_2 = ~STATL;                         //[STAT.NET:00060] D_2_(D_2) = MACZINVB1(SLOW,STATL);
assign drv0_outD_3 = ~RESETL_1; assign drv0_enD_3 = ~STATL;                     //[STAT.NET:00061] D_3_(D_3) = MACZINVB1(RESETL_1,STATL);
assign drv0_outD_4 = ~RESETL_1; assign drv0_enD_4 = ~STATL;                     //[STAT.NET:00062] D_4_(D_4) = MACZINVB1(RESETL_1,STATL);
assign drv0_outD_5 = ~RESETL_1; assign drv0_enD_5 = ~STATL;                     //[STAT.NET:00063] D_5_(D_5) = MACZINVB1(RESETL_1,STATL);
assign drv0_outD_6 = ~RESETL_1; assign drv0_enD_6 = ~STATL;                     //[STAT.NET:00064] D_6_(D_6) = MACZINVB1(RESETL_1,STATL);
assign drv0_outD_7 = ~RESETL_1; assign drv0_enD_7 = ~STATL;                     //[STAT.NET:00065] D_7_(D_7) = MACZINVB1(RESETL_1,STATL);


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
endmodule                                                                       //[STAT.NET:00068] END MODULE;
