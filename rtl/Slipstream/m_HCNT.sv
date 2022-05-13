                                                                                //[HCNT.NET:00001] COMPILE;
                                                                                //[HCNT.NET:00002] DIRECTORY MASTER;
/********************************************************
*	hcnt-hdl					*
*	7/11/88						*
********************************************************/

/*
This module is the horizontal timebase in the SLIPSTREAM chip on the ACW
*/




module m_HCNT                                                                   //[HCNT.NET:00015] MODULE HCNT;
(                                                                               //[HCNT.NET:00015] MODULE HCNT;

    input    MasterClock,
    input    inD_0,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_1,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_2,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_3,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_4,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_5,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_6,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_7,                                                             //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    RESETL_0,                                                          //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    CLK,                                                               //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_0,                                                              //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_1,                                                              //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_2,                                                              //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_3,                                                              //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_4,                                                              //[HCNT.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_5,                                                              //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    WD_6,                                                              //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    WD_7,                                                              //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    HCNTL,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    HCNTH,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    LPL_0,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    LPL_1,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    LP,                                                                //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    HLOCK,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    NTSC,                                                              //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    GENLOCK,                                                           //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    OPEN,                                                              //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    input    NEXTV,                                                             //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
                                                                                //[HCNT.NET:00018]    WD_5,WD_6,WD_7,HCNTL,HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV;
    output    outD_0, enD_0,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_1, enD_1,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_2, enD_2,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_3, enD_3,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_4, enD_4,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_5, enD_5,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_6, enD_6,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    outD_7, enD_7,                                                    //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HVACTIVE,                                                         //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HSYNC,                                                            //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HC_0,                                                             //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HC_1,                                                             //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HC_2,                                                             //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HC_3,                                                             //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
    output    HBORDER,                                                          //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    HBLANKING,                                                        //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    HVSYNC,                                                           //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    LPSET,                                                            //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    LPCLK,                                                            //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    HD1,                                                              //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    HVHOLD,                                                           //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
    output    HINT                                                              //[HCNT.NET:00020]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT;
);                                                                              //[HCNT.NET:00015] MODULE HCNT;
                                                                                //[HCNT.NET:00021] LEVEL FUNCTION;
