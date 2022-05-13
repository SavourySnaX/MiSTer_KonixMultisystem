                                                                                //[ADDBSEL.NET:00001] COMPILE;
                                                                                //[ADDBSEL.NET:00002] DIRECTORY MASTER;
/****************************************************************************
addbsel
10/10/88

Address adder input B control mechanism

A variety of values may be added to an address.  These are 1/2, 1, 2, the 
value of the step register or the 2's complement of all these values.

These values are given by:

updpc  res10  lindr  adstp  ssign  dsign  updsrc borrow yfrac  srcenf 
1      xx     x      x      x      x      x      x      x      x      +1

0      xx     x      0      0      x      1      x      x      1      +1
0      xx     x      0      1      x      1      x      x      1      -1

0      00     0      0      x      0      1      x      x      0      +1/2
0      01     0      0      x      0      1      x      x      x      +1
0      10     0      0      x      0      1      x      x      0      +1/2
0      11     0      0      x      0      1      x      x      0      +2
0      00     0      0      x      1      1      x      x      0      -1/2
0      01     0      0      x      1      1      x      x      x      -1
0      10     0      0      x      1      1      x      x      0      -1/2
0      11     0      0      x      1      1      x      x      0      -2
0      xx     0      1      x      0      1      x      x      x      +step
0      xx     0      1      x      1      1      x      x      x      -step

0      00     0      0      0      x      0      x      x      x      +1/2
0      01     0      0      0      x      0      x      x      x      +1
0      10     0      0      0      x      0      x      x      x      +1/2
0      11     0      0      0      x      0      x      x      x      +2
0      00     0      0      1      x      0      x      x      x      -1/2
0      01     0      0      1      x      0      x      x      x      -1
0      10     0      0      1      x      0      x      x      x      -1/2
0      11     0      0      1      x      0      x      x      x      -2
0      xx     0      1      0      x      0      x      x      x      +step
0      xx     0      1      1      x      0      x      x      x      -step
                                                                   X       Y
0      xx     1      x      x      x      1      x      x      x      -step 
0      xx     1      x      x      x      0      0      0      x   0
0      x0     1      x      0      x      0      0      1      x   +1/2
0      x0     1      x      0      x      0      1      x      x   +1/2
0      x0     1      x      1      x      0      0      1      x   -1/2
0      x0     1      x      1      x      0      1      x      x   -1/2
0      01     1      x      0      x      0      0      1      x   +1
0      01     1      x      0      x      0      1      x      x   +1
0      01     1      x      1      x      0      0      1      x   -1
0      01     1      x      1      x      0      1      x      x   -1

0      xx     1      x      x      x      0      0      1      x           0
0      xx     1      x      x      0      0      0      0      x           +1
0      xx     1      x      x      0      0      1      x      x           +1
0      xx     1      x      x      1      0      0      0      x           -1
0      xx     1      x      x      1      0      1      x      x           -1

NOTE that in line draw mode the division between X and Y is normally
between bits 7 and 8, however in lores (00) it is between bits 6 and 7.

The one omission from this compared to the old blitter is the removal of
the addback cycle, which is performed locally by the source address
register, so that two-tick line-draw computations may be made.

****************************************************************************/


module m_ADDBSEL                                                                //[ADDBSEL.NET:00069] MODULE ADDBSEL;
(                                                                               //[ADDBSEL.NET:00069] MODULE ADDBSEL;

    input    MasterClock,
    input    ADSTP,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    CARRYOUT,                                                          //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    SRCENF,                                                            //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    DSIGN,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    DWRAP,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    LINDR,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    RES_0,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    RES_1,                                                             //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    STEP_0,                                                            //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    STEP_1,                                                            //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    STEP_2,                                                            //[ADDBSEL.NET:00071] INPUTS	ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,STEP_0,STEP_1,STEP_2,
    input    STEP_3,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    STEP_4,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    STEP_5,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    STEP_6,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    STEP_7,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    STEPM1,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    SSIGN,                                                             //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    SWRAP,                                                             //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    UPDPCL,                                                            //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    UPDSRCL,                                                           //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    input    YFRAC,                                                             //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
                                                                                //[ADDBSEL.NET:00072]    STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,UPDPCL,UPDSRCL,YFRAC;
    output    ADDBM1,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_0,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_1,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_2,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_3,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_4,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_5,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_6,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_7,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    ADDB_8,                                                           //[ADDBSEL.NET:00073] OUTPUTS	ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
    output    BORROW,                                                           //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    CARRYIN_0,                                                        //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    CARRYIN_1,                                                        //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    CINH6,                                                            //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    CINH7,                                                            //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    CINH15,                                                           //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    HISIGN,                                                           //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
    output    VHISIGN                                                           //[ADDBSEL.NET:00074]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,VHISIGN;
);                                                                              //[ADDBSEL.NET:00069] MODULE ADDBSEL;
                                                                                //[ADDBSEL.NET:00075] LEVEL FUNCTION;
