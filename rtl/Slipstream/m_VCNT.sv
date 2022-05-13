                                                                                //[VCNT.NET:00001] COMPILE;
                                                                                //[VCNT.NET:00002] DIRECTORY MASTER;
/********************************************************
*	vcnt-hdl					*
*	2/11/88						*
********************************************************/

/*
This module is the vertical timebase in the SLIPSTREAM chip on the ACW
*/






module m_VCNT                                                                   //[VCNT.NET:00017] MODULE VCNT;
(                                                                               //[VCNT.NET:00017] MODULE VCNT;

    input    MasterClock,
    input    inD_0,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_1,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_2,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_3,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_4,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_5,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_6,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    inD_7,                                                             //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    RESETL_0,                                                          //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    CLK,                                                               //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_0,                                                              //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_1,                                                              //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_2,                                                              //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_3,                                                              //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_4,                                                              //[VCNT.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,WD_0,WD_1,WD_2,WD_3,WD_4,
    input    WD_5,                                                              //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    WD_6,                                                              //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    WD_7,                                                              //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    VCNTL,                                                             //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    VCNTH,                                                             //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    LPL_2,                                                             //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    LPL_3,                                                             //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    VLOCK,                                                             //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    NTSC,                                                              //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    GENLOCK,                                                           //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    STARTL,                                                            //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    STARTH,                                                            //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    ENDL,                                                              //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
    input    ENDH,                                                              //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    INTL,                                                              //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    INTH,                                                              //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    HBORDER,                                                           //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    HBLANKING,                                                         //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    HVSYNC,                                                            //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    LPCLK,                                                             //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    HD1,                                                               //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    DIAG,                                                              //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    LORES,                                                             //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    input    HINT,                                                              //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
                                                                                //[VCNT.NET:00020]    WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,STARTL,STARTH,ENDL,
                                                                                //[VCNT.NET:00021]    ENDH,INTL,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,DIAG,LORES,HINT;
    output    outD_0, enD_0,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_1, enD_1,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_2, enD_2,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_3, enD_3,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_4, enD_4,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_5, enD_5,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_6, enD_6,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    outD_7, enD_7,                                                    //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    VVACTIVE,                                                         //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    VSYNC,                                                            //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    VINT,                                                             //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    BORDER,                                                           //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    BLANKING,                                                         //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
    output    STARTD,                                                           //[VCNT.NET:00023]    STARTD,NEXTV;
    output    NEXTV                                                             //[VCNT.NET:00023]    STARTD,NEXTV;
);                                                                              //[VCNT.NET:00017] MODULE VCNT;
                                                                                //[VCNT.NET:00024] LEVEL FUNCTION;