wire RESET;                                                                     //[HCNT.NET:00026] RESET_(RESET) = N1A(RESETL_0);
wire RESETL;                                                                    //[HCNT.NET:00027] RESETL_(RESETL) = N1C(RESET);
wire HCNT_8;                                                                    //[HCNT.NET:00031] HCNT_8_(HCNT_8,HCNTB_8) = LD1A(WD_0,HCNTH);
wire HCNTB_8;                                                                   //[HCNT.NET:00031] HCNT_8_(HCNT_8,HCNTB_8) = LD1A(WD_0,HCNTH);
wire HCNT_9;                                                                    //[HCNT.NET:00032] HCNT_9_(HCNT_9,HCNTB_9) = LD1A(WD_1,HCNTH);
wire HCNTB_9;                                                                   //[HCNT.NET:00032] HCNT_9_(HCNT_9,HCNTB_9) = LD1A(WD_1,HCNTH);
wire HCNTLBL;                                                                   //[HCNT.NET:00036] HCNTLBL_(HCNTLBL) = N1C(HCNTL);
wire NEXTH;                                                                     //[HCNT.NET:00037] Q_0_(HCI_0,HCIB_0) = SYNCNT0(WD_0,CLK,NEXTH,HCNTLBL);
wire HCI_0;                                                                     //[HCNT.NET:00037] Q_0_(HCI_0,HCIB_0) = SYNCNT0(WD_0,CLK,NEXTH,HCNTLBL);
wire HCIB_0;                                                                    //[HCNT.NET:00037] Q_0_(HCI_0,HCIB_0) = SYNCNT0(WD_0,CLK,NEXTH,HCNTLBL);
wire HCI_1;                                                                     //[HCNT.NET:00038] Q_1_(HCI_1,HCIB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTH,HCNTLBL,HCI_0);
wire HCIB_1;                                                                    //[HCNT.NET:00038] Q_1_(HCI_1,HCIB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTH,HCNTLBL,HCI_0);
wire CO_1;                                                                      //[HCNT.NET:00038] Q_1_(HCI_1,HCIB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTH,HCNTLBL,HCI_0);
wire HCI_2;                                                                     //[HCNT.NET:00039] Q_2_(HCI_2,HCIB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTH,HCNTLBL,CO_1);
wire HCIB_2;                                                                    //[HCNT.NET:00039] Q_2_(HCI_2,HCIB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTH,HCNTLBL,CO_1);
wire CO_2;                                                                      //[HCNT.NET:00039] Q_2_(HCI_2,HCIB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTH,HCNTLBL,CO_1);
wire HCI_3;                                                                     //[HCNT.NET:00040] Q_3_(HCI_3,HCIB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTH,HCNTLBL,CO_2);
wire HCIB_3;                                                                    //[HCNT.NET:00040] Q_3_(HCI_3,HCIB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTH,HCNTLBL,CO_2);
wire CO_3;                                                                      //[HCNT.NET:00040] Q_3_(HCI_3,HCIB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTH,HCNTLBL,CO_2);
wire HCI_4;                                                                     //[HCNT.NET:00041] Q_4_(HCI_4,HCIB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTH,HCNTLBL,CO_3);
wire HCIB_4;                                                                    //[HCNT.NET:00041] Q_4_(HCI_4,HCIB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTH,HCNTLBL,CO_3);
wire CO_4;                                                                      //[HCNT.NET:00041] Q_4_(HCI_4,HCIB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTH,HCNTLBL,CO_3);
wire HCI_5;                                                                     //[HCNT.NET:00042] Q_5_(HCI_5,HCIB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTH,HCNTLBL,CO_4);
wire HCIB_5;                                                                    //[HCNT.NET:00042] Q_5_(HCI_5,HCIB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTH,HCNTLBL,CO_4);
wire CO_5;                                                                      //[HCNT.NET:00042] Q_5_(HCI_5,HCIB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTH,HCNTLBL,CO_4);
wire HCI_6;                                                                     //[HCNT.NET:00043] Q_6_(HCI_6,HCIB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTH,HCNTLBL,CO_5);
wire HCIB_6;                                                                    //[HCNT.NET:00043] Q_6_(HCI_6,HCIB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTH,HCNTLBL,CO_5);
wire CO_6;                                                                      //[HCNT.NET:00043] Q_6_(HCI_6,HCIB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTH,HCNTLBL,CO_5);
wire HCI_7;                                                                     //[HCNT.NET:00044] Q_7_(HCI_7,HCIB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTH,HCNTLBL,CO_6);
wire HCIB_7;                                                                    //[HCNT.NET:00044] Q_7_(HCI_7,HCIB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTH,HCNTLBL,CO_6);
wire CO_7;                                                                      //[HCNT.NET:00044] Q_7_(HCI_7,HCIB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTH,HCNTLBL,CO_6);
wire HCI_8;                                                                     //[HCNT.NET:00045] Q_8_(HCI_8,HCIB_8,CO_8) = SYNCNT(HCNT_8,CLK,NEXTH,HCNTLBL,CO_7);
wire HCIB_8;                                                                    //[HCNT.NET:00045] Q_8_(HCI_8,HCIB_8,CO_8) = SYNCNT(HCNT_8,CLK,NEXTH,HCNTLBL,CO_7);
wire CO_8;                                                                      //[HCNT.NET:00045] Q_8_(HCI_8,HCIB_8,CO_8) = SYNCNT(HCNT_8,CLK,NEXTH,HCNTLBL,CO_7);
wire HCI_9;                                                                     //[HCNT.NET:00046] Q_9_(HCI_9,HCIB_9,CO_9) = SYNCNT(HCNT_9,CLK,NEXTH,HCNTLBL,CO_8);
wire HCIB_9;                                                                    //[HCNT.NET:00046] Q_9_(HCI_9,HCIB_9,CO_9) = SYNCNT(HCNT_9,CLK,NEXTH,HCNTLBL,CO_8);
wire CO_9;                                                                      //[HCNT.NET:00046] Q_9_(HCI_9,HCIB_9,CO_9) = SYNCNT(HCNT_9,CLK,NEXTH,HCNTLBL,CO_8);
wire HC_4;                                                                      //[HCNT.NET:00051] HC_4_(HC_4) = N1C(HCIB_4);
wire HC_5;                                                                      //[HCNT.NET:00052] HC_5_(HC_5) = N1C(HCIB_5);
wire HC_6;                                                                      //[HCNT.NET:00053] HC_6_(HC_6) = N1C(HCIB_6);
wire HC_7;                                                                      //[HCNT.NET:00054] HC_7_(HC_7) = N1C(HCIB_7);
wire HC_8;                                                                      //[HCNT.NET:00055] HC_8_(HC_8) = N1C(HCIB_8);
wire HC_9;                                                                      //[HCNT.NET:00056] HC_9_(HC_9) = N1C(HCIB_9);
wire HCB_0;                                                                     //[HCNT.NET:00057] HCB_0_(HCB_0) = N1C(HCI_0);
wire HCB_1;                                                                     //[HCNT.NET:00058] HCB_1_(HCB_1) = N1C(HCI_1);
wire HCB_2;                                                                     //[HCNT.NET:00059] HCB_2_(HCB_2) = N1C(HCI_2);
wire HCB_3;                                                                     //[HCNT.NET:00060] HCB_3_(HCB_3) = N1C(HCI_3);
wire HCB_4;                                                                     //[HCNT.NET:00061] HCB_4_(HCB_4) = N1C(HCI_4);
wire HCB_5;                                                                     //[HCNT.NET:00062] HCB_5_(HCB_5) = N1C(HCI_5);
wire HCB_6;                                                                     //[HCNT.NET:00063] HCB_6_(HCB_6) = N1C(HCI_6);
wire HCB_7;                                                                     //[HCNT.NET:00064] HCB_7_(HCB_7) = N1C(HCI_7);
wire HCB_8;                                                                     //[HCNT.NET:00065] HCB_8_(HCB_8) = N1C(HCI_8);
wire HCB_9;                                                                     //[HCNT.NET:00066] HCB_9_(HCB_9) = N1C(HCI_9);
wire RES;                                                                       //[HCNT.NET:00075] RES_(RES) = N1A(RESETL);
wire LPD;                                                                       //[HCNT.NET:00076] LPD_(LPD,LPDB) = FD1A(LP,CLK);
wire LPDB;                                                                      //[HCNT.NET:00076] LPD_(LPD,LPDB) = FD1A(LP,CLK);
wire LPJ;                                                                       //[HCNT.NET:00080] LPJ_(LPJ) = NR3A(LPDB,LPSET,RES);
wire LPQB;                                                                      //[HCNT.NET:00081] LPSET_(LPSET,LPQB) = JK(LPJ,NEXTV,RES,CLK);
wire LPIL;                                                                      //[HCNT.NET:00085] LPIL_(LPIL) = NR2A(LPJ,OPEN);
wire HD68;                                                                      //[HCNT.NET:00112] HD68_(HD68) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HCB_5,HCB_4,HCB_3,HC_2,HCB_1,
wire HD103;                                                                     //[HCNT.NET:00115] HD103_(HD103) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HCB_3,HC_2,HC_1,
wire HD111;                                                                     //[HCNT.NET:00118] HD111_(HD111) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HC_3,HC_2,HC_1,
wire HD119;                                                                     //[HCNT.NET:00121] HD119_(HD119) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HC_1,
wire HD623;                                                                     //[HCNT.NET:00124] HD623_(HD623) = AND11(RESETL,HC_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HC_3,HC_2,HC_1,
wire HD631;                                                                     //[HCNT.NET:00127] HD631_(HD631) = AND11(RESETL,HC_9,HCB_8,HCB_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HC_1,
wire HD643;                                                                     //[HCNT.NET:00130] HD643_(HD643) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HCB_5,HCB_4,HCB_3,HCB_2,HC_1,
wire HD682;                                                                     //[HCNT.NET:00133] HD682_(HD682) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HC_5,HCB_4,HC_3,HCB_2,HC_1,
wire BIT0;                                                                      //[HCNT.NET:00137]    BIT0);
wire HD700;                                                                     //[HCNT.NET:00136] HD700_(HD700) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HC_5,HC_4,HC_3,HC_2,HCB_1,
wire HD756;                                                                     //[HCNT.NET:00139] HD756_(HD756) = AND11(RESETL,HC_9,HCB_8,HC_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HCB_1,
wire PAL;                                                                       //[HCNT.NET:00144] PAL_(PAL) = N1A(NTSC);
wire HD756L;                                                                    //[HCNT.NET:00151] HD756L_(HD756L) = N1A(HD756);
wire HLOCKD;                                                                    //[HCNT.NET:00152] HLOCKD_(HLOCKD,HLOCKDL) = FD2A(HLOCK,CLK,RESETL);
wire HLOCKDL;                                                                   //[HCNT.NET:00152] HLOCKD_(HLOCKD,HLOCKDL) = FD2A(HLOCK,CLK,RESETL);
wire HLOCKL;                                                                    //[HCNT.NET:00153] HLOCKL_(HLOCKL) = ND2A(GENLOCK,HLOCKD);
wire HSYNCD;                                                                    //[HCNT.NET:00158] HSYNCDL_(HSYNCD,HSYNCDL) = JK(HD700,NEXTH,RES,CLK);
wire HSYNCDL;                                                                   //[HCNT.NET:00158] HSYNCDL_(HSYNCD,HSYNCDL) = JK(HD700,NEXTH,RES,CLK);
wire HVSYNCL;                                                                   //[HCNT.NET:00163] HVSYNC_(HVSYNC,HVSYNCL) = JK(HD700,HD643,RES,CLK);
wire HBORDERL;                                                                  //[HCNT.NET:00164] HBORDERL_(HBORDER,HBORDERL) = JK(HD631,HD119,RES,CLK);
wire HBLANKINGL;                                                                //[HCNT.NET:00165] HBLANKING_(HBLANKING,HBLANKINGL) = JK(HD682,HD68,RES,CLK);
wire HVACTIVEL;                                                                 //[HCNT.NET:00169] HVACTIVE_(HVACTIVE,HVACTIVEL) = FJK2A(HD111,HD623,CLK,RESETL);
wire HVHOLDL;                                                                   //[HCNT.NET:00175] HVHOLD_(HVHOLD,HVHOLDL) = JK(HD103,HD623,RES,CLK);
wire drv0_outD_0;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_0;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_0;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_0;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_1;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_1;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_1;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_1;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_2;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_2;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_2;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_2;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_3;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_3;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_3;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_3;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_4;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_4;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_4;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_4;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_5;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_5;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_5;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_5;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_6;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_6;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_6;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_6;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_outD_7;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv0_enD_7;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_outD_7;                                                               //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
wire drv1_enD_7;                                                                //[HCNT.NET:00019] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,