wire ADSTPL;                                                                    //[ADDBSEL.NET:00080] ADSTPL_(ADSTPL) = N1A(ADSTP);
wire DSIGNL;                                                                    //[ADDBSEL.NET:00081] DSIGNL_(DSIGNL) = N1A(DSIGN);
wire LINDRL;                                                                    //[ADDBSEL.NET:00082] LINDRL_(LINDRL) = N1A(LINDR);
wire RESL_0;                                                                    //[ADDBSEL.NET:00083] RESINV_0_(RESL_0) = N1A(RES_0);
wire RESL_1;                                                                    //[ADDBSEL.NET:00084] RESINV_1_(RESL_1) = N1A(RES_1);
wire UPDSRC;                                                                    //[ADDBSEL.NET:00085] UPDSRC_(UPDSRC) = N1C(UPDSRCL);
wire UPDPC;                                                                     //[ADDBSEL.NET:00086] UPDPC_(UPDPC) = N1A(UPDPCL);
wire YFRACL;                                                                    //[ADDBSEL.NET:00087] YFRACL_(YFRACL) = N1A(YFRAC);
wire LORES;                                                                     //[ADDBSEL.NET:00090] LORES_(LORES) = NR2A(RES_0,RES_1);
wire LORESL;                                                                    //[ADDBSEL.NET:00091] LORESL_(LORESL) = N1A(LORES);
wire BORROWL;                                                                   //[ADDBSEL.NET:00094] BORROW_(BORROWL,BORROW) = LD2A(CARRYOUT,UPDSRCL);
wire FONET;                                                                     //[ADDBSEL.NET:00104] FOT_0_(FONET) = ND4A(UPDPCL,ADSTPL,UPDSRC,SRCENF);
wire FONE;                                                                      //[ADDBSEL.NET:00105] FOT_1_(FONE) = ND2B(UPDPCL,FONET);
wire FONEL;                                                                     //[ADDBSEL.NET:00106] FONEL_(FONEL) = N1B(FONE);
wire FZERO;                                                                     //[ADDBSEL.NET:00108] FZT_0_(FZERO) = NR3A(LINDRL,YFRAC,BORROW);
wire FSTEPT_0;                                                                  //[ADDBSEL.NET:00110] FST_0_(FSTEPT_0) = ND2A(LINDRL,ADSTP);
wire FSTEPT_1;                                                                  //[ADDBSEL.NET:00111] FST_1_(FSTEPT_1) = ND2A(LINDR,UPDSRC);
wire FSTEP;                                                                     //[ADDBSEL.NET:00112] FST_2_(FSTEP) = ND2B(FSTEPT_0,FSTEPT_1);
wire ABM1T_0;                                                                   //[ADDBSEL.NET:00118] ABM1T_0_(ABM1T_0) = ND2A(FSTEP,STEPM1);
wire ABM1T_1;                                                                   //[ADDBSEL.NET:00119] ABM1T_1_(ABM1T_1) = NR3A(FONE,FZERO,FSTEP);
wire ABM1T_2;                                                                   //[ADDBSEL.NET:00120] ABM1T_2_(ABM1T_2) = ND2A(RESL_0,ABM1T_1);
wire UADDBM1;                                                                   //[ADDBSEL.NET:00121] ABM1T_3_(UADDBM1) = ND2A(ABM1T_0,ABM1T_2);
wire AB0T_0;                                                                    //[ADDBSEL.NET:00128] AB0T_0_(AB0T_0) = ND2A(FSTEP,STEP_0);
wire AB0T_1;                                                                    //[ADDBSEL.NET:00129] AB0T_1_(AB0T_1) = NR2A(FZERO,FSTEP);
wire AB0T_2;                                                                    //[ADDBSEL.NET:00130] AB0T_2_(AB0T_2) = ND3A(RESL_1,RES_0,AB0T_1);
wire UADDB_0;                                                                   //[ADDBSEL.NET:00131] AB0T_3_(UADDB_0) = ND3A(AB0T_0,FONEL,AB0T_2);
wire AB1T_0;                                                                    //[ADDBSEL.NET:00137] AB1T_0_(AB1T_0) = ND2A(FSTEP,STEP_1);
wire AB1T_1;                                                                    //[ADDBSEL.NET:00138] AB1T_1_(AB1T_1) = ND3A(ABM1T_1,RES_0,RES_1);
wire UADDB_1;                                                                   //[ADDBSEL.NET:00139] AB1T_2_(UADDB_1) = ND2A(AB1T_0,AB1T_1);
wire UADDB_2;                                                                   //[ADDBSEL.NET:00144] UADDB_2_(UADDB_2) = AND2A(FSTEP,STEP_2);
wire UADDB_3;                                                                   //[ADDBSEL.NET:00145] UADDB_3_(UADDB_3) = AND2A(FSTEP,STEP_3);
wire UADDB_4;                                                                   //[ADDBSEL.NET:00146] UADDB_4_(UADDB_4) = AND2A(FSTEP,STEP_4);
wire UADDB_5;                                                                   //[ADDBSEL.NET:00147] UADDB_5_(UADDB_5) = AND2A(FSTEP,STEP_5);
wire UADDB_6;                                                                   //[ADDBSEL.NET:00148] UADDB_6_(UADDB_6) = AND2A(FSTEP,STEP_6);
wire AB7T_0;                                                                    //[ADDBSEL.NET:00155] AB7T_0_(AB7T_0) = ND2A(FSTEP,STEP_7);
wire AB7T_1;                                                                    //[ADDBSEL.NET:00156] AB7T_1_(AB7T_1) = ND2A(BORROWL,YFRAC);
wire AB7T_2;                                                                    //[ADDBSEL.NET:00157] AB7T_2_(AB7T_2) = ND6A(UPDPCL,LINDR,UPDSRCL,AB7T_1,RESL_0,RESL_1);
wire UADDB_7;                                                                   //[ADDBSEL.NET:00158] AB7T_3_(UADDB_7) = ND2A(AB7T_0,AB7T_2);
wire AB8T;                                                                      //[ADDBSEL.NET:00164] AB8T_0_(AB8T) = ND2A(RESL_0,RESL_1);
wire UADDB_8;                                                                   //[ADDBSEL.NET:00165] AB8T_1_(UADDB_8) = AND5A(UPDPCL,LINDR,UPDSRCL,AB7T_1,AB8T);
wire LHIT_0;                                                                    //[ADDBSEL.NET:00179] LHIT_0_(LHIT_0) = ND2A(UPDSRC,SSIGN);
wire LHIT_1;                                                                    //[ADDBSEL.NET:00180] LHIT_1_(LHIT_1) = ND2A(UPDSRCL,DSIGN);
wire LHIT_2;                                                                    //[ADDBSEL.NET:00181] LHIT_2_(LHIT_2) = ND2A(LHIT_0,LHIT_1);
wire LHINVL;                                                                    //[ADDBSEL.NET:00182] LHIT_3_(LHINVL) = ND3A(UPDPCL,LINDRL,LHIT_2);
wire LHINV;                                                                     //[ADDBSEL.NET:00183] LHINV_(LHINV) = N1B(LHINVL);
wire LOIT_0;                                                                    //[ADDBSEL.NET:00190] LOIT_0_(LOIT_0) = ND4A(UPDPCL,LINDR,UPDSRCL,SSIGN);
wire LOIT_1;                                                                    //[ADDBSEL.NET:00191] LOIT_1_(LOIT_1) = ND3A(UPDPCL,LINDR,UPDSRC);
wire LOINV;                                                                     //[ADDBSEL.NET:00192] LOIT_2_(LOINV) = ND2A(LOIT_0,LOIT_1);
wire HIINV;                                                                     //[ADDBSEL.NET:00196] HIINV_(HIINV) = NR4A(UPDPC,LINDRL,UPDSRC,DSIGNL);
wire INVSEL_0;                                                                  //[ADDBSEL.NET:00199] INVSEL_0_(INVSEL_0) = OR2C(LHINV,LOINV);
wire INV1T_0;                                                                   //[ADDBSEL.NET:00206] INV1T_0_(INV1T_0) = ND2A(UPDSRCL,LORESL);
wire INV1T_1;                                                                   //[ADDBSEL.NET:00207] INV1T_1_(INV1T_1) = ND2A(UPDSRCL,INV1T_0);
wire INV1T_2;                                                                   //[ADDBSEL.NET:00208] INV1T_2_(INV1T_2) = ND2A(LOINV,INV1T_1);
wire INV1T_3;                                                                   //[ADDBSEL.NET:00209] INV1T_3_(INV1T_3) = ND3A(UPDSRCL,LORES,HIINV);
wire INV1T_4;                                                                   //[ADDBSEL.NET:00210] INV1T_4_(INV1T_4) = ND2A(INV1T_2,INV1T_3);
wire INV1T_5;                                                                   //[ADDBSEL.NET:00211] INV1T_5_(INV1T_5) = ND2A(LINDR,INV1T_4);
wire INVSEL_1;                                                                  //[ADDBSEL.NET:00212] INV1T_6_(INVSEL_1) = ND2A(LHINVL,INV1T_5);
wire HISIGNL;                                                                   //[ADDBSEL.NET:00216] INVSEL_2_(HISIGNL) = NR2B(LHINV,HIINV);
wire CI15T;                                                                     //[ADDBSEL.NET:00223] CI15T_0_(CI15T) = AO2A(UPDSRC,SWRAP,UPDSRCL,DWRAP);