wire RESETL;                                                                    //[VCNT.NET:00029] RESETL_(RESETL) = B3A(RESETL_0);
wire RES;                                                                       //[VCNT.NET:00030] RES_(RES) = N1A(RESETL);
wire VCNT_8;                                                                    //[VCNT.NET:00034] VCNT_8_(VCNT_8,VCNTL_8) = LD1A(WD_0,VCNTH);
wire VCNTL_8;                                                                   //[VCNT.NET:00034] VCNT_8_(VCNT_8,VCNTL_8) = LD1A(WD_0,VCNTH);
wire HDD;                                                                       //[VCNT.NET:00041] HDD_(HDD) = NR2A(HD1,DIAG);
wire HD1D;                                                                      //[VCNT.NET:00042] HD1D_(HD1D) = NR2C(HDD,RES);
wire VCNTLBL;                                                                   //[VCNT.NET:00046] VCNTLBL_(VCNTLBL) = N1C(VCNTL);
wire VC_0;                                                                      //[VCNT.NET:00047] Q_0_(VC_0,VCB_0,CO_0) = SYNCNT(WD_0,CLK,NEXTV,VCNTLBL,HD1D);
wire VCB_0;                                                                     //[VCNT.NET:00047] Q_0_(VC_0,VCB_0,CO_0) = SYNCNT(WD_0,CLK,NEXTV,VCNTLBL,HD1D);
wire CO_0;                                                                      //[VCNT.NET:00047] Q_0_(VC_0,VCB_0,CO_0) = SYNCNT(WD_0,CLK,NEXTV,VCNTLBL,HD1D);
wire VC_1;                                                                      //[VCNT.NET:00048] Q_1_(VC_1,VCB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTV,VCNTLBL,CO_0);
wire VCB_1;                                                                     //[VCNT.NET:00048] Q_1_(VC_1,VCB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTV,VCNTLBL,CO_0);
wire CO_1;                                                                      //[VCNT.NET:00048] Q_1_(VC_1,VCB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTV,VCNTLBL,CO_0);
wire VC_2;                                                                      //[VCNT.NET:00049] Q_2_(VC_2,VCB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTV,VCNTLBL,CO_1);
wire VCB_2;                                                                     //[VCNT.NET:00049] Q_2_(VC_2,VCB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTV,VCNTLBL,CO_1);
wire CO_2;                                                                      //[VCNT.NET:00049] Q_2_(VC_2,VCB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTV,VCNTLBL,CO_1);
wire VC_3;                                                                      //[VCNT.NET:00050] Q_3_(VC_3,VCB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTV,VCNTLBL,CO_2);
wire VCB_3;                                                                     //[VCNT.NET:00050] Q_3_(VC_3,VCB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTV,VCNTLBL,CO_2);
wire CO_3;                                                                      //[VCNT.NET:00050] Q_3_(VC_3,VCB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTV,VCNTLBL,CO_2);
wire VC_4;                                                                      //[VCNT.NET:00051] Q_4_(VC_4,VCB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTV,VCNTLBL,CO_3);
wire VCB_4;                                                                     //[VCNT.NET:00051] Q_4_(VC_4,VCB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTV,VCNTLBL,CO_3);
wire CO_4;                                                                      //[VCNT.NET:00051] Q_4_(VC_4,VCB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTV,VCNTLBL,CO_3);
wire VC_5;                                                                      //[VCNT.NET:00052] Q_5_(VC_5,VCB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTV,VCNTLBL,CO_4);
wire VCB_5;                                                                     //[VCNT.NET:00052] Q_5_(VC_5,VCB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTV,VCNTLBL,CO_4);
wire CO_5;                                                                      //[VCNT.NET:00052] Q_5_(VC_5,VCB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTV,VCNTLBL,CO_4);
wire VC_6;                                                                      //[VCNT.NET:00053] Q_6_(VC_6,VCB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTV,VCNTLBL,CO_5);
wire VCB_6;                                                                     //[VCNT.NET:00053] Q_6_(VC_6,VCB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTV,VCNTLBL,CO_5);
wire CO_6;                                                                      //[VCNT.NET:00053] Q_6_(VC_6,VCB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTV,VCNTLBL,CO_5);
wire VC_7;                                                                      //[VCNT.NET:00054] Q_7_(VC_7,VCB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTV,VCNTLBL,CO_6);
wire VCB_7;                                                                     //[VCNT.NET:00054] Q_7_(VC_7,VCB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTV,VCNTLBL,CO_6);
wire CO_7;                                                                      //[VCNT.NET:00054] Q_7_(VC_7,VCB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTV,VCNTLBL,CO_6);
wire VC_8;                                                                      //[VCNT.NET:00055] Q_8_(VC_8,VCB_8,CO_8) = SYNCNT(VCNT_8,CLK,NEXTV,VCNTLBL,CO_7);
wire VCB_8;                                                                     //[VCNT.NET:00055] Q_8_(VC_8,VCB_8,CO_8) = SYNCNT(VCNT_8,CLK,NEXTV,VCNTLBL,CO_7);
wire CO_8;                                                                      //[VCNT.NET:00055] Q_8_(VC_8,VCB_8,CO_8) = SYNCNT(VCNT_8,CLK,NEXTV,VCNTLBL,CO_7);
wire INT_0;                                                                     //[VCNT.NET:00078] INT_0_(INT_0,INTB_0) = LD1A(WD_0,INTL);
wire INTB_0;                                                                    //[VCNT.NET:00078] INT_0_(INT_0,INTB_0) = LD1A(WD_0,INTL);
wire INT_1;                                                                     //[VCNT.NET:00079] INT_1_(INT_1,INTB_1) = LD1A(WD_1,INTL);
wire INTB_1;                                                                    //[VCNT.NET:00079] INT_1_(INT_1,INTB_1) = LD1A(WD_1,INTL);
wire INT_2;                                                                     //[VCNT.NET:00080] INT_2_(INT_2,INTB_2) = LD1A(WD_2,INTL);
wire INTB_2;                                                                    //[VCNT.NET:00080] INT_2_(INT_2,INTB_2) = LD1A(WD_2,INTL);
wire INT_3;                                                                     //[VCNT.NET:00081] INT_3_(INT_3,INTB_3) = LD1A(WD_3,INTL);
wire INTB_3;                                                                    //[VCNT.NET:00081] INT_3_(INT_3,INTB_3) = LD1A(WD_3,INTL);
wire INT_4;                                                                     //[VCNT.NET:00082] INT_4_(INT_4,INTB_4) = LD1A(WD_4,INTL);
wire INTB_4;                                                                    //[VCNT.NET:00082] INT_4_(INT_4,INTB_4) = LD1A(WD_4,INTL);
wire INT_5;                                                                     //[VCNT.NET:00083] INT_5_(INT_5,INTB_5) = LD1A(WD_5,INTL);
wire INTB_5;                                                                    //[VCNT.NET:00083] INT_5_(INT_5,INTB_5) = LD1A(WD_5,INTL);
wire INT_6;                                                                     //[VCNT.NET:00084] INT_6_(INT_6,INTB_6) = LD1A(WD_6,INTL);
wire INTB_6;                                                                    //[VCNT.NET:00084] INT_6_(INT_6,INTB_6) = LD1A(WD_6,INTL);
wire INT_7;                                                                     //[VCNT.NET:00085] INT_7_(INT_7,INTB_7) = LD1A(WD_7,INTL);
wire INTB_7;                                                                    //[VCNT.NET:00085] INT_7_(INT_7,INTB_7) = LD1A(WD_7,INTL);
wire INT_8;                                                                     //[VCNT.NET:00086] INT_8_(INT_8,INTB_8) = LD1A(WD_0,INTH);
wire INTB_8;                                                                    //[VCNT.NET:00086] INT_8_(INT_8,INTB_8) = LD1A(WD_0,INTH);
wire VD13;                                                                      //[VCNT.NET:00091] VD13_(VD13) = AND10(HD1D,VCB_8,VCB_7,VCB_6,VCB_5,VCB_4,VC_3,VC_2,VCB_1,VC_0);
wire VD16;                                                                      //[VCNT.NET:00093] VD16_(VD16) = AND10(HD1D,VCB_8,VCB_7,VCB_6,VCB_5,VC_4,VCB_3,VCB_2,VCB_1,VCB_0);
wire VD303;                                                                     //[VCNT.NET:00095] VD303_(VD303) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VCB_4,VC_3,VC_2,VC_1,VC_0);
wire VD308;                                                                     //[VCNT.NET:00097] VD308_(VD308) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VC_4,VCB_3,VC_2,VCB_1,VCB_0);
wire VD311;                                                                     //[VCNT.NET:00099] VD311_(VD311) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VC_4,VCB_3,VC_2,VC_1,VC_0);
wire VD255;                                                                     //[VCNT.NET:00101] VD255_(VD255) = AND10(HD1D,VCB_8,VC_7,VC_6,VC_5,VC_4,VC_3,VC_2,VC_1,VC_0);
wire VD258;                                                                     //[VCNT.NET:00103] VD258_(VD258) = AND10(HD1D,VC_8,VCB_7,VCB_6,VCB_5,VCB_4,VCB_3,VCB_2,VC_1,
wire VD261;                                                                     //[VCNT.NET:00106] VD261_(VD261) = AND10(HD1D,VC_8,VCB_7,VCB_6,VCB_5,VCB_4,VCB_3,VC_2,VCB_1,VC_0);
wire PAL;                                                                       //[VCNT.NET:00109] PAL_(PAL) = N1A(NTSC);
wire VBENDL;                                                                    //[VCNT.NET:00113] VBENDL_(VBENDL) = AO2A(PAL,VD303,NTSC,VD255);
wire VBEND;                                                                     //[VCNT.NET:00114] VBEND_(VBEND) = N1A(VBENDL);
wire VBSTARTL;                                                                  //[VCNT.NET:00115] VBSTARTL_(VBSTARTL) = AO2A(PAL,VD16,NTSC,VD13);
wire VBSTART;                                                                   //[VCNT.NET:00116] VBSRART_(VBSTART) = N1A(VBSTARTL);
wire VSSTL;                                                                     //[VCNT.NET:00120] VSSTL_(VSSTL) = AO2A(PAL,VD308,NTSC,VD258);
wire VSST;                                                                      //[VCNT.NET:00121] VSST_(VSST) = N1A(VSSTL);
wire VSENDL;                                                                    //[VCNT.NET:00122] VSENDL_(VSENDL) = AO2A(PAL,VD311,NTSC,VD261);
wire VLOCKD;                                                                    //[VCNT.NET:00127] VLOCKD_(VLOCKD,VLOCKDL) = FD2A(VLOCK,CLK,RESETL);
wire VLOCKDL;                                                                   //[VCNT.NET:00127] VLOCKD_(VLOCKD,VLOCKDL) = FD2A(VLOCK,CLK,RESETL);
wire VLOCKL;                                                                    //[VCNT.NET:00128] VLOCKL_(VLOCKL) = ND2A(GENLOCK,VLOCKD);
wire VVSYNC;                                                                    //[VCNT.NET:00133] VVSYNC_(VVSYNC,VVSYNCL) = JK(VSST,NEXTV,RES,CLK);
wire VVSYNCL;                                                                   //[VCNT.NET:00133] VVSYNC_(VVSYNC,VVSYNCL) = JK(VSST,NEXTV,RES,CLK);
wire VSYNCDL;                                                                   //[VCNT.NET:00134] VSYNCDL_(VSYNCDL) = ND2A(HVSYNC,VVSYNC);
wire VBLANKING;                                                                 //[VCNT.NET:00139] VBLANKING_(VBLANKING,VBLANKINGL) = JK(VBEND,VBSTART,RES,CLK);
wire VBLANKINGL;                                                                //[VCNT.NET:00139] VBLANKING_(VBLANKING,VBLANKINGL) = JK(VBEND,VBSTART,RES,CLK);
wire START_0;                                                                   //[VCNT.NET:00145] START_0_(START_0,STARTB_0) = LD1A(WD_0,STARTL);
wire STARTB_0;                                                                  //[VCNT.NET:00145] START_0_(START_0,STARTB_0) = LD1A(WD_0,STARTL);
wire START_1;                                                                   //[VCNT.NET:00146] START_1_(START_1,STARTB_1) = LD1A(WD_1,STARTL);
wire STARTB_1;                                                                  //[VCNT.NET:00146] START_1_(START_1,STARTB_1) = LD1A(WD_1,STARTL);
wire START_2;                                                                   //[VCNT.NET:00147] START_2_(START_2,STARTB_2) = LD1A(WD_2,STARTL);
wire STARTB_2;                                                                  //[VCNT.NET:00147] START_2_(START_2,STARTB_2) = LD1A(WD_2,STARTL);
wire START_3;                                                                   //[VCNT.NET:00148] START_3_(START_3,STARTB_3) = LD1A(WD_3,STARTL);
wire STARTB_3;                                                                  //[VCNT.NET:00148] START_3_(START_3,STARTB_3) = LD1A(WD_3,STARTL);
wire START_4;                                                                   //[VCNT.NET:00149] START_4_(START_4,STARTB_4) = LD1A(WD_4,STARTL);
wire STARTB_4;                                                                  //[VCNT.NET:00149] START_4_(START_4,STARTB_4) = LD1A(WD_4,STARTL);
wire START_5;                                                                   //[VCNT.NET:00150] START_5_(START_5,STARTB_5) = LD1A(WD_5,STARTL);
wire STARTB_5;                                                                  //[VCNT.NET:00150] START_5_(START_5,STARTB_5) = LD1A(WD_5,STARTL);
wire START_6;                                                                   //[VCNT.NET:00151] START_6_(START_6,STARTB_6) = LD1A(WD_6,STARTL);
wire STARTB_6;                                                                  //[VCNT.NET:00151] START_6_(START_6,STARTB_6) = LD1A(WD_6,STARTL);
wire START_7;                                                                   //[VCNT.NET:00152] START_7_(START_7,STARTB_7) = LD1A(WD_7,STARTL);
wire STARTB_7;                                                                  //[VCNT.NET:00152] START_7_(START_7,STARTB_7) = LD1A(WD_7,STARTL);
wire START_8;                                                                   //[VCNT.NET:00153] STARTH_8_(START_8,STARTB_8) = LD1A(WD_0,STARTH);
wire STARTB_8;                                                                  //[VCNT.NET:00153] STARTH_8_(START_8,STARTB_8) = LD1A(WD_0,STARTH);
wire END_0;                                                                     //[VCNT.NET:00157] END_0_(END_0,ENDB_0) = LD1A(WD_0,ENDL);
wire ENDB_0;                                                                    //[VCNT.NET:00157] END_0_(END_0,ENDB_0) = LD1A(WD_0,ENDL);
wire END_1;                                                                     //[VCNT.NET:00158] END_1_(END_1,ENDB_1) = LD1A(WD_1,ENDL);
wire ENDB_1;                                                                    //[VCNT.NET:00158] END_1_(END_1,ENDB_1) = LD1A(WD_1,ENDL);
wire END_2;                                                                     //[VCNT.NET:00159] END_2_(END_2,ENDB_2) = LD1A(WD_2,ENDL);
wire ENDB_2;                                                                    //[VCNT.NET:00159] END_2_(END_2,ENDB_2) = LD1A(WD_2,ENDL);
wire END_3;                                                                     //[VCNT.NET:00160] END_3_(END_3,ENDB_3) = LD1A(WD_3,ENDL);
wire ENDB_3;                                                                    //[VCNT.NET:00160] END_3_(END_3,ENDB_3) = LD1A(WD_3,ENDL);
wire END_4;                                                                     //[VCNT.NET:00161] END_4_(END_4,ENDB_4) = LD1A(WD_4,ENDL);
wire ENDB_4;                                                                    //[VCNT.NET:00161] END_4_(END_4,ENDB_4) = LD1A(WD_4,ENDL);
wire END_5;                                                                     //[VCNT.NET:00162] END_5_(END_5,ENDB_5) = LD1A(WD_5,ENDL);
wire ENDB_5;                                                                    //[VCNT.NET:00162] END_5_(END_5,ENDB_5) = LD1A(WD_5,ENDL);
wire END_6;                                                                     //[VCNT.NET:00163] END_6_(END_6,ENDB_6) = LD1A(WD_6,ENDL);
wire ENDB_6;                                                                    //[VCNT.NET:00163] END_6_(END_6,ENDB_6) = LD1A(WD_6,ENDL);
wire END_7;                                                                     //[VCNT.NET:00164] END_7_(END_7,ENDB_7) = LD1A(WD_7,ENDL);
wire ENDB_7;                                                                    //[VCNT.NET:00164] END_7_(END_7,ENDB_7) = LD1A(WD_7,ENDL);
wire END_8;                                                                     //[VCNT.NET:00165] ENDH_8_(END_8,ENDB_8) = LD1A(WD_0,ENDH);
wire ENDB_8;                                                                    //[VCNT.NET:00165] ENDH_8_(END_8,ENDB_8) = LD1A(WD_0,ENDH);
wire ENDD;                                                                      //[VCNT.NET:00166] ENDD_(ENDD) = EQU9(END_0,END_1,END_2,END_3,END_4,END_5,END_6,END_7,END_8,VC_0,
wire VBORDERL;                                                                  //[VCNT.NET:00171] VBORDER_(VBORDERL,VBORDER) = JK(STARTD,ENDD,RES,CLK);
wire VBORDER;                                                                   //[VCNT.NET:00171] VBORDER_(VBORDERL,VBORDER) = JK(STARTD,ENDD,RES,CLK);
wire HBORDERL;                                                                  //[VCNT.NET:00172] HBORDERL_(HBORDERL) = N1A(HBORDER);
wire LORESL;                                                                    //[VCNT.NET:00184] LORESL_(LORESL) = N1A(LORES);
wire REF4;                                                                      //[VCNT.NET:00185] REF4_(REF4) = ND2A(LORESL,VC_1);
wire REFACTIVEL;                                                                //[VCNT.NET:00186] REFACTIVEL_(REFACTIVEL) = ND5A(VCB_2,VCB_3,VCB_4,VCB_5,REF4);
wire drv0_outD_0;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_0;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_0;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_0;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_1;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_1;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_1;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_1;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_2;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_2;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_2;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_2;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_3;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_3;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_3;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_3;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_4;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_4;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_4;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_4;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_5;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_5;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_5;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_5;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_6;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_6;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_6;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_6;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_outD_7;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv0_enD_7;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_outD_7;                                                               //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire drv1_enD_7;                                                                //[VCNT.NET:00022] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,