/* buffer the clock and reset */

assign RESET = ~RESETL_0;                                                       //[HCNT.NET:00026] RESET_(RESET) = N1A(RESETL_0);
assign RESETL = ~RESET;                                                         //[HCNT.NET:00027] RESETL_(RESETL) = N1C(RESET);

/* latch the high bits of the horizontal count */

LD1A HCNT_8__inst (.MasterClock(MasterClock),.q(HCNT_8),.qL(HCNTB_8),.d(WD_0),.en(HCNTH));//[HCNT.NET:00031] HCNT_8_(HCNT_8,HCNTB_8) = LD1A(WD_0,HCNTH);
LD1A HCNT_9__inst (.MasterClock(MasterClock),.q(HCNT_9),.qL(HCNTB_9),.d(WD_1),.en(HCNTH));//[HCNT.NET:00032] HCNT_9_(HCNT_9,HCNTB_9) = LD1A(WD_1,HCNTH);

/* Now the line counter */

assign HCNTLBL = ~HCNTL;                                                        //[HCNT.NET:00036] HCNTLBL_(HCNTLBL) = N1C(HCNTL);
m_SYNCNT0 Q_0_ (.MasterClock(MasterClock),.D(WD_0),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.Q(HCI_0),.QB(HCIB_0));//[HCNT.NET:00037] Q_0_(HCI_0,HCIB_0) = SYNCNT0(WD_0,CLK,NEXTH,HCNTLBL);
m_SYNCNT Q_1_ (.MasterClock(MasterClock),.D(WD_1),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(HCI_0),.Q(HCI_1),.QB(HCIB_1),.CO(CO_1));//[HCNT.NET:00038] Q_1_(HCI_1,HCIB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTH,HCNTLBL,HCI_0);
m_SYNCNT Q_2_ (.MasterClock(MasterClock),.D(WD_2),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_1),.Q(HCI_2),.QB(HCIB_2),.CO(CO_2));//[HCNT.NET:00039] Q_2_(HCI_2,HCIB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTH,HCNTLBL,CO_1);
m_SYNCNT Q_3_ (.MasterClock(MasterClock),.D(WD_3),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_2),.Q(HCI_3),.QB(HCIB_3),.CO(CO_3));//[HCNT.NET:00040] Q_3_(HCI_3,HCIB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTH,HCNTLBL,CO_2);
m_SYNCNT Q_4_ (.MasterClock(MasterClock),.D(WD_4),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_3),.Q(HCI_4),.QB(HCIB_4),.CO(CO_4));//[HCNT.NET:00041] Q_4_(HCI_4,HCIB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTH,HCNTLBL,CO_3);
m_SYNCNT Q_5_ (.MasterClock(MasterClock),.D(WD_5),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_4),.Q(HCI_5),.QB(HCIB_5),.CO(CO_5));//[HCNT.NET:00042] Q_5_(HCI_5,HCIB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTH,HCNTLBL,CO_4);
m_SYNCNT Q_6_ (.MasterClock(MasterClock),.D(WD_6),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_5),.Q(HCI_6),.QB(HCIB_6),.CO(CO_6));//[HCNT.NET:00043] Q_6_(HCI_6,HCIB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTH,HCNTLBL,CO_5);
m_SYNCNT Q_7_ (.MasterClock(MasterClock),.D(WD_7),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_6),.Q(HCI_7),.QB(HCIB_7),.CO(CO_7));//[HCNT.NET:00044] Q_7_(HCI_7,HCIB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTH,HCNTLBL,CO_6);
m_SYNCNT Q_8_ (.MasterClock(MasterClock),.D(HCNT_8),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_7),.Q(HCI_8),.QB(HCIB_8),.CO(CO_8));//[HCNT.NET:00045] Q_8_(HCI_8,HCIB_8,CO_8) = SYNCNT(HCNT_8,CLK,NEXTH,HCNTLBL,CO_7);
m_SYNCNT Q_9_ (.MasterClock(MasterClock),.D(HCNT_9),.CLK(CLK),.CLR(NEXTH),.LDL(HCNTLBL),.CI(CO_8),.Q(HCI_9),.QB(HCIB_9),.CO(CO_9));//[HCNT.NET:00046] Q_9_(HCI_9,HCIB_9,CO_9) = SYNCNT(HCNT_9,CLK,NEXTH,HCNTLBL,CO_8);
assign HC_0 = ~HCIB_0;                                                          //[HCNT.NET:00047] HC_0_(HC_0) = N1C(HCIB_0);
assign HC_1 = ~HCIB_1;                                                          //[HCNT.NET:00048] HC_1_(HC_1) = N1C(HCIB_1);
assign HC_2 = ~HCIB_2;                                                          //[HCNT.NET:00049] HC_2_(HC_2) = N1C(HCIB_2);
assign HC_3 = ~HCIB_3;                                                          //[HCNT.NET:00050] HC_3_(HC_3) = N1C(HCIB_3);
assign HC_4 = ~HCIB_4;                                                          //[HCNT.NET:00051] HC_4_(HC_4) = N1C(HCIB_4);
assign HC_5 = ~HCIB_5;                                                          //[HCNT.NET:00052] HC_5_(HC_5) = N1C(HCIB_5);
assign HC_6 = ~HCIB_6;                                                          //[HCNT.NET:00053] HC_6_(HC_6) = N1C(HCIB_6);
assign HC_7 = ~HCIB_7;                                                          //[HCNT.NET:00054] HC_7_(HC_7) = N1C(HCIB_7);
assign HC_8 = ~HCIB_8;                                                          //[HCNT.NET:00055] HC_8_(HC_8) = N1C(HCIB_8);
assign HC_9 = ~HCIB_9;                                                          //[HCNT.NET:00056] HC_9_(HC_9) = N1C(HCIB_9);
assign HCB_0 = ~HCI_0;                                                          //[HCNT.NET:00057] HCB_0_(HCB_0) = N1C(HCI_0);
assign HCB_1 = ~HCI_1;                                                          //[HCNT.NET:00058] HCB_1_(HCB_1) = N1C(HCI_1);
assign HCB_2 = ~HCI_2;                                                          //[HCNT.NET:00059] HCB_2_(HCB_2) = N1C(HCI_2);
assign HCB_3 = ~HCI_3;                                                          //[HCNT.NET:00060] HCB_3_(HCB_3) = N1C(HCI_3);
assign HCB_4 = ~HCI_4;                                                          //[HCNT.NET:00061] HCB_4_(HCB_4) = N1C(HCI_4);
assign HCB_5 = ~HCI_5;                                                          //[HCNT.NET:00062] HCB_5_(HCB_5) = N1C(HCI_5);
assign HCB_6 = ~HCI_6;                                                          //[HCNT.NET:00063] HCB_6_(HCB_6) = N1C(HCI_6);
assign HCB_7 = ~HCI_7;                                                          //[HCNT.NET:00064] HCB_7_(HCB_7) = N1C(HCI_7);
assign HCB_8 = ~HCI_8;                                                          //[HCNT.NET:00065] HCB_8_(HCB_8) = N1C(HCI_8);
assign HCB_9 = ~HCI_9;                                                          //[HCNT.NET:00066] HCB_9_(HCB_9) = N1C(HCI_9);