/* Provide inverted versions of control signals */

assign ADSTPL = ~ADSTP;                                                         //[ADDBSEL.NET:00080] ADSTPL_(ADSTPL) = N1A(ADSTP);
assign DSIGNL = ~DSIGN;                                                         //[ADDBSEL.NET:00081] DSIGNL_(DSIGNL) = N1A(DSIGN);
assign LINDRL = ~LINDR;                                                         //[ADDBSEL.NET:00082] LINDRL_(LINDRL) = N1A(LINDR);
assign RESL_0 = ~RES_0;                                                         //[ADDBSEL.NET:00083] RESINV_0_(RESL_0) = N1A(RES_0);
assign RESL_1 = ~RES_1;                                                         //[ADDBSEL.NET:00084] RESINV_1_(RESL_1) = N1A(RES_1);
assign UPDSRC = ~UPDSRCL;                                                       //[ADDBSEL.NET:00085] UPDSRC_(UPDSRC) = N1C(UPDSRCL);
assign UPDPC = ~UPDPCL;                                                         //[ADDBSEL.NET:00086] UPDPC_(UPDPC) = N1A(UPDPCL);
assign YFRACL = ~YFRAC;                                                         //[ADDBSEL.NET:00087] YFRACL_(YFRACL) = N1A(YFRAC);