/* buffer the clock and reset */

assign RESETL = RESETL_0;                                                       //[VCNT.NET:00029] RESETL_(RESETL) = B3A(RESETL_0);
assign RES = ~RESETL;                                                           //[VCNT.NET:00030] RES_(RES) = N1A(RESETL);

/* latch the msb of the vertical count */

LD1A VCNT_8__inst (.MasterClock(MasterClock),.q(VCNT_8),.qL(VCNTL_8),.d(WD_0),.en(VCNTH));//[VCNT.NET:00034] VCNT_8_(VCNT_8,VCNTL_8) = LD1A(WD_0,VCNTH);

/* the vertical counter usually increments when the horizontal
count is one (hd1). For test purposes the counter may count every clock
cycle by setting diag. Reset is added to the decode for 'hd1d' to
help define the JKs after reset */

assign HDD = ~(HD1 | DIAG);                                                     //[VCNT.NET:00041] HDD_(HDD) = NR2A(HD1,DIAG);
assign HD1D = ~(HDD | RES);                                                     //[VCNT.NET:00042] HD1D_(HD1D) = NR2C(HDD,RES);

/* the vertical counter */

assign VCNTLBL = ~VCNTL;                                                        //[VCNT.NET:00046] VCNTLBL_(VCNTLBL) = N1C(VCNTL);
m_SYNCNT Q_0_ (.MasterClock(MasterClock),.D(WD_0),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(HD1D),.Q(VC_0),.QB(VCB_0),.CO(CO_0));//[VCNT.NET:00047] Q_0_(VC_0,VCB_0,CO_0) = SYNCNT(WD_0,CLK,NEXTV,VCNTLBL,HD1D);
m_SYNCNT Q_1_ (.MasterClock(MasterClock),.D(WD_1),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_0),.Q(VC_1),.QB(VCB_1),.CO(CO_1));//[VCNT.NET:00048] Q_1_(VC_1,VCB_1,CO_1) = SYNCNT(WD_1,CLK,NEXTV,VCNTLBL,CO_0);
m_SYNCNT Q_2_ (.MasterClock(MasterClock),.D(WD_2),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_1),.Q(VC_2),.QB(VCB_2),.CO(CO_2));//[VCNT.NET:00049] Q_2_(VC_2,VCB_2,CO_2) = SYNCNT(WD_2,CLK,NEXTV,VCNTLBL,CO_1);
m_SYNCNT Q_3_ (.MasterClock(MasterClock),.D(WD_3),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_2),.Q(VC_3),.QB(VCB_3),.CO(CO_3));//[VCNT.NET:00050] Q_3_(VC_3,VCB_3,CO_3) = SYNCNT(WD_3,CLK,NEXTV,VCNTLBL,CO_2);
m_SYNCNT Q_4_ (.MasterClock(MasterClock),.D(WD_4),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_3),.Q(VC_4),.QB(VCB_4),.CO(CO_4));//[VCNT.NET:00051] Q_4_(VC_4,VCB_4,CO_4) = SYNCNT(WD_4,CLK,NEXTV,VCNTLBL,CO_3);
m_SYNCNT Q_5_ (.MasterClock(MasterClock),.D(WD_5),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_4),.Q(VC_5),.QB(VCB_5),.CO(CO_5));//[VCNT.NET:00052] Q_5_(VC_5,VCB_5,CO_5) = SYNCNT(WD_5,CLK,NEXTV,VCNTLBL,CO_4);
m_SYNCNT Q_6_ (.MasterClock(MasterClock),.D(WD_6),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_5),.Q(VC_6),.QB(VCB_6),.CO(CO_6));//[VCNT.NET:00053] Q_6_(VC_6,VCB_6,CO_6) = SYNCNT(WD_6,CLK,NEXTV,VCNTLBL,CO_5);
m_SYNCNT Q_7_ (.MasterClock(MasterClock),.D(WD_7),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_6),.Q(VC_7),.QB(VCB_7),.CO(CO_7));//[VCNT.NET:00054] Q_7_(VC_7,VCB_7,CO_7) = SYNCNT(WD_7,CLK,NEXTV,VCNTLBL,CO_6);
m_SYNCNT Q_8_ (.MasterClock(MasterClock),.D(VCNT_8),.CLK(CLK),.CLR(NEXTV),.LDL(VCNTLBL),.CI(CO_7),.Q(VC_8),.QB(VCB_8),.CO(CO_8));//[VCNT.NET:00055] Q_8_(VC_8,VCB_8,CO_8) = SYNCNT(VCNT_8,CLK,NEXTV,VCNTLBL,CO_7);