/* The following logic produces a pulse on lpj the the first time lp is
asserted each frame. This signal latches the current counter state.
The signal 'open' opens the light pen latches so that the counter can
be read */

/* sample the signal */

assign RES = ~RESETL;                                                           //[HCNT.NET:00075] RES_(RES) = N1A(RESETL);
FD1A LPD__inst (.MasterClock(MasterClock),.q(LPD),.qL(LPDB),.d(LP),.clk(CLK));  //[HCNT.NET:00076] LPD_(LPD,LPDB) = FD1A(LP,CLK);

/* lpj sets the latch */

assign LPJ = ~(LPDB | LPSET | RES);                                             //[HCNT.NET:00080] LPJ_(LPJ) = NR3A(LPDB,LPSET,RES);
m_JK LPSET_ (.MasterClock(MasterClock),.J(LPJ),.K(NEXTV),.R(RES),.CLK(CLK),.Q(LPSET),.QB(LPQB));//[HCNT.NET:00081] LPSET_(LPSET,LPQB) = JK(LPJ,NEXTV,RES,CLK);

/* the latches are opened by lpj or 'open' , this will latch the next count*/

assign LPIL = ~(LPJ | OPEN);                                                    //[HCNT.NET:00085] LPIL_(LPIL) = NR2A(LPJ,OPEN);
assign LPCLK = ~LPIL;                                                           //[HCNT.NET:00086] LPCLK_(LPCLK) = N1C(LPIL);