/* Generate lores term */
assign LORES = ~(RES_0 | RES_1);                                                //[ADDBSEL.NET:00090] LORES_(LORES) = NR2A(RES_0,RES_1);
assign LORESL = ~LORES;                                                         //[ADDBSEL.NET:00091] LORESL_(LORESL) = N1A(LORES);

/* Borrow is given by latching carryout on the end of updsrc */
LD2A BORROW__inst (.MasterClock(MasterClock),.q(BORROWL),.qL(BORROW),.d(CARRYOUT),.en(UPDSRCL));//[ADDBSEL.NET:00094] BORROW_(BORROWL,BORROW) = LD2A(CARRYOUT,UPDSRCL);

/* Outside line draw, one is added except when adstp is true.  The bit
   position is normally given by the screen mode, but is overriden
   always by updpc, and when /updpc . /adstp . updsrc . srcenf is true.
   In line draw mode, 1 is added except when updsrc is true (then its
   step) or when /yfrac . /borrow is true.
*/

/* This term overrides the screen mode setting and forces one */	
assign FONET = ~(UPDPCL & ADSTPL & UPDSRC & SRCENF);                            //[ADDBSEL.NET:00104] FOT_0_(FONET) = ND4A(UPDPCL,ADSTPL,UPDSRC,SRCENF);
assign FONE = ~(UPDPCL & FONET);                                                //[ADDBSEL.NET:00105] FOT_1_(FONE) = ND2B(UPDPCL,FONET);
assign FONEL = ~FONE;                                                           //[ADDBSEL.NET:00106] FONEL_(FONEL) = N1B(FONE);
/* This term forces zero */
assign FZERO = ~(LINDRL | YFRAC | BORROW);                                      //[ADDBSEL.NET:00108] FZT_0_(FZERO) = NR3A(LINDRL,YFRAC,BORROW);
/* This term means the step is added */
assign FSTEPT_0 = ~(LINDRL & ADSTP);                                            //[ADDBSEL.NET:00110] FST_0_(FSTEPT_0) = ND2A(LINDRL,ADSTP);
assign FSTEPT_1 = ~(LINDR & UPDSRC);                                            //[ADDBSEL.NET:00111] FST_1_(FSTEPT_1) = ND2A(LINDR,UPDSRC);
assign FSTEP = ~(FSTEPT_0 & FSTEPT_1);                                          //[ADDBSEL.NET:00112] FST_2_(FSTEP) = ND2B(FSTEPT_0,FSTEPT_1);