/* the light pen register */

wire DL_0__drv0_outD_0,DL_0__drv0_outD_0L; LD1A DL_0__inst (.MasterClock(MasterClock), .q(DL_0__drv0_outD_0),.qL(DL_0__drv0_outD_0L),.d(VCB_0),.en(LPCLK)); assign drv0_outD_0 = ~DL_0__drv0_outD_0; assign drv0_enD_0 = ~LPL_2; //[VCNT.NET:00059] DL_0_(D_0) = ZTLATCH1(D_0,VCB_0,LPCLK,LPL_2);
wire DL_1__drv0_outD_1,DL_1__drv0_outD_1L; LD1A DL_1__inst (.MasterClock(MasterClock), .q(DL_1__drv0_outD_1),.qL(DL_1__drv0_outD_1L),.d(VCB_1),.en(LPCLK)); assign drv0_outD_1 = ~DL_1__drv0_outD_1; assign drv0_enD_1 = ~LPL_2; //[VCNT.NET:00060] DL_1_(D_1) = ZTLATCH1(D_1,VCB_1,LPCLK,LPL_2);
wire DL_2__drv0_outD_2,DL_2__drv0_outD_2L; LD1A DL_2__inst (.MasterClock(MasterClock), .q(DL_2__drv0_outD_2),.qL(DL_2__drv0_outD_2L),.d(VCB_2),.en(LPCLK)); assign drv0_outD_2 = ~DL_2__drv0_outD_2; assign drv0_enD_2 = ~LPL_2; //[VCNT.NET:00061] DL_2_(D_2) = ZTLATCH1(D_2,VCB_2,LPCLK,LPL_2);
wire DL_3__drv0_outD_3,DL_3__drv0_outD_3L; LD1A DL_3__inst (.MasterClock(MasterClock), .q(DL_3__drv0_outD_3),.qL(DL_3__drv0_outD_3L),.d(VCB_3),.en(LPCLK)); assign drv0_outD_3 = ~DL_3__drv0_outD_3; assign drv0_enD_3 = ~LPL_2; //[VCNT.NET:00062] DL_3_(D_3) = ZTLATCH1(D_3,VCB_3,LPCLK,LPL_2);
wire DL_4__drv0_outD_4,DL_4__drv0_outD_4L; LD1A DL_4__inst (.MasterClock(MasterClock), .q(DL_4__drv0_outD_4),.qL(DL_4__drv0_outD_4L),.d(VCB_4),.en(LPCLK)); assign drv0_outD_4 = ~DL_4__drv0_outD_4; assign drv0_enD_4 = ~LPL_2; //[VCNT.NET:00063] DL_4_(D_4) = ZTLATCH1(D_4,VCB_4,LPCLK,LPL_2);
wire DL_5__drv0_outD_5,DL_5__drv0_outD_5L; LD1A DL_5__inst (.MasterClock(MasterClock), .q(DL_5__drv0_outD_5),.qL(DL_5__drv0_outD_5L),.d(VCB_5),.en(LPCLK)); assign drv0_outD_5 = ~DL_5__drv0_outD_5; assign drv0_enD_5 = ~LPL_2; //[VCNT.NET:00064] DL_5_(D_5) = ZTLATCH1(D_5,VCB_5,LPCLK,LPL_2);
wire DL_6__drv0_outD_6,DL_6__drv0_outD_6L; LD1A DL_6__inst (.MasterClock(MasterClock), .q(DL_6__drv0_outD_6),.qL(DL_6__drv0_outD_6L),.d(VCB_6),.en(LPCLK)); assign drv0_outD_6 = ~DL_6__drv0_outD_6; assign drv0_enD_6 = ~LPL_2; //[VCNT.NET:00065] DL_6_(D_6) = ZTLATCH1(D_6,VCB_6,LPCLK,LPL_2);
wire DL_7__drv0_outD_7,DL_7__drv0_outD_7L; LD1A DL_7__inst (.MasterClock(MasterClock), .q(DL_7__drv0_outD_7),.qL(DL_7__drv0_outD_7L),.d(VCB_7),.en(LPCLK)); assign drv0_outD_7 = ~DL_7__drv0_outD_7; assign drv0_enD_7 = ~LPL_2; //[VCNT.NET:00066] DL_7_(D_7) = ZTLATCH1(D_7,VCB_7,LPCLK,LPL_2);
wire DH_0__drv1_outD_0,DH_0__drv1_outD_0L; LD1A DH_0__inst (.MasterClock(MasterClock), .q(DH_0__drv1_outD_0),.qL(DH_0__drv1_outD_0L),.d(VCB_8),.en(LPCLK)); assign drv1_outD_0 = ~DH_0__drv1_outD_0; assign drv1_enD_0 = ~LPL_3; //[VCNT.NET:00067] DH_0_(D_0) = ZTLATCH1(D_0,VCB_8,LPCLK,LPL_3);
assign drv1_outD_1 = ~RESETL; assign drv1_enD_1 = ~LPL_3;                       //[VCNT.NET:00068] DH_1_(D_1) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_2 = ~RESETL; assign drv1_enD_2 = ~LPL_3;                       //[VCNT.NET:00069] DH_2_(D_2) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_3 = ~RESETL; assign drv1_enD_3 = ~LPL_3;                       //[VCNT.NET:00070] DH_3_(D_3) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_4 = ~RESETL; assign drv1_enD_4 = ~LPL_3;                       //[VCNT.NET:00071] DH_4_(D_4) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_5 = ~RESETL; assign drv1_enD_5 = ~LPL_3;                       //[VCNT.NET:00072] DH_5_(D_5) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_6 = ~RESETL; assign drv1_enD_6 = ~LPL_3;                       //[VCNT.NET:00073] DH_6_(D_6) = MACZINVB1(RESETL,LPL_3);
assign drv1_outD_7 = ~RESETL; assign drv1_enD_7 = ~LPL_3;                       //[VCNT.NET:00074] DH_7_(D_7) = MACZINVB1(RESETL,LPL_3);