wire DL_0__drv0_outD_0,DL_0__drv0_outD_0L; LD1A DL_0__inst (.MasterClock(MasterClock), .q(DL_0__drv0_outD_0),.qL(DL_0__drv0_outD_0L),.d(HCB_0),.en(LPCLK)); assign drv0_outD_0 = ~DL_0__drv0_outD_0; assign drv0_enD_0 = ~LPL_0; //[HCNT.NET:00088] DL_0_(D_0) = ZTLATCH1(D_0,HCB_0,LPCLK,LPL_0);
wire DL_1__drv0_outD_1,DL_1__drv0_outD_1L; LD1A DL_1__inst (.MasterClock(MasterClock), .q(DL_1__drv0_outD_1),.qL(DL_1__drv0_outD_1L),.d(HCB_1),.en(LPCLK)); assign drv0_outD_1 = ~DL_1__drv0_outD_1; assign drv0_enD_1 = ~LPL_0; //[HCNT.NET:00089] DL_1_(D_1) = ZTLATCH1(D_1,HCB_1,LPCLK,LPL_0);
wire DL_2__drv0_outD_2,DL_2__drv0_outD_2L; LD1A DL_2__inst (.MasterClock(MasterClock), .q(DL_2__drv0_outD_2),.qL(DL_2__drv0_outD_2L),.d(HCB_2),.en(LPCLK)); assign drv0_outD_2 = ~DL_2__drv0_outD_2; assign drv0_enD_2 = ~LPL_0; //[HCNT.NET:00090] DL_2_(D_2) = ZTLATCH1(D_2,HCB_2,LPCLK,LPL_0);
wire DL_3__drv0_outD_3,DL_3__drv0_outD_3L; LD1A DL_3__inst (.MasterClock(MasterClock), .q(DL_3__drv0_outD_3),.qL(DL_3__drv0_outD_3L),.d(HCB_3),.en(LPCLK)); assign drv0_outD_3 = ~DL_3__drv0_outD_3; assign drv0_enD_3 = ~LPL_0; //[HCNT.NET:00091] DL_3_(D_3) = ZTLATCH1(D_3,HCB_3,LPCLK,LPL_0);
wire DL_4__drv0_outD_4,DL_4__drv0_outD_4L; LD1A DL_4__inst (.MasterClock(MasterClock), .q(DL_4__drv0_outD_4),.qL(DL_4__drv0_outD_4L),.d(HCB_4),.en(LPCLK)); assign drv0_outD_4 = ~DL_4__drv0_outD_4; assign drv0_enD_4 = ~LPL_0; //[HCNT.NET:00092] DL_4_(D_4) = ZTLATCH1(D_4,HCB_4,LPCLK,LPL_0);
wire DL_5__drv0_outD_5,DL_5__drv0_outD_5L; LD1A DL_5__inst (.MasterClock(MasterClock), .q(DL_5__drv0_outD_5),.qL(DL_5__drv0_outD_5L),.d(HCB_5),.en(LPCLK)); assign drv0_outD_5 = ~DL_5__drv0_outD_5; assign drv0_enD_5 = ~LPL_0; //[HCNT.NET:00093] DL_5_(D_5) = ZTLATCH1(D_5,HCB_5,LPCLK,LPL_0);
wire DL_6__drv0_outD_6,DL_6__drv0_outD_6L; LD1A DL_6__inst (.MasterClock(MasterClock), .q(DL_6__drv0_outD_6),.qL(DL_6__drv0_outD_6L),.d(HCB_6),.en(LPCLK)); assign drv0_outD_6 = ~DL_6__drv0_outD_6; assign drv0_enD_6 = ~LPL_0; //[HCNT.NET:00094] DL_6_(D_6) = ZTLATCH1(D_6,HCB_6,LPCLK,LPL_0);
wire DL_7__drv0_outD_7,DL_7__drv0_outD_7L; LD1A DL_7__inst (.MasterClock(MasterClock), .q(DL_7__drv0_outD_7),.qL(DL_7__drv0_outD_7L),.d(HCB_7),.en(LPCLK)); assign drv0_outD_7 = ~DL_7__drv0_outD_7; assign drv0_enD_7 = ~LPL_0; //[HCNT.NET:00095] DL_7_(D_7) = ZTLATCH1(D_7,HCB_7,LPCLK,LPL_0);
wire DH_0__drv1_outD_0,DH_0__drv1_outD_0L; LD1A DH_0__inst (.MasterClock(MasterClock), .q(DH_0__drv1_outD_0),.qL(DH_0__drv1_outD_0L),.d(HCB_8),.en(LPCLK)); assign drv1_outD_0 = ~DH_0__drv1_outD_0; assign drv1_enD_0 = ~LPL_1; //[HCNT.NET:00096] DH_0_(D_0) = ZTLATCH1(D_0,HCB_8,LPCLK,LPL_1);
wire DH_1__drv1_outD_1,DH_1__drv1_outD_1L; LD1A DH_1__inst (.MasterClock(MasterClock), .q(DH_1__drv1_outD_1),.qL(DH_1__drv1_outD_1L),.d(HCB_9),.en(LPCLK)); assign drv1_outD_1 = ~DH_1__drv1_outD_1; assign drv1_enD_1 = ~LPL_1; //[HCNT.NET:00097] DH_1_(D_1) = ZTLATCH1(D_1,HCB_9,LPCLK,LPL_1);
assign drv1_outD_2 = ~RESETL; assign drv1_enD_2 = ~LPL_1;                       //[HCNT.NET:00098] DH_2_(D_2) = MACZINVB1(RESETL,LPL_1);
assign drv1_outD_3 = ~RESETL; assign drv1_enD_3 = ~LPL_1;                       //[HCNT.NET:00099] DH_3_(D_3) = MACZINVB1(RESETL,LPL_1);
assign drv1_outD_4 = ~RESETL; assign drv1_enD_4 = ~LPL_1;                       //[HCNT.NET:00100] DH_4_(D_4) = MACZINVB1(RESETL,LPL_1);
assign drv1_outD_5 = ~RESETL; assign drv1_enD_5 = ~LPL_1;                       //[HCNT.NET:00101] DH_5_(D_5) = MACZINVB1(RESETL,LPL_1);
assign drv1_outD_6 = ~RESETL; assign drv1_enD_6 = ~LPL_1;                       //[HCNT.NET:00102] DH_6_(D_6) = MACZINVB1(RESETL,LPL_1);
assign drv1_outD_7 = ~RESETL; assign drv1_enD_7 = ~LPL_1;                       //[HCNT.NET:00103] DH_7_(D_7) = MACZINVB1(RESETL,LPL_1);