/* Produce unsigned bit -1
   This is fstep . stepm1
          +/(fone + fzero + fstep) . /res[0] */

assign ABM1T_0 = ~(FSTEP & STEPM1);                                             //[ADDBSEL.NET:00118] ABM1T_0_(ABM1T_0) = ND2A(FSTEP,STEPM1);
assign ABM1T_1 = ~(FONE | FZERO | FSTEP);                                       //[ADDBSEL.NET:00119] ABM1T_1_(ABM1T_1) = NR3A(FONE,FZERO,FSTEP);
assign ABM1T_2 = ~(RESL_0 & ABM1T_1);                                           //[ADDBSEL.NET:00120] ABM1T_2_(ABM1T_2) = ND2A(RESL_0,ABM1T_1);
assign UADDBM1 = ~(ABM1T_0 & ABM1T_2);                                          //[ADDBSEL.NET:00121] ABM1T_3_(UADDBM1) = ND2A(ABM1T_0,ABM1T_2);

/* Produce unsigned bit 0
   This is fstep . step[0]
	  +fone
	  +/(fzero + fstep) . /res[1] . res[0] */

assign AB0T_0 = ~(FSTEP & STEP_0);                                              //[ADDBSEL.NET:00128] AB0T_0_(AB0T_0) = ND2A(FSTEP,STEP_0);
assign AB0T_1 = ~(FZERO | FSTEP);                                               //[ADDBSEL.NET:00129] AB0T_1_(AB0T_1) = NR2A(FZERO,FSTEP);
assign AB0T_2 = ~(RESL_1 & RES_0 & AB0T_1);                                     //[ADDBSEL.NET:00130] AB0T_2_(AB0T_2) = ND3A(RESL_1,RES_0,AB0T_1);
assign UADDB_0 = ~(AB0T_0 & FONEL & AB0T_2);                                    //[ADDBSEL.NET:00131] AB0T_3_(UADDB_0) = ND3A(AB0T_0,FONEL,AB0T_2);

/* Produce unsigned bit 1
   This is fstep . step[1]
          +/(fone + fzero + fstep) . res[1] . res[0] */