/* the interupt register */

LD1A INT_0__inst (.MasterClock(MasterClock),.q(INT_0),.qL(INTB_0),.d(WD_0),.en(INTL));//[VCNT.NET:00078] INT_0_(INT_0,INTB_0) = LD1A(WD_0,INTL);
LD1A INT_1__inst (.MasterClock(MasterClock),.q(INT_1),.qL(INTB_1),.d(WD_1),.en(INTL));//[VCNT.NET:00079] INT_1_(INT_1,INTB_1) = LD1A(WD_1,INTL);
LD1A INT_2__inst (.MasterClock(MasterClock),.q(INT_2),.qL(INTB_2),.d(WD_2),.en(INTL));//[VCNT.NET:00080] INT_2_(INT_2,INTB_2) = LD1A(WD_2,INTL);
LD1A INT_3__inst (.MasterClock(MasterClock),.q(INT_3),.qL(INTB_3),.d(WD_3),.en(INTL));//[VCNT.NET:00081] INT_3_(INT_3,INTB_3) = LD1A(WD_3,INTL);
LD1A INT_4__inst (.MasterClock(MasterClock),.q(INT_4),.qL(INTB_4),.d(WD_4),.en(INTL));//[VCNT.NET:00082] INT_4_(INT_4,INTB_4) = LD1A(WD_4,INTL);
LD1A INT_5__inst (.MasterClock(MasterClock),.q(INT_5),.qL(INTB_5),.d(WD_5),.en(INTL));//[VCNT.NET:00083] INT_5_(INT_5,INTB_5) = LD1A(WD_5,INTL);
LD1A INT_6__inst (.MasterClock(MasterClock),.q(INT_6),.qL(INTB_6),.d(WD_6),.en(INTL));//[VCNT.NET:00084] INT_6_(INT_6,INTB_6) = LD1A(WD_6,INTL);
LD1A INT_7__inst (.MasterClock(MasterClock),.q(INT_7),.qL(INTB_7),.d(WD_7),.en(INTL));//[VCNT.NET:00085] INT_7_(INT_7,INTB_7) = LD1A(WD_7,INTL);
LD1A INT_8__inst (.MasterClock(MasterClock),.q(INT_8),.qL(INTB_8),.d(WD_0),.en(INTH));//[VCNT.NET:00086] INT_8_(INT_8,INTB_8) = LD1A(WD_0,INTH);