/* The decodes */


m_AND11 HD1_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HCB_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HCB_6),.A_6(HCB_5),.A_7(HCB_4),.A_8(HCB_3),.A_9(HCB_2),.A_10(HCB_1),.A_11(HC_0),.B(HD1));//[HCNT.NET:00109] HD1_(HD1) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HCB_6,HCB_5,HCB_4,HCB_3,HCB_2,HCB_1,
                                                                                //[HCNT.NET:00110]    HC_0);

m_AND11 HD68_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HCB_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HCB_5),.A_7(HCB_4),.A_8(HCB_3),.A_9(HC_2),.A_10(HCB_1),.A_11(HCB_0),.B(HD68));//[HCNT.NET:00112] HD68_(HD68) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HCB_5,HCB_4,HCB_3,HC_2,HCB_1,
                                                                                //[HCNT.NET:00113]    HCB_0);

m_AND11 HD103_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HCB_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HC_5),.A_7(HCB_4),.A_8(HCB_3),.A_9(HC_2),.A_10(HC_1),.A_11(HC_0),.B(HD103));//[HCNT.NET:00115] HD103_(HD103) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HCB_3,HC_2,HC_1,
                                                                                //[HCNT.NET:00116]    HC_0);

m_AND11 HD111_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HCB_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HC_5),.A_7(HCB_4),.A_8(HC_3),.A_9(HC_2),.A_10(HC_1),.A_11(HC_0),.B(HD111));//[HCNT.NET:00118] HD111_(HD111) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HC_3,HC_2,HC_1,
                                                                                //[HCNT.NET:00119]    HC_0);