assign AB1T_0 = ~(FSTEP & STEP_1);                                              //[ADDBSEL.NET:00137] AB1T_0_(AB1T_0) = ND2A(FSTEP,STEP_1);
assign AB1T_1 = ~(ABM1T_1 & RES_0 & RES_1);                                     //[ADDBSEL.NET:00138] AB1T_1_(AB1T_1) = ND3A(ABM1T_1,RES_0,RES_1);
assign UADDB_1 = ~(AB1T_0 & AB1T_1);                                            //[ADDBSEL.NET:00139] AB1T_2_(UADDB_1) = ND2A(AB1T_0,AB1T_1);

/* Produce unsigned bits 2 - 6
   These are fstep . step[n] */

assign UADDB_2 = FSTEP & STEP_2;                                                //[ADDBSEL.NET:00144] UADDB_2_(UADDB_2) = AND2A(FSTEP,STEP_2);
assign UADDB_3 = FSTEP & STEP_3;                                                //[ADDBSEL.NET:00145] UADDB_3_(UADDB_3) = AND2A(FSTEP,STEP_3);
assign UADDB_4 = FSTEP & STEP_4;                                                //[ADDBSEL.NET:00146] UADDB_4_(UADDB_4) = AND2A(FSTEP,STEP_4);
assign UADDB_5 = FSTEP & STEP_5;                                                //[ADDBSEL.NET:00147] UADDB_5_(UADDB_5) = AND2A(FSTEP,STEP_5);
assign UADDB_6 = FSTEP & STEP_6;                                                //[ADDBSEL.NET:00148] UADDB_6_(UADDB_6) = AND2A(FSTEP,STEP_6);

/* Produce unsigned bit 7
   This takes the value of the Y increment in lores mode.
   This is fstep . step [7]
          +/updpc . lindr . /updsrc . (borrow + /yfrac) . /res[1] . /res[0] */

assign AB7T_0 = ~(FSTEP & STEP_7);                                              //[ADDBSEL.NET:00155] AB7T_0_(AB7T_0) = ND2A(FSTEP,STEP_7);
assign AB7T_1 = ~(BORROWL & YFRAC);                                             //[ADDBSEL.NET:00156] AB7T_1_(AB7T_1) = ND2A(BORROWL,YFRAC);
assign AB7T_2 = ~(UPDPCL & LINDR & UPDSRCL & AB7T_1 & RESL_0 & RESL_1);         //[ADDBSEL.NET:00157] AB7T_2_(AB7T_2) = ND6A(UPDPCL,LINDR,UPDSRCL,AB7T_1,RESL_0,RESL_1);
assign UADDB_7 = ~(AB7T_0 & AB7T_2);                                            //[ADDBSEL.NET:00158] AB7T_3_(UADDB_7) = ND2A(AB7T_0,AB7T_2);

/* Produce unsigned bit 8
   This takes the Y increment in all but lores mode
   This is /updpc . lindr . /updsrc . (borrow + /yfrac) . (res[0] + res[1]) */

assign AB8T = ~(RESL_0 & RESL_1);                                               //[ADDBSEL.NET:00164] AB8T_0_(AB8T) = ND2A(RESL_0,RESL_1);
assign UADDB_8 = UPDPCL & LINDR & UPDSRCL & AB7T_1 & AB8T;                      //[ADDBSEL.NET:00165] AB8T_1_(UADDB_8) = AND5A(UPDPCL,LINDR,UPDSRCL,AB7T_1,AB8T);


/* Having generated the unsigned value to be added, this needs the be
   complemented under certain circumstances.  This is performed by
   inverting the bits and injecting carry in to the adder.  In line
   draw destination update mode this inversion may only occur on
   half the bus if the source and destination signs are different.
   In line draw source update bits 8 upwards must not be changed.
*/

/* Outside line draw, the value is complemented for the condition
	/updpc . /lindr . ((updsrc . ssign) + (/updsrc . dsign)) */

assign LHIT_0 = ~(UPDSRC & SSIGN);                                              //[ADDBSEL.NET:00179] LHIT_0_(LHIT_0) = ND2A(UPDSRC,SSIGN);
assign LHIT_1 = ~(UPDSRCL & DSIGN);                                             //[ADDBSEL.NET:00180] LHIT_1_(LHIT_1) = ND2A(UPDSRCL,DSIGN);
assign LHIT_2 = ~(LHIT_0 & LHIT_1);                                             //[ADDBSEL.NET:00181] LHIT_2_(LHIT_2) = ND2A(LHIT_0,LHIT_1);
assign LHINVL = ~(UPDPCL & LINDRL & LHIT_2);                                    //[ADDBSEL.NET:00182] LHIT_3_(LHINVL) = ND3A(UPDPCL,LINDRL,LHIT_2);
assign LHINV = ~LHINVL;                                                         //[ADDBSEL.NET:00183] LHINV_(LHINV) = N1B(LHINVL);