m_EQU9 VINT_ (.MasterClock(MasterClock),.A_0(INT_0),.A_1(INT_1),.A_2(INT_2),.A_3(INT_3),.A_4(INT_4),.A_5(INT_5),.A_6(INT_6),.A_7(INT_7),.A_8(INT_8),.B_0(VC_0),.B_1(VC_1),.B_2(VC_2),.B_3(VC_3),.B_4(VC_4),.B_5(VC_5),.B_6(VC_6),.B_7(VC_7),.B_8(VC_8),.EN(HINT),.EQ(VINT));//[VCNT.NET:00088] VINT_(VINT) = EQU9(INT_0,INT_1,INT_2,INT_3,INT_4,INT_5,INT_6,INT_7,INT_8,VC_0,
                                                                                //[VCNT.NET:00089]    VC_1,VC_2,VC_3,VC_4,VC_5,VC_6,VC_7,VC_8,HINT);

m_AND10 VD13_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VCB_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VCB_5),.A_6(VCB_4),.A_7(VC_3),.A_8(VC_2),.A_9(VCB_1),.A_10(VC_0),.B(VD13));//[VCNT.NET:00091] VD13_(VD13) = AND10(HD1D,VCB_8,VCB_7,VCB_6,VCB_5,VCB_4,VC_3,VC_2,VCB_1,VC_0);

m_AND10 VD16_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VCB_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VCB_5),.A_6(VC_4),.A_7(VCB_3),.A_8(VCB_2),.A_9(VCB_1),.A_10(VCB_0),.B(VD16));//[VCNT.NET:00093] VD16_(VD16) = AND10(HD1D,VCB_8,VCB_7,VCB_6,VCB_5,VC_4,VCB_3,VCB_2,VCB_1,VCB_0);

m_AND10 VD303_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VC_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VC_5),.A_6(VCB_4),.A_7(VC_3),.A_8(VC_2),.A_9(VC_1),.A_10(VC_0),.B(VD303));//[VCNT.NET:00095] VD303_(VD303) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VCB_4,VC_3,VC_2,VC_1,VC_0);

m_AND10 VD308_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VC_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VC_5),.A_6(VC_4),.A_7(VCB_3),.A_8(VC_2),.A_9(VCB_1),.A_10(VCB_0),.B(VD308));//[VCNT.NET:00097] VD308_(VD308) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VC_4,VCB_3,VC_2,VCB_1,VCB_0);

m_AND10 VD311_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VC_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VC_5),.A_6(VC_4),.A_7(VCB_3),.A_8(VC_2),.A_9(VC_1),.A_10(VC_0),.B(VD311));//[VCNT.NET:00099] VD311_(VD311) = AND10(HD1D,VC_8,VCB_7,VCB_6,VC_5,VC_4,VCB_3,VC_2,VC_1,VC_0);

m_AND10 VD255_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VCB_8),.A_3(VC_7),.A_4(VC_6),.A_5(VC_5),.A_6(VC_4),.A_7(VC_3),.A_8(VC_2),.A_9(VC_1),.A_10(VC_0),.B(VD255));//[VCNT.NET:00101] VD255_(VD255) = AND10(HD1D,VCB_8,VC_7,VC_6,VC_5,VC_4,VC_3,VC_2,VC_1,VC_0);

m_AND10 VD258_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VC_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VCB_5),.A_6(VCB_4),.A_7(VCB_3),.A_8(VCB_2),.A_9(VC_1),.A_10(VCB_0),.B(VD258));//[VCNT.NET:00103] VD258_(VD258) = AND10(HD1D,VC_8,VCB_7,VCB_6,VCB_5,VCB_4,VCB_3,VCB_2,VC_1,
                                                                                //[VCNT.NET:00104]    VCB_0);