m_AND11 HD119_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HCB_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HC_5),.A_7(HC_4),.A_8(HCB_3),.A_9(HC_2),.A_10(HC_1),.A_11(HC_0),.B(HD119));//[HCNT.NET:00121] HD119_(HD119) = AND11(RESETL,HCB_9,HCB_8,HCB_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HC_1,
                                                                                //[HCNT.NET:00122]    HC_0);

m_AND11 HD623_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HC_5),.A_7(HCB_4),.A_8(HC_3),.A_9(HC_2),.A_10(HC_1),.A_11(HC_0),.B(HD623));//[HCNT.NET:00124] HD623_(HD623) = AND11(RESETL,HC_9,HCB_8,HCB_7,HC_6,HC_5,HCB_4,HC_3,HC_2,HC_1,
                                                                                //[HCNT.NET:00125]    HC_0);

m_AND11 HD631_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HCB_7),.A_5(HC_6),.A_6(HC_5),.A_7(HC_4),.A_8(HCB_3),.A_9(HC_2),.A_10(HC_1),.A_11(HC_0),.B(HD631));//[HCNT.NET:00127] HD631_(HD631) = AND11(RESETL,HC_9,HCB_8,HCB_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HC_1,
                                                                                //[HCNT.NET:00128]    HC_0);

m_AND11 HD643_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HC_7),.A_5(HCB_6),.A_6(HCB_5),.A_7(HCB_4),.A_8(HCB_3),.A_9(HCB_2),.A_10(HC_1),.A_11(HC_0),.B(HD643));//[HCNT.NET:00130] HD643_(HD643) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HCB_5,HCB_4,HCB_3,HCB_2,HC_1,
                                                                                //[HCNT.NET:00131]    HC_0);

m_AND11 HD682_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HC_7),.A_5(HCB_6),.A_6(HC_5),.A_7(HCB_4),.A_8(HC_3),.A_9(HCB_2),.A_10(HC_1),.A_11(HCB_0),.B(HD682));//[HCNT.NET:00133] HD682_(HD682) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HC_5,HCB_4,HC_3,HCB_2,HC_1,
                                                                                //[HCNT.NET:00134]    HCB_0);

m_AND11 HD700_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HC_7),.A_5(HCB_6),.A_6(HC_5),.A_7(HC_4),.A_8(HC_3),.A_9(HC_2),.A_10(HCB_1),.A_11(BIT0),.B(HD700));//[HCNT.NET:00136] HD700_(HD700) = AND11(RESETL,HC_9,HCB_8,HC_7,HCB_6,HC_5,HC_4,HC_3,HC_2,HCB_1,
                                                                                //[HCNT.NET:00137]    BIT0);