/* The low part is inverted for a line draw destination update by
	/updpc . lindr . /updsrc . ssign
   and is always complemented on the updsrc cycle
        /updpc . lindr . updsrc */

assign LOIT_0 = ~(UPDPCL & LINDR & UPDSRCL & SSIGN);                            //[ADDBSEL.NET:00190] LOIT_0_(LOIT_0) = ND4A(UPDPCL,LINDR,UPDSRCL,SSIGN);
assign LOIT_1 = ~(UPDPCL & LINDR & UPDSRC);                                     //[ADDBSEL.NET:00191] LOIT_1_(LOIT_1) = ND3A(UPDPCL,LINDR,UPDSRC);
assign LOINV = ~(LOIT_0 & LOIT_1);                                              //[ADDBSEL.NET:00192] LOIT_2_(LOINV) = ND2A(LOIT_0,LOIT_1);

/* The high part is inverted for
	/updpc . lindr . /updsrc . dsign */
assign HIINV = ~(UPDPC | LINDRL | UPDSRC | DSIGNL);                             //[ADDBSEL.NET:00196] HIINV_(HIINV) = NR4A(UPDPC,LINDRL,UPDSRC,DSIGNL);

/* Bits -1 and 0-6 are inverted on lhinv + loinv */
assign INVSEL_0 = LHINV | LOINV;                                                //[ADDBSEL.NET:00199] INVSEL_0_(INVSEL_0) = OR2C(LHINV,LOINV);

/* Bit 7 is in the low or high half in line draw destination updates, 
   depending on the screen mode:
	  lindr . ((updsrc + /updsrc./lores) . loinv
                  +/updsrc . lores . hiinv)
	+ lhinv */
assign INV1T_0 = ~(UPDSRCL & LORESL);                                           //[ADDBSEL.NET:00206] INV1T_0_(INV1T_0) = ND2A(UPDSRCL,LORESL);
assign INV1T_1 = ~(UPDSRCL & INV1T_0);                                          //[ADDBSEL.NET:00207] INV1T_1_(INV1T_1) = ND2A(UPDSRCL,INV1T_0);
assign INV1T_2 = ~(LOINV & INV1T_1);                                            //[ADDBSEL.NET:00208] INV1T_2_(INV1T_2) = ND2A(LOINV,INV1T_1);
assign INV1T_3 = ~(UPDSRCL & LORES & HIINV);                                    //[ADDBSEL.NET:00209] INV1T_3_(INV1T_3) = ND3A(UPDSRCL,LORES,HIINV);
assign INV1T_4 = ~(INV1T_2 & INV1T_3);                                          //[ADDBSEL.NET:00210] INV1T_4_(INV1T_4) = ND2A(INV1T_2,INV1T_3);
assign INV1T_5 = ~(LINDR & INV1T_4);                                            //[ADDBSEL.NET:00211] INV1T_5_(INV1T_5) = ND2A(LINDR,INV1T_4);
assign INVSEL_1 = ~(LHINVL & INV1T_5);                                          //[ADDBSEL.NET:00212] INV1T_6_(INVSEL_1) = ND2A(LHINVL,INV1T_5);

/* Bit 8 is inverted on lhinv + hinv, and this gives the value used
to add to bits 9-15 */
assign HISIGNL = ~(LHINV | HIINV);                                              //[ADDBSEL.NET:00216] INVSEL_2_(HISIGNL) = NR2B(LHINV,HIINV);
assign HISIGN = ~HISIGNL;                                                       //[ADDBSEL.NET:00217] HISINV_(HISIGN) = N1C(HISIGNL);