m_AND10 VD261_ (.MasterClock(MasterClock),.A_1(HD1D),.A_2(VC_8),.A_3(VCB_7),.A_4(VCB_6),.A_5(VCB_5),.A_6(VCB_4),.A_7(VCB_3),.A_8(VC_2),.A_9(VCB_1),.A_10(VC_0),.B(VD261));//[VCNT.NET:00106] VD261_(VD261) = AND10(HD1D,VC_8,VCB_7,VCB_6,VCB_5,VCB_4,VCB_3,VC_2,VCB_1,VC_0);


assign PAL = ~NTSC;                                                             //[VCNT.NET:00109] PAL_(PAL) = N1A(NTSC);

/* decode for blanking changes for ntsc */ 

assign VBENDL = ~((PAL & VD303)|(NTSC & VD255));                                //[VCNT.NET:00113] VBENDL_(VBENDL) = AO2A(PAL,VD303,NTSC,VD255);
assign VBEND = ~VBENDL;                                                         //[VCNT.NET:00114] VBEND_(VBEND) = N1A(VBENDL);
assign VBSTARTL = ~((PAL & VD16)|(NTSC & VD13));                                //[VCNT.NET:00115] VBSTARTL_(VBSTARTL) = AO2A(PAL,VD16,NTSC,VD13);
assign VBSTART = ~VBSTARTL;                                                     //[VCNT.NET:00116] VBSRART_(VBSTART) = N1A(VBSTARTL);

/* likewise decodes for vertical sync */ 

assign VSSTL = ~((PAL & VD308)|(NTSC & VD258));                                 //[VCNT.NET:00120] VSSTL_(VSSTL) = AO2A(PAL,VD308,NTSC,VD258);
assign VSST = ~VSSTL;                                                           //[VCNT.NET:00121] VSST_(VSST) = N1A(VSSTL);
assign VSENDL = ~((PAL & VD311)|(NTSC & VD261));                                //[VCNT.NET:00122] VSENDL_(VSENDL) = AO2A(PAL,VD311,NTSC,VD261);

/* The last decode is combined with the vertical lock input so they
have an equivalent effect */         

FD2A VLOCKD__inst (.MasterClock(MasterClock),.q(VLOCKD),.qL(VLOCKDL),.d(VLOCK),.clk(CLK),.rL(RESETL));//[VCNT.NET:00127] VLOCKD_(VLOCKD,VLOCKDL) = FD2A(VLOCK,CLK,RESETL);
assign VLOCKL = ~(GENLOCK & VLOCKD);                                            //[VCNT.NET:00128] VLOCKL_(VLOCKL) = ND2A(GENLOCK,VLOCKD);
assign NEXTV = ~(VLOCKL & VSENDL);                                              //[VCNT.NET:00129] NEXTV_(NEXTV) = ND2A(VLOCKL,VSENDL);

/* generate vertical sync but disable when genlocking */

m_JK VVSYNC_ (.MasterClock(MasterClock),.J(VSST),.K(NEXTV),.R(RES),.CLK(CLK),.Q(VVSYNC),.QB(VVSYNCL));//[VCNT.NET:00133] VVSYNC_(VVSYNC,VVSYNCL) = JK(VSST,NEXTV,RES,CLK);
assign VSYNCDL = ~(/*HVSYNC & */VVSYNC);                                        //[VCNT.NET:00134] VSYNCDL_(VSYNCDL) = ND2A(HVSYNC,VVSYNC);
assign VSYNC = ~(VSYNCDL | GENLOCK);                                            //[VCNT.NET:00135] VSYNC_(VSYNC) = NR2A(VSYNCDL,GENLOCK);

/* generate blanking */

m_JK VBLANKING_ (.MasterClock(MasterClock),.J(VBEND),.K(VBSTART),.R(RES),.CLK(CLK),.Q(VBLANKING),.QB(VBLANKINGL));//[VCNT.NET:00139] VBLANKING_(VBLANKING,VBLANKINGL) = JK(VBEND,VBSTART,RES,CLK);
assign BLANKING = HBLANKING | VBLANKING;                                        //[VCNT.NET:00140] BLANKING_(BLANKING) = OR2A(HBLANKING,VBLANKING);


/* start and end registers */

LD1A START_0__inst (.MasterClock(MasterClock),.q(START_0),.qL(STARTB_0),.d(WD_0),.en(STARTL));//[VCNT.NET:00145] START_0_(START_0,STARTB_0) = LD1A(WD_0,STARTL);
LD1A START_1__inst (.MasterClock(MasterClock),.q(START_1),.qL(STARTB_1),.d(WD_1),.en(STARTL));//[VCNT.NET:00146] START_1_(START_1,STARTB_1) = LD1A(WD_1,STARTL);
LD1A START_2__inst (.MasterClock(MasterClock),.q(START_2),.qL(STARTB_2),.d(WD_2),.en(STARTL));//[VCNT.NET:00147] START_2_(START_2,STARTB_2) = LD1A(WD_2,STARTL);
LD1A START_3__inst (.MasterClock(MasterClock),.q(START_3),.qL(STARTB_3),.d(WD_3),.en(STARTL));//[VCNT.NET:00148] START_3_(START_3,STARTB_3) = LD1A(WD_3,STARTL);
LD1A START_4__inst (.MasterClock(MasterClock),.q(START_4),.qL(STARTB_4),.d(WD_4),.en(STARTL));//[VCNT.NET:00149] START_4_(START_4,STARTB_4) = LD1A(WD_4,STARTL);
LD1A START_5__inst (.MasterClock(MasterClock),.q(START_5),.qL(STARTB_5),.d(WD_5),.en(STARTL));//[VCNT.NET:00150] START_5_(START_5,STARTB_5) = LD1A(WD_5,STARTL);
LD1A START_6__inst (.MasterClock(MasterClock),.q(START_6),.qL(STARTB_6),.d(WD_6),.en(STARTL));//[VCNT.NET:00151] START_6_(START_6,STARTB_6) = LD1A(WD_6,STARTL);
LD1A START_7__inst (.MasterClock(MasterClock),.q(START_7),.qL(STARTB_7),.d(WD_7),.en(STARTL));//[VCNT.NET:00152] START_7_(START_7,STARTB_7) = LD1A(WD_7,STARTL);
LD1A STARTH_8__inst (.MasterClock(MasterClock),.q(START_8),.qL(STARTB_8),.d(WD_0),.en(STARTH));//[VCNT.NET:00153] STARTH_8_(START_8,STARTB_8) = LD1A(WD_0,STARTH);
m_EQU9 STARTD_ (.MasterClock(MasterClock),.A_0(START_0),.A_1(START_1),.A_2(START_2),.A_3(START_3),.A_4(START_4),.A_5(START_5),.A_6(START_6),.A_7(START_7),.A_8(START_8),.B_0(VC_0),.B_1(VC_1),.B_2(VC_2),.B_3(VC_3),.B_4(VC_4),.B_5(VC_5),.B_6(VC_6),.B_7(VC_7),.B_8(VC_8),.EN(HD1D),.EQ(STARTD));//[VCNT.NET:00154] STARTD_(STARTD) = EQU9(START_0,START_1,START_2,START_3,START_4,START_5,START_6,
                                                                                //[VCNT.NET:00155]    START_7,START_8,VC_0,VC_1,VC_2,VC_3,VC_4,VC_5,VC_6,VC_7,VC_8,HD1D);