m_AND11 HD756_ (.MasterClock(MasterClock),.A_1(RESETL),.A_2(HC_9),.A_3(HCB_8),.A_4(HC_7),.A_5(HC_6),.A_6(HC_5),.A_7(HC_4),.A_8(HCB_3),.A_9(HC_2),.A_10(HCB_1),.A_11(BIT0),.B(HD756));//[HCNT.NET:00139] HD756_(HD756) = AND11(RESETL,HC_9,HCB_8,HC_7,HC_6,HC_5,HC_4,HCB_3,HC_2,HCB_1,
                                                                                //[HCNT.NET:00140]    BIT0);

/* NB the decodes for hsync and line length are one greater for ntsc */

assign PAL = ~NTSC;                                                             //[HCNT.NET:00144] PAL_(PAL) = N1A(NTSC);
assign BIT0 = ~((PAL & HC_0)|(NTSC & HCB_0));                                   //[HCNT.NET:00145] BIT0_(BIT0) = AO2A(PAL,HC_0,NTSC,HCB_0);


/* The last decode is combined with the horizontal lock input so they
have an equivalent effect */

assign HD756L = ~HD756;                                                         //[HCNT.NET:00151] HD756L_(HD756L) = N1A(HD756);
FD2A HLOCKD__inst (.MasterClock(MasterClock),.q(HLOCKD),.qL(HLOCKDL),.d(HLOCK),.clk(CLK),.rL(RESETL));//[HCNT.NET:00152] HLOCKD_(HLOCKD,HLOCKDL) = FD2A(HLOCK,CLK,RESETL);
assign HLOCKL = ~(GENLOCK & HLOCKD);                                            //[HCNT.NET:00153] HLOCKL_(HLOCKL) = ND2A(GENLOCK,HLOCKD);
assign NEXTH = ~(HLOCKL & HD756L);                                              //[HCNT.NET:00154] NEXTH_(NEXTH) = ND2C(HLOCKL,HD756L);

/* generate horizontal sync but disable when genlocking */

m_JK HSYNCDL_ (.MasterClock(MasterClock),.J(HD700),.K(NEXTH),.R(RES),.CLK(CLK),.Q(HSYNCD),.QB(HSYNCDL));//[HCNT.NET:00158] HSYNCDL_(HSYNCD,HSYNCDL) = JK(HD700,NEXTH,RES,CLK);
assign HSYNC = ~(HSYNCDL | GENLOCK);                                            //[HCNT.NET:00159] HSYNC_(HSYNC) = NR2A(HSYNCDL,GENLOCK);

/* generate other signals */

m_JK HVSYNC_ (.MasterClock(MasterClock),.J(HD700),.K(HD643),.R(RES),.CLK(CLK),.Q(HVSYNC),.QB(HVSYNCL));//[HCNT.NET:00163] HVSYNC_(HVSYNC,HVSYNCL) = JK(HD700,HD643,RES,CLK);
m_JK HBORDERL_ (.MasterClock(MasterClock),.J(HD631),.K(HD119),.R(RES),.CLK(CLK),.Q(HBORDER),.QB(HBORDERL));//[HCNT.NET:00164] HBORDERL_(HBORDER,HBORDERL) = JK(HD631,HD119,RES,CLK);
m_JK HBLANKING_ (.MasterClock(MasterClock),.J(HD682),.K(HD68),.R(RES),.CLK(CLK),.Q(HBLANKING),.QB(HBLANKINGL));//[HCNT.NET:00165] HBLANKING_(HBLANKING,HBLANKINGL) = JK(HD682,HD68,RES,CLK);

/* hvactive leads border by eight ticks */

FJK2A HVACTIVE__inst (.MasterClock(MasterClock),.q(HVACTIVE),.qL(HVACTIVEL),.j(HD111),.k(HD623),.clk(CLK),.rL(RESETL));//[HCNT.NET:00169] HVACTIVE_(HVACTIVE,HVACTIVEL) = FJK2A(HD111,HD623,CLK,RESETL);

/* hvhold is asserted 6 microprocessor clocks before the first video cycle */

/* WARNING the response time of the 8088 is not known exactly */

m_JK HVHOLD_ (.MasterClock(MasterClock),.J(HD103),.K(HD623),.R(RES),.CLK(CLK),.Q(HVHOLD),.QB(HVHOLDL));//[HCNT.NET:00175] HVHOLD_(HVHOLD,HVHOLDL) = JK(HD103,HD623,RES,CLK);

/* interupts may occur at end of active area */

assign HINT = HD623;                                                            //[HCNT.NET:00179] HINT_(HINT) = B3A(HD623);

assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7;
endmodule                                                                       //[HCNT.NET:00181] END MODULE;