/* If the source or destination wrap bits are set, then the sign should
not propagate above bit 15 for the corresponding updates.  This is also
used to inhibit carry from bit 15 to 16 
This is /updpc . (updsrc.swrap + /updsrc.dwrap */
assign CI15T = ~((UPDSRC & SWRAP)|(UPDSRCL & DWRAP));                           //[ADDBSEL.NET:00223] CI15T_0_(CI15T) = AO2A(UPDSRC,SWRAP,UPDSRCL,DWRAP);
assign CINH15 = ~(UPDPC | CI15T);                                               //[ADDBSEL.NET:00224] CINH15_(CINH15) = NR2A(UPDPC,CI15T);
assign VHISIGN = ~(HISIGNL | CINH15);                                           //[ADDBSEL.NET:00225] VHISIGN_(VHISIGN) = NR2B(HISIGNL,CINH15);

/* Carry is inhibited from bits 6-7 in the adder for a line-draw lores
   destination update */

assign CINH6 = ~(UPDPC | LINDRL | UPDSRC | LORESL);                             //[ADDBSEL.NET:00230] CINH6_(CINH6) = NR4A(UPDPC,LINDRL,UPDSRC,LORESL);

/* Carry is inhibited from bits 7-8 in the adder for all other line draw
   computations */

assign CINH7 = ~(UPDPC | LINDRL | CINH6);                                       //[ADDBSEL.NET:00235] CINH7_(CINH7) = NR3A(UPDPC,LINDRL,CINH6);

/* Invert the bits as defined above */

assign ADDBM1 = UADDBM1 ^ INVSEL_0;                                             //[ADDBSEL.NET:00239] ABINVM1_(ADDBM1) = EOB(UADDBM1,INVSEL_0);
assign ADDB_0 = UADDB_0 ^ INVSEL_0;                                             //[ADDBSEL.NET:00240] ABINV_0_(ADDB_0) = EOB(UADDB_0,INVSEL_0);
assign ADDB_1 = UADDB_1 ^ INVSEL_0;                                             //[ADDBSEL.NET:00241] ABINV_1_(ADDB_1) = EOA(UADDB_1,INVSEL_0);
assign ADDB_2 = UADDB_2 ^ INVSEL_0;                                             //[ADDBSEL.NET:00242] ABINV_2_(ADDB_2) = EOA(UADDB_2,INVSEL_0);
assign ADDB_3 = UADDB_3 ^ INVSEL_0;                                             //[ADDBSEL.NET:00243] ABINV_3_(ADDB_3) = EOA(UADDB_3,INVSEL_0);
assign ADDB_4 = UADDB_4 ^ INVSEL_0;                                             //[ADDBSEL.NET:00244] ABINV_4_(ADDB_4) = EOA(UADDB_4,INVSEL_0);
assign ADDB_5 = UADDB_5 ^ INVSEL_0;                                             //[ADDBSEL.NET:00245] ABINV_5_(ADDB_5) = EOA(UADDB_5,INVSEL_0);
assign ADDB_6 = UADDB_6 ^ INVSEL_0;                                             //[ADDBSEL.NET:00246] ABINV_6_(ADDB_6) = EOA(UADDB_6,INVSEL_0);
assign ADDB_7 = UADDB_7 ^ INVSEL_1;                                             //[ADDBSEL.NET:00247] ABINV_7_(ADDB_7) = EOA(UADDB_7,INVSEL_1);
assign ADDB_8 = UADDB_8 ^ HISIGN;                                               //[ADDBSEL.NET:00248] ABINV_8_(ADDB_8) = EOA(UADDB_8,HISIGN);

/* The carry in to the bottom of the adder is given by loinv + lhinv */

assign CARRYIN_0 = LOINV | LHINV;                                               //[ADDBSEL.NET:00252] CARRYIN_0_(CARRYIN_0) = OR2A(LOINV,LHINV);

/* The carry in to the middle bits of the adder is given by hiinv, this 
   will be multiplexed with the carry chain when the carry inhibit bits are
   set */

assign CARRYIN_1 = HIINV;                                                       //[ADDBSEL.NET:00258] CARRYIN_1_(CARRYIN_1) = B3A(HIINV);

endmodule                                                                       //[ADDBSEL.NET:00260] END MODULE;