LD1A END_0__inst (.MasterClock(MasterClock),.q(END_0),.qL(ENDB_0),.d(WD_0),.en(ENDL));//[VCNT.NET:00157] END_0_(END_0,ENDB_0) = LD1A(WD_0,ENDL);
LD1A END_1__inst (.MasterClock(MasterClock),.q(END_1),.qL(ENDB_1),.d(WD_1),.en(ENDL));//[VCNT.NET:00158] END_1_(END_1,ENDB_1) = LD1A(WD_1,ENDL);
LD1A END_2__inst (.MasterClock(MasterClock),.q(END_2),.qL(ENDB_2),.d(WD_2),.en(ENDL));//[VCNT.NET:00159] END_2_(END_2,ENDB_2) = LD1A(WD_2,ENDL);
LD1A END_3__inst (.MasterClock(MasterClock),.q(END_3),.qL(ENDB_3),.d(WD_3),.en(ENDL));//[VCNT.NET:00160] END_3_(END_3,ENDB_3) = LD1A(WD_3,ENDL);
LD1A END_4__inst (.MasterClock(MasterClock),.q(END_4),.qL(ENDB_4),.d(WD_4),.en(ENDL));//[VCNT.NET:00161] END_4_(END_4,ENDB_4) = LD1A(WD_4,ENDL);
LD1A END_5__inst (.MasterClock(MasterClock),.q(END_5),.qL(ENDB_5),.d(WD_5),.en(ENDL));//[VCNT.NET:00162] END_5_(END_5,ENDB_5) = LD1A(WD_5,ENDL);
LD1A END_6__inst (.MasterClock(MasterClock),.q(END_6),.qL(ENDB_6),.d(WD_6),.en(ENDL));//[VCNT.NET:00163] END_6_(END_6,ENDB_6) = LD1A(WD_6,ENDL);
LD1A END_7__inst (.MasterClock(MasterClock),.q(END_7),.qL(ENDB_7),.d(WD_7),.en(ENDL));//[VCNT.NET:00164] END_7_(END_7,ENDB_7) = LD1A(WD_7,ENDL);
LD1A ENDH_8__inst (.MasterClock(MasterClock),.q(END_8),.qL(ENDB_8),.d(WD_0),.en(ENDH));//[VCNT.NET:00165] ENDH_8_(END_8,ENDB_8) = LD1A(WD_0,ENDH);
m_EQU9 ENDD_ (.MasterClock(MasterClock),.A_0(END_0),.A_1(END_1),.A_2(END_2),.A_3(END_3),.A_4(END_4),.A_5(END_5),.A_6(END_6),.A_7(END_7),.A_8(END_8),.B_0(VC_0),.B_1(VC_1),.B_2(VC_2),.B_3(VC_3),.B_4(VC_4),.B_5(VC_5),.B_6(VC_6),.B_7(VC_7),.B_8(VC_8),.EN(HD1D),.EQ(ENDD));//[VCNT.NET:00166] ENDD_(ENDD) = EQU9(END_0,END_1,END_2,END_3,END_4,END_5,END_6,END_7,END_8,VC_0,
                                                                                //[VCNT.NET:00167]    VC_1,VC_2,VC_3,VC_4,VC_5,VC_6,VC_7,VC_8,HD1D);

/* border is active outside these lines */

m_JK VBORDER_ (.MasterClock(MasterClock),.J(STARTD),.K(ENDD),.R(RES),.CLK(CLK),.Q(VBORDERL),.QB(VBORDER));//[VCNT.NET:00171] VBORDER_(VBORDERL,VBORDER) = JK(STARTD,ENDD,RES,CLK);
assign HBORDERL = ~HBORDER;                                                     //[VCNT.NET:00172] HBORDERL_(HBORDERL) = N1A(HBORDER);
assign BORDER = ~(VBORDERL & HBORDERL);                                         //[VCNT.NET:00173] BORDER_(BORDER) = ND2A(VBORDERL,HBORDERL);

/* Video is always active on certain lines in order to refresh memory */

/* The psuedo static ram chips are the most demanding, 256 cycles in 4ms,
4ms is approximately 64 video lines, refresh must occur on line 0 to force
refresh while genlocking. A low res. line refreshes 64 rows, a medium or high
res. line refreshes 128 rows so:-

every 64 lines starting at line zero the video is active for 2 or 4 lines */

assign LORESL = ~LORES;                                                         //[VCNT.NET:00184] LORESL_(LORESL) = N1A(LORES);
assign REF4 = ~(LORESL & VC_1);                                                 //[VCNT.NET:00185] REF4_(REF4) = ND2A(LORESL,VC_1);
assign REFACTIVEL = ~(VCB_2 & VCB_3 & VCB_4 & VCB_5 & REF4);                    //[VCNT.NET:00186] REFACTIVEL_(REFACTIVEL) = ND5A(VCB_2,VCB_3,VCB_4,VCB_5,REF4);

assign VVACTIVE = ~(REFACTIVEL & VBORDER);                                      //[VCNT.NET:00188] VVACTIVE_(VVACTIVE) = ND2A(REFACTIVEL,VBORDER);

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
endmodule                                                                       //[VCNT.NET:00190] END MODULE;
